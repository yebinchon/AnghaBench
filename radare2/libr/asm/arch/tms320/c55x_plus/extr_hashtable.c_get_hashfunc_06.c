
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_06(st32 arg1, st32 arg2) {
 st32 result;

 if ( arg2 & 0x80000000 ) {
  if ((st32) (arg2 & 0x80000000) == 0x80000000) {
   result = 228;
  } else {
   result = arg1;
  }
 } else {
  result = 227;
 }
 return result;
}
