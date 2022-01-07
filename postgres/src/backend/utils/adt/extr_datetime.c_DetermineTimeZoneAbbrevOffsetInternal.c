
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upabbr ;
typedef int pg_tz ;
typedef int pg_time_t ;


 int TZ_STRLEN_MAX ;
 scalar_t__ pg_interpret_timezone_abbrev (char*,int *,long*,int*,int *) ;
 unsigned char pg_toupper (unsigned char) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static bool
DetermineTimeZoneAbbrevOffsetInternal(pg_time_t t, const char *abbr, pg_tz *tzp,
           int *offset, int *isdst)
{
 char upabbr[TZ_STRLEN_MAX + 1];
 unsigned char *p;
 long int gmtoff;


 strlcpy(upabbr, abbr, sizeof(upabbr));
 for (p = (unsigned char *) upabbr; *p; p++)
  *p = pg_toupper(*p);


 if (pg_interpret_timezone_abbrev(upabbr,
          &t,
          &gmtoff,
          isdst,
          tzp))
 {

  *offset = (int) -gmtoff;
  return 1;
 }
 return 0;
}
