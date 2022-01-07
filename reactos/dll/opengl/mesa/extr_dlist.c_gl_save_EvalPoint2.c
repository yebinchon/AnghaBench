
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* EvalPoint2 ) (TYPE_3__*,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* i; } ;
typedef TYPE_2__ Node ;
typedef void* GLint ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_EVALPOINT2 ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,void*,void*) ;

void gl_save_EvalPoint2( GLcontext *ctx, GLint i, GLint j )
{
   Node *n = alloc_instruction( ctx, OPCODE_EVALPOINT2, 2 );
   if (n) {
      n[1].i = i;
      n[2].i = j;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.EvalPoint2)( ctx, i, j );
   }
}
