
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_12(st32 arg1, st32 arg2) {
 st32 tmp;
 st32 v3;
 st32 result;

 tmp = arg2;
 v3 = tmp & 0x400000;
 if ( v3 ) {
  if (v3 == 4194304) {
   result = 521;
  } else {
   result = arg1;
  }
 } else {
  result = 374;
 }
 return result;
}
