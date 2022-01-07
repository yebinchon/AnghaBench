
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* EvalMesh1 ) (TYPE_3__*,int ,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* i; int e; } ;
typedef TYPE_2__ Node ;
typedef void* GLint ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_EVALMESH1 ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int ,void*,void*) ;

void gl_save_EvalMesh1( GLcontext *ctx,
                        GLenum mode, GLint i1, GLint i2 )
{
   Node *n = alloc_instruction( ctx, OPCODE_EVALMESH1, 3 );
   if (n) {
      n[1].e = mode;
      n[2].i = i1;
      n[3].i = i2;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.EvalMesh1)( ctx, mode, i1, i2 );
   }
}
