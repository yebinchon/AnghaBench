
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; int pw_gid; } ;
struct group {int gr_gid; } ;
struct fpm_worker_pool_s {int socket_uid; int socket_gid; int socket_mode; struct fpm_worker_pool_config_s* config; int * socket_acl; } ;
struct fpm_worker_pool_config_s {char* listen_acl_users; char* listen_acl_groups; char* listen_owner; char* listen_group; int name; scalar_t__* listen_mode; } ;
typedef int * acl_t ;
typedef int acl_permset_t ;
typedef int acl_entry_t ;


 int ACL_GROUP ;
 int ACL_READ ;
 int ACL_USER ;
 int ACL_WRITE ;
 int ZLOG_DEBUG ;
 int ZLOG_SYSERROR ;
 int ZLOG_WARNING ;
 scalar_t__ acl_add_perm (int ,int ) ;
 scalar_t__ acl_clear_perms (int ) ;
 scalar_t__ acl_create_entry (int **,int *) ;
 int acl_free (int *) ;
 scalar_t__ acl_get_permset (int ,int *) ;
 int * acl_init (int) ;
 scalar_t__ acl_set_qualifier (int ,int*) ;
 scalar_t__ acl_set_tag_type (int ,int ) ;
 int efree (char*) ;
 char* estrdup (char*) ;
 struct group* getgrnam (char*) ;
 struct passwd* getpwnam (char*) ;
 char* strchr (char*,char) ;
 int strtoul (scalar_t__*,int ,int) ;
 int zlog (int ,char*,int ,...) ;

int fpm_unix_resolve_socket_premissions(struct fpm_worker_pool_s *wp)
{
 struct fpm_worker_pool_config_s *c = wp->config;






 wp->socket_uid = -1;
 wp->socket_gid = -1;
 wp->socket_mode = 0660;

 if (!c) {
  return 0;
 }

 if (c->listen_mode && *c->listen_mode) {
  wp->socket_mode = strtoul(c->listen_mode, 0, 8);
 }
 if (c->listen_owner && *c->listen_owner) {
  struct passwd *pwd;

  pwd = getpwnam(c->listen_owner);
  if (!pwd) {
   zlog(ZLOG_SYSERROR, "[pool %s] cannot get uid for user '%s'", wp->config->name, c->listen_owner);
   return -1;
  }

  wp->socket_uid = pwd->pw_uid;
  wp->socket_gid = pwd->pw_gid;
 }

 if (c->listen_group && *c->listen_group) {
  struct group *grp;

  grp = getgrnam(c->listen_group);
  if (!grp) {
   zlog(ZLOG_SYSERROR, "[pool %s] cannot get gid for group '%s'", wp->config->name, c->listen_group);
   return -1;
  }
  wp->socket_gid = grp->gr_gid;
 }

 return 0;
}
