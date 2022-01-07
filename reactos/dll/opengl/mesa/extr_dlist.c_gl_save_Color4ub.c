
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* Color4ub ) (TYPE_3__*,void*,void*,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* ub; } ;
typedef TYPE_2__ Node ;
typedef void* GLubyte ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_COLOR_4UB ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,void*,void*,void*,void*) ;

void gl_save_Color4ub( GLcontext *ctx, GLubyte r, GLubyte g,
                                       GLubyte b, GLubyte a )
{
   Node *n = alloc_instruction( ctx, OPCODE_COLOR_4UB, 4 );
   if (n) {
      n[1].ub = r;
      n[2].ub = g;
      n[3].ub = b;
      n[4].ub = a;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.Color4ub)( ctx, r, g, b, a );
   }
}
