
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_mon; int tm_year; scalar_t__ tm_sec; int tm_min; int tm_hour; int const tm_mday; } ;
typedef scalar_t__ int64_t ;



double cs_timegm(const struct tm *tm) {

  static const int month_day[12] = {0, 31, 59, 90, 120, 151,
                                    181, 212, 243, 273, 304, 334};


  int month = tm->tm_mon % 12;
  int year = tm->tm_year + tm->tm_mon / 12;
  int year_for_leap;
  int64_t rt;

  if (month < 0) {
    month += 12;
    --year;
  }


  year_for_leap = (month > 1) ? year + 1 : year;

  rt =
      tm->tm_sec
      +
      60 *
          (tm->tm_min
           +
           60 * (tm->tm_hour
                 +
                 24 * (month_day[month] + tm->tm_mday - 1
                       + 365 * (year - 70)
                       + (year_for_leap - 69) / 4
                       - (year_for_leap - 1) / 100
                       + (year_for_leap + 299) / 400)));
  return rt < 0 ? -1 : (double) rt;
}
