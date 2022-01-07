
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* Ortho ) (TYPE_3__*,void*,void*,void*,void*,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* f; } ;
typedef TYPE_2__ Node ;
typedef void* GLdouble ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_ORTHO ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,void*,void*,void*,void*,void*,void*) ;

void gl_save_Ortho( GLcontext *ctx, GLdouble left, GLdouble right,
                    GLdouble bottom, GLdouble top,
                    GLdouble nearval, GLdouble farval )
{
   Node *n = alloc_instruction( ctx, OPCODE_ORTHO, 6 );
   if (n) {
      n[1].f = left;
      n[2].f = right;
      n[3].f = bottom;
      n[4].f = top;
      n[5].f = nearval;
      n[6].f = farval;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.Ortho)( ctx, left, right, bottom, top, nearval, farval );
   }
}
