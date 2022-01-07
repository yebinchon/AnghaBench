
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int mach_absolute_time () ;
 int timebase_ratio ;

uint64_t mp_raw_time_us(void)
{
    return mach_absolute_time() * timebase_ratio * 1e6;
}
