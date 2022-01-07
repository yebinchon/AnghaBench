
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_5__ {scalar_t__ denom; scalar_t__ numer; } ;
typedef TYPE_1__ mach_timebase_info_data_t ;
typedef scalar_t__ int64_t ;
struct TYPE_6__ {scalar_t__ mHostTime; } ;
typedef TYPE_2__ AudioTimeStamp ;


 scalar_t__ AudioConvertHostTimeToNanos (scalar_t__) ;
 scalar_t__ AudioGetCurrentHostTime () ;
 scalar_t__ mach_absolute_time () ;
 int mach_timebase_info (TYPE_1__*) ;

int64_t ca_get_latency(const AudioTimeStamp *ts)
{
    static mach_timebase_info_data_t timebase;
    if (timebase.denom == 0)
        mach_timebase_info(&timebase);

    uint64_t out = ts->mHostTime;
    uint64_t now = mach_absolute_time();

    if (now > out)
        return 0;

    return (out - now) * timebase.numer / timebase.denom / 1e3;

}
