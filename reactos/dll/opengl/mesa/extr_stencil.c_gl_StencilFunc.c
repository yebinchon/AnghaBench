
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Function; int ValueMask; int Ref; } ;
struct TYPE_7__ {TYPE_1__ Stencil; } ;
typedef int GLuint ;
typedef int GLint ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;


 int CLAMP (int,int ,int) ;




 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;




 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int STENCIL_BITS ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_StencilFunc( GLcontext *ctx, GLenum func, GLint ref, GLuint mask )
{
   GLint maxref;

   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glStencilFunc" );
      return;
   }

   switch (func) {
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 128:
      case 135:
         ctx->Stencil.Function = func;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glStencilFunc" );
         return;
   }

   maxref = (1 << STENCIL_BITS) - 1;
   ctx->Stencil.Ref = CLAMP( ref, 0, maxref );
   ctx->Stencil.ValueMask = mask;
}
