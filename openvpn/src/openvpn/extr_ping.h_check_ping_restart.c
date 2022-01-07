
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int actual; } ;
struct TYPE_8__ {TYPE_3__ link_socket_addr; } ;
struct TYPE_6__ {int ping_timer_remote; scalar_t__ ping_rec_timeout; } ;
struct TYPE_5__ {int timeval; int ping_rec_interval; } ;
struct context {TYPE_4__ c1; TYPE_2__ options; TYPE_1__ c2; } ;


 int ETT_DEFAULT ;
 scalar_t__ event_timeout_trigger (int *,int *,int) ;
 scalar_t__ link_socket_actual_defined (int *) ;

__attribute__((used)) static inline void
check_ping_restart(struct context *c)
{
    void check_ping_restart_dowork(struct context *c);

    if (c->options.ping_rec_timeout
        && event_timeout_trigger(&c->c2.ping_rec_interval,
                                 &c->c2.timeval,
                                 (!c->options.ping_timer_remote
                                  || link_socket_actual_defined(&c->c1.link_socket_addr.actual))
                                 ? ETT_DEFAULT : 15))
    {
        check_ping_restart_dowork(c);
    }
}
