
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* StencilFunc ) (TYPE_3__*,int ,int ,int ) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int ui; int i; int e; } ;
typedef TYPE_2__ Node ;
typedef int GLuint ;
typedef int GLint ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_STENCIL_FUNC ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int ,int ,int ) ;

void gl_save_StencilFunc( GLcontext *ctx, GLenum func, GLint ref, GLuint mask )
{
   Node *n = alloc_instruction( ctx, OPCODE_STENCIL_FUNC, 3 );
   if (n) {
      n[1].e = func;
      n[2].i = ref;
      n[3].ui = mask;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.StencilFunc)( ctx, func, ref, mask );
   }
}
