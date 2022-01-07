
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int StipplePattern; int StippleFactor; } ;
struct TYPE_7__ {int NewState; TYPE_1__ Line; } ;
typedef int GLushort ;
typedef int GLint ;
typedef TYPE_2__ GLcontext ;


 int CLAMP (int ,int,int) ;
 int GL_INVALID_OPERATION ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int NEW_RASTER_OPS ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_LineStipple( GLcontext *ctx, GLint factor, GLushort pattern )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glLineStipple" );
      return;
   }
   ctx->Line.StippleFactor = CLAMP( factor, 1, 256 );
   ctx->Line.StipplePattern = pattern;
   ctx->NewState |= NEW_RASTER_OPS;
}
