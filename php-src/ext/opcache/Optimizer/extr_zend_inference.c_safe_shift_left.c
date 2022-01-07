
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ulong ;
typedef scalar_t__ zend_long ;



__attribute__((used)) static inline zend_long safe_shift_left(zend_long n, zend_long s) {
 return (zend_long) ((zend_ulong) n << (zend_ulong) s);
}
