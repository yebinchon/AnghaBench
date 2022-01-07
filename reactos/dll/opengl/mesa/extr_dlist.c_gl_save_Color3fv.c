
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* Color3fv ) (TYPE_3__*,int const*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int f; } ;
typedef TYPE_2__ Node ;
typedef int GLfloat ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_COLOR_3F ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int const*) ;

void gl_save_Color3fv( GLcontext *ctx, const GLfloat *c )
{
   Node *n = alloc_instruction( ctx, OPCODE_COLOR_3F, 3 );
   if (n) {
      n[1].f = c[0];
      n[2].f = c[1];
      n[3].f = c[2];
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.Color3fv)( ctx, c );
   }
}
