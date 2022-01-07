
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct event_timeout {int defined; int last; scalar_t__ n; } ;
typedef scalar_t__ interval_t ;



__attribute__((used)) static inline void
event_timeout_init(struct event_timeout *et, interval_t n, const time_t local_now)
{
    et->defined = 1;
    et->n = (n >= 0) ? n : 0;
    et->last = local_now;
}
