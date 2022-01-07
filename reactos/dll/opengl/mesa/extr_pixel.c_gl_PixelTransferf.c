
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* DepthBias; void* DepthScale; void* AlphaBias; void* AlphaScale; void* BlueBias; void* BlueScale; void* GreenBias; void* GreenScale; void* RedBias; void* RedScale; void* IndexOffset; void* IndexShift; void* MapStencilFlag; void* MapColorFlag; } ;
struct TYPE_8__ {TYPE_1__ Pixel; } ;
typedef void* GLint ;
typedef void* GLfloat ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;
 void* GL_FALSE ;




 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;




 void* GL_TRUE ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;
 int update_drawpixels_state (TYPE_2__*) ;

void gl_PixelTransferf( GLcontext *ctx, GLenum pname, GLfloat param )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glPixelTransfer" );
      return;
   }

   switch (pname) {
      case 131:
         ctx->Pixel.MapColorFlag = param ? GL_TRUE : GL_FALSE;
  break;
      case 130:
         ctx->Pixel.MapStencilFlag = param ? GL_TRUE : GL_FALSE;
  break;
      case 132:
         ctx->Pixel.IndexShift = (GLint) param;
  break;
      case 133:
         ctx->Pixel.IndexOffset = (GLint) param;
  break;
      case 128:
         ctx->Pixel.RedScale = param;
  break;
      case 129:
         ctx->Pixel.RedBias = param;
  break;
      case 134:
         ctx->Pixel.GreenScale = param;
  break;
      case 135:
         ctx->Pixel.GreenBias = param;
  break;
      case 138:
         ctx->Pixel.BlueScale = param;
  break;
      case 139:
         ctx->Pixel.BlueBias = param;
  break;
      case 140:
         ctx->Pixel.AlphaScale = param;
  break;
      case 141:
         ctx->Pixel.AlphaBias = param;
  break;
      case 136:
         ctx->Pixel.DepthScale = param;
  break;
      case 137:
         ctx->Pixel.DepthBias = param;
  break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glPixelTransfer(pname)" );
         return;
   }
   update_drawpixels_state( ctx );
}
