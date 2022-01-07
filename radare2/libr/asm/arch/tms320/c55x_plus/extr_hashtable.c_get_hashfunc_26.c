
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int st32 ;


 int hash_const_01 ;

st32 get_hashfunc_26(st32 arg1, st32 arg2) {
 st32 v2;
 st32 v3;

 v2 = arg2;
 v3 = v2 & 0x41C000;
 if ( (ut32)v3 <= 0x404000 ) {
  if (v3 == 4210688 || v3 == 16384) {
   return 310;
  }
  if ( v3 != 49152 ) {
   if (v3 == 4194304) {
    return 312;
   }
   return arg1;
  }
  return 311;
 }

 if (v3 != hash_const_01) {
  if (v3 != 4243456) {
   return arg1;
  }
  return 311;
 }
 return 313;
}
