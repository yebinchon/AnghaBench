; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_llvm_session_initialize.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_llvm_session_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_session_initialized = common dso_local global i32 0, align 4
@TopMemoryContext = common dso_local global i32 0, align 4
@llvm_triple = common dso_local global i32 0, align 4
@llvm_targetref = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to query triple %s\0A\00", align 1
@DEBUG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"LLVMJIT detected CPU \22%s\22, with features \22%s\22\00", align 1
@LLVMCodeGenLevelNone = common dso_local global i32 0, align 4
@LLVMRelocDefault = common dso_local global i32 0, align 4
@LLVMCodeModelJITDefault = common dso_local global i32 0, align 4
@llvm_opt0_targetmachine = common dso_local global i32 0, align 4
@LLVMCodeGenLevelAggressive = common dso_local global i32 0, align 4
@llvm_opt3_targetmachine = common dso_local global i32 0, align 4
@llvm_opt0_orc = common dso_local global i32 0, align 4
@llvm_opt3_orc = common dso_local global i32 0, align 4
@llvm_shutdown = common dso_local global i32 0, align 4
@jit_debugging_support = common dso_local global i64 0, align 8
@jit_profiling_support = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @llvm_session_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llvm_session_initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* null, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i8* null, i8** %4, align 8
  %5 = load i32, i32* @llvm_session_initialized, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %58

8:                                                ; preds = %0
  %9 = load i32, i32* @TopMemoryContext, align 4
  %10 = call i32 @MemoryContextSwitchTo(i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = call i32 (...) @LLVMInitializeNativeTarget()
  %12 = call i32 (...) @LLVMInitializeNativeAsmPrinter()
  %13 = call i32 (...) @LLVMInitializeNativeAsmParser()
  %14 = call i32 (...) @llvm_create_types()
  %15 = load i32, i32* @llvm_triple, align 4
  %16 = call i64 @LLVMGetTargetFromTriple(i32 %15, i32* @llvm_targetref, i8** %2)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = load i32, i32* @FATAL, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i32, i8*, i8*, ...) @elog(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %18, %8
  %23 = call i8* (...) @LLVMGetHostCPUName()
  store i8* %23, i8** %3, align 8
  %24 = call i8* (...) @LLVMGetHostCPUFeatures()
  store i8* %24, i8** %4, align 8
  %25 = load i32, i32* @DEBUG2, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 (i32, i8*, i8*, ...) @elog(i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %27)
  %29 = load i32, i32* @llvm_targetref, align 4
  %30 = load i32, i32* @llvm_triple, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @LLVMCodeGenLevelNone, align 4
  %34 = load i32, i32* @LLVMRelocDefault, align 4
  %35 = load i32, i32* @LLVMCodeModelJITDefault, align 4
  %36 = call i32 @LLVMCreateTargetMachine(i32 %29, i32 %30, i8* %31, i8* %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* @llvm_opt0_targetmachine, align 4
  %37 = load i32, i32* @llvm_targetref, align 4
  %38 = load i32, i32* @llvm_triple, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* @LLVMCodeGenLevelAggressive, align 4
  %42 = load i32, i32* @LLVMRelocDefault, align 4
  %43 = load i32, i32* @LLVMCodeModelJITDefault, align 4
  %44 = call i32 @LLVMCreateTargetMachine(i32 %37, i32 %38, i8* %39, i8* %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* @llvm_opt3_targetmachine, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @LLVMDisposeMessage(i8* %45)
  store i8* null, i8** %3, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @LLVMDisposeMessage(i8* %47)
  store i8* null, i8** %4, align 8
  %49 = call i32 @LLVMLoadLibraryPermanently(i32* null)
  %50 = load i32, i32* @llvm_opt0_targetmachine, align 4
  %51 = call i32 @LLVMOrcCreateInstance(i32 %50)
  store i32 %51, i32* @llvm_opt0_orc, align 4
  %52 = load i32, i32* @llvm_opt3_targetmachine, align 4
  %53 = call i32 @LLVMOrcCreateInstance(i32 %52)
  store i32 %53, i32* @llvm_opt3_orc, align 4
  %54 = load i32, i32* @llvm_shutdown, align 4
  %55 = call i32 @before_shmem_exit(i32 %54, i32 0)
  store i32 1, i32* @llvm_session_initialized, align 4
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @MemoryContextSwitchTo(i32 %56)
  br label %58

58:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @LLVMInitializeNativeTarget(...) #1

declare dso_local i32 @LLVMInitializeNativeAsmPrinter(...) #1

declare dso_local i32 @LLVMInitializeNativeAsmParser(...) #1

declare dso_local i32 @llvm_create_types(...) #1

declare dso_local i64 @LLVMGetTargetFromTriple(i32, i32*, i8**) #1

declare dso_local i32 @elog(i32, i8*, i8*, ...) #1

declare dso_local i8* @LLVMGetHostCPUName(...) #1

declare dso_local i8* @LLVMGetHostCPUFeatures(...) #1

declare dso_local i32 @LLVMCreateTargetMachine(i32, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @LLVMDisposeMessage(i8*) #1

declare dso_local i32 @LLVMLoadLibraryPermanently(i32*) #1

declare dso_local i32 @LLVMOrcCreateInstance(i32) #1

declare dso_local i32 @before_shmem_exit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
