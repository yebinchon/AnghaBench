
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timezone {int tz_minuteswest; int tz_dsttime; } ;
struct timeval {long tv_sec; long tv_usec; } ;
typedef int __int64 ;
struct TYPE_5__ {int dwHighDateTime; int dwLowDateTime; } ;
struct TYPE_4__ {int QuadPart; int HighPart; int LowPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef TYPE_2__ FILETIME ;


 scalar_t__ EPOCHFILETIME ;
 int GetSystemTimeAsFileTime (TYPE_2__*) ;
 int _daylight ;
 int _timezone ;
 int _tzset () ;

int gettimeofday(struct timeval *tv, struct timezone *tz)
{
    FILETIME ft;
    LARGE_INTEGER li;
    __int64 t;
    static int tzflag;

    if (tv)
    {
        GetSystemTimeAsFileTime(&ft);
        li.LowPart = ft.dwLowDateTime;
        li.HighPart = ft.dwHighDateTime;
        t = li.QuadPart;
        t -= EPOCHFILETIME;
        t /= 10;
        tv->tv_sec = (long)(t / 1000000);
        tv->tv_usec = (long)(t % 1000000);
    }

    if (tz)
    {
        if (!tzflag)
        {
            _tzset();
            tzflag++;
        }
        tz->tz_minuteswest = _timezone / 60;
        tz->tz_dsttime = _daylight;
    }

    return 0;
}
