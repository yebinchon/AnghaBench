
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ explicit_exit_notification_time_wait; scalar_t__ tls_multi; } ;
struct context {TYPE_1__ c2; TYPE_2__* sig; } ;
struct TYPE_4__ {scalar_t__ signal_received; } ;


 int check_add_routes (struct context*) ;
 int check_connection_established (struct context*) ;
 int check_inactivity_timeout (struct context*) ;
 int check_packet_id_persist_flush (struct context*) ;
 int check_ping_restart (struct context*) ;
 int check_ping_send (struct context*) ;
 int check_push_request (struct context*) ;
 int check_scheduled_exit (struct context*) ;
 int check_send_occ_load_test (struct context*) ;
 int check_send_occ_req (struct context*) ;
 int check_server_poll_timeout (struct context*) ;
 int check_status_file (struct context*) ;
 int pf_check_reload (struct context*) ;
 int process_explicit_exit_notification_timer_wakeup (struct context*) ;

__attribute__((used)) static void
process_coarse_timers(struct context *c)
{


    check_packet_id_persist_flush(c);


    check_status_file(c);


    check_connection_established(c);
    check_add_routes(c);


    check_inactivity_timeout(c);
    if (c->sig->signal_received)
    {
        return;
    }


    check_ping_restart(c);
    if (c->sig->signal_received)
    {
        return;
    }
    check_ping_send(c);
}
