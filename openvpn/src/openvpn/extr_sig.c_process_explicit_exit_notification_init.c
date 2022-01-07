
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int explicit_exit_notification_time_wait; int explicit_exit_notification_interval; } ;
struct context {TYPE_1__ c2; int sig; } ;


 int M_INFO ;
 int event_timeout_init (int *,int,int ) ;
 int halt_non_edge_triggered_signals () ;
 int msg (int ,char*) ;
 int now ;
 int reset_coarse_timers (struct context*) ;
 int signal_reset (int ) ;

__attribute__((used)) static void
process_explicit_exit_notification_init(struct context *c)
{
    msg(M_INFO, "SIGTERM received, sending exit notification to peer");
    event_timeout_init(&c->c2.explicit_exit_notification_interval, 1, 0);
    reset_coarse_timers(c);
    signal_reset(c->sig);
    halt_non_edge_triggered_signals();
    c->c2.explicit_exit_notification_time_wait = now;
}
