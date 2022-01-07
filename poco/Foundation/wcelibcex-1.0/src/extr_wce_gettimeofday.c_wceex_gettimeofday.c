
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct timezone {int tz_minuteswest; int tz_dsttime; } ;
struct timeval {long tv_sec; long tv_usec; } ;
typedef int __int64 ;
struct TYPE_12__ {int dwHighDateTime; int dwLowDateTime; } ;
struct TYPE_11__ {int QuadPart; int HighPart; int LowPart; } ;
struct TYPE_9__ {scalar_t__ wMonth; } ;
struct TYPE_8__ {scalar_t__ wMonth; } ;
struct TYPE_10__ {int Bias; int StandardBias; TYPE_2__ DaylightDate; TYPE_1__ StandardDate; } ;
typedef TYPE_3__ TIME_ZONE_INFORMATION ;
typedef int SYSTEMTIME ;
typedef TYPE_4__ LARGE_INTEGER ;
typedef TYPE_5__ FILETIME ;


 scalar_t__ EPOCHFILETIME ;
 int GetSystemTime (int *) ;
 int GetTimeZoneInformation (TYPE_3__*) ;
 int SystemTimeToFileTime (int *,TYPE_5__*) ;

int wceex_gettimeofday(struct timeval *tp, struct timezone *tzp)
{
    SYSTEMTIME st;
    FILETIME ft;
    LARGE_INTEGER li;
    TIME_ZONE_INFORMATION tzi;
    __int64 t;
    static int tzflag;

    if (((void*)0) != tp)
    {
        GetSystemTime(&st);
        SystemTimeToFileTime(&st, &ft);
        li.LowPart = ft.dwLowDateTime;
        li.HighPart = ft.dwHighDateTime;
        t = li.QuadPart;
        t -= EPOCHFILETIME;
        t /= 10;
        tp->tv_sec = (long)(t / 1000000);
        tp->tv_usec = (long)(t % 1000000);
    }

    if (((void*)0) != tzp)
    {
        GetTimeZoneInformation(&tzi);

        tzp->tz_minuteswest = tzi.Bias;
        if (tzi.StandardDate.wMonth != 0)
        {
            tzp->tz_minuteswest += tzi.StandardBias * 60;
        }

        if (tzi.DaylightDate.wMonth != 0)
        {
            tzp->tz_dsttime = 1;
        }
        else
        {
            tzp->tz_dsttime = 0;
        }
    }

    return 0;
}
