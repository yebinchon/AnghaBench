
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {double HitMinZ; double HitMaxZ; int HitFlag; scalar_t__ BufferCount; int BufferSize; int * Buffer; } ;
struct TYPE_7__ {scalar_t__ RenderMode; TYPE_1__ Select; } ;
typedef int GLuint ;
typedef int GLsizei ;
typedef TYPE_2__ GLcontext ;


 int GL_FALSE ;
 int GL_INVALID_OPERATION ;
 scalar_t__ GL_SELECT ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_SelectBuffer( GLcontext *ctx, GLsizei size, GLuint *buffer )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glSelectBuffer" );
   }
   if (ctx->RenderMode==GL_SELECT) {
      gl_error( ctx, GL_INVALID_OPERATION, "glSelectBuffer" );
   }
   ctx->Select.Buffer = buffer;
   ctx->Select.BufferSize = size;
   ctx->Select.BufferCount = 0;

   ctx->Select.HitFlag = GL_FALSE;
   ctx->Select.HitMinZ = 1.0;
   ctx->Select.HitMaxZ = 0.0;
}
