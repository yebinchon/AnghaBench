
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tmp_int; int to_link_addr; int to_link; int tls_multi; } ;
struct context {TYPE_1__ c2; } ;
typedef scalar_t__ interval_t ;


 scalar_t__ BIG_TIMEOUT ;
 int SIGTERM ;
 int const TLSMP_ACTIVE ;
 int const TLSMP_KILL ;
 int context_reschedule_sec (struct context*,scalar_t__) ;
 int get_link_socket_info (struct context*) ;
 int interval_action (int *) ;
 int interval_future_trigger (int *,scalar_t__) ;
 int interval_schedule_wakeup (int *,scalar_t__*) ;
 scalar_t__ interval_test (int *) ;
 int register_signal (struct context*,int ,char*) ;
 int tls_multi_process (int ,int *,int *,int ,scalar_t__*) ;
 int update_time () ;

void
check_tls_dowork(struct context *c)
{
    interval_t wakeup = BIG_TIMEOUT;

    if (interval_test(&c->c2.tmp_int))
    {
        const int tmp_status = tls_multi_process
                                   (c->c2.tls_multi, &c->c2.to_link, &c->c2.to_link_addr,
                                   get_link_socket_info(c), &wakeup);
        if (tmp_status == TLSMP_ACTIVE)
        {
            update_time();
            interval_action(&c->c2.tmp_int);
        }
        else if (tmp_status == TLSMP_KILL)
        {
            register_signal(c, SIGTERM, "auth-control-exit");
        }

        interval_future_trigger(&c->c2.tmp_int, wakeup);
    }

    interval_schedule_wakeup(&c->c2.tmp_int, &wakeup);

    if (wakeup)
    {
        context_reschedule_sec(c, wakeup);
    }
}
