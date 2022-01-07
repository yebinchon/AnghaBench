
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_64(st32 arg1, st32 arg2) {
 st32 result;

 if ( arg2 & 0x1000000 ) {
  if ((arg2 & 0x1000000) == 16777216) {
   result = 180;
  } else {
   result = arg1;
  }
 } else {
  result = 179;
 }
 return result;
}
