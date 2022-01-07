
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct matrix4 {int dummy; } ;
struct TYPE_6__ {int num; } ;
struct TYPE_5__ {TYPE_3__ proj_stack; struct matrix4 cur_proj; } ;
typedef TYPE_1__ gs_device_t ;


 struct matrix4* da_end (TYPE_3__) ;
 int da_pop_back (TYPE_3__) ;

void device_projection_pop(gs_device_t *device)
{
 struct matrix4 *end;
 if (!device->proj_stack.num)
  return;

 end = da_end(device->proj_stack);
 device->cur_proj = *end;
 da_pop_back(device->proj_stack);
}
