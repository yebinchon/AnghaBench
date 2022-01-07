
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tv_sec; } ;
struct TYPE_3__ {scalar_t__ update_timeout_random_component; int timeout_random_component; TYPE_2__ timeval; } ;
struct context {TYPE_1__ c2; } ;


 int check_timeout_random_component_dowork (struct context*) ;
 scalar_t__ now ;
 int tv_add (TYPE_2__*,int *) ;

__attribute__((used)) static inline void
check_timeout_random_component(struct context *c)
{
    if (now >= c->c2.update_timeout_random_component)
    {
        check_timeout_random_component_dowork(c);
    }
    if (c->c2.timeval.tv_sec >= 1)
    {
        tv_add(&c->c2.timeval, &c->c2.timeout_random_component);
    }
}
