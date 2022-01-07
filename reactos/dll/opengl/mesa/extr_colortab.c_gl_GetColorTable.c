
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLvoid ;
typedef int GLenum ;
typedef int GLcontext ;


 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;



 scalar_t__ INSIDE_BEGIN_END (int *) ;
 int gl_error (int *,int ,char*) ;
 int gl_problem (int *,char*) ;

void gl_GetColorTable( GLcontext *ctx, GLenum target, GLenum format,
                       GLenum type, GLvoid *table )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glGetBooleanv" );
      return;
   }

   switch (target) {
      case 130:
         break;
      case 129:
         break;
      case 128:
         break;
      default:
         gl_error(ctx, GL_INVALID_ENUM, "glGetColorTableEXT(target)");
         return;
   }

   gl_problem(ctx, "glGetColorTableEXT not implemented!");
}
