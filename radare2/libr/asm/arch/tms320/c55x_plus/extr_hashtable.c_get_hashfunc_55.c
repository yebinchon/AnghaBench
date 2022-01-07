
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_55(st32 arg1, st32 arg2) {
 st32 result;
 if ((arg2 & 0x8000)) {
  if ((unsigned short)(arg2 & 0x8000) == 32768) {
   result = 295;
  } else {
   result = arg1;
  }
 } else {
  result = 294;
 }
 return result;
}
