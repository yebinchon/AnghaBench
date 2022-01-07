
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wMilliseconds; int wSecond; int wMinute; int wHour; int wDay; int wDayOfWeek; scalar_t__ wMonth; int wYear; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int DOUBLE ;


 int date_from_time (int ) ;
 int hour_from_time (int ) ;
 int min_from_time (int ) ;
 scalar_t__ month_from_time (int ) ;
 int ms_from_time (int ) ;
 int sec_from_time (int ) ;
 int week_day (int ) ;
 int year_from_time (int ) ;

__attribute__((used)) static SYSTEMTIME create_systemtime(DOUBLE time)
{
    SYSTEMTIME st;

    st.wYear = year_from_time(time);
    st.wMonth = month_from_time(time) + 1;
    st.wDayOfWeek = week_day(time);
    st.wDay = date_from_time(time);
    st.wHour = hour_from_time(time);
    st.wMinute = min_from_time(time);
    st.wSecond = sec_from_time(time);
    st.wMilliseconds = ms_from_time(time);

    return st;
}
