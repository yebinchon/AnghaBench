
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int (* flush_function ) (int ) ;int * opaque; scalar_t__ status; } ;
typedef TYPE_1__ mbfl_convert_filter ;


 int stub1 (int ) ;

int mbfl_filt_conv_html_enc_flush(mbfl_convert_filter *filter)
{
 filter->status = 0;
 filter->opaque = ((void*)0);

 if (filter->flush_function != ((void*)0)) {
  (*filter->flush_function)(filter->data);
 }

 return 0;
}
