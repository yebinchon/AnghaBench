
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int st32 ;



st32 get_hashfunc_31(st32 arg1, st32 arg2) {
 st32 result;
 st32 v3 = arg2 & 0x380000;

 if ( (ut32)v3 <= 0x200000 ) {
  if (v3 == 2097152) {
   return 271;
  }
  if ( (ut32)v3 > 0x100000 ) {
   if (v3 == 1572864) {
    return 534;
   }
  } else {
   if (v3 == 1048576) {
    return 317;
   }
   if (!v3) {
    return 319;
   }
   if (v3 == 524288) {
    return 533;
   }
  }
  return arg1;
 }
 if ( v3 == 2621440 ) {
  result = 535;
 } else {
  if ( v3 == 3145728 ) {
   result = 321;
  } else {
   if (v3 != 3670016) {
    return arg1;
   }
   result = 536;
  }
 }
 return result;
}
