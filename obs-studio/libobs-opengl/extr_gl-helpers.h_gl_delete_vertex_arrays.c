
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLsizei ;


 int glDeleteVertexArrays (int ,int *) ;
 int gl_success (char*) ;

__attribute__((used)) static inline void gl_delete_vertex_arrays(GLsizei num_arrays, GLuint *arrays)
{
 glDeleteVertexArrays(num_arrays, arrays);
 gl_success("glDeleteVertexArrays");
}
