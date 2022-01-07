
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_09(st32 arg1, st32 arg2) {
 st32 v2;

 v2 = arg2 & 0xC0000000;
 if ( (arg2 & 0xC0000000u) <= 0x80000000 ) {
  if ((arg2 & 0xC0000000) == 0x80000000) {
   return 91;
  }
  if (!v2) {
   return 89;
  }
  if (v2 == 0x40000000) {
   return 90;
  }
  return arg1;
 }
 if (v2 != 0xC0000000) {
  return arg1;
 }
 return 92;
}
