
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int cur_render_target; int cur_swap; int cur_vertex_buffer; int cur_pixel_shader; int cur_vertex_shader; } ;
typedef TYPE_1__ gs_device_t ;


 int LOG_ERROR ;
 int blog (int ,char*) ;

__attribute__((used)) static inline bool can_render(const gs_device_t *device, uint32_t num_verts)
{
 if (!device->cur_vertex_shader) {
  blog(LOG_ERROR, "No vertex shader specified");
  return 0;
 }

 if (!device->cur_pixel_shader) {
  blog(LOG_ERROR, "No pixel shader specified");
  return 0;
 }

 if (!device->cur_vertex_buffer && (num_verts == 0)) {
  blog(LOG_ERROR, "No vertex buffer specified");
  return 0;
 }

 if (!device->cur_swap && !device->cur_render_target) {
  blog(LOG_ERROR, "No active swap chain or render target");
  return 0;
 }

 return 1;
}
