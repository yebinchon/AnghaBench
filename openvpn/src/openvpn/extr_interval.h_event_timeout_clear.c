
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_timeout {int defined; scalar_t__ last; scalar_t__ n; } ;



__attribute__((used)) static inline void
event_timeout_clear(struct event_timeout *et)
{
    et->defined = 0;
    et->n = 0;
    et->last = 0;
}
