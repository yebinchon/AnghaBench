
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gs_texture {int gl_target; int texture; } ;
struct gs_device {scalar_t__ copy_type; } ;


 scalar_t__ COPY_TYPE_ARB ;
 scalar_t__ COPY_TYPE_FBO_BLIT ;
 scalar_t__ COPY_TYPE_NV ;
 int LOG_ERROR ;
 int blog (int ,char*) ;
 int glCopyImageSubData (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int glCopyImageSubDataNV (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int) ;
 int gl_copy_fbo (struct gs_texture*,int ,int ,struct gs_texture*,int ,int ,int ,int ) ;
 int gl_success (char*) ;

bool gl_copy_texture(struct gs_device *device, struct gs_texture *dst,
       uint32_t dst_x, uint32_t dst_y, struct gs_texture *src,
       uint32_t src_x, uint32_t src_y, uint32_t width,
       uint32_t height)
{
 bool success = 0;

 if (device->copy_type == COPY_TYPE_ARB) {
  glCopyImageSubData(src->texture, src->gl_target, 0, src_x,
       src_y, 0, dst->texture, dst->gl_target, 0,
       dst_x, dst_y, 0, width, height, 1);
  success = gl_success("glCopyImageSubData");

 } else if (device->copy_type == COPY_TYPE_NV) {
  glCopyImageSubDataNV(src->texture, src->gl_target, 0, src_x,
         src_y, 0, dst->texture, dst->gl_target, 0,
         dst_x, dst_y, 0, width, height, 1);
  success = gl_success("glCopyImageSubDataNV");

 } else if (device->copy_type == COPY_TYPE_FBO_BLIT) {
  success = gl_copy_fbo(dst, dst_x, dst_y, src, src_x, src_y,
          width, height);
  if (!success)
   blog(LOG_ERROR, "gl_copy_texture failed");
 }

 return success;
}
