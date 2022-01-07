
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fpm_worker_pool_s {int socket_uid; int socket_gid; TYPE_1__* config; scalar_t__ socket_acl; } ;
typedef scalar_t__ acl_t ;
typedef int acl_entry_t ;
struct TYPE_2__ {char const* listen_address; int name; } ;


 int ACL_FIRST_ENTRY ;
 int ACL_NEXT_ENTRY ;
 int ACL_TYPE_ACCESS ;
 int ZLOG_DEBUG ;
 int ZLOG_SYSERROR ;
 scalar_t__ acl_calc_mask (scalar_t__*) ;
 scalar_t__ acl_copy_entry (int ,int ) ;
 scalar_t__ acl_create_entry (scalar_t__*,int *) ;
 int acl_free (scalar_t__) ;
 scalar_t__ acl_get_entry (scalar_t__,int,int *) ;
 scalar_t__ acl_get_file (char const*,int ) ;
 scalar_t__ acl_set_file (char const*,int ,scalar_t__) ;
 scalar_t__ acl_valid (scalar_t__) ;
 scalar_t__ chown (char const*,int,int) ;
 int zlog (int ,char*,int ,char const*) ;

int fpm_unix_set_socket_premissions(struct fpm_worker_pool_s *wp, const char *path)
{
 if (wp->socket_uid != -1 || wp->socket_gid != -1) {
  if (0 > chown(path, wp->socket_uid, wp->socket_gid)) {
   zlog(ZLOG_SYSERROR, "[pool %s] failed to chown() the socket '%s'", wp->config->name, wp->config->listen_address);
   return -1;
  }
 }
 return 0;
}
