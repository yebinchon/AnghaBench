
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLsizei ;


 int glDeleteTextures (int ,int *) ;
 int gl_success (char*) ;

__attribute__((used)) static inline void gl_delete_textures(GLsizei num_buffers, GLuint *buffers)
{
 glDeleteTextures(num_buffers, buffers);
 gl_success("glDeleteTextures");
}
