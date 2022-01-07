
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int FailFunc; int ZFailFunc; int ZPassFunc; } ;
struct TYPE_7__ {TYPE_1__ Stencil; } ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;




 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;




 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_StencilOp( GLcontext *ctx, GLenum fail, GLenum zfail, GLenum zpass )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glStencilOp" );
      return;
   }
   switch (fail) {
      case 130:
      case 128:
      case 129:
      case 132:
      case 133:
      case 131:
         ctx->Stencil.FailFunc = fail;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glStencilOp" );
         return;
   }
   switch (zfail) {
      case 130:
      case 128:
      case 129:
      case 132:
      case 133:
      case 131:
         ctx->Stencil.ZFailFunc = zfail;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glStencilOp" );
         return;
   }
   switch (zpass) {
      case 130:
      case 128:
      case 129:
      case 132:
      case 133:
      case 131:
         ctx->Stencil.ZPassFunc = zpass;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glStencilOp" );
         return;
   }
}
