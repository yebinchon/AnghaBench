
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int st32 ;



st32 get_hashfunc_56(st32 arg1, st32 arg2) {
 st32 result;
 st32 v3 = arg2 & 0x18180;
 if ( (ut32)v3 <= 0x8080 ) {
  if (v3 == 32896) {
   return 528;
  }
  if (!v3) {
   return 406;
  }
  if (v3 == 128) {
   return 527;
  }
  if (v3 == 32768) {
   return 407;
  }
  return arg1;
 }
 if ( v3 == 98304 ) {
  result = 408;
 } else {
  if (v3 != 98432) {
   return arg1;
  }
  result = 529;
 }
 return result;
}
