
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ PolygonSmooth; scalar_t__ PointSmooth; scalar_t__ PerspectiveCorrection; scalar_t__ LineSmooth; scalar_t__ Fog; } ;
struct TYPE_7__ {int NewState; TYPE_1__ Hint; } ;
typedef scalar_t__ GLenum ;
typedef TYPE_2__ GLcontext ;


 scalar_t__ GL_DONT_CARE ;
 scalar_t__ GL_FASTEST ;

 int GL_INVALID_ENUM ;
 int GL_INVALID_OPERATION ;

 scalar_t__ GL_NICEST ;



 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int NEW_ALL ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_Hint( GLcontext *ctx, GLenum target, GLenum mode )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glHint" );
      return;
   }
   if (mode!=GL_DONT_CARE && mode!=GL_FASTEST && mode!=GL_NICEST) {
      gl_error( ctx, GL_INVALID_ENUM, "glHint(mode)" );
      return;
   }
   switch (target) {
      case 132:
         ctx->Hint.Fog = mode;
         break;
      case 131:
         ctx->Hint.LineSmooth = mode;
         break;
      case 130:
         ctx->Hint.PerspectiveCorrection = mode;
         break;
      case 129:
         ctx->Hint.PointSmooth = mode;
         break;
      case 128:
         ctx->Hint.PolygonSmooth = mode;
         break;
      default:
         gl_error( ctx, GL_INVALID_ENUM, "glHint(target)" );
   }
   ctx->NewState |= NEW_ALL;
}
