
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ShadeModel; } ;
struct TYPE_7__ {int NewState; TYPE_1__ Light; } ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;



 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;

 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int NEW_RASTER_OPS ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_ShadeModel( GLcontext *ctx, GLenum mode )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glShadeModel" );
      return;
   }

   switch (mode) {
      case 129:
      case 128:
         if (ctx->Light.ShadeModel!=mode) {
            ctx->Light.ShadeModel = mode;
            ctx->NewState |= NEW_RASTER_OPS;
         }
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glShadeModel" );
   }
}
