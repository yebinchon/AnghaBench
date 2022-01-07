
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tztry {int n_test_times; scalar_t__* test_times; } ;
struct tm {scalar_t__ tm_isdst; int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct pg_tm {int * tm_zone; scalar_t__ tm_isdst; int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef int pg_tz ;
typedef scalar_t__ pg_time_t ;
typedef int cbuf ;


 int TZ_STRLEN_MAX ;
 int compare_tm (struct tm*,struct pg_tm*) ;
 int fprintf (int ,char*,char const*,...) ;
 struct tm* localtime (scalar_t__*) ;
 int memset (char*,int ,int) ;
 int * pg_load_tz (char const*) ;
 struct pg_tm* pg_localtime (scalar_t__*,int *) ;
 int pg_tz_acceptable (int *) ;
 int stderr ;
 scalar_t__ strcmp (char*,int *) ;
 int strftime (char*,int,char*,struct tm*) ;

__attribute__((used)) static int
score_timezone(const char *tzname, struct tztry *tt)
{
 int i;
 pg_time_t pgtt;
 struct tm *systm;
 struct pg_tm *pgtm;
 char cbuf[TZ_STRLEN_MAX + 1];
 pg_tz *tz;


 tz = pg_load_tz(tzname);
 if (!tz)
  return -1;


 if (!pg_tz_acceptable(tz))
 {



  return -1;
 }


 for (i = 0; i < tt->n_test_times; i++)
 {
  pgtt = (pg_time_t) (tt->test_times[i]);
  pgtm = pg_localtime(&pgtt, tz);
  if (!pgtm)
   return -1;
  systm = localtime(&(tt->test_times[i]));
  if (!systm)
  {







   return i;
  }
  if (!compare_tm(systm, pgtm))
  {
   return i;
  }
  if (systm->tm_isdst >= 0)
  {

   if (pgtm->tm_zone == ((void*)0))
    return -1;
   memset(cbuf, 0, sizeof(cbuf));
   strftime(cbuf, sizeof(cbuf) - 1, "%Z", systm);
   if (strcmp(cbuf, pgtm->tm_zone) != 0)
   {





    return i;
   }
  }
 }





 return i;
}
