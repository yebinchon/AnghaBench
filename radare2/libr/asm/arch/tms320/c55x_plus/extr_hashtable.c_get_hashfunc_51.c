
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int st32 ;



st32 get_hashfunc_51(st32 arg1, st32 arg2) {
 st32 v3 = arg2 & 0x180000;
 if ( (ut32)v3 > 0x100000 ) {
  if (v3 != 1572864) {
   return arg1;
  }
 } else {
  if ( v3 != 1048576 ) {
   if (!v3) {
    return 396;
   }
   if (v3 == 524288) {
    return 532;
   }
   return arg1;
  }
 }
 return 398;
}
