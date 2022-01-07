
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cur_proj; int proj_stack; } ;
typedef TYPE_1__ gs_device_t ;


 int da_push_back (int ,int *) ;

void device_projection_push(gs_device_t *device)
{
 da_push_back(device->proj_stack, &device->cur_proj);
}
