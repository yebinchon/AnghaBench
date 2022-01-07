
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {double tv_sec; long tv_usec; } ;
struct timespec {double tv_sec; long tv_nsec; } ;
struct TYPE_4__ {scalar_t__ QuadPart; } ;
typedef scalar_t__ LONGLONG ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef scalar_t__ BOOL ;


 scalar_t__ QueryPerformanceCounter (TYPE_1__*) ;
 scalar_t__ QueryPerformanceFrequency (TYPE_1__*) ;
 int XSLT_CLOCK ;
 double XSLT_TIMESTAMP_TICS_PER_SEC ;
 scalar_t__ calibration ;
 int clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ xsltCalibrateTimestamps () ;

long
xsltTimestamp(void)
{
    return (0);



}
