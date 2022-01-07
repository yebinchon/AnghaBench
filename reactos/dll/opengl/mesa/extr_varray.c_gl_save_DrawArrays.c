
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GLsizei ;
typedef scalar_t__ GLint ;
typedef int GLenum ;
typedef int GLcontext ;


 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 int GL_INVALID_VALUE ;
 scalar_t__ INSIDE_BEGIN_END (int *) ;
 int gl_error (int *,int ,char*) ;
 int gl_save_ArrayElement (int *,scalar_t__) ;
 int gl_save_Begin (int *,int ) ;
 int gl_save_End (int *) ;

void gl_save_DrawArrays( GLcontext *ctx,
                         GLenum mode, GLint first, GLsizei count )
{
   GLint i;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glDrawArrays" );
      return;
   }
   if (count<0) {
      gl_error( ctx, GL_INVALID_VALUE, "glDrawArrays(count)" );
      return;
   }
   switch (mode) {
      case 134:
      case 137:
      case 135:
      case 136:
      case 130:
      case 128:
      case 129:
      case 132:
      case 131:
      case 133:

         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glDrawArrays(mode)" );
         return;
   }



   gl_save_Begin( ctx, mode );
   for (i=0;i<count;i++) {
      gl_save_ArrayElement( ctx, first+i );
   }
   gl_save_End( ctx );
}
