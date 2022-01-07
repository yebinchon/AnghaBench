
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ulong ;


 int Z_UL (int) ;

zend_ulong minOR(zend_ulong a, zend_ulong b, zend_ulong c, zend_ulong d)
{
 zend_ulong m, temp;

 m = Z_UL(1) << (sizeof(zend_ulong) * 8 - 1);
 while (m != 0) {
  if (~a & c & m) {
   temp = (a | m) & -m;
   if (temp <= b) {
    a = temp;
    break;
   }
  } else if (a & ~c & m) {
   temp = (c | m) & -m;
   if (temp <= d) {
    c = temp;
    break;
   }
  }
  m = m >> 1;
 }
 return a | c;
}
