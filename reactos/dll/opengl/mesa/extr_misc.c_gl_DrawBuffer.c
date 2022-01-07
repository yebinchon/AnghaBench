
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int DrawBuffer; } ;
struct TYPE_10__ {int (* SetBuffer ) (TYPE_4__*,int const) ;} ;
struct TYPE_13__ {int NewState; TYPE_3__* Buffer; TYPE_2__ Color; TYPE_1__ Driver; } ;
struct TYPE_12__ {int * Alpha; int * BackAlpha; int * FrontAlpha; } ;
typedef int GLenum ;
typedef TYPE_4__ GLcontext ;






 int GL_FALSE ;




 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;



 scalar_t__ INSIDE_BEGIN_END (TYPE_4__*) ;
 int NEW_RASTER_OPS ;
 int gl_error (TYPE_4__*,int ,char*) ;
 int stub1 (TYPE_4__*,int const) ;
 int stub2 (TYPE_4__*,int const) ;

void gl_DrawBuffer( GLcontext *ctx, GLenum mode )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glDrawBuffer" );
      return;
   }
   switch (mode) {
      case 134:
      case 132:
      case 133:
         if ( (*ctx->Driver.SetBuffer)( ctx, 134 ) == GL_FALSE ) {
            gl_error( ctx, GL_INVALID_ENUM, "glDrawBuffer" );
            return;
         }
         ctx->Color.DrawBuffer = mode;
         ctx->Buffer->Alpha = ctx->Buffer->FrontAlpha;
  ctx->NewState |= NEW_RASTER_OPS;
         break;
      case 137:
      case 136:
         if ( (*ctx->Driver.SetBuffer)( ctx, 137 ) == GL_FALSE) {
            gl_error( ctx, GL_INVALID_ENUM, "glDrawBuffer" );
            return;
         }
         ctx->Color.DrawBuffer = mode;
         ctx->Buffer->Alpha = ctx->Buffer->BackAlpha;
  ctx->NewState |= NEW_RASTER_OPS;
         break;
      case 129:
         ctx->Color.DrawBuffer = mode;
         ctx->Buffer->Alpha = ((void*)0);
         ctx->NewState |= NEW_RASTER_OPS;
         break;
      case 131:
      case 135:
      case 130:
      case 128:
      case 138:
         gl_error( ctx, GL_INVALID_OPERATION, "glDrawBuffer" );
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glDrawBuffer" );
   }
}
