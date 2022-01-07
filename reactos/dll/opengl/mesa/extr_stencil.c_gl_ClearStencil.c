
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ Clear; } ;
struct TYPE_7__ {TYPE_1__ Stencil; } ;
typedef scalar_t__ GLstencil ;
typedef scalar_t__ GLint ;
typedef TYPE_2__ GLcontext ;


 int GL_INVALID_OPERATION ;
 scalar_t__ INSIDE_BEGIN_END (TYPE_2__*) ;
 int gl_error (TYPE_2__*,int ,char*) ;

void gl_ClearStencil( GLcontext *ctx, GLint s )
{
   if (INSIDE_BEGIN_END(ctx)) {
      gl_error( ctx, GL_INVALID_OPERATION, "glClearStencil" );
      return;
   }
   ctx->Stencil.Clear = (GLstencil) s;
}
