
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {size_t pos; int * buffer; } ;
struct mime_header_decoder_data {int status; size_t cspos; TYPE_1__* conv1_filter; TYPE_9__ tmpdev; TYPE_1__* deco_filter; int const* encoding; int const* incode; } ;
typedef int mbfl_encoding ;
struct TYPE_15__ {int (* filter_function ) (int,TYPE_1__*) ;int (* filter_flush ) (TYPE_1__*) ;} ;


 int mbfl_convert_filter_devcat (TYPE_1__*,TYPE_9__*) ;
 int mbfl_convert_filter_reset (TYPE_1__*,int const*,int *) ;
 int mbfl_encoding_8bit ;
 int const mbfl_encoding_ascii ;
 int const mbfl_encoding_base64 ;
 int const mbfl_encoding_qprint ;
 int mbfl_encoding_wchar ;
 int mbfl_memory_device_output (int,TYPE_9__*) ;
 int mbfl_memory_device_reset (TYPE_9__*) ;
 int mbfl_memory_device_unput (TYPE_9__*) ;
 int * mbfl_name2encoding (char const*) ;
 int stub1 (int,TYPE_1__*) ;
 int stub2 (int,TYPE_1__*) ;
 int stub3 (TYPE_1__*) ;
 int stub4 (TYPE_1__*) ;
 int stub5 (int,TYPE_1__*) ;
 int stub6 (int,TYPE_1__*) ;
 int stub7 (int,TYPE_1__*) ;
 int stub8 (int,TYPE_1__*) ;

__attribute__((used)) static int
mime_header_decoder_collector(int c, void* data)
{
 const mbfl_encoding *encoding;
 struct mime_header_decoder_data *pd = (struct mime_header_decoder_data*)data;

 switch (pd->status) {
 case 1:
  if (c == 0x3f) {
   mbfl_memory_device_output(c, &pd->tmpdev);
   pd->cspos = pd->tmpdev.pos;
   pd->status = 2;
  } else {
   mbfl_convert_filter_devcat(pd->conv1_filter, &pd->tmpdev);
   mbfl_memory_device_reset(&pd->tmpdev);
   if (c == 0x3d) {
    mbfl_memory_device_output(c, &pd->tmpdev);
   } else if (c == 0x0d || c == 0x0a) {
    pd->status = 9;
   } else {
    (*pd->conv1_filter->filter_function)(c, pd->conv1_filter);
    pd->status = 0;
   }
  }
  break;
 case 2:
  if (c == 0x3f) {

   mbfl_memory_device_output('\0', &pd->tmpdev);
   encoding = mbfl_name2encoding((const char *)&pd->tmpdev.buffer[pd->cspos]);
   if (encoding != ((void*)0)) {
    pd->incode = encoding;
    pd->status = 3;
   }
   mbfl_memory_device_unput(&pd->tmpdev);
   mbfl_memory_device_output(c, &pd->tmpdev);
  } else {
   mbfl_memory_device_output(c, &pd->tmpdev);
   if (pd->tmpdev.pos > 100) {
    pd->status = 0;
   } else if (c == 0x0d || c == 0x0a) {
    mbfl_memory_device_unput(&pd->tmpdev);
    pd->status = 9;
   }
   if (pd->status != 2) {
    mbfl_convert_filter_devcat(pd->conv1_filter, &pd->tmpdev);
    mbfl_memory_device_reset(&pd->tmpdev);
   }
  }
  break;
 case 3:
  mbfl_memory_device_output(c, &pd->tmpdev);
  if (c == 0x42 || c == 0x62) {
   pd->encoding = &mbfl_encoding_base64;
   pd->status = 4;
  } else if (c == 0x51 || c == 0x71) {
   pd->encoding = &mbfl_encoding_qprint;
   pd->status = 4;
  } else {
   if (c == 0x0d || c == 0x0a) {
    mbfl_memory_device_unput(&pd->tmpdev);
    pd->status = 9;
   } else {
    pd->status = 0;
   }
   mbfl_convert_filter_devcat(pd->conv1_filter, &pd->tmpdev);
   mbfl_memory_device_reset(&pd->tmpdev);
  }
  break;
 case 4:
  mbfl_memory_device_output(c, &pd->tmpdev);
  if (c == 0x3f) {

   mbfl_convert_filter_reset(pd->conv1_filter, pd->incode, &mbfl_encoding_wchar);

   mbfl_convert_filter_reset(pd->deco_filter, pd->encoding, &mbfl_encoding_8bit);
   pd->status = 5;
  } else {
   if (c == 0x0d || c == 0x0a) {
    mbfl_memory_device_unput(&pd->tmpdev);
    pd->status = 9;
   } else {
    pd->status = 0;
   }
   mbfl_convert_filter_devcat(pd->conv1_filter, &pd->tmpdev);
  }
  mbfl_memory_device_reset(&pd->tmpdev);
  break;
 case 5:
  if (c == 0x3f) {
   pd->status = 6;
  } else {
   (*pd->deco_filter->filter_function)(c, pd->deco_filter);
  }
  break;
 case 6:
  if (c == 0x3d) {

   (*pd->deco_filter->filter_flush)(pd->deco_filter);
   (*pd->conv1_filter->filter_flush)(pd->conv1_filter);
   mbfl_convert_filter_reset(pd->conv1_filter, &mbfl_encoding_ascii, &mbfl_encoding_wchar);
   pd->status = 7;
  } else {
   (*pd->deco_filter->filter_function)(0x3f, pd->deco_filter);
   if (c != 0x3f) {
    (*pd->deco_filter->filter_function)(c, pd->deco_filter);
    pd->status = 5;
   }
  }
  break;
 case 7:
  if (c == 0x0d || c == 0x0a) {
   pd->status = 8;
  } else {
   mbfl_memory_device_output(c, &pd->tmpdev);
   if (c == 0x3d) {
    pd->status = 1;
   } else if (c != 0x20 && c != 0x09) {
    mbfl_convert_filter_devcat(pd->conv1_filter, &pd->tmpdev);
    mbfl_memory_device_reset(&pd->tmpdev);
    pd->status = 0;
   }
  }
  break;
 case 8:
 case 9:
  if (c != 0x0d && c != 0x0a && c != 0x20 && c != 0x09) {
   if (c == 0x3d) {
    if (pd->status == 8) {
     mbfl_memory_device_output(0x20, &pd->tmpdev);
    } else {
     (*pd->conv1_filter->filter_function)(0x20, pd->conv1_filter);
    }
    mbfl_memory_device_output(c, &pd->tmpdev);
    pd->status = 1;
   } else {
    mbfl_memory_device_output(0x20, &pd->tmpdev);
    mbfl_memory_device_output(c, &pd->tmpdev);
    mbfl_convert_filter_devcat(pd->conv1_filter, &pd->tmpdev);
    mbfl_memory_device_reset(&pd->tmpdev);
    pd->status = 0;
   }
  }
  break;
 default:
  if (c == 0x0d || c == 0x0a) {
   pd->status = 9;
  } else if (c == 0x3d) {
   mbfl_memory_device_output(c, &pd->tmpdev);
   pd->status = 1;
  } else {
   (*pd->conv1_filter->filter_function)(c, pd->conv1_filter);
  }
  break;
 }

 return c;
}
