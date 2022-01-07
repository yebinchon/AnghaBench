
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_mon; scalar_t__ tm_isdst; scalar_t__ tm_year; int tm_mday; int tm_hour; int tm_min; size_t tm_wday; } ;
typedef int fsec_t ;


 char* AppendTimestampSeconds (char*,struct pg_tm*,int ) ;
 int Assert (int) ;
 int DATEORDER_DMY ;
 int DateOrder ;
 char* EncodeTimezone (char*,int,int) ;
 char* MAXTZLEN ;
 int MONTHS_PER_YEAR ;





 int date2j (int,int,int) ;
 char** days ;
 size_t j2day (int) ;
 int memcpy (char*,char*,int) ;
 char** months ;
 char* pg_ltostr_zeropad (char*,int,int) ;
 int sprintf (char*,char*,char*,char const*) ;
 int strlen (char*) ;

void
EncodeDateTime(struct pg_tm *tm, fsec_t fsec, bool print_tz, int tz, const char *tzn, int style, char *str)
{
 int day;

 Assert(tm->tm_mon >= 1 && tm->tm_mon <= MONTHS_PER_YEAR);




 if (tm->tm_isdst < 0)
  print_tz = 0;

 switch (style)
 {
  case 131:
  case 128:

   str = pg_ltostr_zeropad(str,
         (tm->tm_year > 0) ? tm->tm_year : -(tm->tm_year - 1), 4);
   *str++ = '-';
   str = pg_ltostr_zeropad(str, tm->tm_mon, 2);
   *str++ = '-';
   str = pg_ltostr_zeropad(str, tm->tm_mday, 2);
   *str++ = (style == 131) ? ' ' : 'T';
   str = pg_ltostr_zeropad(str, tm->tm_hour, 2);
   *str++ = ':';
   str = pg_ltostr_zeropad(str, tm->tm_min, 2);
   *str++ = ':';
   str = AppendTimestampSeconds(str, tm, fsec);
   if (print_tz)
    str = EncodeTimezone(str, tz, style);
   break;

  case 129:

   if (DateOrder == DATEORDER_DMY)
   {
    str = pg_ltostr_zeropad(str, tm->tm_mday, 2);
    *str++ = '/';
    str = pg_ltostr_zeropad(str, tm->tm_mon, 2);
   }
   else
   {
    str = pg_ltostr_zeropad(str, tm->tm_mon, 2);
    *str++ = '/';
    str = pg_ltostr_zeropad(str, tm->tm_mday, 2);
   }
   *str++ = '/';
   str = pg_ltostr_zeropad(str,
         (tm->tm_year > 0) ? tm->tm_year : -(tm->tm_year - 1), 4);
   *str++ = ' ';
   str = pg_ltostr_zeropad(str, tm->tm_hour, 2);
   *str++ = ':';
   str = pg_ltostr_zeropad(str, tm->tm_min, 2);
   *str++ = ':';
   str = AppendTimestampSeconds(str, tm, fsec);






   if (print_tz)
   {
    if (tzn)
    {
     sprintf(str, " %.*s", MAXTZLEN, tzn);
     str += strlen(str);
    }
    else
     str = EncodeTimezone(str, tz, style);
   }
   break;

  case 132:

   str = pg_ltostr_zeropad(str, tm->tm_mday, 2);
   *str++ = '.';
   str = pg_ltostr_zeropad(str, tm->tm_mon, 2);
   *str++ = '.';
   str = pg_ltostr_zeropad(str,
         (tm->tm_year > 0) ? tm->tm_year : -(tm->tm_year - 1), 4);
   *str++ = ' ';
   str = pg_ltostr_zeropad(str, tm->tm_hour, 2);
   *str++ = ':';
   str = pg_ltostr_zeropad(str, tm->tm_min, 2);
   *str++ = ':';
   str = AppendTimestampSeconds(str, tm, fsec);

   if (print_tz)
   {
    if (tzn)
    {
     sprintf(str, " %.*s", MAXTZLEN, tzn);
     str += strlen(str);
    }
    else
     str = EncodeTimezone(str, tz, style);
   }
   break;

  case 130:
  default:

   day = date2j(tm->tm_year, tm->tm_mon, tm->tm_mday);
   tm->tm_wday = j2day(day);
   memcpy(str, days[tm->tm_wday], 3);
   str += 3;
   *str++ = ' ';
   if (DateOrder == DATEORDER_DMY)
   {
    str = pg_ltostr_zeropad(str, tm->tm_mday, 2);
    *str++ = ' ';
    memcpy(str, months[tm->tm_mon - 1], 3);
    str += 3;
   }
   else
   {
    memcpy(str, months[tm->tm_mon - 1], 3);
    str += 3;
    *str++ = ' ';
    str = pg_ltostr_zeropad(str, tm->tm_mday, 2);
   }
   *str++ = ' ';
   str = pg_ltostr_zeropad(str, tm->tm_hour, 2);
   *str++ = ':';
   str = pg_ltostr_zeropad(str, tm->tm_min, 2);
   *str++ = ':';
   str = AppendTimestampSeconds(str, tm, fsec);
   *str++ = ' ';
   str = pg_ltostr_zeropad(str,
         (tm->tm_year > 0) ? tm->tm_year : -(tm->tm_year - 1), 4);

   if (print_tz)
   {
    if (tzn)
    {
     sprintf(str, " %.*s", MAXTZLEN, tzn);
     str += strlen(str);
    }
    else
    {






     *str++ = ' ';
     str = EncodeTimezone(str, tz, style);
    }
   }
   break;
 }

 if (tm->tm_year <= 0)
 {
  memcpy(str, " BC", 3);
  str += 3;
 }
 *str = '\0';
}
