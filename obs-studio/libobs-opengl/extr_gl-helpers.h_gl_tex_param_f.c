
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLfloat ;
typedef int GLenum ;


 int glTexParameterf (int ,int ,int ) ;
 int gl_success (char*) ;

__attribute__((used)) static inline bool gl_tex_param_f(GLenum target, GLenum param, GLfloat val)
{
 glTexParameterf(target, param, val);
 return gl_success("glTexParameterf");
}
