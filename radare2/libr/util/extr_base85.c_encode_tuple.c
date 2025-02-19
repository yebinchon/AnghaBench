
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putc_wrap (char,int,int*) ;

__attribute__((used)) static void encode_tuple(unsigned long tuple, int count, int wrap, int *plen, int y_abbr) {
 int i, lim;
 char out[5];
 if (tuple == 0 && count == 4) {
  putc_wrap('z', wrap, plen);
 }
 else if (tuple == 0x20202020 && count == 4 && y_abbr) {
  putc_wrap('y', wrap, plen);
 }
 else {
  for (i = 0; i < 5; i++) {
   out[i] = tuple % 85 + '!';
   tuple /= 85;
  }
  lim = 4 - count;
  for (i = 4; i >= lim; i--) {
   putc_wrap(out[i], wrap, plen);
  }
 }
}
