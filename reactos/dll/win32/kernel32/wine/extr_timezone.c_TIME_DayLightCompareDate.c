
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_4__ {int wMonth; scalar_t__ wYear; int wDay; int wDayOfWeek; int wHour; int wMinute; int wSecond; } ;
typedef TYPE_1__ SYSTEMTIME ;


 scalar_t__ IsLeapYear (scalar_t__) ;
 int** MonthLengths ;

__attribute__((used)) static int
TIME_DayLightCompareDate(const SYSTEMTIME *date, const SYSTEMTIME *compareDate)
{
    int limit_day, dayinsecs;

    if (date->wMonth < compareDate->wMonth)
        return -1;

    if (date->wMonth > compareDate->wMonth)
        return 1;




    if (compareDate->wYear == 0)
    {
        WORD First;


        int weekofmonth = compareDate->wDay;

        First = ( 6 + compareDate->wDayOfWeek - date->wDayOfWeek + date->wDay
               ) % 7 + 1;
        limit_day = First + 7 * (weekofmonth - 1);

        if(limit_day > MonthLengths[date->wMonth==2 && IsLeapYear(date->wYear)]
                [date->wMonth - 1])
            limit_day -= 7;
    }
    else
    {
       limit_day = compareDate->wDay;
    }


    limit_day = ((limit_day * 24 + compareDate->wHour) * 60 +
            compareDate->wMinute ) * 60;
    dayinsecs = ((date->wDay * 24 + date->wHour) * 60 +
            date->wMinute ) * 60 + date->wSecond;

    return dayinsecs < limit_day ? -1 :
           dayinsecs > limit_day ? 1 :
           0;
}
