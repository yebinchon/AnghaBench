
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;


 int DAYS_PER_4_YEARS ;
 int DAYS_PER_5_MONTHS ;
 int JULIAN_SDN_OFFSET ;

zend_long JulianToSdn(
      int inputYear,
      int inputMonth,
      int inputDay)
{
 zend_long year;
 int month;


 if (inputYear == 0 || inputYear < -4713 ||
  inputMonth <= 0 || inputMonth > 12 ||
  inputDay <= 0 || inputDay > 31) {
  return (0);
 }

 if (inputYear == -4713) {
  if (inputMonth == 1 && inputDay == 1) {
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

 return ((year * DAYS_PER_4_YEARS) / 4
   + (month * DAYS_PER_5_MONTHS + 2) / 5
   + inputDay
   - JULIAN_SDN_OFFSET);
}
