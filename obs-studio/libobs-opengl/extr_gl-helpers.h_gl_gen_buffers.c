
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLsizei ;


 int glGenBuffers (int ,int *) ;
 int gl_success (char*) ;

__attribute__((used)) static inline bool gl_gen_buffers(GLsizei num_buffers, GLuint *buffers)
{
 glGenBuffers(num_buffers, buffers);
 return gl_success("glGenBuffers");
}
