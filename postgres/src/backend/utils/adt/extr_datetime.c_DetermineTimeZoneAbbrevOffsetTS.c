
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_isdst; } ;
typedef int pg_tz ;
typedef int pg_time_t ;
typedef int fsec_t ;
typedef int TimestampTz ;


 scalar_t__ DetermineTimeZoneAbbrevOffsetInternal (int ,char const*,int *,int*,int*) ;
 int DetermineTimeZoneOffset (struct pg_tm*,int *) ;
 int ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ timestamp2tm (int ,int*,struct pg_tm*,int *,int *,int *) ;
 int timestamptz_to_time_t (int ) ;

int
DetermineTimeZoneAbbrevOffsetTS(TimestampTz ts, const char *abbr,
        pg_tz *tzp, int *isdst)
{
 pg_time_t t = timestamptz_to_time_t(ts);
 int zone_offset;
 int abbr_offset;
 int tz;
 struct pg_tm tm;
 fsec_t fsec;




 if (DetermineTimeZoneAbbrevOffsetInternal(t, abbr, tzp,
             &abbr_offset, isdst))
  return abbr_offset;




 if (timestamp2tm(ts, &tz, &tm, &fsec, ((void*)0), tzp) != 0)
  ereport(ERROR,
    (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
     errmsg("timestamp out of range")));

 zone_offset = DetermineTimeZoneOffset(&tm, tzp);
 *isdst = tm.tm_isdst;
 return zone_offset;
}
