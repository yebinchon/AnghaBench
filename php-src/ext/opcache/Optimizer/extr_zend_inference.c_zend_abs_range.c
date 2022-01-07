
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;
typedef int zend_bool ;


 int MAX (int ,int ) ;
 int ZEND_LONG_MIN ;

__attribute__((used)) static inline zend_bool zend_abs_range(
  zend_long min, zend_long max, zend_long *abs_min, zend_long *abs_max) {
 if (min == ZEND_LONG_MIN) {

  return 0;
 }

 if (min >= 0) {
  *abs_min = min;
  *abs_max = max;
 } else if (max <= 0) {
  *abs_min = -max;
  *abs_max = -min;
 } else {

  *abs_min = 0;
  *abs_max = MAX(max, -min);
 }

 return 1;
}
