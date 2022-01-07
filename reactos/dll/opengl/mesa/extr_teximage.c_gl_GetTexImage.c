
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLvoid ;
typedef int GLint ;
typedef int GLenum ;
typedef int GLcontext ;


 int gl_problem (int *,char*) ;

void gl_GetTexImage( GLcontext *ctx, GLenum target, GLint level, GLenum format,
                     GLenum type, GLvoid *pixels )
{
   gl_problem(ctx, "glGetTexImage not implemented");

}
