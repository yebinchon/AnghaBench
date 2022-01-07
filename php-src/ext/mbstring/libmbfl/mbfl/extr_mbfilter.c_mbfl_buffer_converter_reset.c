
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int device; } ;
typedef TYPE_1__ mbfl_buffer_converter ;


 int mbfl_memory_device_reset (int *) ;

void
mbfl_buffer_converter_reset(mbfl_buffer_converter *convd)
{
 mbfl_memory_device_reset(&convd->device);
}
