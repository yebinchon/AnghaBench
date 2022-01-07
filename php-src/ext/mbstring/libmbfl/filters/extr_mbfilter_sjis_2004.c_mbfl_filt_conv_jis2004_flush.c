
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cache; int status; int (* flush_function ) (int ) ;int data; int (* output_function ) (int,int ) ;TYPE_1__* to; } ;
typedef TYPE_2__ mbfl_convert_filter ;
struct TYPE_4__ {scalar_t__ no_encoding; } ;


 int CK (int ) ;
 int SJIS_ENCODE (int,int,int,int) ;
 int* jisx0213_u2_fb_tbl ;
 int jisx0213_u2_tbl_len ;
 scalar_t__ mbfl_no_encoding_eucjp2004 ;
 scalar_t__ mbfl_no_encoding_sjis2004 ;
 int stub1 (int,int ) ;
 int stub10 (int ) ;
 int stub2 (int,int ) ;
 int stub3 (int,int ) ;
 int stub4 (int,int ) ;
 int stub5 (int,int ) ;
 int stub6 (int,int ) ;
 int stub7 (int,int ) ;
 int stub8 (int,int ) ;
 int stub9 (int,int ) ;

int
mbfl_filt_conv_jis2004_flush(mbfl_convert_filter *filter)
{
 int k, c1, c2, s1, s2;

 k = filter->cache;
 filter->cache = 0;

 if (filter->status == 1 && k >= 0 && k <= jisx0213_u2_tbl_len) {
  s1 = jisx0213_u2_fb_tbl[k];

  if (filter->to->no_encoding == mbfl_no_encoding_sjis2004) {
   c1 = (s1 >> 8) & 0xff;
   c2 = s1 & 0xff;
   SJIS_ENCODE(c1, c2, s1, s2);
  } else if (filter->to->no_encoding == mbfl_no_encoding_eucjp2004) {
   s2 = (s1 & 0xff) | 0x80;
   s1 = ((s1 >> 8) & 0xff) | 0x80;
  } else {
   s2 = s1 & 0x7f;
   s1 = (s1 >> 8) & 0x7f;
   if ((filter->status & 0xff00) != 0x200) {
    CK((*filter->output_function)(0x1b, filter->data));
    CK((*filter->output_function)(0x24, filter->data));
    CK((*filter->output_function)(0x28, filter->data));
    CK((*filter->output_function)(0x51, filter->data));
   }
   filter->status = 0x200;
  }

  CK((*filter->output_function)(s1, filter->data));
  CK((*filter->output_function)(s2, filter->data));
 }


 if ((filter->status & 0xff00) != 0) {
  CK((*filter->output_function)(0x1b, filter->data));
  CK((*filter->output_function)(0x28, filter->data));
  CK((*filter->output_function)(0x42, filter->data));
 }

 filter->status = 0;

 if (filter->flush_function != ((void*)0)) {
  return (*filter->flush_function)(filter->data);
 }

 return 0;
}
