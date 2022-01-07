
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_timeout {int last; scalar_t__ defined; } ;


 int now ;

__attribute__((used)) static inline void
event_timeout_reset(struct event_timeout *et)
{
    if (et->defined)
    {
        et->last = now;
    }
}
