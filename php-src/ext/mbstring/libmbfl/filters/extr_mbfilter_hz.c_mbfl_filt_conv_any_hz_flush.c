
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int data; int (* output_function ) (int,int ) ;} ;
typedef TYPE_1__ mbfl_convert_filter ;


 int CK (int ) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;

int
mbfl_filt_conv_any_hz_flush(mbfl_convert_filter *filter)
{

 if ((filter->status & 0xff00) != 0) {
  CK((*filter->output_function)(0x7e, filter->data));
  CK((*filter->output_function)(0x7d, filter->data));
 }
 filter->status &= 0xff;
 return 0;
}
