
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* output_function ) (int,int ) ;int data; } ;
typedef TYPE_1__ mbfl_convert_filter ;


 int stub1 (int,int ) ;

__attribute__((used)) static int mbfl_filt_conv_8bit_wchar(int c, mbfl_convert_filter *filter)
{
 return (*filter->output_function)(c, filter->data);
}
