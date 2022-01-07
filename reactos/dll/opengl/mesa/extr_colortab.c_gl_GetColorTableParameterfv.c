
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLint ;
typedef scalar_t__ GLfloat ;
typedef int GLenum ;
typedef int GLcontext ;


 int gl_GetColorTableParameteriv (int *,int ,int ,scalar_t__*) ;

void gl_GetColorTableParameterfv( GLcontext *ctx, GLenum target,
                                  GLenum pname, GLfloat *params )
{
   GLint iparams[10];

   gl_GetColorTableParameteriv( ctx, target, pname, iparams );
   *params = (GLfloat) iparams[0];
}
