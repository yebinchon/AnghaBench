
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zend_long ;


 int DAYS_PER_4_YEARS ;
 int DAYS_PER_MONTH ;
 scalar_t__ FRENCH_SDN_OFFSET ;

zend_long FrenchToSdn(
      int year,
      int month,
      int day)
{

 if (year < 1 || year > 14 ||
  month < 1 || month > 13 ||
  day < 1 || day > 30) {
  return (0);
 }
 return ((year * DAYS_PER_4_YEARS) / 4
   + (month - 1) * DAYS_PER_MONTH
   + day
   + FRENCH_SDN_OFFSET);
}
