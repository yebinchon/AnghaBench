
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;


 int DAYS_PER_400_YEARS ;
 int DAYS_PER_4_YEARS ;
 int DAYS_PER_5_MONTHS ;
 int GREGOR_SDN_OFFSET ;

zend_long GregorianToSdn(
         int inputYear,
         int inputMonth,
         int inputDay)
{
 zend_long year;
 int month;


 if (inputYear == 0 || inputYear < -4714 ||
  inputMonth <= 0 || inputMonth > 12 ||
  inputDay <= 0 || inputDay > 31) {
  return (0);
 }

 if (inputYear == -4714) {
  if (inputMonth < 11) {
   return (0);
  }
  if (inputMonth == 11 && inputDay < 25) {
   return (0);
  }
 }

 if (inputYear < 0) {
  year = inputYear + 4801;
 } else {
  year = inputYear + 4800;
 }


 if (inputMonth > 2) {
  month = inputMonth - 3;
 } else {
  month = inputMonth + 9;
  year--;
 }

 return (((year / 100) * DAYS_PER_400_YEARS) / 4
   + ((year % 100) * DAYS_PER_4_YEARS) / 4
   + (month * DAYS_PER_5_MONTHS + 2) / 5
   + inputDay
   - GREGOR_SDN_OFFSET);
}
