
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct gs_zstencil_buffer {int format; int buffer; } ;


 int GL_RENDERBUFFER ;
 int glGenRenderbuffers (int,int *) ;
 int glRenderbufferStorage (int ,int ,int ,int ) ;
 int gl_bind_renderbuffer (int ,int ) ;
 int gl_success (char*) ;

__attribute__((used)) static bool gl_init_zsbuffer(struct gs_zstencil_buffer *zs, uint32_t width,
        uint32_t height)
{
 glGenRenderbuffers(1, &zs->buffer);
 if (!gl_success("glGenRenderbuffers"))
  return 0;

 if (!gl_bind_renderbuffer(GL_RENDERBUFFER, zs->buffer))
  return 0;

 glRenderbufferStorage(GL_RENDERBUFFER, zs->format, width, height);
 if (!gl_success("glRenderbufferStorage"))
  return 0;

 gl_bind_renderbuffer(GL_RENDERBUFFER, 0);
 return 1;
}
