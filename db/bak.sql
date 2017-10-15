/*
 Navicat Premium Data Transfer

 Source Server         : db
 Source Server Type    : SQLite
 Source Server Version : 3012001
 Source Database       : main

 Target Server Type    : SQLite
 Target Server Version : 3012001
 File Encoding         : utf-8

 Date: 10/15/2017 13:32:31 PM
*/

PRAGMA foreign_keys = false;

-- ----------------------------
--  Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS "auth_group";
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);

-- ----------------------------
--  Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS "auth_group_permissions";
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));

-- ----------------------------
--  Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS "auth_permission";
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("auth_permission", '30');

-- ----------------------------
--  Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO "auth_permission" VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO "auth_permission" VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO "auth_permission" VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO "auth_permission" VALUES (4, 2, 'add_permission', 'Can add permission');
INSERT INTO "auth_permission" VALUES (5, 2, 'change_permission', 'Can change permission');
INSERT INTO "auth_permission" VALUES (6, 2, 'delete_permission', 'Can delete permission');
INSERT INTO "auth_permission" VALUES (7, 3, 'add_group', 'Can add group');
INSERT INTO "auth_permission" VALUES (8, 3, 'change_group', 'Can change group');
INSERT INTO "auth_permission" VALUES (9, 3, 'delete_group', 'Can delete group');
INSERT INTO "auth_permission" VALUES (10, 4, 'add_user', 'Can add user');
INSERT INTO "auth_permission" VALUES (11, 4, 'change_user', 'Can change user');
INSERT INTO "auth_permission" VALUES (12, 4, 'delete_user', 'Can delete user');
INSERT INTO "auth_permission" VALUES (13, 5, 'add_contenttype', 'Can add content type');
INSERT INTO "auth_permission" VALUES (14, 5, 'change_contenttype', 'Can change content type');
INSERT INTO "auth_permission" VALUES (15, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO "auth_permission" VALUES (16, 6, 'add_session', 'Can add session');
INSERT INTO "auth_permission" VALUES (17, 6, 'change_session', 'Can change session');
INSERT INTO "auth_permission" VALUES (18, 6, 'delete_session', 'Can delete session');
INSERT INTO "auth_permission" VALUES (19, 7, 'add_restaurant', 'Can add restaurant');
INSERT INTO "auth_permission" VALUES (20, 7, 'change_restaurant', 'Can change restaurant');
INSERT INTO "auth_permission" VALUES (21, 7, 'delete_restaurant', 'Can delete restaurant');
INSERT INTO "auth_permission" VALUES (22, 7, 'add_restaurantlocation', 'Can add restaurant location');
INSERT INTO "auth_permission" VALUES (23, 7, 'change_restaurantlocation', 'Can change restaurant location');
INSERT INTO "auth_permission" VALUES (24, 7, 'delete_restaurantlocation', 'Can delete restaurant location');
INSERT INTO "auth_permission" VALUES (25, 8, 'add_item', 'Can add item');
INSERT INTO "auth_permission" VALUES (26, 8, 'change_item', 'Can change item');
INSERT INTO "auth_permission" VALUES (27, 8, 'delete_item', 'Can delete item');
INSERT INTO "auth_permission" VALUES (28, 9, 'add_profile', 'Can add profile');
INSERT INTO "auth_permission" VALUES (29, 9, 'change_profile', 'Can change profile');
INSERT INTO "auth_permission" VALUES (30, 9, 'delete_profile', 'Can delete profile');
COMMIT;

-- ----------------------------
--  Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS "auth_user";
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "username" varchar(150) NOT NULL UNIQUE);
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("auth_user", '20');

-- ----------------------------
--  Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO "auth_user" VALUES (1, 'pbkdf2_sha256$36000$3E1K8IrnGs5Y$kDFQhd8ssRtQDe5SOf+qGghWiZ3ADcPn24EHdH/wYJo=', null, X'31', '', '', '', X'31', X'31', X'323031372d30362d32322031393a35363a30322e323233333838', 'cfe');
INSERT INTO "auth_user" VALUES (2, 'pbkdf2_sha256$36000$lUSuwdbDMFO0$a1IXOPBN3HpRWjPPpbZRAZKesyNHZSTtSPnQPysgUPQ=', X'323031372d30372d30332032313a35353a34342e383937303634', X'31', '', '', '', X'31', X'31', X'323031372d30362d32342032323a31363a31332e333939303034', 'jmitchel3');
INSERT INTO "auth_user" VALUES (3, 'pbkdf2_sha256$36000$SQboT9twUGCc$ZeyOh3Sx0/FPZoGUY1F8KG6Dw7Or6qDlq3C95+AhMNc=', null, X'30', '', '', '', X'30', X'31', X'323031372d30372d30312031393a34373a32332e313736323737', 'random-test');
INSERT INTO "auth_user" VALUES (7, 'pbkdf2_sha256$36000$Iian5q42SD5W$zQPkxATTBEeFIulUuhNMiG7e9O2FW8jZuQNZ0htTqFw=', null, X'30', '', '', '', X'30', X'31', X'323031372d30372d30312032303a32323a31332e353531363130', 'user_4');
INSERT INTO "auth_user" VALUES (8, 'pbkdf2_sha256$36000$zVUV55nsZK1t$LFni+nf+tJOE5maLp6x6nGJmxS8pF8EMngaxX5PByEc=', X'323031372d30372d30312032313a32393a34372e333039383332', X'30', '', '', '', X'30', X'31', X'323031372d30372d30312032303a32333a33352e343838313839', 'user_5');
INSERT INTO "auth_user" VALUES (14, 'pbkdf2_sha256$36000$iYZKsrdT0d5i$AEGkkSsEHbOVzW3w68hEtBVVjVr1y45PD4EPjWnO3aE=', null, X'30', '', '', 'abc123@gmail.com', X'30', X'30', X'323031372d30372d30312032323a32363a32362e383935383037', 'abc123');
INSERT INTO "auth_user" VALUES (15, 'pbkdf2_sha256$36000$XRCz1aOHpYsW$Mtpo0ydSTpqdnmyYqgBxD+ra3J8xNmflOyRjtklJyFk=', X'323031372d30372d30312032323a33363a31302e343430313337', X'30', '', '', 'ao@gmail.com', X'30', X'31', X'323031372d30372d30312032323a33303a3131', 'ao');
INSERT INTO "auth_user" VALUES (16, 'pbkdf2_sha256$36000$aYCHazUZbTaz$VpBMYxWhS0b6HdreyU2IL3rUw0gQCiX6cY4rRqm9WtY=', null, X'30', '', '', 'new_user@gmail.com', X'30', X'31', X'323031372d30372d30312032323a33353a30302e303031393137', 'new_user');
INSERT INTO "auth_user" VALUES (20, 'pbkdf2_sha256$36000$n6wsUfZw5kzo$9OI+PS+EyVP0BlCP4vtj2oIyssfwuBrZh4NDVDYsV4I=', null, X'30', '', '', 'jmitchel3@gmail.com', X'30', X'30', X'323031372d30372d30332032313a35313a32362e393730363430', 'jmitchel33');
COMMIT;

-- ----------------------------
--  Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS "auth_user_groups";
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"));

-- ----------------------------
--  Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS "auth_user_user_permissions";
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));

-- ----------------------------
--  Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS "django_admin_log";
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "action_time" datetime NOT NULL);
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("django_admin_log", '68');

-- ----------------------------
--  Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO "django_admin_log" VALUES (1, 1, 'RestaurantLocation object', 1, '[{"added": {}}]', 7, 2, X'323031372d30362d32342032323a32353a31362e313733363939');
INSERT INTO "django_admin_log" VALUES (2, 1, 'RestaurantLocation object', 2, '[]', 7, 2, X'323031372d30362d32342032323a32383a34302e333935373636');
INSERT INTO "django_admin_log" VALUES (3, 1, 'RestaurantLocation object', 2, '[{"changed": {"fields": ["category"]}}]', 7, 2, X'323031372d30362d32342032323a32383a34382e353937363636');
INSERT INTO "django_admin_log" VALUES (4, 2, 'RestaurantLocation object', 1, '[{"added": {}}]', 7, 2, X'323031372d30362d32342032323a34323a34312e383730343632');
INSERT INTO "django_admin_log" VALUES (5, 2, 'RestaurantLocation object', 2, '[]', 7, 2, X'323031372d30362d32342032323a34343a31342e333434303137');
INSERT INTO "django_admin_log" VALUES (6, 1, 'RestaurantLocation object', 2, '[]', 7, 2, X'323031372d30362d32342032323a34343a32322e343437353236');
INSERT INTO "django_admin_log" VALUES (7, 3, 'Pei Wei', 2, '[]', 7, 2, X'323031372d30362d32342032333a35343a34392e393931393030');
INSERT INTO "django_admin_log" VALUES (8, 5, 'New item', 1, '[{"added": {}}]', 7, 2, X'323031372d30362d32342032333a35353a30392e353439363539');
INSERT INTO "django_admin_log" VALUES (9, 5, 'ANother new title', 2, '[]', 7, 2, X'323031372d30362d32342032333a35373a31322e343933343236');
INSERT INTO "django_admin_log" VALUES (10, 6, 'ANother new title', 1, '[{"added": {}}]', 7, 2, X'323031372d30362d32342032333a35373a32312e383734393939');
INSERT INTO "django_admin_log" VALUES (11, 1, 'Baja Fish Tacos', 2, '[]', 7, 2, X'323031372d30362d32342032333a35383a34332e363138393838');
INSERT INTO "django_admin_log" VALUES (12, 4, 'Chronic Tacos', 2, '[]', 7, 2, X'323031372d30362d32352030303a30333a30342e363634343331');
INSERT INTO "django_admin_log" VALUES (13, 2, 'TLT', 2, '[]', 7, 2, X'323031372d30362d32352030303a30333a30372e363030343931');
INSERT INTO "django_admin_log" VALUES (14, 3, 'Pei Wei', 2, '[]', 7, 2, X'323031372d30362d32352030303a30333a31302e353133393435');
INSERT INTO "django_admin_log" VALUES (15, 1, 'Item object', 1, '[{"added": {}}]', 8, 2, X'323031372d30362d33302032313a33373a30352e313936393437');
INSERT INTO "django_admin_log" VALUES (16, 1, 'Item object', 2, '[{"changed": {"fields": ["excludes"]}}]', 8, 2, X'323031372d30362d33302032313a33373a32312e393733333138');
INSERT INTO "django_admin_log" VALUES (17, 25, 'Revse Working', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e373836383835');
INSERT INTO "django_admin_log" VALUES (18, 24, 'Abc', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e373838373730');
INSERT INTO "django_admin_log" VALUES (19, 23, 'Abc', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e373839373036');
INSERT INTO "django_admin_log" VALUES (20, 22, 'New Name', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e373930353934');
INSERT INTO "django_admin_log" VALUES (21, 21, 'Jmitchel', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e373931343531');
INSERT INTO "django_admin_log" VALUES (22, 19, 'Validate', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e373932323830');
INSERT INTO "django_admin_log" VALUES (23, 18, 'Cat', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e373933343831');
INSERT INTO "django_admin_log" VALUES (24, 17, 'Asian Item', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e373934353930');
INSERT INTO "django_admin_log" VALUES (25, 16, 'New name', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e373935343630');
INSERT INTO "django_admin_log" VALUES (26, 15, 'Name', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e373936333634');
INSERT INTO "django_admin_log" VALUES (27, 14, 'Success URL', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e373937323830');
INSERT INTO "django_admin_log" VALUES (28, 13, 'Create View', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e373938313733');
INSERT INTO "django_admin_log" VALUES (29, 12, 'Another new awesome form', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e373939343136');
INSERT INTO "django_admin_log" VALUES (30, 11, 'New car', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e383030343331');
INSERT INTO "django_admin_log" VALUES (31, 10, 'NEw item name!', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e383031353337');
INSERT INTO "django_admin_log" VALUES (32, 9, 'New item', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e383032353132');
INSERT INTO "django_admin_log" VALUES (33, 8, 'Create', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e383033353232');
INSERT INTO "django_admin_log" VALUES (34, 6, 'ANother new title', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e383034383836');
INSERT INTO "django_admin_log" VALUES (35, 5, 'ANother new title', 3, '', 7, 2, X'323031372d30362d33302032323a32373a34352e383036303437');
INSERT INTO "django_admin_log" VALUES (36, 3, 'random-test', 1, '[{"added": {}}]', 4, 2, X'323031372d30372d30312031393a34373a32332e323134313430');
INSERT INTO "django_admin_log" VALUES (37, 1, 'random-test', 2, '[{"changed": {"fields": ["activated"]}}]', 9, 2, X'323031372d30372d30312031393a34373a34372e333930383134');
INSERT INTO "django_admin_log" VALUES (38, 1, 'random-test', 2, '[]', 9, 2, X'323031372d30372d30312031393a34393a32322e393031353737');
INSERT INTO "django_admin_log" VALUES (39, 2, 'cfe', 1, '[{"added": {}}]', 9, 2, X'323031372d30372d30312031393a35313a31362e333834303332');
INSERT INTO "django_admin_log" VALUES (40, 2, 'cfe', 3, '', 9, 2, X'323031372d30372d30312032303a30343a30332e333831323233');
INSERT INTO "django_admin_log" VALUES (41, 1, 'random-test', 2, '[]', 9, 2, X'323031372d30372d30312032303a30343a31372e373332333931');
INSERT INTO "django_admin_log" VALUES (42, 3, 'cfe', 1, '[{"added": {}}]', 9, 2, X'323031372d30372d30312032303a30363a33332e363139333936');
INSERT INTO "django_admin_log" VALUES (43, 4, 'jmitchel3', 1, '[{"added": {}}]', 9, 2, X'323031372d30372d30312032303a31313a34372e303332383831');
INSERT INTO "django_admin_log" VALUES (44, 4, 'user_4', 1, '[{"added": {}}]', 4, 2, X'323031372d30372d30312032303a31333a32352e363039383238');
INSERT INTO "django_admin_log" VALUES (45, 5, 'user_5', 1, '[{"added": {}}]', 4, 2, X'323031372d30372d30312032303a31333a35312e393236303936');
INSERT INTO "django_admin_log" VALUES (46, 6, 'user_6', 1, '[{"added": {}}]', 4, 2, X'323031372d30372d30312032303a31343a33382e393232333133');
INSERT INTO "django_admin_log" VALUES (47, 4, 'user_4', 3, '', 4, 2, X'323031372d30372d30312032303a31393a35372e303432333036');
INSERT INTO "django_admin_log" VALUES (48, 5, 'user_5', 3, '', 4, 2, X'323031372d30372d30312032303a31393a35372e303433383038');
INSERT INTO "django_admin_log" VALUES (49, 6, 'user_6', 3, '', 4, 2, X'323031372d30372d30312032303a31393a35372e303434393032');
INSERT INTO "django_admin_log" VALUES (50, 7, 'user_4', 1, '[{"added": {}}]', 4, 2, X'323031372d30372d30312032303a32323a31332e353935353832');
INSERT INTO "django_admin_log" VALUES (51, 8, 'user_5', 1, '[{"added": {}}]', 4, 2, X'323031372d30372d30312032303a32333a33352e353332373533');
INSERT INTO "django_admin_log" VALUES (52, 2, 'Carne Asada Tacos', 2, '[{"changed": {"fields": ["user"]}}]', 8, 2, X'323031372d30372d30312032313a32323a30342e393737323933');
INSERT INTO "django_admin_log" VALUES (53, 7, 'Al Pastor Burrito', 2, '[{"changed": {"fields": ["user"]}}]', 8, 2, X'323031372d30372d30312032313a32323a30382e323138353239');
INSERT INTO "django_admin_log" VALUES (54, 6, 'Carne Asada Bowl', 2, '[{"changed": {"fields": ["user"]}}]', 8, 2, X'323031372d30372d30312032313a32323a31312e373036393234');
INSERT INTO "django_admin_log" VALUES (55, 28, 'Chronic Tacos', 2, '[{"changed": {"fields": ["owner"]}}]', 7, 2, X'323031372d30372d30312032313a32323a33312e353530383431');
INSERT INTO "django_admin_log" VALUES (56, 29, 'Chronic Tacos', 1, '[{"added": {}}]', 7, 2, X'323031372d30372d30312032313a32363a35362e313639363535');
INSERT INTO "django_admin_log" VALUES (57, 6, 'Carne Asada Bowl', 2, '[{"changed": {"fields": ["restaurant"]}}]', 8, 2, X'323031372d30372d30312032313a32373a30362e393730313035');
INSERT INTO "django_admin_log" VALUES (58, 8, 'user_5', 2, '[{"changed": {"fields": ["password"]}}]', 4, 2, X'323031372d30372d30312032313a32393a33352e353733363835');
INSERT INTO "django_admin_log" VALUES (59, 10, 'abc1', 3, '', 4, 2, X'323031372d30372d30312032323a31333a33352e393337393933');
INSERT INTO "django_admin_log" VALUES (60, 11, 'abc12', 3, '', 4, 2, X'323031372d30372d30312032323a31333a33352e393339393437');
INSERT INTO "django_admin_log" VALUES (61, 9, 'abc123', 3, '', 4, 2, X'323031372d30372d30312032323a31333a33352e393431303030');
INSERT INTO "django_admin_log" VALUES (62, 12, 'abc1231231', 3, '', 4, 2, X'323031372d30372d30312032323a31333a33352e393432303435');
INSERT INTO "django_admin_log" VALUES (63, 13, 'abc123', 3, '', 4, 2, X'323031372d30372d30312032323a32363a31322e353633373236');
INSERT INTO "django_admin_log" VALUES (64, 15, 'ao', 2, '[{"changed": {"fields": ["password"]}}]', 4, 2, X'323031372d30372d30312032323a33353a35352e323935303934');
INSERT INTO "django_admin_log" VALUES (65, 15, 'ao', 2, '[{"changed": {"fields": ["is_active"]}}]', 4, 2, X'323031372d30372d30312032323a33363a30382e313332313234');
INSERT INTO "django_admin_log" VALUES (66, 17, 'jmitchel33', 3, '', 4, 2, X'323031372d30372d30332032313a34343a34302e323439353437');
INSERT INTO "django_admin_log" VALUES (67, 18, 'jmitchel33', 3, '', 4, 2, X'323031372d30372d30332032313a34363a30392e323833313637');
INSERT INTO "django_admin_log" VALUES (68, 19, 'jmitchel33', 3, '', 4, 2, X'323031372d30372d30332032313a35313a31352e313937383430');
COMMIT;

-- ----------------------------
--  Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS "django_content_type";
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("django_content_type", '9');

-- ----------------------------
--  Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO "django_content_type" VALUES (1, 'admin', 'logentry');
INSERT INTO "django_content_type" VALUES (2, 'auth', 'permission');
INSERT INTO "django_content_type" VALUES (3, 'auth', 'group');
INSERT INTO "django_content_type" VALUES (4, 'auth', 'user');
INSERT INTO "django_content_type" VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO "django_content_type" VALUES (6, 'sessions', 'session');
INSERT INTO "django_content_type" VALUES (7, 'restaurants', 'restaurantlocation');
INSERT INTO "django_content_type" VALUES (8, 'menus', 'item');
INSERT INTO "django_content_type" VALUES (9, 'profiles', 'profile');
COMMIT;

-- ----------------------------
--  Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS "django_migrations";
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("django_migrations", '28');

-- ----------------------------
--  Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO "django_migrations" VALUES (1, 'contenttypes', '0001_initial', X'323031372d30362d32322031393a35353a32352e313536333537');
INSERT INTO "django_migrations" VALUES (2, 'auth', '0001_initial', X'323031372d30362d32322031393a35353a32352e313835303037');
INSERT INTO "django_migrations" VALUES (3, 'admin', '0001_initial', X'323031372d30362d32322031393a35353a32352e313937353532');
INSERT INTO "django_migrations" VALUES (4, 'admin', '0002_logentry_remove_auto_add', X'323031372d30362d32322031393a35353a32352e323039303439');
INSERT INTO "django_migrations" VALUES (5, 'contenttypes', '0002_remove_content_type_name', X'323031372d30362d32322031393a35353a32352e323331383638');
INSERT INTO "django_migrations" VALUES (6, 'auth', '0002_alter_permission_name_max_length', X'323031372d30362d32322031393a35353a32352e323338323032');
INSERT INTO "django_migrations" VALUES (7, 'auth', '0003_alter_user_email_max_length', X'323031372d30362d32322031393a35353a32352e323530383335');
INSERT INTO "django_migrations" VALUES (8, 'auth', '0004_alter_user_username_opts', X'323031372d30362d32322031393a35353a32352e323632373838');
INSERT INTO "django_migrations" VALUES (9, 'auth', '0005_alter_user_last_login_null', X'323031372d30362d32322031393a35353a32352e323734383138');
INSERT INTO "django_migrations" VALUES (10, 'auth', '0006_require_contenttypes_0002', X'323031372d30362d32322031393a35353a32352e323736313839');
INSERT INTO "django_migrations" VALUES (11, 'auth', '0007_alter_validators_add_error_messages', X'323031372d30362d32322031393a35353a32352e323839383733');
INSERT INTO "django_migrations" VALUES (12, 'auth', '0008_alter_user_username_max_length', X'323031372d30362d32322031393a35353a32352e333031363230');
INSERT INTO "django_migrations" VALUES (13, 'sessions', '0001_initial', X'323031372d30362d32322031393a35353a32352e333035363730');
INSERT INTO "django_migrations" VALUES (14, 'restaurants', '0001_initial', X'323031372d30362d32342032323a32313a34362e353739393731');
INSERT INTO "django_migrations" VALUES (15, 'restaurants', '0002_restaurant_location', X'323031372d30362d32342032323a32333a30372e323631393533');
INSERT INTO "django_migrations" VALUES (16, 'restaurants', '0003_auto_20170624_2224', X'323031372d30362d32342032323a32343a35312e363333303231');
INSERT INTO "django_migrations" VALUES (17, 'restaurants', '0004_restaurantlocation_category', X'323031372d30362d32342032323a32383a30382e303635333331');
INSERT INTO "django_migrations" VALUES (18, 'restaurants', '0005_auto_20170624_2228', X'323031372d30362d32342032323a32383a33342e313733303532');
INSERT INTO "django_migrations" VALUES (19, 'restaurants', '0006_restaurantlocation_timestamp', X'323031372d30362d32342032323a33323a33342e373535313630');
INSERT INTO "django_migrations" VALUES (20, 'restaurants', '0007_auto_20170624_2233', X'323031372d30362d32342032323a33333a33332e393431373439');
INSERT INTO "django_migrations" VALUES (21, 'restaurants', '0008_restaurantlocation_slug', X'323031372d30362d32342032333a34393a32372e393131303535');
INSERT INTO "django_migrations" VALUES (22, 'restaurants', '0009_auto_20170627_0027', X'323031372d30362d32372030303a32373a31372e303831373833');
INSERT INTO "django_migrations" VALUES (23, 'restaurants', '0010_restaurantlocation_owner', X'323031372d30362d32372032313a32393a35362e313135353136');
INSERT INTO "django_migrations" VALUES (24, 'menus', '0001_initial', X'323031372d30362d33302032313a32363a34362e303632333134');
INSERT INTO "django_migrations" VALUES (25, 'profiles', '0001_initial', X'323031372d30372d30312031393a34363a33382e343030343938');
INSERT INTO "django_migrations" VALUES (26, 'profiles', '0002_auto_20170701_2008', X'323031372d30372d30312032303a30383a32302e303738363535');
INSERT INTO "django_migrations" VALUES (27, 'profiles', '0003_remove_profile_following', X'323031372d30372d30312032303a31313a32362e343334383333');
INSERT INTO "django_migrations" VALUES (28, 'profiles', '0004_profile_activation_key', X'323031372d30372d30312032323a32313a35362e393530363134');
COMMIT;

-- ----------------------------
--  Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS "django_session";
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);

-- ----------------------------
--  Records of django_session
-- ----------------------------
BEGIN;
INSERT INTO "django_session" VALUES ('r5bloxpgv3lhbuwslo68zjsvzlec81ty', 'ZDc0NGZlMzljOTczYzgxYmQ5NDgyZjc0NWYyNDZiZWYzZDRmYTE1ZTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ZTIyNmMxNzJmZjhlZDgwMTI0MDdiZTBmMjQ4OGY5ZjlkOTA2NjQ1In0=', X'323031372d30372d31312032323a31383a32372e383435343033');
INSERT INTO "django_session" VALUES ('uzpw1yi9e41jyss2o9dsib5kqsy1izho', 'ZGQxMDY2NGZhNzgwOTFkMTJkYWRlNjA2YjQyODM4ZDcyNTc2Njc1ZDp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZmM4ODUyZjg5Yzg0ODU5ZmY4Mzk2OTBkZDc5ZWE4MDQ2Yjg0Nzc0YyJ9', X'323031372d30372d31352032323a33363a31302e343432313835');
COMMIT;

-- ----------------------------
--  Table structure for menus_item
-- ----------------------------
DROP TABLE IF EXISTS "menus_item";
CREATE TABLE "menus_item" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(120) NOT NULL, "contents" text NOT NULL, "excludes" text NULL, "public" bool NOT NULL, "timestamp" datetime NOT NULL, "updated" datetime NOT NULL, "restaurant_id" integer NOT NULL REFERENCES "restaurants_restaurantlocation" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("menus_item", '8');

-- ----------------------------
--  Records of menus_item
-- ----------------------------
BEGIN;
INSERT INTO "menus_item" VALUES (1, 'Unwrapped Burrito', 'Mixed Greens,
Guacamole,
Carne Asada,
Pico di Gallo,
Cheese', 'Corn,
Onions,
Radish', X'31', X'323031372d30362d33302032313a33373a30352e313935363035', X'323031372d30362d33302032323a33353a33352e343337303134', 20, 2);
INSERT INTO "menus_item" VALUES (2, 'Carne Asada Tacos', 'Side of Rice,
Side of Black Beans,
carne asada,
flour tortillas,
salsa,
cheese,
guacamole', '', X'31', X'323031372d30362d33302032313a34373a34372e303338393432', X'323031372d30372d30312032313a32323a30342e393736303635', 20, 1);
INSERT INTO "menus_item" VALUES (3, 'Chicen Tacos', 'chicken,
flour tortillas,
salsa,
cheese,
guacamole', '', X'31', X'323031372d30362d33302032323a30313a30352e343439383338', X'323031372d30362d33302032323a33333a35312e333939353739', 20, 2);
INSERT INTO "menus_item" VALUES (4, 'Steak Burrito', 'Flour Tortilla,
Steak,
White Rice,
Pico Di Gallo (extra),
Cheese,
Guacamole,
Lettuce', '', X'31', X'323031372d30362d33302032323a33393a35382e373739393532', X'323031372d30362d33302032323a33393a35382e373739393738', 26, 2);
INSERT INTO "menus_item" VALUES (5, 'Build Your Own', 'Regular Dough,
Spicy Marinara,
Mozzarella,
Bacon,
Chicken,
Pepperoni,
Basil,
Jalopenos,
Garlic,
Diced Tomatoes,
Salt,
Oregano', '', X'31', X'323031372d30362d33302032323a34333a33392e353632303933', X'323031372d30362d33302032323a34333a33392e353632313234', 27, 2);
INSERT INTO "menus_item" VALUES (6, 'Carne Asada Bowl', 'Carne Asada,
Refried Beans,
Spanish Rice,
Cheese,
Cilantro,
Lime,
Pico Di Gallo,
Salsa Roja,
Lettuce,
Guacamole', '', X'31', X'323031372d30362d33302032323a34353a32362e323134363030', X'323031372d30372d30312032313a32373a30362e393639323034', 29, 8);
INSERT INTO "menus_item" VALUES (7, 'Al Pastor Burrito', 'Al Pastor,
Flour Tortilla,
Refried Beans,
Spanish Rice,
Cheese,
Cilantro,
Lime,
Pico Di Gallo,
Salsa Roja,
Lettuce,
Guacamole', '', X'31', X'323031372d30362d33302032323a34353a35342e313334353739', X'323031372d30372d30312032313a32323a30382e323137363633', 28, 1);
INSERT INTO "menus_item" VALUES (8, 'Cheese Pizza', 'Cheese, 
Sauce,
Dough', '', X'31', X'323031372d30372d30312032313a33303a32342e373734303934', X'323031372d30372d30312032313a33303a34342e313631313036', 30, 8);
COMMIT;

-- ----------------------------
--  Table structure for profiles_profile
-- ----------------------------
DROP TABLE IF EXISTS "profiles_profile";
CREATE TABLE "profiles_profile" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "activated" bool NOT NULL, "timestamp" datetime NOT NULL, "updated" datetime NOT NULL, "user_id" integer NOT NULL UNIQUE REFERENCES "auth_user" ("id"), "activation_key" varchar(120) NULL);
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("profiles_profile", '17');

-- ----------------------------
--  Records of profiles_profile
-- ----------------------------
BEGIN;
INSERT INTO "profiles_profile" VALUES (1, X'31', X'323031372d30372d30312031393a34373a32332e323133363636', X'323031372d30372d30312032303a30343a31372e373239353539', 3, null);
INSERT INTO "profiles_profile" VALUES (3, X'31', X'323031372d30372d30312032303a30363a33332e363135303539', X'323031372d30372d30312032303a31333a35312e393235343035', 1, null);
INSERT INTO "profiles_profile" VALUES (4, X'31', X'323031372d30372d30312032303a31313a34372e303239353039', X'323031372d30372d30312032303a31313a34372e303239353430', 2, null);
INSERT INTO "profiles_profile" VALUES (8, X'30', X'323031372d30372d30312032303a32323a31332e353933313633', X'323031372d30372d30312032303a32323a31332e353933313931', 7, null);
INSERT INTO "profiles_profile" VALUES (9, X'30', X'323031372d30372d30312032303a32333a33352e353238303632', X'323031372d30372d30312032303a32333a33352e353238303934', 8, null);
INSERT INTO "profiles_profile" VALUES (11, X'30', X'323031372d30372d30312032323a32363a32362e393431323338', X'323031372d30372d30312032323a32363a32362e393530353432', 14, 'uyon9j6tf376omepwt507ycu0nnan4f9xti');
INSERT INTO "profiles_profile" VALUES (12, X'30', X'323031372d30372d30312032323a33303a31312e383531333336', X'323031372d30372d30312032323a33303a31312e383631323934', 15, 'd0toppmn79204vr6fjqng7v56qdr8mwrkrl');
INSERT INTO "profiles_profile" VALUES (13, X'31', X'323031372d30372d30312032323a33353a30302e303435343134', X'323031372d30372d30312032323a33353a31312e383132343136', 16, null);
INSERT INTO "profiles_profile" VALUES (17, X'30', X'323031372d30372d30332032313a35313a32372e303135383738', X'323031372d30372d30332032313a35313a32372e303230343338', 20, 'k8nqs7z9se71r9p843am4vjjvpg8lb6ascf');
COMMIT;

-- ----------------------------
--  Table structure for profiles_profile_followers
-- ----------------------------
DROP TABLE IF EXISTS "profiles_profile_followers";
CREATE TABLE "profiles_profile_followers" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "profile_id" integer NOT NULL REFERENCES "profiles_profile" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("profiles_profile_followers", '55');

-- ----------------------------
--  Records of profiles_profile_followers
-- ----------------------------
BEGIN;
INSERT INTO "profiles_profile_followers" VALUES (1, 1, 1);
INSERT INTO "profiles_profile_followers" VALUES (2, 1, 2);
INSERT INTO "profiles_profile_followers" VALUES (5, 3, 3);
INSERT INTO "profiles_profile_followers" VALUES (6, 4, 1);
INSERT INTO "profiles_profile_followers" VALUES (8, 4, 3);
INSERT INTO "profiles_profile_followers" VALUES (12, 3, 7);
INSERT INTO "profiles_profile_followers" VALUES (13, 3, 8);
INSERT INTO "profiles_profile_followers" VALUES (14, 9, 1);
INSERT INTO "profiles_profile_followers" VALUES (19, 4, 2);
INSERT INTO "profiles_profile_followers" VALUES (25, 9, 2);
INSERT INTO "profiles_profile_followers" VALUES (27, 3, 2);
INSERT INTO "profiles_profile_followers" VALUES (43, 3, 14);
INSERT INTO "profiles_profile_followers" VALUES (44, 11, 1);
INSERT INTO "profiles_profile_followers" VALUES (45, 11, 2);
INSERT INTO "profiles_profile_followers" VALUES (46, 3, 15);
INSERT INTO "profiles_profile_followers" VALUES (47, 12, 1);
INSERT INTO "profiles_profile_followers" VALUES (48, 12, 2);
INSERT INTO "profiles_profile_followers" VALUES (49, 3, 16);
INSERT INTO "profiles_profile_followers" VALUES (50, 13, 1);
INSERT INTO "profiles_profile_followers" VALUES (51, 13, 2);
INSERT INTO "profiles_profile_followers" VALUES (55, 3, 20);
COMMIT;

-- ----------------------------
--  Table structure for restaurants_restaurantlocation
-- ----------------------------
DROP TABLE IF EXISTS "restaurants_restaurantlocation";
CREATE TABLE "restaurants_restaurantlocation" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(120) NOT NULL, "location" varchar(120) NULL, "category" varchar(120) NULL, "timestamp" datetime NOT NULL, "updated" datetime NOT NULL, "slug" varchar(50) NULL, "owner_id" integer NOT NULL REFERENCES "auth_user" ("id"));
INSERT INTO "main".sqlite_sequence (name, seq) VALUES ("restaurants_restaurantlocation", '30');

-- ----------------------------
--  Records of restaurants_restaurantlocation
-- ----------------------------
BEGIN;
INSERT INTO "restaurants_restaurantlocation" VALUES (1, 'Baja Fish Tacos', 'Costa Mesa', 'Mexican', X'323031372d30362d32342032323a33323a33342e373532363330', X'323031372d30362d32342032333a35383a34332e363138303630', 'baja-fish-tacos', 1);
INSERT INTO "restaurants_restaurantlocation" VALUES (2, 'TLT', 'Newport Beach', 'Mexican', X'323031372d30362d32342032323a34323a34312e383639383331', X'323031372d30362d32352030303a30333a30372e353939323631', 'tlt', 1);
INSERT INTO "restaurants_restaurantlocation" VALUES (3, 'Pei Wei', 'Newport Beach', 'Asian Fusion', X'323031372d30362d32342032323a35333a31312e333835393138', X'323031372d30362d32352030303a30333a31302e353133313638', 'pei-wei', 1);
INSERT INTO "restaurants_restaurantlocation" VALUES (4, 'Chronic Tacos', 'Corona Del Mar', 'Mexican', X'323031372d30362d32342032323a35353a31362e333633323733', X'323031372d30362d32352030303a30333a30342e363633353438', 'chronic-tacos', 1);
INSERT INTO "restaurants_restaurantlocation" VALUES (7, 'Chipotle', 'Irvine', 'Mexican', X'323031372d30362d32362032333a35323a34322e353539323635', X'323031372d30362d32362032333a35323a34322e353539333038', 'chipotle', 1);
INSERT INTO "restaurants_restaurantlocation" VALUES (20, 'Baja Fish Tacos', 'Costa Mesa', 'Mexican', X'323031372d30362d32372032313a34373a34342e363136393234', X'323031372d30362d33302032323a33313a34332e333936393139', 'baja-fish-tacos', 2);
INSERT INTO "restaurants_restaurantlocation" VALUES (26, 'Chipolte', 'Newport Beach', 'Mexican', X'323031372d30362d33302032323a33393a30332e343234393936', X'323031372d30362d33302032323a33393a30332e343235303233', 'chipolte', 2);
INSERT INTO "restaurants_restaurantlocation" VALUES (27, 'Blaze Pizza', 'Newport Beach', 'Pizza', X'323031372d30362d33302032323a34323a31342e373234393033', X'323031372d30362d33302032323a34323a31342e373234393335', 'blaze-pizza', 2);
INSERT INTO "restaurants_restaurantlocation" VALUES (28, 'Chronic Tacos', 'Newport Beach', 'Mexican', X'323031372d30362d33302032323a34333a35372e373835343830', X'323031372d30372d30312032313a32323a33312e353439393133', 'chronic-tacos-czaw', 1);
INSERT INTO "restaurants_restaurantlocation" VALUES (29, 'Chronic Tacos', 'Newport Beach', 'Mexican', X'323031372d30372d30312032313a32363a35362e313638393338', X'323031372d30372d30312032313a32363a35362e313638393734', 'chronic-tacos-097t', 8);
INSERT INTO "restaurants_restaurantlocation" VALUES (30, 'Blaze Pizza', 'Newport Beach', 'Pizza', X'323031372d30372d30312032313a33303a30382e323437323433', X'323031372d30372d30312032313a33303a30382e323437323730', 'blaze-pizza-6ram', 8);
COMMIT;

-- ----------------------------
--  Indexes structure for table auth_group_permissions
-- ----------------------------
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- ----------------------------
--  Indexes structure for table auth_permission
-- ----------------------------
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- ----------------------------
--  Indexes structure for table auth_user_groups
-- ----------------------------
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- ----------------------------
--  Indexes structure for table auth_user_user_permissions
-- ----------------------------
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- ----------------------------
--  Indexes structure for table django_admin_log
-- ----------------------------
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- ----------------------------
--  Indexes structure for table django_content_type
-- ----------------------------
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- ----------------------------
--  Indexes structure for table django_session
-- ----------------------------
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

-- ----------------------------
--  Indexes structure for table menus_item
-- ----------------------------
CREATE INDEX "menus_item_restaurant_id_20c098d7" ON "menus_item" ("restaurant_id");
CREATE INDEX "menus_item_user_id_9d6e636f" ON "menus_item" ("user_id");

-- ----------------------------
--  Indexes structure for table profiles_profile_followers
-- ----------------------------
CREATE UNIQUE INDEX "profiles_profile_followers_profile_id_user_id_292b1242_uniq" ON "profiles_profile_followers" ("profile_id", "user_id");
CREATE INDEX "profiles_profile_followers_profile_id_844972e6" ON "profiles_profile_followers" ("profile_id");
CREATE INDEX "profiles_profile_followers_user_id_1b43f1aa" ON "profiles_profile_followers" ("user_id");

-- ----------------------------
--  Indexes structure for table restaurants_restaurantlocation
-- ----------------------------
CREATE INDEX "restaurants_restaurantlocation_slug_76a25dfe" ON "restaurants_restaurantlocation" ("slug");
CREATE INDEX "restaurants_restaurantlocation_owner_id_82e72855" ON "restaurants_restaurantlocation" ("owner_id");

PRAGMA foreign_keys = true;
