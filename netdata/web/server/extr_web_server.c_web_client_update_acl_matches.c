
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct web_client {int port_acl; int acl; int client_host; int client_ip; int ifd; } ;


 int WEB_CLIENT_ACL_BADGE ;
 int WEB_CLIENT_ACL_DASHBOARD ;
 int WEB_CLIENT_ACL_MGMT ;
 int WEB_CLIENT_ACL_NETDATACONF ;
 int WEB_CLIENT_ACL_NONE ;
 int WEB_CLIENT_ACL_REGISTRY ;
 int WEB_CLIENT_ACL_STREAMING ;
 scalar_t__ connection_allowed (int ,int ,int ,int,int ,char*,int ) ;
 int web_allow_badges_dns ;
 int web_allow_badges_from ;
 int web_allow_dashboard_dns ;
 int web_allow_dashboard_from ;
 int web_allow_mgmt_dns ;
 int web_allow_mgmt_from ;
 int web_allow_netdataconf_dns ;
 int web_allow_netdataconf_from ;
 int web_allow_registry_dns ;
 int web_allow_registry_from ;
 int web_allow_streaming_dns ;
 int web_allow_streaming_from ;

void web_client_update_acl_matches(struct web_client *w) {
    w->acl = WEB_CLIENT_ACL_NONE;

    if (!web_allow_dashboard_from ||
        connection_allowed(w->ifd, w->client_ip, w->client_host, sizeof(w->client_host),
                           web_allow_dashboard_from, "dashboard", web_allow_dashboard_dns))
        w->acl |= WEB_CLIENT_ACL_DASHBOARD;

    if (!web_allow_registry_from ||
        connection_allowed(w->ifd, w->client_ip, w->client_host, sizeof(w->client_host),
                           web_allow_registry_from, "registry", web_allow_registry_dns))
        w->acl |= WEB_CLIENT_ACL_REGISTRY;

    if (!web_allow_badges_from ||
        connection_allowed(w->ifd, w->client_ip, w->client_host, sizeof(w->client_host),
                           web_allow_badges_from, "badges", web_allow_badges_dns))
        w->acl |= WEB_CLIENT_ACL_BADGE;

    if (!web_allow_mgmt_from ||
        connection_allowed(w->ifd, w->client_ip, w->client_host, sizeof(w->client_host),
                           web_allow_mgmt_from, "management", web_allow_mgmt_dns))
        w->acl |= WEB_CLIENT_ACL_MGMT;

    if (!web_allow_streaming_from ||
        connection_allowed(w->ifd, w->client_ip, w->client_host, sizeof(w->client_host),
                           web_allow_streaming_from, "streaming", web_allow_streaming_dns))
        w->acl |= WEB_CLIENT_ACL_STREAMING;

    if (!web_allow_netdataconf_from ||
       connection_allowed(w->ifd, w->client_ip, w->client_host, sizeof(w->client_host),
                          web_allow_netdataconf_from, "netdata.conf", web_allow_netdataconf_dns))
        w->acl |= WEB_CLIENT_ACL_NETDATACONF;

    w->acl &= w->port_acl;
}
