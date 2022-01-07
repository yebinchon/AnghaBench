
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
typedef int GLcontext ;


 int GL_TRUE ;
 int gl_enable (int *,int ,int ) ;

void gl_Enable( GLcontext* ctx, GLenum cap )
{
   gl_enable( ctx, cap, GL_TRUE );
}
