
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_87(st32 arg1, st32 v2) {
 st32 result;
 st32 v3 = v2 & 0x79B981;
 if (v3 == 33024 || v3 == 4227328) {
  result = 490;
 } else {
  result = (v3 == 4260097) ? 491 : arg1;
 }
 return result;
}
