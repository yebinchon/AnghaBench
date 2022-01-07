
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int x; int y; int cx; int cy; } ;
struct TYPE_6__ {TYPE_1__ cur_viewport; scalar_t__ cur_swap; scalar_t__ cur_render_target; } ;
typedef TYPE_2__ gs_device_t ;


 int LOG_ERROR ;
 int blog (int ,char*) ;
 int get_target_height (TYPE_2__*) ;
 int glViewport (int,int,int,int) ;
 int gl_getclientsize (scalar_t__,int*,int*) ;
 int gl_success (char*) ;

void device_set_viewport(gs_device_t *device, int x, int y, int width,
    int height)
{
 uint32_t base_height = 0;
 int gl_y = 0;


 if (device->cur_render_target) {
  base_height = get_target_height(device);
 } else if (device->cur_swap) {
  uint32_t dw;
  gl_getclientsize(device->cur_swap, &dw, &base_height);
 }

 if (base_height)
  gl_y = base_height - y - height;

 glViewport(x, gl_y, width, height);
 if (!gl_success("glViewport"))
  blog(LOG_ERROR, "device_set_viewport (GL) failed");

 device->cur_viewport.x = x;
 device->cur_viewport.y = y;
 device->cur_viewport.cx = width;
 device->cur_viewport.cy = height;
}
