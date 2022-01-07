
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeouts {scalar_t__ curtime; } ;
struct timeout {scalar_t__ expires; } ;
typedef scalar_t__ reltime_t ;



__attribute__((used)) static inline reltime_t timeout_rem(struct timeouts *T, struct timeout *to)
{
    return to->expires - T->curtime;
}
