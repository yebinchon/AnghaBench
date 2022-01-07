
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct collector_htmlnumericentity_data {int status; int cache; int digit; TYPE_1__* decoder; } ;
typedef int mbfl_convert_filter ;
struct TYPE_14__ {int (* filter_function ) (int,TYPE_1__*) ;} ;


 int* mbfl_hexchar_table ;
 int stub1 (int,TYPE_1__*) ;
 int stub10 (int,TYPE_1__*) ;
 int stub11 (int,TYPE_1__*) ;
 int stub12 (int,TYPE_1__*) ;
 int stub13 (int,TYPE_1__*) ;
 int stub2 (int,TYPE_1__*) ;
 int stub3 (int,TYPE_1__*) ;
 int stub4 (int,TYPE_1__*) ;
 int stub5 (int,TYPE_1__*) ;
 int stub6 (int,TYPE_1__*) ;
 int stub7 (int,TYPE_1__*) ;
 int stub8 (int,TYPE_1__*) ;
 int stub9 (int,TYPE_1__*) ;

int mbfl_filt_decode_htmlnumericentity_flush(mbfl_convert_filter *filter)
{
 struct collector_htmlnumericentity_data *pc = (struct collector_htmlnumericentity_data *)filter;
 int n, s, r, d;

 if (pc->status) {
  switch (pc->status) {
  case 1:
   (*pc->decoder->filter_function)(0x26, pc->decoder);
   break;
  case 2:
   (*pc->decoder->filter_function)(0x26, pc->decoder);
   (*pc->decoder->filter_function)(0x23, pc->decoder);
   break;
  case 3:
   (*pc->decoder->filter_function)(0x26, pc->decoder);
   (*pc->decoder->filter_function)(0x23, pc->decoder);

   s = pc->cache;
   r = 1;
   n = pc->digit;
   while (n > 0) {
    r *= 10;
    n--;
   }
   s %= r;
   r /= 10;
   while (r > 0) {
    d = s/r;
    s %= r;
    r /= 10;
    (*pc->decoder->filter_function)(mbfl_hexchar_table[d], pc->decoder);
   }

   break;
  case 4:
   (*pc->decoder->filter_function)(0x26, pc->decoder);
   (*pc->decoder->filter_function)(0x23, pc->decoder);
   (*pc->decoder->filter_function)(0x78, pc->decoder);
   break;
  case 5:
   (*pc->decoder->filter_function)(0x26, pc->decoder);
   (*pc->decoder->filter_function)(0x23, pc->decoder);
   (*pc->decoder->filter_function)(0x78, pc->decoder);

   s = pc->cache;
   r = 1;
   n = pc->digit;
   while (n > 0) {
    r *= 16;
    n--;
   }
   s %= r;
   r /= 16;
   while (r > 0) {
    d = s/r;
    s %= r;
    r /= 16;
    (*pc->decoder->filter_function)(mbfl_hexchar_table[d], pc->decoder);
   }
   break;
  default:
   break;
  }
 }

 pc->status = 0;
 pc->cache = 0;
 pc->digit = 0;

 return 0;
}
