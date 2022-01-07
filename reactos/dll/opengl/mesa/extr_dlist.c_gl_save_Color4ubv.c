
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* Color4ubv ) (TYPE_3__*,int const*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int ub; } ;
typedef TYPE_2__ Node ;
typedef int GLubyte ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_COLOR_4UB ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int const*) ;

void gl_save_Color4ubv( GLcontext *ctx, const GLubyte *c )
{
   Node *n = alloc_instruction( ctx, OPCODE_COLOR_4UB, 4 );
   if (n) {
      n[1].ub = c[0];
      n[2].ub = c[1];
      n[3].ub = c[2];
      n[4].ub = c[3];
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.Color4ubv)( ctx, c );
   }
}
