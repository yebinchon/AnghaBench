
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 int QueryPerformanceCounter (TYPE_1__*) ;
 scalar_t__ get_clockfreq () ;

uint64_t os_gettime_ns(void)
{
 LARGE_INTEGER current_time;
 double time_val;

 QueryPerformanceCounter(&current_time);
 time_val = (double)current_time.QuadPart;
 time_val *= 1000000000.0;
 time_val /= (double)get_clockfreq();

 return (uint64_t)time_val;
}
