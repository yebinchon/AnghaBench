
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_42(st32 arg1, st32 arg2) {
 st32 v2 = arg2 & 0x1010000;
 if ( (arg2 & 0x1010000u) <= 0x1000000 ) {
  if ((arg2 & 0x1010000) == 16777216) {
   return 12;
  }
  if (!v2) {
   return 11;
  }
  if (v2 == 65536) {
   return 8;
  }
  return arg1;
 }
 if (v2 != 16842752) {
  return arg1;
 }
 return 9;
}
