
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLsizei ;


 int glGenVertexArrays (int ,int *) ;
 int gl_success (char*) ;

__attribute__((used)) static inline bool gl_gen_vertex_arrays(GLsizei num_arrays, GLuint *arrays)
{
 glGenVertexArrays(num_arrays, arrays);
 return gl_success("glGenVertexArrays");
}
