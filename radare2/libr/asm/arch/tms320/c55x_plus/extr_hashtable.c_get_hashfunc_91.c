
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int st32 ;



st32 get_hashfunc_91(st32 arg1, st32 arg2) {
 st32 result;

 if ( (arg2 & 0x1F901BF) == 8454145 ) {
  result = 501;
 } else {
  if ((arg2 & 0x1F901BF) == 25231361) {
   result = 502;
  } else {
   result = arg1;
  }
 }
 return result;
}
