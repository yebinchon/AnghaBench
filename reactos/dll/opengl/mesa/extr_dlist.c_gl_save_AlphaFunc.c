
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* AlphaFunc ) (TYPE_3__*,int ,scalar_t__) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {scalar_t__ f; int e; } ;
typedef TYPE_2__ Node ;
typedef scalar_t__ GLfloat ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;
typedef scalar_t__ GLclampf ;


 int OPCODE_ALPHA_FUNC ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int ,scalar_t__) ;

void gl_save_AlphaFunc( GLcontext *ctx, GLenum func, GLclampf ref )
{
   Node *n = alloc_instruction( ctx, OPCODE_ALPHA_FUNC, 2 );
   if (n) {
      n[1].e = func;
      n[2].f = (GLfloat) ref;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.AlphaFunc)( ctx, func, ref );
   }
}
