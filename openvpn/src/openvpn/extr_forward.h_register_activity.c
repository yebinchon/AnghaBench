
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ inactivity_bytes; int inactivity_interval; } ;
struct TYPE_3__ {scalar_t__ inactivity_minimum_bytes; scalar_t__ inactivity_timeout; } ;
struct context {TYPE_2__ c2; TYPE_1__ options; } ;


 int event_timeout_reset (int *) ;

__attribute__((used)) static inline void
register_activity(struct context *c, const int size)
{
    if (c->options.inactivity_timeout)
    {
        c->c2.inactivity_bytes += size;
        if (c->c2.inactivity_bytes >= c->options.inactivity_minimum_bytes)
        {
            c->c2.inactivity_bytes = 0;
            event_timeout_reset(&c->c2.inactivity_interval);
        }
    }
}
