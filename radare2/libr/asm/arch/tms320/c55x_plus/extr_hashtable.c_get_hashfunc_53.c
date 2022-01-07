
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_53(st32 arg1, st32 arg2) {
 st32 v2 = arg2 & 0x8200;
 st32 result;

 if (arg2 & 0x8200) {
  if (v2 == 512) {
   result = 530;
  } else {
   result = (v2==0x8000)? 297: arg1;
  }
 } else {
  result = 355;
 }
 return result;
}
