
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLint ;
typedef scalar_t__ GLfloat ;
typedef int GLenum ;
typedef int GLcontext ;


 int gl_GetTexLevelParameteriv (int *,int ,scalar_t__,int ,scalar_t__*) ;

void gl_GetTexLevelParameterfv( GLcontext *ctx, GLenum target, GLint level,
                                GLenum pname, GLfloat *params )
{
   GLint iparam;

   gl_GetTexLevelParameteriv( ctx, target, level, pname, &iparam );
   *params = (GLfloat) iparam;
}
