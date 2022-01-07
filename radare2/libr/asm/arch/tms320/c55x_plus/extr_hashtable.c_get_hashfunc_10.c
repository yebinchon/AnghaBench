
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int st32 ;



st32 get_hashfunc_10(st32 arg1, st32 arg2) {
 st32 v2;
 st32 v3;

 v2 = arg2;
 v3 = v2 & 0x500000;
 if ( (ut32)v3 <= 0x400000 ) {
  if (v3 == 4194304) {
   return 247;
  }
  if (!v3) {
   return 245;
  }
  if (v3 == 1048576) {
   return 249;
  }
  return arg1;
 }
 if (v3 != 5242880) {
  return arg1;
 }
 return 248;
}
