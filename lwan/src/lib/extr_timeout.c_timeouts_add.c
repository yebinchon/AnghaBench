
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timeout_t ;
struct timeouts {scalar_t__ curtime; } ;
struct timeout {int flags; } ;


 int TIMEOUT_ABS ;
 int timeouts_sched (struct timeouts*,struct timeout*,scalar_t__) ;

void timeouts_add(struct timeouts *T, struct timeout *to, timeout_t timeout)
{
    if (to->flags & TIMEOUT_ABS)
        timeouts_sched(T, to, timeout);
    else
        timeouts_sched(T, to, T->curtime + timeout);
}
