
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timeval; int route_wakeup; } ;
struct context {TYPE_1__ c2; } ;


 int ETT_DEFAULT ;
 scalar_t__ event_timeout_trigger (int *,int *,int ) ;

__attribute__((used)) static inline void
check_add_routes(struct context *c)
{
    void check_add_routes_dowork(struct context *c);

    if (event_timeout_trigger(&c->c2.route_wakeup, &c->c2.timeval, ETT_DEFAULT))
    {
        check_add_routes_dowork(c);
    }
}
