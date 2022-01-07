
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zend_long ;
typedef int zend_bool ;


 int SIZEOF_ZEND_LONG ;
 scalar_t__ safe_shift_left (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline zend_bool shift_left_overflows(zend_long n, zend_long s) {

 if (n >= 0) {
  return s >= SIZEOF_ZEND_LONG * 8 - 1 || safe_shift_left(n, s) < n;
 } else {
  return s >= SIZEOF_ZEND_LONG * 8 || safe_shift_left(n, s) > n;
 }
}
