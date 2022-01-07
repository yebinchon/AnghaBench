
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int cache; int (* flush_function ) (int ) ;int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int* s_form_sjis_fallback_tbl ;
 int* s_form_tbl ;
 int s_form_tbl_len ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int stub3 (int ) ;

__attribute__((used)) static int
mbfl_filt_conv_sjis_mac_flush(mbfl_convert_filter *filter)
{
 int i, c1, s1 = 0;
 if (filter->status == 1 && filter->cache > 0) {
  c1 = filter->cache;
  for (i=0;i<s_form_tbl_len;i++) {
   if (c1 == s_form_tbl[i]) {
    s1 = s_form_sjis_fallback_tbl[i];
    break;
   }
  }
  if (s1 > 0) {
   CK((*filter->output_function)((s1 >> 8) & 0xff, filter->data));
   CK((*filter->output_function)(s1 & 0xff, filter->data));
  }
 }
 filter->cache = 0;
 filter->status = 0;

 if (filter->flush_function != ((void*)0)) {
  return (*filter->flush_function)(filter->data);
 }

 return 0;
}
