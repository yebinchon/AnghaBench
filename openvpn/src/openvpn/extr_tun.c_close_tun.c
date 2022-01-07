
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {int dummy; } ;
typedef int openvpn_net_ctx_t ;


 int ASSERT (struct tuntap*) ;
 int close_tun_generic (struct tuntap*) ;
 int free (struct tuntap*) ;

void
close_tun(struct tuntap *tt, openvpn_net_ctx_t *ctx)
{
    ASSERT(tt);

    close_tun_generic(tt);
    free(tt);
}
