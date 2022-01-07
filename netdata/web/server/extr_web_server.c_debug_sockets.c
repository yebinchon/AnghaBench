
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* fds_acl_flags; int * fds_names; scalar_t__ opened; } ;
typedef int BUFFER ;


 int D_WEB_CLIENT ;
 int WEB_CLIENT_ACL_BADGE ;
 int WEB_CLIENT_ACL_DASHBOARD ;
 int WEB_CLIENT_ACL_MGMT ;
 int WEB_CLIENT_ACL_NETDATACONF ;
 int WEB_CLIENT_ACL_NOCHECK ;
 int WEB_CLIENT_ACL_REGISTRY ;
 int WEB_CLIENT_ACL_STREAMING ;
 TYPE_1__ api_sockets ;
 int * buffer_create (int) ;
 int buffer_free (int *) ;
 int buffer_reset (int *) ;
 int buffer_strcat (int *,char*) ;
 int buffer_tostring (int *) ;
 int debug (int ,char*,int,int ,int ) ;

void debug_sockets() {
 BUFFER *wb = buffer_create(256 * sizeof(char));
 int i;

 for(i = 0 ; i < (int)api_sockets.opened ; i++) {
  buffer_strcat(wb, (api_sockets.fds_acl_flags[i] & WEB_CLIENT_ACL_NOCHECK)?"NONE ":"");
  buffer_strcat(wb, (api_sockets.fds_acl_flags[i] & WEB_CLIENT_ACL_DASHBOARD)?"dashboard ":"");
  buffer_strcat(wb, (api_sockets.fds_acl_flags[i] & WEB_CLIENT_ACL_REGISTRY)?"registry ":"");
  buffer_strcat(wb, (api_sockets.fds_acl_flags[i] & WEB_CLIENT_ACL_BADGE)?"badges ":"");
  buffer_strcat(wb, (api_sockets.fds_acl_flags[i] & WEB_CLIENT_ACL_MGMT)?"management ":"");
  buffer_strcat(wb, (api_sockets.fds_acl_flags[i] & WEB_CLIENT_ACL_STREAMING)?"streaming ":"");
  buffer_strcat(wb, (api_sockets.fds_acl_flags[i] & WEB_CLIENT_ACL_NETDATACONF)?"netdata.conf ":"");
  debug(D_WEB_CLIENT, "Socket fd %d name '%s' acl_flags: %s",
     i,
     api_sockets.fds_names[i],
     buffer_tostring(wb));
  buffer_reset(wb);
 }
 buffer_free(wb);
}
