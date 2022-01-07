
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mime_header_decoder_data {int * deco_filter; int * conv2_filter; int * conv1_filter; int const* encoding; int const* incode; int outdev; int const* outcode; scalar_t__ status; scalar_t__ cspos; int tmpdev; } ;
typedef int mbfl_encoding ;


 void* mbfl_convert_filter_new (int const*,int const*,int ,int ,int *) ;
 int const mbfl_encoding_8bit ;
 int const mbfl_encoding_ascii ;
 int const mbfl_encoding_wchar ;
 int mbfl_filter_output_pipe ;
 scalar_t__ mbfl_malloc (int) ;
 int mbfl_memory_device_init (int *,int ,int ) ;
 int mbfl_memory_device_output ;
 int mime_header_decoder_delete (struct mime_header_decoder_data*) ;

struct mime_header_decoder_data*
mime_header_decoder_new(const mbfl_encoding *outcode)
{
 struct mime_header_decoder_data *pd;

 pd = (struct mime_header_decoder_data*)mbfl_malloc(sizeof(struct mime_header_decoder_data));
 if (pd == ((void*)0)) {
  return ((void*)0);
 }

 mbfl_memory_device_init(&pd->outdev, 0, 0);
 mbfl_memory_device_init(&pd->tmpdev, 0, 0);
 pd->cspos = 0;
 pd->status = 0;
 pd->encoding = &mbfl_encoding_8bit;
 pd->incode = &mbfl_encoding_ascii;
 pd->outcode = outcode;

 pd->conv2_filter = mbfl_convert_filter_new(&mbfl_encoding_wchar, pd->outcode, mbfl_memory_device_output, 0, &pd->outdev);
 pd->conv1_filter = mbfl_convert_filter_new(pd->incode, &mbfl_encoding_wchar, mbfl_filter_output_pipe, 0, pd->conv2_filter);

 pd->deco_filter = mbfl_convert_filter_new(pd->encoding, &mbfl_encoding_8bit, mbfl_filter_output_pipe, 0, pd->conv1_filter);

 if (pd->conv1_filter == ((void*)0) || pd->conv2_filter == ((void*)0) || pd->deco_filter == ((void*)0)) {
  mime_header_decoder_delete(pd);
  return ((void*)0);
 }

 return pd;
}
