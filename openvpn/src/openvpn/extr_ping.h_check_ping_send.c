
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int timeval; int ping_send_interval; } ;
struct TYPE_3__ {scalar_t__ ping_send_timeout; } ;
struct context {TYPE_2__ c2; TYPE_1__ options; } ;


 int ETT_DEFAULT ;
 int TO_LINK_DEF (struct context*) ;
 scalar_t__ event_timeout_trigger (int *,int *,int) ;

__attribute__((used)) static inline void
check_ping_send(struct context *c)
{
    void check_ping_send_dowork(struct context *c);

    if (c->options.ping_send_timeout
        && event_timeout_trigger(&c->c2.ping_send_interval,
                                 &c->c2.timeval,
                                 !TO_LINK_DEF(c) ? ETT_DEFAULT : 1))
    {
        check_ping_send_dowork(c);
    }
}
