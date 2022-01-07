
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_39(st32 arg1, st32 arg2) {
 st32 result;

 if ( (arg2 & 0x1010000) == 65536 ) {
  result = 25;
 } else {
  if ((arg2 & 0x1010000) == 16842752) {
   result = 27;
  } else {
   result = arg1;
  }
 }
 return result;
}
