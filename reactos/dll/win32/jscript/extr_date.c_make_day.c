
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DOUBLE ;


 int MS_PER_DAY ;
 int day_from_month (int,int ) ;
 int floor (int) ;
 int fmod (int,int) ;
 int in_leap_year (int) ;
 int time_from_year (int) ;

__attribute__((used)) static inline DOUBLE make_day(DOUBLE year, DOUBLE month, DOUBLE day)
{
    DOUBLE time;

    year += floor(month/12);

    month = fmod(month, 12);
    if(month<0) month += 12;

    time = time_from_year(year);

    day += floor(time / MS_PER_DAY);
    day += day_from_month(month, in_leap_year(time));

    return day-1;
}
