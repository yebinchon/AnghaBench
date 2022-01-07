
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int int64_t ;


 scalar_t__ mach_absolute_time () ;
 int mach_wait_until (scalar_t__) ;
 int timebase_ratio ;

void mp_sleep_us(int64_t us)
{
    uint64_t deadline = us / 1e6 / timebase_ratio + mach_absolute_time();

    mach_wait_until(deadline);
}
