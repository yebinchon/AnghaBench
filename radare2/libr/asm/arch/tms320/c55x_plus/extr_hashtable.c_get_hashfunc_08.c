
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_08(st32 arg1, st32 arg2) {
 st32 tmp;

 tmp = arg2 & 0xC0000000;
 if ( (arg2 & 0xC0000000u) <= 0x80000000 ) {
  if ((arg2 & 0xC0000000) == 0x80000000) {
   return 87;
  }
  if (!tmp) {
   return 85;
  }
  if (tmp == 0x40000000) {
   return 86;
  }
  return arg1;
 }
 if (tmp != 0xC0000000) {
  return arg1;
 }
 return 88;
}
