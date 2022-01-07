
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* release_context ) (TYPE_1__*) ;} ;
struct TYPE_7__ {int resowner; } ;
typedef TYPE_1__ JitContext ;


 int PointerGetDatum (TYPE_1__*) ;
 int ResourceOwnerForgetJIT (int ,int ) ;
 int pfree (TYPE_1__*) ;
 TYPE_3__ provider ;
 scalar_t__ provider_successfully_loaded ;
 int stub1 (TYPE_1__*) ;

void
jit_release_context(JitContext *context)
{
 if (provider_successfully_loaded)
  provider.release_context(context);

 ResourceOwnerForgetJIT(context->resowner, PointerGetDatum(context));
 pfree(context);
}
