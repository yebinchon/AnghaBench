
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection_entry {int key_direction; scalar_t__ http_proxy_options; int af; int proto; } ;


 int D_SHOW_PARMS ;
 int SHOW_BOOL (int ) ;
 int SHOW_INT (int ) ;
 int SHOW_PARM (int ,int ,char*) ;
 int SHOW_STR (int ) ;
 int bind_defined ;
 int bind_ipv6_only ;
 int bind_local ;
 int connect_retry_seconds ;
 int connect_timeout ;
 int explicit_exit_notification ;
 int fragment ;
 int key_direction ;
 int keydirection2ascii (int ,int,int) ;
 int link_mtu ;
 int link_mtu_defined ;
 int local ;
 int local_port ;
 int msg (int ,char*,int ) ;
 int mssfix ;
 int mtu_discover_type ;
 int proto2ascii (int ,int ,int) ;
 int remote ;
 int remote_float ;
 int remote_port ;
 int show_http_proxy_options (scalar_t__) ;
 int socks_proxy_port ;
 int socks_proxy_server ;
 int tls_auth_file ;
 int tls_crypt_file ;
 int tls_crypt_v2_file ;
 int tun_mtu ;
 int tun_mtu_defined ;
 int tun_mtu_extra ;
 int tun_mtu_extra_defined ;

__attribute__((used)) static void
show_connection_entry(const struct connection_entry *o)
{
    msg(D_SHOW_PARMS, "  proto = %s", proto2ascii(o->proto, o->af, 0));
    SHOW_STR(local);
    SHOW_STR(local_port);
    SHOW_STR(remote);
    SHOW_STR(remote_port);
    SHOW_BOOL(remote_float);
    SHOW_BOOL(bind_defined);
    SHOW_BOOL(bind_local);
    SHOW_BOOL(bind_ipv6_only);
    SHOW_INT(connect_retry_seconds);
    SHOW_INT(connect_timeout);

    if (o->http_proxy_options)
    {
        show_http_proxy_options(o->http_proxy_options);
    }
    SHOW_STR(socks_proxy_server);
    SHOW_STR(socks_proxy_port);
    SHOW_INT(tun_mtu);
    SHOW_BOOL(tun_mtu_defined);
    SHOW_INT(link_mtu);
    SHOW_BOOL(link_mtu_defined);
    SHOW_INT(tun_mtu_extra);
    SHOW_BOOL(tun_mtu_extra_defined);

    SHOW_INT(mtu_discover_type);




    SHOW_INT(mssfix);





    SHOW_STR(tls_auth_file);
    SHOW_PARM(key_direction, keydirection2ascii(o->key_direction, 0, 1),
              "%s");
    SHOW_STR(tls_crypt_file);
    SHOW_STR(tls_crypt_v2_file);
}
