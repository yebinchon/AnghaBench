
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int st32 ;


 int hash_const_04 ;

st32 get_hashfunc_88(st32 arg1, st32 arg2) {
 st32 v2 = arg2;
 st32 v3 = v2 & 0x79B981;
 if ( (ut32)v3 <= 0x410101 ) {
  if (v3 == 0x410101) {
   return 493;
  }
  if (v3 == 0x8100 || v3 == 0x408100) {
   return 492;
  }
  return arg1;
 }
 if (v3 != hash_const_04) {
  return arg1;
 }
 return 494;
}
