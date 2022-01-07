
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLvoid ;
typedef int GLuint ;
typedef int GLsizeiptr ;
typedef int GLenum ;


 int glBufferData (int ,int ,int const*,int ) ;
 int gl_bind_buffer (int ,int ) ;
 int gl_gen_buffers (int,int *) ;
 int gl_success (char*) ;

bool gl_create_buffer(GLenum target, GLuint *buffer, GLsizeiptr size,
        const GLvoid *data, GLenum usage)
{
 bool success;
 if (!gl_gen_buffers(1, buffer))
  return 0;
 if (!gl_bind_buffer(target, *buffer))
  return 0;

 glBufferData(target, size, data, usage);
 success = gl_success("glBufferData");

 gl_bind_buffer(target, 0);
 return success;
}
