
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLint ;
typedef int GLenum ;


 int glTexParameteri (int ,int ,int ) ;
 int gl_success (char*) ;

__attribute__((used)) static inline bool gl_tex_param_i(GLenum target, GLenum param, GLint val)
{
 glTexParameteri(target, param, val);
 return gl_success("glTexParameteri");
}
