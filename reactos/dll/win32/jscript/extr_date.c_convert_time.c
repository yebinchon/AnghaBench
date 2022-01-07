
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wMonth; int wYear; int wDayOfWeek; int wDay; int wHour; int wMinute; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int DOUBLE ;


 int MS_PER_DAY ;
 int MS_PER_HOUR ;
 int MS_PER_MINUTE ;
 int NAN ;
 scalar_t__ day_from_month (int,int ) ;
 int in_leap_year (int) ;
 int month_from_time (int) ;
 int time_from_year (int) ;
 int week_day (int) ;

__attribute__((used)) static inline DOUBLE convert_time(int year, SYSTEMTIME st)
{
    DOUBLE time;
    int set_week_day;

    if(st.wMonth == 0)
        return NAN;

    if(st.wYear != 0)
        year = st.wYear;

    time = time_from_year(year);
    time += (DOUBLE)day_from_month(st.wMonth-1, in_leap_year(time)) * MS_PER_DAY;

    if(st.wYear == 0) {
        set_week_day = st.wDayOfWeek-week_day(time);
        if(set_week_day < 0)
            set_week_day += 7;
        time += set_week_day * MS_PER_DAY;

        time += (DOUBLE)(st.wDay-1) * 7 * MS_PER_DAY;
        if(month_from_time(time) != st.wMonth-1)
            time -= 7 * MS_PER_DAY;
    }
    else
        time += st.wDay * MS_PER_DAY;

    time += st.wHour * MS_PER_HOUR;
    time += st.wMinute * MS_PER_MINUTE;

    return time;
}
