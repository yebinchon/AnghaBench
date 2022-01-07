
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int cache; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;

int mbfl_filt_conv_base64dec_flush(mbfl_convert_filter *filter)
{
 int status, cache;

 status = filter->status;
 cache = filter->cache;
 filter->status = 0;
 filter->cache = 0;

 if (status >= 2) {
  CK((*filter->output_function)((cache >> 16) & 0xff, filter->data));
  if (status >= 3) {
   CK((*filter->output_function)((cache >> 8) & 0xff, filter->data));
  }
 }
 return 0;
}
