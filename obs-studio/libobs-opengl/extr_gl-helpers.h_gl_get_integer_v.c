
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLint ;
typedef int GLenum ;


 int glGetIntegerv (int ,int *) ;
 int gl_success (char*) ;

__attribute__((used)) static inline bool gl_get_integer_v(GLenum pname, GLint *params)
{
 glGetIntegerv(pname, params);
 return gl_success("glGetIntegerv");
}
