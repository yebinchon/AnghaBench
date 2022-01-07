
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int remote_list; int bind_local; } ;
struct TYPE_10__ {int tuntap_owned; TYPE_5__* tuntap; TYPE_1__ link_socket_addr; } ;
struct TYPE_9__ {int tuntap_options; int wintun; int ifconfig_nowarn; int ifconfig_ipv6_remote; int ifconfig_ipv6_netbits; int ifconfig_ipv6_local; int ifconfig_remote_netmask; int ifconfig_local; int topology; int dev_type; int dev; } ;
struct TYPE_8__ {int frame; int es; } ;
struct context {TYPE_4__ c1; TYPE_3__ options; TYPE_2__ c2; int net_ctx; } ;
struct TYPE_11__ {int wintun; } ;


 TYPE_5__* init_tun (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ,int *) ;
 int init_tun_post (TYPE_5__*,int *,int *) ;

__attribute__((used)) static void
do_init_tun(struct context *c)
{
    c->c1.tuntap = init_tun(c->options.dev,
                            c->options.dev_type,
                            c->options.topology,
                            c->options.ifconfig_local,
                            c->options.ifconfig_remote_netmask,
                            c->options.ifconfig_ipv6_local,
                            c->options.ifconfig_ipv6_netbits,
                            c->options.ifconfig_ipv6_remote,
                            c->c1.link_socket_addr.bind_local,
                            c->c1.link_socket_addr.remote_list,
                            !c->options.ifconfig_nowarn,
                            c->c2.es,
                            &c->net_ctx);





    init_tun_post(c->c1.tuntap,
                  &c->c2.frame,
                  &c->options.tuntap_options);

    c->c1.tuntap_owned = 1;
}
