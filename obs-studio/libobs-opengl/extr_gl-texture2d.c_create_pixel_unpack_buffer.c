
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int format; } ;
struct gs_texture_2d {int width; int height; TYPE_1__ base; int unpack_buffer; } ;
typedef int GLsizeiptr ;


 int GL_DYNAMIC_DRAW ;
 int GL_PIXEL_UNPACK_BUFFER ;
 int glBufferData (int ,int,int ,int ) ;
 int gl_bind_buffer (int ,int ) ;
 int gl_gen_buffers (int,int *) ;
 int gl_success (char*) ;
 int gs_get_format_bpp (int ) ;
 int gs_is_compressed_format (int ) ;

__attribute__((used)) static bool create_pixel_unpack_buffer(struct gs_texture_2d *tex)
{
 GLsizeiptr size;
 bool success = 1;

 if (!gl_gen_buffers(1, &tex->unpack_buffer))
  return 0;

 if (!gl_bind_buffer(GL_PIXEL_UNPACK_BUFFER, tex->unpack_buffer))
  return 0;

 size = tex->width * gs_get_format_bpp(tex->base.format);
 if (!gs_is_compressed_format(tex->base.format)) {
  size /= 8;
  size = (size + 3) & 0xFFFFFFFC;
  size *= tex->height;
 } else {
  size *= tex->height;
  size /= 8;
 }

 glBufferData(GL_PIXEL_UNPACK_BUFFER, size, 0, GL_DYNAMIC_DRAW);
 if (!gl_success("glBufferData"))
  success = 0;

 if (!gl_bind_buffer(GL_PIXEL_UNPACK_BUFFER, 0))
  success = 0;

 return success;
}
