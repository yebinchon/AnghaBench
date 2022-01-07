
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_timeout {scalar_t__ n; scalar_t__ last; } ;
typedef int interval_t ;


 scalar_t__ now ;

__attribute__((used)) static inline interval_t
event_timeout_remaining(struct event_timeout *et)
{
    return (interval_t) (et->last - now + et->n);
}
