
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int timeval; int inactivity_interval; } ;
struct TYPE_3__ {scalar_t__ inactivity_timeout; } ;
struct context {TYPE_2__ c2; TYPE_1__ options; } ;


 int ETT_DEFAULT ;
 scalar_t__ event_timeout_trigger (int *,int *,int ) ;

__attribute__((used)) static inline void
check_inactivity_timeout(struct context *c)
{
    void check_inactivity_timeout_dowork(struct context *c);

    if (c->options.inactivity_timeout
        && event_timeout_trigger(&c->c2.inactivity_interval, &c->c2.timeval, ETT_DEFAULT))
    {
        check_inactivity_timeout_dowork(c);
    }
}
