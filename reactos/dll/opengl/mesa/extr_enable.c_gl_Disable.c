
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
typedef int GLcontext ;


 int GL_FALSE ;
 int gl_enable (int *,int ,int ) ;

void gl_Disable( GLcontext* ctx, GLenum cap )
{
   gl_enable( ctx, cap, GL_FALSE );
}
