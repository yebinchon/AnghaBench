
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_03(st32 arg1, st32 arg2) {
 st32 v2 = arg2 & 0xE0000000;
 if ( (arg2 & 0xE0000000u) <= 0x80000000 ) {
  if ((arg2 & 0xE0000000) == 0x80000000) {
   return 102;
  }
  if (!v2) {
   return 485;
  }
  if (v2 == 536870912) {
   return 486;
  }
  return arg1;
 }
 if (v2 != 0xA0000000) {
  return arg1;
 }
 return 475;
}
