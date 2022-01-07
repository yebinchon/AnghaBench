
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Mask; } ;
struct TYPE_7__ {int NewState; TYPE_1__ Depth; } ;
typedef TYPE_2__ GLcontext ;
typedef int GLboolean ;


 int GL_INVALID_OPERATION ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int NEW_RASTER_OPS ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_DepthMask( GLcontext* ctx, GLboolean flag )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glDepthMask" );
      return;
   }





   ctx->Depth.Mask = flag;
   ctx->NewState |= NEW_RASTER_OPS;
}
