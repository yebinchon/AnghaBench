
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_21(st32 arg1, st32 arg2) {
 st32 v2;

 v2 = arg2 & 0x1400000;
 if ( (arg2 & 0x1400000u) <= 0x1000000 ) {
  if ((arg2 & 0x1400000) == 16777216) {
   return 73;
  }
  if (!v2) {
   return 72;
  }
  if (v2 == 4194304) {
   return 108;
  }
  return arg1;
 }
 if (v2 != 20971520) {
  return arg1;
 }
 return 109;
}
