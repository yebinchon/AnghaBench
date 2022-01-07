
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* ColorMask ) (TYPE_3__*,void*,void*,void*,void*) ;} ;
struct TYPE_10__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
struct TYPE_9__ {void* b; } ;
typedef TYPE_2__ Node ;
typedef TYPE_3__ GLcontext ;
typedef void* GLboolean ;


 int OPCODE_COLOR_MASK ;
 TYPE_2__* alloc_instruction (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_3__*,void*,void*,void*,void*) ;

void gl_save_ColorMask( GLcontext *ctx, GLboolean red, GLboolean green,
                        GLboolean blue, GLboolean alpha )
{
   Node *n = alloc_instruction( ctx, OPCODE_COLOR_MASK, 4 );
   if (n) {
      n[1].b = red;
      n[2].b = green;
      n[3].b = blue;
      n[4].b = alpha;
   }
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.ColorMask)( ctx, red, green, blue, alpha );
   }
}
