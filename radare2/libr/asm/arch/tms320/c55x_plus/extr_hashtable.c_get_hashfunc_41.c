
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_41(st32 arg1, st32 arg2) {
 st32 result;
 st32 v2 = arg2 & 0x1010000;
 if ( arg2 & 0x1010000 ) {
  if ( v2 == 16777216 ) {
   result = 138;
  } else {
   if (v2 == 16842752) {
    result = 139;
   } else {
    result = arg1;
   }
  }
 } else {
  result = 137;
 }
 return result;
}
