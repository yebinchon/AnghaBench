
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct collector_htmlnumericentity_data {int mapsize; int* convmap; TYPE_1__* decoder; } ;
struct TYPE_7__ {int (* filter_function ) (int,TYPE_1__*) ;} ;


 int* mbfl_hexchar_table ;
 int stub1 (int,TYPE_1__*) ;
 int stub2 (int,TYPE_1__*) ;
 int stub3 (int,TYPE_1__*) ;
 int stub4 (int,TYPE_1__*) ;
 int stub5 (int,TYPE_1__*) ;
 int stub6 (int,TYPE_1__*) ;

__attribute__((used)) static int
collector_encode_htmlnumericentity(int c, void *data)
{
 struct collector_htmlnumericentity_data *pc = (struct collector_htmlnumericentity_data *)data;
 int f, n, s, r, d, size, *mapelm;

 size = pc->mapsize;
 f = 0;
 n = 0;
 while (n < size) {
  mapelm = &(pc->convmap[n*4]);
  if (c >= mapelm[0] && c <= mapelm[1]) {
   s = (c + mapelm[2]) & mapelm[3];
   if (s >= 0) {
    (*pc->decoder->filter_function)(0x26, pc->decoder);
    (*pc->decoder->filter_function)(0x23, pc->decoder);
    r = 100000000;
    s %= r;
    while (r > 0) {
     d = s/r;
     if (d || f) {
      f = 1;
      s %= r;
      (*pc->decoder->filter_function)(mbfl_hexchar_table[d], pc->decoder);
     }
     r /= 10;
    }
    if (!f) {
     f = 1;
     (*pc->decoder->filter_function)(mbfl_hexchar_table[0], pc->decoder);
    }
    (*pc->decoder->filter_function)(0x3b, pc->decoder);
   }
  }
  if (f) {
   break;
  }
  n++;
 }
 if (!f) {
  (*pc->decoder->filter_function)(c, pc->decoder);
 }

 return c;
}
