
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLubyte ;
typedef int GLcontext ;


 int gl_ColorMat4ub (int *,int const,int const,int const,int const) ;

void gl_ColorMat4ubv( GLcontext *ctx, const GLubyte *c )
{
   gl_ColorMat4ub( ctx, c[0], c[1], c[2], c[3] );
}
