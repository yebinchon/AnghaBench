
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mime_header_decoder_data {int tmpdev; int outdev; int deco_filter; int conv1_filter; int conv2_filter; } ;


 int mbfl_convert_filter_delete (int ) ;
 int mbfl_free (void*) ;
 int mbfl_memory_device_clear (int *) ;

void
mime_header_decoder_delete(struct mime_header_decoder_data *pd)
{
 if (pd) {
  mbfl_convert_filter_delete(pd->conv2_filter);
  mbfl_convert_filter_delete(pd->conv1_filter);
  mbfl_convert_filter_delete(pd->deco_filter);
  mbfl_memory_device_clear(&pd->outdev);
  mbfl_memory_device_clear(&pd->tmpdev);
  mbfl_free((void*)pd);
 }
}
