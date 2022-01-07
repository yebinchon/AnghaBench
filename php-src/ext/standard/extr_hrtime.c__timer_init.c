
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef double php_hrtime_t ;
struct TYPE_3__ {scalar_t__ QuadPart; int member_0; } ;
typedef TYPE_1__ LARGE_INTEGER ;


 scalar_t__ NANO_IN_SEC ;
 int QueryPerformanceFrequency (TYPE_1__*) ;
 int _SC_MONOTONIC_CLOCK ;
 double _timer_scale ;
 int _timerlib_info ;
 scalar_t__ mach_timebase_info (int *) ;
 scalar_t__ sysconf (int ) ;

__attribute__((used)) static int _timer_init()
{
 return -1;


 return 0;
}
