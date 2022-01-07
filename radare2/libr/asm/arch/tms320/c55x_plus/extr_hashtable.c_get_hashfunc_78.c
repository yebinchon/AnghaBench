
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int st32 ;



st32 get_hashfunc_78(st32 arg1, st32 arg2) {
 st32 v3 = arg2 & 0x18000;
 if ( (ut32)v3 <= 0x10000 ) {
  if (v3 == 65536) {
   return 429;
  }
  if (!v3) {
   return 427;
  }
  if (v3 == 32768) {
   return 428;
  }

  return arg1;
 }
 if (v3 != 98304) {
  return arg1;
 }
 return 252;
}
