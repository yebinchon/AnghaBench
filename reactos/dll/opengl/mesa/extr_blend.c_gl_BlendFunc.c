
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int BlendSrc; int BlendDst; } ;
struct TYPE_7__ {int NewState; TYPE_1__ Color; } ;
typedef int GLenum ;
typedef TYPE_2__ GLcontext ;




 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int NEW_RASTER_OPS ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_BlendFunc( GLcontext* ctx, GLenum sfactor, GLenum dfactor )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glBlendFunc" );
      return;
   }

   switch (sfactor) {
      case 128:
      case 136:
      case 137:
      case 134:
      case 131:
      case 133:
      case 138:
      case 135:
      case 130:
         ctx->Color.BlendSrc = sfactor;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glBlendFunc(sfactor)" );
         return;
   }

   switch (dfactor) {
      case 128:
      case 136:
      case 129:
      case 132:
      case 131:
      case 133:
      case 138:
      case 135:
         ctx->Color.BlendDst = dfactor;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glBlendFunc(dfactor)" );
   }

   ctx->NewState |= NEW_RASTER_OPS;
}
