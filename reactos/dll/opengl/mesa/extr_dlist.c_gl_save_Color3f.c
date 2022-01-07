
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* Color3f ) (TYPE_3__*,void*,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* f; } ;
typedef TYPE_2__ Node ;
typedef void* GLfloat ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_COLOR_3F ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,void*,void*,void*) ;

void gl_save_Color3f( GLcontext *ctx, GLfloat r, GLfloat g, GLfloat b )
{
   Node *n = alloc_instruction( ctx, OPCODE_COLOR_3F, 3 );
   if (n) {
      n[1].f = r;
      n[2].f = g;
      n[3].f = b;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.Color3f)( ctx, r, g, b );
   }
}
