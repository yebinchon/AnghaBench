
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tuntap_owned; int pulled_options_digest_save; int * tuntap; } ;
struct context {TYPE_1__ c1; int net_ctx; } ;


 int CLEAR (int ) ;
 int D_CLOSE ;
 int close_tun (int *,int *) ;
 int msg (int ,char*) ;

__attribute__((used)) static void
do_close_tun_simple(struct context *c)
{
    msg(D_CLOSE, "Closing TUN/TAP interface");
    if (c->c1.tuntap)
    {
        close_tun(c->c1.tuntap, &c->net_ctx);
        c->c1.tuntap = ((void*)0);
    }
    c->c1.tuntap_owned = 0;



}
