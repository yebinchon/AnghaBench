
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tmp_int; int packet_id_persist_interval; int occ_mtu_load_test_interval; int occ_interval; scalar_t__ options_string_remote; scalar_t__ options_string_local; int wait_for_connect; int ping_rec_interval; int ping_send_interval; int inactivity_interval; } ;
struct TYPE_3__ {int inactivity_timeout; int ping_send_timeout; int ping_rec_timeout; scalar_t__ packet_id_file; scalar_t__ mtu_test; scalar_t__ occ; } ;
struct context {TYPE_2__ c2; TYPE_1__ options; } ;


 int OCC_INTERVAL_SECONDS ;
 int OCC_MTU_LOAD_INTERVAL_SECONDS ;
 int TLS_MODE (struct context*) ;
 int TLS_MULTI_HORIZON ;
 int TLS_MULTI_REFRESH ;
 int event_timeout_init (int *,int,int ) ;
 int interval_init (int *,int ,int ) ;
 int now ;
 int reset_coarse_timers (struct context*) ;
 int update_time () ;

__attribute__((used)) static void
do_init_timers(struct context *c, bool deferred)
{
    update_time();
    reset_coarse_timers(c);


    if (c->options.inactivity_timeout)
    {
        event_timeout_init(&c->c2.inactivity_interval, c->options.inactivity_timeout, now);
    }



    if (c->options.ping_send_timeout)
    {
        event_timeout_init(&c->c2.ping_send_interval, c->options.ping_send_timeout, 0);
    }

    if (c->options.ping_rec_timeout)
    {
        event_timeout_init(&c->c2.ping_rec_interval, c->options.ping_rec_timeout, now);
    }

    if (!deferred)
    {

        event_timeout_init(&c->c2.wait_for_connect, 1, now);
        if (c->options.packet_id_file)
        {
            event_timeout_init(&c->c2.packet_id_persist_interval, 60, now);
        }



        interval_init(&c->c2.tmp_int, TLS_MULTI_HORIZON, TLS_MULTI_REFRESH);
    }
}
