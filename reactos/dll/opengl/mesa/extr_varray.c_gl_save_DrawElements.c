
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLvoid ;
typedef int GLushort ;
typedef int GLuint ;
typedef int GLubyte ;
typedef size_t GLsizei ;
typedef size_t GLint ;
typedef int GLenum ;
typedef int GLcontext ;


 int GL_INVALID_ENUM ;



 int gl_error (int *,int ,char*) ;
 int gl_save_ArrayElement (int *,size_t) ;
 int gl_save_Begin (int *,int) ;
 int gl_save_End (int *) ;

void gl_save_DrawElements( GLcontext *ctx,
                           GLenum mode, GLsizei count,
                           GLenum type, const GLvoid *indices )
{
   switch (type) {
      case 130:
         {
            GLubyte *ub_indices = (GLubyte *) indices;
            GLint i;
            gl_save_Begin( ctx, mode );
            for (i=0;i<count;i++) {
               gl_save_ArrayElement( ctx, (GLint) ub_indices[i] );
            }
            gl_save_End( ctx );
         }
         break;
      case 128:
         {
            GLushort *us_indices = (GLushort *) indices;
            GLint i;
            gl_save_Begin( ctx, mode );
            for (i=0;i<count;i++) {
               gl_save_ArrayElement( ctx, (GLint) us_indices[i] );
            }
            gl_save_End( ctx );
         }
         break;
      case 129:
         {
            GLuint *ui_indices = (GLuint *) indices;
            GLint i;
            gl_save_Begin( ctx, mode );
            for (i=0;i<count;i++) {
               gl_save_ArrayElement( ctx, (GLint) ui_indices[i] );
            }
            gl_save_End( ctx );
         }
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glDrawElements(type)" );
         return;
   }
}
