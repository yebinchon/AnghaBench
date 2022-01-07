
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int created_functions; } ;
struct TYPE_4__ {TYPE_1__ instr; } ;
struct LLVMJitContext {int counter; int module_generation; TYPE_2__ base; int * module; } ;


 int Assert (int ) ;
 char* psprintf (char*,char const*,int ,int ) ;

char *
llvm_expand_funcname(struct LLVMJitContext *context, const char *basename)
{
 Assert(context->module != ((void*)0));

 context->base.instr.created_functions++;





 return psprintf("%s_%zu_%d",
     basename,
     context->module_generation,
     context->counter++);
}
