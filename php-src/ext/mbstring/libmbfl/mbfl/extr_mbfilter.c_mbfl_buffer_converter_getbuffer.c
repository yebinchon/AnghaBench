
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int len; int * val; int encoding; } ;
typedef TYPE_2__ mbfl_string ;
struct TYPE_7__ {int pos; int * buffer; } ;
struct TYPE_9__ {TYPE_1__ device; int to; } ;
typedef TYPE_3__ mbfl_buffer_converter ;



mbfl_string *
mbfl_buffer_converter_getbuffer(mbfl_buffer_converter *convd, mbfl_string *result)
{
 if (convd != ((void*)0) && result != ((void*)0) && convd->device.buffer != ((void*)0)) {
  result->encoding = convd->to;
  result->val = convd->device.buffer;
  result->len = convd->device.pos;
 } else {
  result = ((void*)0);
 }

 return result;
}
