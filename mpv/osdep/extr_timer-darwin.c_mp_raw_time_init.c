
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mach_timebase_info {scalar_t__ denom; scalar_t__ numer; } ;


 int mach_timebase_info (struct mach_timebase_info*) ;
 double timebase_ratio ;

void mp_raw_time_init(void)
{
    struct mach_timebase_info timebase;

    mach_timebase_info(&timebase);
    timebase_ratio = (double)timebase.numer / (double)timebase.denom * 1e-9;
}
