
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_isdst; } ;
typedef int pg_tz ;
typedef int pg_time_t ;


 scalar_t__ DetermineTimeZoneAbbrevOffsetInternal (int ,char const*,int *,int*,int*) ;
 int DetermineTimeZoneOffsetInternal (struct pg_tm*,int *,int *) ;

int
DetermineTimeZoneAbbrevOffset(struct pg_tm *tm, const char *abbr, pg_tz *tzp)
{
 pg_time_t t;
 int zone_offset;
 int abbr_offset;
 int abbr_isdst;





 zone_offset = DetermineTimeZoneOffsetInternal(tm, tzp, &t);




 if (DetermineTimeZoneAbbrevOffsetInternal(t, abbr, tzp,
             &abbr_offset, &abbr_isdst))
 {

  tm->tm_isdst = abbr_isdst;
  return abbr_offset;
 }





 return zone_offset;
}
