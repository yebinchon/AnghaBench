
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_sec; int tm_min; int tm_hour; } ;
typedef int fsec_t ;


 char* AppendSeconds (char*,int ,int ,int ,int) ;
 char* EncodeTimezone (char*,int,int) ;
 int MAX_TIME_PRECISION ;
 char* pg_ltostr_zeropad (char*,int ,int) ;

void
EncodeTimeOnly(struct pg_tm *tm, fsec_t fsec, bool print_tz, int tz, int style, char *str)
{
 str = pg_ltostr_zeropad(str, tm->tm_hour, 2);
 *str++ = ':';
 str = pg_ltostr_zeropad(str, tm->tm_min, 2);
 *str++ = ':';
 str = AppendSeconds(str, tm->tm_sec, fsec, MAX_TIME_PRECISION, 1);
 if (print_tz)
  str = EncodeTimezone(str, tz, style);
 *str = '\0';
}
