
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int wait_for_connect; int push_request_interval; scalar_t__ tls_multi; int timeval; } ;
struct TYPE_3__ {scalar_t__ pull; } ;
struct context {TYPE_2__ c2; TYPE_1__ options; } ;


 scalar_t__ CONNECTION_ESTABLISHED (struct context*) ;
 int ETT_DEFAULT ;
 int OPENVPN_STATE_GET_CONFIG ;
 int do_up (struct context*,int,int ) ;
 int event_timeout_clear (int *) ;
 int event_timeout_init (int *,int ,int ) ;
 scalar_t__ event_timeout_trigger (int *,int *,int ) ;
 scalar_t__ management ;
 int management_set_state (scalar_t__,int ,int *,int *,int *,int *,int *) ;
 int now ;
 int reset_coarse_timers (struct context*) ;

void
check_connection_established_dowork(struct context *c)
{
    if (event_timeout_trigger(&c->c2.wait_for_connect, &c->c2.timeval, ETT_DEFAULT))
    {
        if (CONNECTION_ESTABLISHED(c))
        {
            {
                do_up(c, 0, 0);
            }

            event_timeout_clear(&c->c2.wait_for_connect);
        }
    }
}
