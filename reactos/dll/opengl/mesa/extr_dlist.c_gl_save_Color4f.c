
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* Color4f ) (TYPE_3__*,void*,void*,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* f; } ;
typedef TYPE_2__ Node ;
typedef void* GLfloat ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_COLOR_4F ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,void*,void*,void*,void*) ;

void gl_save_Color4f( GLcontext *ctx, GLfloat r, GLfloat g,
                                      GLfloat b, GLfloat a )
{
   Node *n = alloc_instruction( ctx, OPCODE_COLOR_4F, 4 );
   if (n) {
      n[1].f = r;
      n[2].f = g;
      n[3].f = b;
      n[4].f = a;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.Color4f)( ctx, r, g, b, a );
   }
}
