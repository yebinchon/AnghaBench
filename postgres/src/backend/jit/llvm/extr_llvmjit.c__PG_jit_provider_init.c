
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int compile_expr; int release_context; int reset_after_error; } ;
typedef TYPE_1__ JitProviderCallbacks ;


 int llvm_compile_expr ;
 int llvm_release_context ;
 int llvm_reset_after_error ;

void
_PG_jit_provider_init(JitProviderCallbacks *cb)
{
 cb->reset_after_error = llvm_reset_after_error;
 cb->release_context = llvm_release_context;
 cb->compile_expr = llvm_compile_expr;
}
