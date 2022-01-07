
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int st32 ;



st32 get_hashfunc_34(st32 arg1, st32 arg2) {
 st32 result;
 st32 v2 = arg2;
 st32 v3 = v2 & 0x580000;
 if ( (ut32)v3 <= 0x180000 ) {
  if (v3 == 1572864) {
   return 471;
  }
  if (!v3) {
   return 392;
  }
  if (v3 == 524288) {
   return 470;
  }
  if (v3 == 1048576) {
   return 393;
  }
  return arg1;
 }
 if ( v3 == 4194304 ) {
  result = 394;
 } else {
  if (v3 != 5242880) {
   return arg1;
  }
  result = 395;
 }
 return result;
}
