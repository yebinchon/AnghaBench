
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLuint ;
typedef int GLenum ;
typedef int GLcontext ;


 int GL_INVALID_OPERATION ;
 int gl_error (int *,int ,char*) ;

void gl_save_NewList( GLcontext *ctx, GLuint list, GLenum mode )
{

   gl_error( ctx, GL_INVALID_OPERATION, "glNewList" );
}
