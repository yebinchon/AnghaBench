
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* Vertex3fv ) (TYPE_3__*,int const*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int f; } ;
typedef TYPE_2__ Node ;
typedef int GLfloat ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_VERTEX3 ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int const*) ;

void gl_save_Vertex3fv( GLcontext *ctx, const GLfloat v[3] )
{
   Node *n = alloc_instruction( ctx, OPCODE_VERTEX3, 3 );
   if (n) {
      n[1].f = v[0];
      n[2].f = v[1];
      n[3].f = v[2];
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.Vertex3fv)( ctx, v );
   }
}
