
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLuint ;
typedef scalar_t__ GLsizei ;
typedef int GLcontext ;


 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;
 scalar_t__ INSIDE_BEGIN_END (int *) ;
 int gl_destroy_list (int *,scalar_t__) ;
 int gl_error (int *,int ,char*) ;

void gl_DeleteLists( GLcontext *ctx, GLuint list, GLsizei range )
{
   GLuint i;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glDeleteLists" );
      return;
   }
   if (range<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glDeleteLists" );
      return;
   }
   for (i=list;i<list+range;i++) {
      gl_destroy_list( ctx, i );
   }
}
