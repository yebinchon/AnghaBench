
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemoryContext ;
typedef int LLVMJITEventListenerRef ;


 int DEBUG2 ;
 int FATAL ;
 int LLVMCodeGenLevelAggressive ;
 int LLVMCodeGenLevelNone ;
 int LLVMCodeModelJITDefault ;
 int LLVMCreateGDBRegistrationListener () ;
 int LLVMCreatePerfJITEventListener () ;
 int LLVMCreateTargetMachine (int ,int ,char*,char*,int ,int ,int ) ;
 int LLVMDisposeMessage (char*) ;
 char* LLVMGetHostCPUFeatures () ;
 char* LLVMGetHostCPUName () ;
 scalar_t__ LLVMGetTargetFromTriple (int ,int *,char**) ;
 int LLVMInitializeNativeAsmParser () ;
 int LLVMInitializeNativeAsmPrinter () ;
 int LLVMInitializeNativeTarget () ;
 int LLVMLoadLibraryPermanently (int *) ;
 int LLVMOrcCreateInstance (int ) ;
 int LLVMOrcRegisterJITEventListener (int ,int ) ;
 int LLVMRelocDefault ;
 int MemoryContextSwitchTo (int ) ;
 int TopMemoryContext ;
 int before_shmem_exit (int ,int ) ;
 int elog (int ,char*,char*,...) ;
 scalar_t__ jit_debugging_support ;
 scalar_t__ jit_profiling_support ;
 int llvm_create_types () ;
 int llvm_opt0_orc ;
 int llvm_opt0_targetmachine ;
 int llvm_opt3_orc ;
 int llvm_opt3_targetmachine ;
 int llvm_session_initialized ;
 int llvm_shutdown ;
 int llvm_targetref ;
 int llvm_triple ;

__attribute__((used)) static void
llvm_session_initialize(void)
{
 MemoryContext oldcontext;
 char *error = ((void*)0);
 char *cpu = ((void*)0);
 char *features = ((void*)0);

 if (llvm_session_initialized)
  return;

 oldcontext = MemoryContextSwitchTo(TopMemoryContext);

 LLVMInitializeNativeTarget();
 LLVMInitializeNativeAsmPrinter();
 LLVMInitializeNativeAsmParser();





 llvm_create_types();

 if (LLVMGetTargetFromTriple(llvm_triple, &llvm_targetref, &error) != 0)
 {
  elog(FATAL, "failed to query triple %s\n", error);
 }







 cpu = LLVMGetHostCPUName();
 features = LLVMGetHostCPUFeatures();
 elog(DEBUG2, "LLVMJIT detected CPU \"%s\", with features \"%s\"",
   cpu, features);

 llvm_opt0_targetmachine =
  LLVMCreateTargetMachine(llvm_targetref, llvm_triple, cpu, features,
        LLVMCodeGenLevelNone,
        LLVMRelocDefault,
        LLVMCodeModelJITDefault);
 llvm_opt3_targetmachine =
  LLVMCreateTargetMachine(llvm_targetref, llvm_triple, cpu, features,
        LLVMCodeGenLevelAggressive,
        LLVMRelocDefault,
        LLVMCodeModelJITDefault);

 LLVMDisposeMessage(cpu);
 cpu = ((void*)0);
 LLVMDisposeMessage(features);
 features = ((void*)0);


 LLVMLoadLibraryPermanently(((void*)0));

 llvm_opt0_orc = LLVMOrcCreateInstance(llvm_opt0_targetmachine);
 llvm_opt3_orc = LLVMOrcCreateInstance(llvm_opt3_targetmachine);
 before_shmem_exit(llvm_shutdown, 0);

 llvm_session_initialized = 1;

 MemoryContextSwitchTo(oldcontext);
}
