
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_20(st32 arg1, st32 arg2) {
 st32 v2;

 v2 = arg2 & 0x1400000;
 if ( (arg2 & 0x1400000u) <= 0x1000000 ) {
  if ((arg2 & 0x1400000) == 16777216) {
   return 75;
  }
  if (!v2) {
   return 74;
  }
  if (v2 == 4194304) {
   return 78;
  }
  return arg1;
 }
 if (v2 != 20971520) {
  return arg1;
 }
 return 77;
}
