
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;


 int DAYS_PER_4_YEARS ;
 int DAYS_PER_5_MONTHS ;
 long INT_MAX ;
 long INT_MIN ;
 int JULIAN_SDN_OFFSET ;
 int LONG_MAX ;
 int LONG_MIN ;

void SdnToJulian(
     zend_long sdn,
     int *pYear,
     int *pMonth,
     int *pDay)
{
 int year;
 int month;
 int day;
 zend_long temp;
 int dayOfYear;

 if (sdn <= 0) {
  goto fail;
 }

 if (sdn > (LONG_MAX - JULIAN_SDN_OFFSET * 4 + 1) / 4 || sdn < LONG_MIN / 4) {
  goto fail;
 }
 temp = sdn * 4 + (JULIAN_SDN_OFFSET * 4 - 1);


 {
  long yearl = temp / DAYS_PER_4_YEARS;
  if (yearl > INT_MAX || yearl < INT_MIN) {
   goto fail;
  }
  year = (int) yearl;
 }
 dayOfYear = (temp % DAYS_PER_4_YEARS) / 4 + 1;


 temp = dayOfYear * 5 - 3;
 month = temp / DAYS_PER_5_MONTHS;
 day = (temp % DAYS_PER_5_MONTHS) / 5 + 1;


 if (month < 10) {
  month += 3;
 } else {
  year += 1;
  month -= 9;
 }


 year -= 4800;
 if (year <= 0)
  year--;

 *pYear = year;
 *pMonth = month;
 *pDay = day;
 return;

fail:
 *pYear = 0;
 *pMonth = 0;
 *pDay = 0;
}
