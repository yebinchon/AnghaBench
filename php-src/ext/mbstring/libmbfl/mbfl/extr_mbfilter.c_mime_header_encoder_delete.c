
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mime_header_encoder_data {int tmpdev; int outdev; int encod_filter_backup; int encod_filter; int conv2_filter_backup; int conv2_filter; int block_filter; int conv1_filter; } ;


 int mbfl_convert_filter_delete (int ) ;
 int mbfl_free (void*) ;
 int mbfl_memory_device_clear (int *) ;

void
mime_header_encoder_delete(struct mime_header_encoder_data *pe)
{
 if (pe) {
  mbfl_convert_filter_delete(pe->conv1_filter);
  mbfl_convert_filter_delete(pe->block_filter);
  mbfl_convert_filter_delete(pe->conv2_filter);
  mbfl_convert_filter_delete(pe->conv2_filter_backup);
  mbfl_convert_filter_delete(pe->encod_filter);
  mbfl_convert_filter_delete(pe->encod_filter_backup);
  mbfl_memory_device_clear(&pe->outdev);
  mbfl_memory_device_clear(&pe->tmpdev);
  mbfl_free((void*)pe);
 }
}
