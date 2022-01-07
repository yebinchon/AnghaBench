
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;



int DayOfWeek(
     zend_long sdn)
{
 int dow;

 dow = (sdn + 1) % 7;
 if (dow >= 0) {
  return (dow);
 } else {
  return (dow + 7);
 }
}
