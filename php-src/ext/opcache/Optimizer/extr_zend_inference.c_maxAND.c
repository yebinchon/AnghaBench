
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_ulong ;


 int Z_UL (int) ;

zend_ulong maxAND(zend_ulong a, zend_ulong b, zend_ulong c, zend_ulong d)
{
 zend_ulong m, temp;

 m = Z_UL(1) << (sizeof(zend_ulong) * 8 - 1);
 while (m != 0) {
  if (b & ~d & m) {
   temp = (b | ~m) | (m - 1);
   if (temp >= a) {
    b = temp;
    break;
   }
  } else if (~b & d & m) {
   temp = (d | ~m) | (m - 1);
   if (temp >= c) {
    d = temp;
    break;
   }
  }
  m = m >> 1;
 }
 return b & d;
}
