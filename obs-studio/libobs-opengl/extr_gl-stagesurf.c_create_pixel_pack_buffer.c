
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_stage_surface {int width; int bytes_per_pixel; int height; int pack_buffer; } ;
typedef int GLsizeiptr ;


 int GL_DYNAMIC_READ ;
 int GL_PIXEL_PACK_BUFFER ;
 int glBufferData (int ,int,int ,int ) ;
 int gl_bind_buffer (int ,int ) ;
 int gl_gen_buffers (int,int *) ;
 int gl_success (char*) ;

__attribute__((used)) static bool create_pixel_pack_buffer(struct gs_stage_surface *surf)
{
 GLsizeiptr size;
 bool success = 1;

 if (!gl_gen_buffers(1, &surf->pack_buffer))
  return 0;

 if (!gl_bind_buffer(GL_PIXEL_PACK_BUFFER, surf->pack_buffer))
  return 0;

 size = surf->width * surf->bytes_per_pixel;
 size = (size + 3) & 0xFFFFFFFC;
 size *= surf->height;

 glBufferData(GL_PIXEL_PACK_BUFFER, size, 0, GL_DYNAMIC_READ);
 if (!gl_success("glBufferData"))
  success = 0;

 if (!gl_bind_buffer(GL_PIXEL_PACK_BUFFER, 0))
  success = 0;

 return success;
}
