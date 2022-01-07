
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ interval_t ;



__attribute__((used)) static inline void
compute_earliest_wakeup(interval_t *earliest, interval_t seconds_from_now)
{
    if (seconds_from_now < *earliest)
    {
        *earliest = seconds_from_now;
    }
    if (*earliest < 0)
    {
        *earliest = 0;
    }
}
