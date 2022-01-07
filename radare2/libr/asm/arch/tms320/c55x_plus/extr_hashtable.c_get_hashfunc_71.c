
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_71(st32 arg1, st32 arg2) {
 st32 result;

 if ( arg2 & 0x1400000 ) {
  if ((arg2 & 0x1400000) == 4194304) {
   result = 211;
  } else {
   result = arg1;
  }
 } else {
  result = 218;
 }
 return result;
}
