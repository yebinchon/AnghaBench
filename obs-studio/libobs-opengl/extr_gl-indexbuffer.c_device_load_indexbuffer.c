
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gs_indexbuffer_t ;
struct TYPE_3__ {int * cur_index_buffer; } ;
typedef TYPE_1__ gs_device_t ;



void device_load_indexbuffer(gs_device_t *device, gs_indexbuffer_t *ib)
{
 device->cur_index_buffer = ib;
}
