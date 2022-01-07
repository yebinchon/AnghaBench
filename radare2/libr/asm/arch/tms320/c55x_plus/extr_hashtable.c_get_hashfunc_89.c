
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_89(st32 arg1, st32 arg2) {
 st32 result;

 if ( (arg2 & 0x1B901B9) == 16777600 ) {
  result = 488;
 } else {
  if ((arg2 & 0x1B901B9) == 25231616) {
   result = 495;
  } else {
   result = arg1;
  }
 }
 return result;
}
