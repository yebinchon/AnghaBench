
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
typedef int st32 ;



__attribute__((used)) static st32 firstsigdigit (ut32 num) {
 st32 f = -1;
 st32 b = -1;
 ut32 forwardmask = 0x80000000;
 ut32 backwardmask = 0x1;
 ut32 i;
 for (i = 0; i < 32; i++ ) {
  if ( (forwardmask & num) && (f == -1)) {
   f = i;
  }
  if ( (backwardmask & num) && (b == -1)) {
   b = 32-i;
  }
  forwardmask >>= 1;
  backwardmask <<= 1;
 }

 if ((b-f) < 9) {
  return f;
 }
 return -1;
}
