
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLvoid ;
typedef int GLushort ;
typedef int GLuint ;
typedef int GLubyte ;
typedef scalar_t__ GLsizei ;
typedef scalar_t__ GLint ;
typedef int GLenum ;
typedef int GLcontext ;


 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;
 scalar_t__ INSIDE_BEGIN_END (int *) ;
 int gl_ArrayElement (int *,scalar_t__) ;
 int gl_Begin (int *,int) ;
 int gl_End (int *) ;
 int gl_error (int *,int ,char*) ;

void gl_DrawElements( GLcontext *ctx,
                      GLenum mode, GLsizei count,
                      GLenum type, const GLvoid *indices )
{

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glDrawElements" );
      return;
   }
   if (count<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glDrawElements(count)" );
      return;
   }
   switch (mode) {
      case 137:
      case 140:
      case 138:
      case 139:
      case 133:
      case 131:
      case 132:
      case 135:
      case 134:
      case 136:

         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glDrawArrays(mode)" );
         return;
   }
   switch (type) {
      case 130:
         {
            GLubyte *ub_indices = (GLubyte *) indices;
            GLint i;
            gl_Begin( ctx, mode );
            for (i=0;i<count;i++) {
               gl_ArrayElement( ctx, (GLint) ub_indices[i] );
            }
            gl_End( ctx );
         }
         break;
      case 128:
         {
            GLushort *us_indices = (GLushort *) indices;
            GLint i;
            gl_Begin( ctx, mode );
            for (i=0;i<count;i++) {
               gl_ArrayElement( ctx, (GLint) us_indices[i] );
            }
            gl_End( ctx );
         }
         break;
      case 129:
         {
            GLuint *ui_indices = (GLuint *) indices;
            GLint i;
            gl_Begin( ctx, mode );
            for (i=0;i<count;i++) {
               gl_ArrayElement( ctx, (GLint) ui_indices[i] );
            }
            gl_End( ctx );
         }
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glDrawElements(type)" );
         return;
   }
}
