
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MINS_PER_HOUR ;
 int SECS_PER_MINUTE ;
 int USE_XSD_DATES ;
 int abs (int) ;
 char* pg_ltostr_zeropad (char*,int,int) ;

__attribute__((used)) static char *
EncodeTimezone(char *str, int tz, int style)
{
 int hour,
    min,
    sec;

 sec = abs(tz);
 min = sec / SECS_PER_MINUTE;
 sec -= min * SECS_PER_MINUTE;
 hour = min / MINS_PER_HOUR;
 min -= hour * MINS_PER_HOUR;


 *str++ = (tz <= 0 ? '+' : '-');

 if (sec != 0)
 {
  str = pg_ltostr_zeropad(str, hour, 2);
  *str++ = ':';
  str = pg_ltostr_zeropad(str, min, 2);
  *str++ = ':';
  str = pg_ltostr_zeropad(str, sec, 2);
 }
 else if (min != 0 || style == USE_XSD_DATES)
 {
  str = pg_ltostr_zeropad(str, hour, 2);
  *str++ = ':';
  str = pg_ltostr_zeropad(str, min, 2);
 }
 else
  str = pg_ltostr_zeropad(str, hour, 2);
 return str;
}
