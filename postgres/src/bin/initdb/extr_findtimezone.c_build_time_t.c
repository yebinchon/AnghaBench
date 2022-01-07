
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
typedef int time_t ;
struct tm {int tm_mday; int tm_mon; int tm_year; } ;


 int memset (struct tm*,int ,int) ;
 int mktime (struct tm*) ;

__attribute__((used)) static time_t
build_time_t(int year, int month, int day)
{
 struct tm tm;

 memset(&tm, 0, sizeof(tm));
 tm.tm_mday = day;
 tm.tm_mon = month - 1;
 tm.tm_year = year - 1900;

 return mktime(&tm);
}
