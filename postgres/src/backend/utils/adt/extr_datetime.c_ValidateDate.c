
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_year; int tm_mon; int tm_mday; scalar_t__ tm_yday; } ;


 int DAY ;
 int DOY ;
 int DTERR_FIELD_OVERFLOW ;
 int DTERR_MD_FIELD_OVERFLOW ;
 int DTK_DATE_M ;
 int DTK_M (int ) ;
 int MONTH ;
 int MONTHS_PER_YEAR ;
 int YEAR ;
 scalar_t__ date2j (int,int,int) ;
 int** day_tab ;
 size_t isleap (int) ;
 int j2date (scalar_t__,int*,int*,int*) ;

int
ValidateDate(int fmask, bool isjulian, bool is2digits, bool bc,
    struct pg_tm *tm)
{
 if (fmask & DTK_M(YEAR))
 {
  if (isjulian)
  {

  }
  else if (bc)
  {

   if (tm->tm_year <= 0)
    return DTERR_FIELD_OVERFLOW;

   tm->tm_year = -(tm->tm_year - 1);
  }
  else if (is2digits)
  {

   if (tm->tm_year < 0)
    return DTERR_FIELD_OVERFLOW;
   if (tm->tm_year < 70)
    tm->tm_year += 2000;
   else if (tm->tm_year < 100)
    tm->tm_year += 1900;
  }
  else
  {

   if (tm->tm_year <= 0)
    return DTERR_FIELD_OVERFLOW;
  }
 }


 if (fmask & DTK_M(DOY))
 {
  j2date(date2j(tm->tm_year, 1, 1) + tm->tm_yday - 1,
      &tm->tm_year, &tm->tm_mon, &tm->tm_mday);
 }


 if (fmask & DTK_M(MONTH))
 {
  if (tm->tm_mon < 1 || tm->tm_mon > MONTHS_PER_YEAR)
   return DTERR_MD_FIELD_OVERFLOW;
 }


 if (fmask & DTK_M(DAY))
 {
  if (tm->tm_mday < 1 || tm->tm_mday > 31)
   return DTERR_MD_FIELD_OVERFLOW;
 }

 if ((fmask & DTK_DATE_M) == DTK_DATE_M)
 {





  if (tm->tm_mday > day_tab[isleap(tm->tm_year)][tm->tm_mon - 1])
   return DTERR_FIELD_OVERFLOW;
 }

 return 0;
}
