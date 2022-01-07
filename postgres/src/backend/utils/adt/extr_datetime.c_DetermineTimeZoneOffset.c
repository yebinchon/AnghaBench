
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int dummy; } ;
typedef int pg_tz ;
typedef int pg_time_t ;


 int DetermineTimeZoneOffsetInternal (struct pg_tm*,int *,int *) ;

int
DetermineTimeZoneOffset(struct pg_tm *tm, pg_tz *tzp)
{
 pg_time_t t;

 return DetermineTimeZoneOffsetInternal(tm, tzp, &t);
}
