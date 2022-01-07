
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* EvalPoint1 ) (TYPE_3__*,int ) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int i; } ;
typedef TYPE_2__ Node ;
typedef int GLint ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_EVALPOINT1 ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int ) ;

void gl_save_EvalPoint1( GLcontext *ctx, GLint i )
{
   Node *n = alloc_instruction( ctx, OPCODE_EVALPOINT1, 1 );
   if (n) {
      n[1].i = i;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.EvalPoint1)( ctx, i );
   }
}
