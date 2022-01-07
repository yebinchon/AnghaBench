
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ len; int * val; } ;
typedef TYPE_1__ mbfl_string ;
struct TYPE_8__ {scalar_t__ pos; scalar_t__ length; int * buffer; } ;
typedef TYPE_2__ mbfl_memory_device ;


 int mbfl_memory_device_output (char,TYPE_2__*) ;

mbfl_string *
mbfl_memory_device_result(mbfl_memory_device *device, mbfl_string *result)
{
 if (device && result) {
  result->len = device->pos;
  mbfl_memory_device_output('\0', device);
  result->val = device->buffer;
  device->buffer = ((void*)0);
  device->length = 0;
  device->pos= 0;
  if (result->val == ((void*)0)) {
   result->len = 0;
   result = ((void*)0);
  }
 } else {
  result = ((void*)0);
 }

 return result;
}
