
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int const DrawBuffer; } ;
struct TYPE_14__ {int (* SetBuffer ) (TYPE_5__*,int const) ;} ;
struct TYPE_12__ {int ReadBuffer; } ;
struct TYPE_16__ {TYPE_4__ Color; TYPE_3__ Driver; int NewState; TYPE_2__* Buffer; TYPE_1__ Pixel; } ;
struct TYPE_13__ {int BackAlpha; int Alpha; int FrontAlpha; } ;
typedef int GLenum ;
typedef TYPE_5__ GLcontext ;






 int GL_FALSE ;



 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;


 scalar_t__ INSIDE_BEGIN_END (TYPE_5__*) ;
 int NEW_RASTER_OPS ;
 int gl_error (TYPE_5__*,int ,char*) ;
 int stub1 (TYPE_5__*,int const) ;
 int stub2 (TYPE_5__*,int const) ;
 int stub3 (TYPE_5__*,int const) ;

void gl_ReadBuffer( GLcontext *ctx, GLenum mode )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glReadBuffer" );
      return;
   }
   switch (mode) {
      case 132:
      case 131:
         if ( (*ctx->Driver.SetBuffer)( ctx, 132 ) == GL_FALSE) {
            gl_error( ctx, GL_INVALID_ENUM, "glReadBuffer" );
            return;
         }
         ctx->Pixel.ReadBuffer = mode;
         ctx->Buffer->Alpha = ctx->Buffer->FrontAlpha;
         ctx->NewState |= NEW_RASTER_OPS;
         break;
      case 135:
      case 134:
         if ( (*ctx->Driver.SetBuffer)( ctx, 135 ) == GL_FALSE) {
            gl_error( ctx, GL_INVALID_ENUM, "glReadBuffer" );
            return;
         }
         ctx->Pixel.ReadBuffer = mode;
         ctx->Buffer->Alpha = ctx->Buffer->BackAlpha;
         ctx->NewState |= NEW_RASTER_OPS;
         break;
      case 130:
      case 133:
      case 129:
      case 128:
      case 136:
         gl_error( ctx, GL_INVALID_OPERATION, "glReadBuffer" );
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glReadBuffer" );
   }


   (void) (*ctx->Driver.SetBuffer)( ctx, ctx->Color.DrawBuffer );
}
