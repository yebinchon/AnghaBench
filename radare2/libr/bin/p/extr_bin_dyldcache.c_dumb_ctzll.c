
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;



__attribute__((used)) static ut32 dumb_ctzll(ut64 x) {
 ut64 result = 0;
 int i, j;
 for (i = 0; i < 64; i += 8) {
  ut8 byte = (x >> i) & 0xff;
  if (!byte) {
   result += 8;
  } else {
   for (j = 0; j < 8; j++) {
    if (!((byte >> j) & 1)) {
     result++;
    } else {
     break;
    }
   }
   break;
  }
 }
 return result;
}
