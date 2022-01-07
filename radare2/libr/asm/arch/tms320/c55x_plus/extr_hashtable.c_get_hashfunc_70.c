
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_70(st32 arg1, st32 arg2) {
 st32 v2;
 st32 result;

 v2 = arg2 & 0x1400000;
 if ( arg2 & 0x1400000 ) {
  if ( v2 == 16777216 ) {
   result = 217;
  } else {
   if (v2 == 20971520) {
    result = 212;
   } else {
    result = arg1;
   }
  }
 } else {
  result = 216;
 }
 return result;
}
