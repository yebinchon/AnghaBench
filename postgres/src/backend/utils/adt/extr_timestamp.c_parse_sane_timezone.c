
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tzname ;
typedef int text ;
struct pg_tm {int dummy; } ;
typedef int pg_tz ;


 int DTERR_BAD_FORMAT ;
 int DTERR_TZDISP_OVERFLOW ;
 int DTZ ;
 int DYNTZ ;
 int DecodeTimezone (char*,int*) ;
 int DecodeTimezoneAbbrev (int ,char*,int*,int **) ;
 int DetermineTimeZoneAbbrevOffset (struct pg_tm*,char*,int *) ;
 int DetermineTimeZoneOffset (struct pg_tm*,int *) ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int TZ ;
 int TZ_STRLEN_MAX ;
 char* downcase_truncate_identifier (char*,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char*,...) ;
 scalar_t__ isdigit (unsigned char) ;
 int * pg_tzset (char*) ;
 int strlen (char*) ;
 int text_to_cstring_buffer (int *,char*,int) ;

__attribute__((used)) static int
parse_sane_timezone(struct pg_tm *tm, text *zone)
{
 char tzname[TZ_STRLEN_MAX + 1];
 int rt;
 int tz;

 text_to_cstring_buffer(zone, tzname, sizeof(tzname));
 if (isdigit((unsigned char) *tzname))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid input syntax for type %s: \"%s\"",
      "numeric time zone", tzname),
     errhint("Numeric time zones must have \"-\" or \"+\" as first character.")));

 rt = DecodeTimezone(tzname, &tz);
 if (rt != 0)
 {
  char *lowzone;
  int type,
     val;
  pg_tz *tzp;

  if (rt == DTERR_TZDISP_OVERFLOW)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("numeric time zone \"%s\" out of range", tzname)));
  else if (rt != DTERR_BAD_FORMAT)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("time zone \"%s\" not recognized", tzname)));


  lowzone = downcase_truncate_identifier(tzname,
              strlen(tzname),
              0);
  type = DecodeTimezoneAbbrev(0, lowzone, &val, &tzp);

  if (type == TZ || type == DTZ)
  {

   tz = -val;
  }
  else if (type == DYNTZ)
  {

   tz = DetermineTimeZoneAbbrevOffset(tm, tzname, tzp);
  }
  else
  {

   tzp = pg_tzset(tzname);
   if (tzp)
    tz = DetermineTimeZoneOffset(tm, tzp);
   else
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
       errmsg("time zone \"%s\" not recognized", tzname)));
  }
 }

 return tz;
}
