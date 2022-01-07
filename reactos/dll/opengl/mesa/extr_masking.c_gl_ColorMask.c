
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ColorMask; } ;
struct TYPE_7__ {int NewState; TYPE_1__ Color; } ;
typedef TYPE_2__ GLcontext ;
typedef int GLboolean ;


 int GL_INVALID_OPERATION ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int NEW_RASTER_OPS ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_ColorMask( GLcontext *ctx, GLboolean red, GLboolean green,
                   GLboolean blue, GLboolean alpha )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glColorMask" );
      return;
   }
   ctx->Color.ColorMask = (red << 3) | (green << 2) | (blue << 1) | alpha;
   ctx->NewState |= NEW_RASTER_OPS;
}
