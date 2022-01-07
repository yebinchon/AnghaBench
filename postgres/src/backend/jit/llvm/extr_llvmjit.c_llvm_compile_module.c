
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int instr_time ;
struct TYPE_8__ {int emission_counter; int optimization_counter; int inlining_counter; } ;
struct TYPE_9__ {int flags; TYPE_1__ instr; } ;
struct TYPE_11__ {int compiled; TYPE_2__ base; int handles; int * module; int module_generation; } ;
struct TYPE_10__ {scalar_t__ orc_handle; int stack; } ;
typedef int MemoryContext ;
typedef int LLVMSharedModuleRef ;
typedef scalar_t__ LLVMOrcModuleHandle ;
typedef int LLVMOrcJITStackRef ;
typedef TYPE_3__ LLVMJitHandle ;
typedef TYPE_4__ LLVMJitContext ;


 int DEBUG1 ;
 int ERROR ;
 int INSTR_TIME_ACCUM_DIFF (int ,int ,int ) ;
 int INSTR_TIME_GET_DOUBLE (int ) ;
 int INSTR_TIME_SET_CURRENT (int ) ;
 int LLVMDisposeModule (int *) ;
 scalar_t__ LLVMOrcAddEagerlyCompiledIR (int ,int *,int ,int *,...) ;
 int LLVMOrcDisposeSharedModuleRef (int ) ;
 int LLVMOrcMakeSharedModule (int *) ;
 int LLVMWriteBitcodeToFile (int *,char*) ;
 int MemoryContextSwitchTo (int ) ;
 int MyProcPid ;
 int PGJIT_INLINE ;
 int PGJIT_OPT3 ;
 int TopMemoryContext ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errhidecontext (int) ;
 int errhidestmt (int) ;
 int errmsg (char*,int ,int ,int ) ;
 scalar_t__ jit_dump_bitcode ;
 int lappend (int ,TYPE_3__*) ;
 int llvm_inline (int *) ;
 int llvm_opt0_orc ;
 int llvm_opt3_orc ;
 int llvm_optimize_module (TYPE_4__*,int *) ;
 int llvm_resolve_symbol ;
 scalar_t__ palloc (int) ;
 int pfree (char*) ;
 char* psprintf (char*,int ,int ) ;

__attribute__((used)) static void
llvm_compile_module(LLVMJitContext *context)
{
 LLVMOrcModuleHandle orc_handle;
 MemoryContext oldcontext;
 static LLVMOrcJITStackRef compile_orc;
 instr_time starttime;
 instr_time endtime;

 if (context->base.flags & PGJIT_OPT3)
  compile_orc = llvm_opt3_orc;
 else
  compile_orc = llvm_opt0_orc;


 if (context->base.flags & PGJIT_INLINE)
 {
  INSTR_TIME_SET_CURRENT(starttime);
  llvm_inline(context->module);
  INSTR_TIME_SET_CURRENT(endtime);
  INSTR_TIME_ACCUM_DIFF(context->base.instr.inlining_counter,
         endtime, starttime);
 }

 if (jit_dump_bitcode)
 {
  char *filename;

  filename = psprintf("%u.%zu.bc",
       MyProcPid,
       context->module_generation);
  LLVMWriteBitcodeToFile(context->module, filename);
  pfree(filename);
 }



 INSTR_TIME_SET_CURRENT(starttime);
 llvm_optimize_module(context, context->module);
 INSTR_TIME_SET_CURRENT(endtime);
 INSTR_TIME_ACCUM_DIFF(context->base.instr.optimization_counter,
        endtime, starttime);

 if (jit_dump_bitcode)
 {
  char *filename;

  filename = psprintf("%u.%zu.optimized.bc",
       MyProcPid,
       context->module_generation);
  LLVMWriteBitcodeToFile(context->module, filename);
  pfree(filename);
 }







 INSTR_TIME_SET_CURRENT(starttime);
 {
  orc_handle = LLVMOrcAddEagerlyCompiledIR(compile_orc, context->module,
             llvm_resolve_symbol, ((void*)0));
  LLVMDisposeModule(context->module);
 }

 INSTR_TIME_SET_CURRENT(endtime);
 INSTR_TIME_ACCUM_DIFF(context->base.instr.emission_counter,
        endtime, starttime);

 context->module = ((void*)0);
 context->compiled = 1;


 oldcontext = MemoryContextSwitchTo(TopMemoryContext);
 {
  LLVMJitHandle *handle;

  handle = (LLVMJitHandle *) palloc(sizeof(LLVMJitHandle));
  handle->stack = compile_orc;
  handle->orc_handle = orc_handle;

  context->handles = lappend(context->handles, handle);
 }
 MemoryContextSwitchTo(oldcontext);

 ereport(DEBUG1,
   (errmsg("time to inline: %.3fs, opt: %.3fs, emit: %.3fs",
     INSTR_TIME_GET_DOUBLE(context->base.instr.inlining_counter),
     INSTR_TIME_GET_DOUBLE(context->base.instr.optimization_counter),
     INSTR_TIME_GET_DOUBLE(context->base.instr.emission_counter)),
    errhidestmt(1),
    errhidecontext(1)));
}
