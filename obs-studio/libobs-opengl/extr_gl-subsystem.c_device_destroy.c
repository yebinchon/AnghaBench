
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int plat; int proj_stack; int empty_vao; scalar_t__ first_program; } ;
typedef TYPE_1__ gs_device_t ;


 int bfree (TYPE_1__*) ;
 int da_free (int ) ;
 int gl_delete_vertex_arrays (int,int *) ;
 int gl_platform_destroy (int ) ;
 int gs_program_destroy (scalar_t__) ;

void device_destroy(gs_device_t *device)
{
 if (device) {
  while (device->first_program)
   gs_program_destroy(device->first_program);

  gl_delete_vertex_arrays(1, &device->empty_vao);

  da_free(device->proj_stack);
  gl_platform_destroy(device->plat);
  bfree(device);
 }
}
