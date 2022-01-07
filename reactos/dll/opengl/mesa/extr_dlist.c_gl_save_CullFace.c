
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* CullFace ) (TYPE_3__*,int ) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {int e; } ;
typedef TYPE_2__ Node ;
typedef int GLenum ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_CULL_FACE ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,int ) ;

void gl_save_CullFace( GLcontext *ctx, GLenum mode )
{
   Node *n = alloc_instruction( ctx, OPCODE_CULL_FACE, 1 );
   if (n) {
      n[1].e = mode;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.CullFace)( ctx, mode );
   }
}
