
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;


 int glBindVertexArray (int ) ;
 int gl_success (char*) ;

__attribute__((used)) static inline bool gl_bind_vertex_array(GLuint array)
{
 glBindVertexArray(array);
 return gl_success("glBindVertexArray");
}
