
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* Clear ) (TYPE_3__*,int ) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int bf; } ;
typedef TYPE_2__ Node ;
typedef TYPE_3__ GLcontext ;
typedef int GLbitfield ;


 int OPCODE_CLEAR ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int ) ;

void gl_save_Clear( GLcontext *ctx, GLbitfield mask )
{
   Node *n = alloc_instruction( ctx, OPCODE_CLEAR, 1 );
   if (n) {
      n[1].bf = mask;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.Clear)( ctx, mask );
   }
}
