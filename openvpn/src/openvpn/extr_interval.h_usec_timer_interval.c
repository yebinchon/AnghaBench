
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usec_timer {int start; int end; } ;


 int USEC_TIMER_MAX ;
 int tv_subtract (int *,int *,int ) ;

__attribute__((used)) static inline int
usec_timer_interval(struct usec_timer *obj)
{
    return tv_subtract(&obj->end, &obj->start, USEC_TIMER_MAX);
}
