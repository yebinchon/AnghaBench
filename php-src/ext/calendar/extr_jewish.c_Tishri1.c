
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;


 int AM3_11_20 ;
 int AM9_32_43 ;
 int FRIDAY ;
 int MONDAY ;
 int NOON ;
 int SUNDAY ;
 int TUESDAY ;
 int WEDNESDAY ;

__attribute__((used)) static zend_long Tishri1(
         int metonicYear,
         zend_long moladDay,
         zend_long moladHalakim)
{
 zend_long tishri1;
 int dow;
 int leapYear;
 int lastWasLeapYear;

 tishri1 = moladDay;
 dow = tishri1 % 7;
 leapYear = metonicYear == 2 || metonicYear == 5 || metonicYear == 7
  || metonicYear == 10 || metonicYear == 13 || metonicYear == 16
  || metonicYear == 18;
 lastWasLeapYear = metonicYear == 3 || metonicYear == 6
  || metonicYear == 8 || metonicYear == 11 || metonicYear == 14
  || metonicYear == 17 || metonicYear == 0;


 if ((moladHalakim >= NOON) ||
  ((!leapYear) && dow == TUESDAY && moladHalakim >= AM3_11_20) ||
  (lastWasLeapYear && dow == MONDAY && moladHalakim >= AM9_32_43)) {
  tishri1++;
  dow++;
  if (dow == 7) {
   dow = 0;
  }
 }


 if (dow == WEDNESDAY || dow == FRIDAY || dow == SUNDAY) {
  tishri1++;
 }
 return (tishri1);
}
