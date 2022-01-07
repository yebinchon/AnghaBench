
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
struct tm {scalar_t__ tm_yday; int tm_wday; scalar_t__ tm_isdst; int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_3__ {int wDayOfWeek; int wSecond; int wMinute; int wHour; int wDay; scalar_t__ wMonth; scalar_t__ wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;


 int GetSystemTime (TYPE_1__*) ;
 scalar_t__ TM_YEAR_BASE ;
 int wceex_gmmktime (struct tm*) ;

time_t wceex_time(time_t *timer)
{
    time_t t;
    struct tm tmbuff;
    SYSTEMTIME st;


    GetSystemTime(&st);




    tmbuff.tm_year = st.wYear - TM_YEAR_BASE;
    tmbuff.tm_mon = st.wMonth - 1;
    tmbuff.tm_mday = st.wDay;


    tmbuff.tm_hour = st.wHour;
    tmbuff.tm_min = st.wMinute;
    tmbuff.tm_sec = st.wSecond;
    tmbuff.tm_isdst = 0;
    tmbuff.tm_wday = st.wDayOfWeek;
    tmbuff.tm_yday = 0;


    t = wceex_gmmktime(&tmbuff);


    if (timer != ((void*)0))
    {
        *timer = t;
    }

 return t;
}
