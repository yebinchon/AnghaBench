
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tuntap; } ;
struct TYPE_8__ {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_7__ {TYPE_4__ timeval; } ;
struct context {TYPE_2__* sig; TYPE_1__ c1; TYPE_3__ c2; } ;
struct TYPE_6__ {scalar_t__ signal_received; } ;


 int BIG_TIMEOUT ;
 int D_TAP_WIN_DEBUG ;
 int check_coarse_timers (struct context*) ;
 scalar_t__ check_debug_level (int ) ;
 int check_fragment (struct context*) ;
 int check_incoming_control_channel (struct context*) ;
 int check_send_occ_msg (struct context*) ;
 int check_timeout_random_component (struct context*) ;
 int check_tls (struct context*) ;
 int check_tls_errors (struct context*) ;
 int tun_show_debug (int ) ;
 scalar_t__ tuntap_defined (int ) ;

void
pre_select(struct context *c)
{







    c->c2.timeval.tv_sec = BIG_TIMEOUT;
    c->c2.timeval.tv_usec = 0;
    check_coarse_timers(c);
    if (c->sig->signal_received)
    {
        return;
    }


    check_tls(c);


    check_tls_errors(c);
    if (c->sig->signal_received)
    {
        return;
    }


    check_incoming_control_channel(c);
    check_timeout_random_component(c);
}
