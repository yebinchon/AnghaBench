
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* StencilOp ) (TYPE_3__*,void*,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* e; } ;
typedef TYPE_2__ Node ;
typedef void* GLenum ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_STENCIL_OP ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,void*,void*,void*) ;

void gl_save_StencilOp( GLcontext *ctx,
                        GLenum fail, GLenum zfail, GLenum zpass )
{
   Node *n = alloc_instruction( ctx, OPCODE_STENCIL_OP, 3 );
   if (n) {
      n[1].e = fail;
      n[2].e = zfail;
      n[3].e = zpass;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.StencilOp)( ctx, fail, zfail, zpass );
   }
}
