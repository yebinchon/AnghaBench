
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_49(st32 arg1, st32 arg2) {
 st32 result;

 if (arg2 & 0x80000000) {
  if ((arg2 & 0x80000000) == 0x80000000) {
   result = 33;
  } else {
   result = arg1;
  }
 } else {
  result = 35;
 }
 return result;
}
