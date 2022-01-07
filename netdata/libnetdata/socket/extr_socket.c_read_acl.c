
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WEB_CLIENT_ACL ;


 int WEB_CLIENT_ACL_BADGE ;
 int WEB_CLIENT_ACL_DASHBOARD ;
 int WEB_CLIENT_ACL_MGMT ;
 int WEB_CLIENT_ACL_NETDATACONF ;
 int WEB_CLIENT_ACL_REGISTRY ;
 int WEB_CLIENT_ACL_STREAMING ;
 int socket_ssl_acl (char*) ;
 int strcmp (char*,char*) ;

WEB_CLIENT_ACL read_acl(char *st) {
    WEB_CLIENT_ACL ret = socket_ssl_acl(st);

    if (!strcmp(st,"dashboard")) ret |= WEB_CLIENT_ACL_DASHBOARD;
    if (!strcmp(st,"registry")) ret |= WEB_CLIENT_ACL_REGISTRY;
    if (!strcmp(st,"badges")) ret |= WEB_CLIENT_ACL_BADGE;
    if (!strcmp(st,"management")) ret |= WEB_CLIENT_ACL_MGMT;
    if (!strcmp(st,"streaming")) ret |= WEB_CLIENT_ACL_STREAMING;
    if (!strcmp(st,"netdata.conf")) ret |= WEB_CLIENT_ACL_NETDATACONF;

    return ret;
}
