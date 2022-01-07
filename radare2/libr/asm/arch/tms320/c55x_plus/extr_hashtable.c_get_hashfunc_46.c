
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_46(st32 arg1, st32 arg2) {
 st32 v2;

 v2 = arg2 & 0xC1000000;
 if ( (arg2 & 0xC1000000u) > 0x40000000 ) {
  if (v2 != 0x80000000 && v2 != 0xC0000000) {
   return arg1;
  }
 } else {
  if ( (arg2 & 0xC1000000) != 0x40000000 && v2 ) {
   if (v2 == 16777216) {
    return 136;
   }
   return arg1;
  }
 }
 return 18;
}
