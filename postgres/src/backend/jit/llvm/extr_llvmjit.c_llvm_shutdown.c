
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int LLVMOrcDisposeInstance (int *) ;
 int LLVMOrcUnregisterPerf (int *) ;
 scalar_t__ jit_profiling_support ;
 int * llvm_opt0_orc ;
 int * llvm_opt3_orc ;

__attribute__((used)) static void
llvm_shutdown(int code, Datum arg)
{


 if (llvm_opt3_orc)
 {




  LLVMOrcDisposeInstance(llvm_opt3_orc);
  llvm_opt3_orc = ((void*)0);
 }

 if (llvm_opt0_orc)
 {




  LLVMOrcDisposeInstance(llvm_opt0_orc);
  llvm_opt0_orc = ((void*)0);
 }
}
