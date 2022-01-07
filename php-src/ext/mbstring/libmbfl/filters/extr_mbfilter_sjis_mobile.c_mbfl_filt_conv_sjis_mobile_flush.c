
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cache; int status; int (* flush_function ) (int ) ;int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int stub1 (int,int ) ;
 int stub2 (int ) ;

int
mbfl_filt_conv_sjis_mobile_flush(mbfl_convert_filter *filter)
{
 int c1 = filter->cache;
 if (filter->status == 1 && (c1 == 0x0023 || (c1 >= 0x0030 && c1<=0x0039))) {
  CK((*filter->output_function)(c1, filter->data));
 }
 filter->status = 0;
 filter->cache = 0;

 if (filter->flush_function != ((void*)0)) {
  return (*filter->flush_function)(filter->data);
 }

 return 0;
}
