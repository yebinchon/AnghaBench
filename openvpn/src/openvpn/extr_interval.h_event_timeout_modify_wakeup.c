
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_timeout {scalar_t__ n; scalar_t__ defined; } ;
typedef scalar_t__ interval_t ;



__attribute__((used)) static inline void
event_timeout_modify_wakeup(struct event_timeout *et, interval_t n)
{

    if (et->defined)
    {
        et->n = (n >= 0) ? n : 0;
    }
}
