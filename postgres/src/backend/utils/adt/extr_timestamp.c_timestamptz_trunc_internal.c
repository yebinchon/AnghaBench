
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
struct pg_tm {int tm_year; int tm_mon; int tm_mday; int tm_sec; int tm_min; int tm_hour; } ;
typedef int pg_tz ;
typedef int fsec_t ;
typedef scalar_t__ TimestampTz ;
 int DecodeUnits (int ,char*,int*) ;
 int DetermineTimeZoneOffset (struct pg_tm*,int *) ;
 int ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int MONTHS_PER_YEAR ;
 int UNITS ;
 int VARDATA_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int date2isoweek (int,int,int) ;
 char* downcase_truncate_identifier (int ,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int isoweek2date (int,int*,int*,int*) ;
 scalar_t__ timestamp2tm (scalar_t__,int*,struct pg_tm*,int*,int *,int *) ;
 scalar_t__ tm2timestamp (struct pg_tm*,int,int*,scalar_t__*) ;

__attribute__((used)) static TimestampTz
timestamptz_trunc_internal(text *units, TimestampTz timestamp, pg_tz *tzp)
{
 TimestampTz result;
 int tz;
 int type,
    val;
 bool redotz = 0;
 char *lowunits;
 fsec_t fsec;
 struct pg_tm tt,
      *tm = &tt;

 lowunits = downcase_truncate_identifier(VARDATA_ANY(units),
           VARSIZE_ANY_EXHDR(units),
           0);

 type = DecodeUnits(0, lowunits, &val);

 if (type == UNITS)
 {
  if (timestamp2tm(timestamp, &tz, tm, &fsec, ((void*)0), tzp) != 0)
   ereport(ERROR,
     (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
      errmsg("timestamp out of range")));

  switch (val)
  {
   case 129:
    {
     int woy;

     woy = date2isoweek(tm->tm_year, tm->tm_mon, tm->tm_mday);






     if (woy >= 52 && tm->tm_mon == 1)
      --tm->tm_year;
     if (woy <= 1 && tm->tm_mon == MONTHS_PER_YEAR)
      ++tm->tm_year;
     isoweek2date(woy, &(tm->tm_year), &(tm->tm_mon), &(tm->tm_mday));
     tm->tm_hour = 0;
     tm->tm_min = 0;
     tm->tm_sec = 0;
     fsec = 0;
     redotz = 1;
     break;
    }

   case 135:






    if (tm->tm_year > 0)
     tm->tm_year = ((tm->tm_year + 999) / 1000) * 1000 - 999;
    else
     tm->tm_year = -((999 - (tm->tm_year - 1)) / 1000) * 1000 + 1;

   case 140:

    if (tm->tm_year > 0)
     tm->tm_year = ((tm->tm_year + 99) / 100) * 100 - 99;
    else
     tm->tm_year = -((99 - (tm->tm_year - 1)) / 100) * 100 + 1;

   case 138:





    if (val != 135 && val != 140)
    {
     if (tm->tm_year > 0)
      tm->tm_year = (tm->tm_year / 10) * 10;
     else
      tm->tm_year = -((8 - (tm->tm_year - 1)) / 10) * 10;
    }

   case 128:
    tm->tm_mon = 1;

   case 131:
    tm->tm_mon = (3 * ((tm->tm_mon - 1) / 3)) + 1;

   case 132:
    tm->tm_mday = 1;

   case 139:
    tm->tm_hour = 0;
    redotz = 1;

   case 137:
    tm->tm_min = 0;

   case 133:
    tm->tm_sec = 0;

   case 130:
    fsec = 0;
    break;
   case 134:
    fsec = (fsec / 1000) * 1000;
    break;
   case 136:
    break;

   default:
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("timestamp with time zone units \"%s\" not "
        "supported", lowunits)));
    result = 0;
  }

  if (redotz)
   tz = DetermineTimeZoneOffset(tm, tzp);

  if (tm2timestamp(tm, fsec, &tz, &result) != 0)
   ereport(ERROR,
     (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
      errmsg("timestamp out of range")));
 }
 else
 {
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("timestamp with time zone units \"%s\" not recognized",
      lowunits)));
  result = 0;
 }

 return result;
}
