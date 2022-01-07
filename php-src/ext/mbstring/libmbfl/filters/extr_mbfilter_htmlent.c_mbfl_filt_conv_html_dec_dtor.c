
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * opaque; scalar_t__ status; } ;
typedef TYPE_1__ mbfl_convert_filter ;


 int mbfl_free (void*) ;

void mbfl_filt_conv_html_dec_dtor(mbfl_convert_filter *filter)
{
 filter->status = 0;
 if (filter->opaque)
 {
  mbfl_free((void*)filter->opaque);
 }
 filter->opaque = ((void*)0);
}
