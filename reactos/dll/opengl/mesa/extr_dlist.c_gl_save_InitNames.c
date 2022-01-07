
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* InitNames ) (TYPE_2__*) ;} ;
struct TYPE_7__ {TYPE_1__ Exec; scalar_t__ ExecuteFlag; } ;
typedef TYPE_2__ GLcontext ;


 int OPCODE_INIT_NAMES ;
 int alloc_instruction (TYPE_2__*,int ,int ) ;
 int stub1 (TYPE_2__*) ;

void gl_save_InitNames( GLcontext *ctx )
{
   (void) alloc_instruction( ctx, OPCODE_INIT_NAMES, 0 );
   if (ctx->ExecuteFlag) {
      (*ctx->Exec.InitNames)( ctx );
   }
}
