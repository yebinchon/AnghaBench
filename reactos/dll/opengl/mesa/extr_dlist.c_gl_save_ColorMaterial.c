
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* ColorMaterial ) (TYPE_3__*,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* e; } ;
typedef TYPE_2__ Node ;
typedef void* GLenum ;
typedef TYPE_3__ GLcontext ;


 int OPCODE_COLOR_MATERIAL ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,void*,void*) ;

void gl_save_ColorMaterial( GLcontext *ctx, GLenum face, GLenum mode )
{
   Node *n = alloc_instruction( ctx, OPCODE_COLOR_MATERIAL, 2 );
   if (n) {
      n[1].e = face;
      n[2].e = mode;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.ColorMaterial)( ctx, face, mode );
   }
}
