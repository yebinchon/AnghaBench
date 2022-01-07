
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int encoding; } ;
typedef TYPE_1__ mbfl_string ;
struct TYPE_9__ {int device; int to; } ;
typedef TYPE_2__ mbfl_buffer_converter ;


 TYPE_1__* mbfl_memory_device_result (int *,TYPE_1__*) ;

mbfl_string *
mbfl_buffer_converter_result(mbfl_buffer_converter *convd, mbfl_string *result)
{
 if (convd == ((void*)0) || result == ((void*)0)) {
  return ((void*)0);
 }
 result->encoding = convd->to;
 return mbfl_memory_device_result(&convd->device, result);
}
