
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_year; int tm_mon; int tm_sec; int tm_min; int tm_hour; int tm_mday; } ;
typedef int pg_time_t ;


 int ERROR ;
 int elog (int ,char*) ;
 struct pg_tm* pg_gmtime (int *) ;

void
GetEpochTime(struct pg_tm *tm)
{
 struct pg_tm *t0;
 pg_time_t epoch = 0;

 t0 = pg_gmtime(&epoch);

 if (t0 == ((void*)0))
  elog(ERROR, "could not convert epoch to timestamp: %m");

 tm->tm_year = t0->tm_year;
 tm->tm_mon = t0->tm_mon;
 tm->tm_mday = t0->tm_mday;
 tm->tm_hour = t0->tm_hour;
 tm->tm_min = t0->tm_min;
 tm->tm_sec = t0->tm_sec;

 tm->tm_year += 1900;
 tm->tm_mon++;
}
