
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zend_long ;
typedef int zend_bool ;


 scalar_t__ ZEND_LONG_MAX ;
 scalar_t__ ZEND_LONG_MIN ;

__attribute__((used)) static inline zend_bool add_will_overflow(zend_long a, zend_long b) {
 return (b > 0 && a > ZEND_LONG_MAX - b)
  || (b < 0 && a < ZEND_LONG_MIN - b);
}
