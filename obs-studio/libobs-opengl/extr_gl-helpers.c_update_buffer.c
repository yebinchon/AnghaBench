
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLenum ;


 int GL_MAP_INVALIDATE_BUFFER_BIT ;
 int GL_MAP_WRITE_BIT ;
 void* glMapBufferRange (int ,int ,size_t,int) ;
 int glUnmapBuffer (int ) ;
 int gl_bind_buffer (int ,int ) ;
 int gl_success (char*) ;
 int memcpy (void*,void const*,size_t) ;

bool update_buffer(GLenum target, GLuint buffer, const void *data, size_t size)
{
 void *ptr;
 bool success = 1;

 if (!gl_bind_buffer(target, buffer))
  return 0;



 ptr = glMapBufferRange(target, 0, size,
          GL_MAP_WRITE_BIT | GL_MAP_INVALIDATE_BUFFER_BIT);
 success = gl_success("glMapBufferRange");
 if (success && ptr) {
  memcpy(ptr, data, size);
  glUnmapBuffer(target);
 }

 gl_bind_buffer(target, 0);
 return success;
}
