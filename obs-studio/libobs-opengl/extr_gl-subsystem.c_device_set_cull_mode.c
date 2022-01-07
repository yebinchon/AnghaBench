
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cur_cull_mode; } ;
typedef TYPE_1__ gs_device_t ;
typedef enum gs_cull_mode { ____Placeholder_gs_cull_mode } gs_cull_mode ;


 int GL_BACK ;
 int GL_CULL_FACE ;
 int GL_FRONT ;
 int GS_BACK ;
 int GS_FRONT ;
 scalar_t__ GS_NEITHER ;
 int gl_cull_face (int ) ;
 int gl_disable (int ) ;
 int gl_enable (int ) ;

void device_set_cull_mode(gs_device_t *device, enum gs_cull_mode mode)
{
 if (device->cur_cull_mode == mode)
  return;

 if (device->cur_cull_mode == GS_NEITHER)
  gl_enable(GL_CULL_FACE);

 device->cur_cull_mode = mode;

 if (mode == GS_BACK)
  gl_cull_face(GL_BACK);
 else if (mode == GS_FRONT)
  gl_cull_face(GL_FRONT);
 else
  gl_disable(GL_CULL_FACE);
}
