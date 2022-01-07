
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLenum ;
typedef int GLcontext ;


 int GL_TRUE ;
 int gl_client_state (int *,int ,int ) ;

void gl_EnableClientState( GLcontext *ctx, GLenum cap )
{
   gl_client_state( ctx, cap, GL_TRUE );
}
