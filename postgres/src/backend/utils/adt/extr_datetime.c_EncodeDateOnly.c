
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_mon; scalar_t__ tm_year; int tm_mday; } ;


 int Assert (int) ;
 int DATEORDER_DMY ;
 int DateOrder ;
 int MONTHS_PER_YEAR ;





 int memcpy (char*,char*,int) ;
 char* pg_ltostr_zeropad (char*,int,int) ;

void
EncodeDateOnly(struct pg_tm *tm, int style, char *str)
{
 Assert(tm->tm_mon >= 1 && tm->tm_mon <= MONTHS_PER_YEAR);

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
   break;

  case 132:

   str = pg_ltostr_zeropad(str, tm->tm_mday, 2);
   *str++ = '.';
   str = pg_ltostr_zeropad(str, tm->tm_mon, 2);
   *str++ = '.';
   str = pg_ltostr_zeropad(str,
         (tm->tm_year > 0) ? tm->tm_year : -(tm->tm_year - 1), 4);
   break;

  case 130:
  default:

   if (DateOrder == DATEORDER_DMY)
   {
    str = pg_ltostr_zeropad(str, tm->tm_mday, 2);
    *str++ = '-';
    str = pg_ltostr_zeropad(str, tm->tm_mon, 2);
   }
   else
   {
    str = pg_ltostr_zeropad(str, tm->tm_mon, 2);
    *str++ = '-';
    str = pg_ltostr_zeropad(str, tm->tm_mday, 2);
   }
   *str++ = '-';
   str = pg_ltostr_zeropad(str,
         (tm->tm_year > 0) ? tm->tm_year : -(tm->tm_year - 1), 4);
   break;
 }

 if (tm->tm_year <= 0)
 {
  memcpy(str, " BC", 3);
  str += 3;
 }
 *str = '\0';
}
