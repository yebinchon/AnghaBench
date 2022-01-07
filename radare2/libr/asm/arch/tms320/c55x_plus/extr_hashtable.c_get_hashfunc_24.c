
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int st32 ;


 int hash_const_01 ;

st32 get_hashfunc_24(st32 arg1, st32 arg2) {
 st32 v2;
 st32 v3;

 v2 = arg2;
 v3 = v2 & 0x418000;
 if ( (ut32)v3 <= 0x400000 ) {
  if (v3 == 4194304) {
   return 330;
  }
  if ( (ut32)v3 <= 0x10000 ) {
   if ( v3 != 65536 ) {
    if (!v3) {
     return 329;
    }
    if (v3 == 32768) {
     return 307;
    }
    return arg1;
   }
   return 480;
  }
  if (v3 == 98304) {
   return 467;
  }
  return arg1;
 }

 if (v3 != hash_const_01) {
  if (v3 == 4259840) {
   return 480;
  }
  if (v3 == 4292608) {
   return 467;
  }
  return arg1;
 }
 return 308;
}
