
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLfloat ;
typedef int GLcontext ;


 int GL_INVALID_OPERATION ;
 int gl_error (int *,int ,char*) ;

void gl_vertex3fv_nop( GLcontext *ctx, const GLfloat v[3] )
{
   gl_error( ctx, GL_INVALID_OPERATION, "glVertex3v" );
}
