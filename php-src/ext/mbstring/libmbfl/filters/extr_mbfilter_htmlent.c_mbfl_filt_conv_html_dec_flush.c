
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int (* output_function ) (unsigned char,int ) ;int data; int (* flush_function ) (int ) ;scalar_t__ opaque; } ;
typedef TYPE_1__ mbfl_convert_filter ;


 int stub1 (unsigned char,int ) ;
 int stub2 (int ) ;

int mbfl_filt_conv_html_dec_flush(mbfl_convert_filter *filter)
{
 int status, pos = 0;
 unsigned char *buffer;
 int err = 0;

 buffer = (unsigned char*)filter->opaque;
 status = filter->status;
 filter->status = 0;


 while (status--) {
  int e = (*filter->output_function)(buffer[pos++], filter->data);
  if (e != 0)
   err = e;
 }

 if (filter->flush_function != ((void*)0)) {
  (*filter->flush_function)(filter->data);
 }

 return err;
}
