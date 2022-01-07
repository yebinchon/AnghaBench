
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int n; } ;
struct TYPE_7__ {int ping_rec_interval; TYPE_4__ route_wakeup; int timeval; int route_wakeup_expire; } ;
struct TYPE_6__ {int restart_sleep_seconds; } ;
struct TYPE_5__ {scalar_t__ tuntap; int route_list; } ;
struct context {TYPE_3__ c2; TYPE_2__ persist; TYPE_1__ c1; } ;


 int D_ROUTE ;
 int ETT_DEFAULT ;
 int M_INFO ;
 int M_NOPREFIX ;
 int SIGHUP ;
 int check_add_routes_action (struct context*,int) ;
 int event_timeout_init (TYPE_4__*,int,int ) ;
 int event_timeout_reset (int *) ;
 scalar_t__ event_timeout_trigger (int *,int *,int ) ;
 int msg (int ,char*) ;
 int now ;
 int register_signal (struct context*,int ,char*) ;
 int show_adapters (int) ;
 int show_routes (int) ;
 scalar_t__ test_routes (int ,scalar_t__) ;
 int tun_standby (scalar_t__) ;
 int update_time () ;

void
check_add_routes_dowork(struct context *c)
{
    if (test_routes(c->c1.route_list, c->c1.tuntap))
    {
        check_add_routes_action(c, 0);
    }
    else if (event_timeout_trigger(&c->c2.route_wakeup_expire, &c->c2.timeval, ETT_DEFAULT))
    {
        check_add_routes_action(c, 1);
    }
    else
    {
        msg(D_ROUTE, "Route: Waiting for TUN/TAP interface to come up...");
        if (c->c1.tuntap)
        {
            if (!tun_standby(c->c1.tuntap))
            {
                register_signal(c, SIGHUP, "ip-fail");
                c->persist.restart_sleep_seconds = 10;




            }
        }
        update_time();
        if (c->c2.route_wakeup.n != 1)
        {
            event_timeout_init(&c->c2.route_wakeup, 1, now);
        }
        event_timeout_reset(&c->c2.ping_rec_interval);
    }
}
