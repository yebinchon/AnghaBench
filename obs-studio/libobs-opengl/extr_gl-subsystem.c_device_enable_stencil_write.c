
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_device_t ;


 int UNUSED_PARAMETER (int *) ;
 int glStencilMask (int) ;

void device_enable_stencil_write(gs_device_t *device, bool enable)
{
 if (enable)
  glStencilMask(0xFFFFFFFF);
 else
  glStencilMask(0);

 UNUSED_PARAMETER(device);
}
