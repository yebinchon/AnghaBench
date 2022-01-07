
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_year; int tm_mon; int tm_mday; } ;
typedef scalar_t__ date ;


 int GetCurrentDateTime (struct tm*) ;
 scalar_t__ date2j (int,int,int) ;
 scalar_t__ errno ;

void
PGTYPESdate_today(date * d)
{
 struct tm ts;

 GetCurrentDateTime(&ts);
 if (errno == 0)
  *d = date2j(ts.tm_year, ts.tm_mon, ts.tm_mday) - date2j(2000, 1, 1);
 return;
}
