; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_llvm_optimize_module.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_llvm_optimize_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PGJIT_OPT3 = common dso_local global i32 0, align 4
@PGJIT_INLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @llvm_optimize_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llvm_optimize_module(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PGJIT_OPT3, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 3, i32* %9, align 4
  br label %19

18:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = call i32 (...) @LLVMPassManagerBuilderCreate()
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @LLVMPassManagerBuilderSetOptLevel(i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @LLVMCreateFunctionPassManagerForModule(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @PGJIT_OPT3, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @LLVMPassManagerBuilderUseInlinerWithThreshold(i32 %34, i32 512)
  br label %39

36:                                               ; preds = %19
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @LLVMAddPromoteMemoryToRegisterPass(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @LLVMPassManagerBuilderPopulateFunctionPassManager(i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @LLVMInitializeFunctionPassManager(i32 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @LLVMGetFirstFunction(i32 %47)
  store i32* %48, i32** %8, align 8
  br label %49

49:                                               ; preds = %56, %39
  %50 = load i32*, i32** %8, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @LLVMRunFunctionPassManager(i32 %53, i32* %54)
  br label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %8, align 8
  %58 = call i32* @LLVMGetNextFunction(i32* %57)
  store i32* %58, i32** %8, align 8
  br label %49

59:                                               ; preds = %49
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @LLVMFinalizeFunctionPassManager(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @LLVMDisposePassManager(i32 %62)
  %64 = call i32 (...) @LLVMCreatePassManager()
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @LLVMPassManagerBuilderPopulateModulePassManager(i32 %65, i32 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PGJIT_OPT3, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @LLVMAddAlwaysInlinerPass(i32 %76)
  br label %78

78:                                               ; preds = %75, %59
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PGJIT_INLINE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %78
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PGJIT_OPT3, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @LLVMAddFunctionInliningPass(i32 %95)
  br label %97

97:                                               ; preds = %94, %86, %78
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @LLVMRunPassManager(i32 %98, i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @LLVMDisposePassManager(i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @LLVMPassManagerBuilderDispose(i32 %105)
  ret void
}

declare dso_local i32 @LLVMPassManagerBuilderCreate(...) #1

declare dso_local i32 @LLVMPassManagerBuilderSetOptLevel(i32, i32) #1

declare dso_local i32 @LLVMCreateFunctionPassManagerForModule(i32) #1

declare dso_local i32 @LLVMPassManagerBuilderUseInlinerWithThreshold(i32, i32) #1

declare dso_local i32 @LLVMAddPromoteMemoryToRegisterPass(i32) #1

declare dso_local i32 @LLVMPassManagerBuilderPopulateFunctionPassManager(i32, i32) #1

declare dso_local i32 @LLVMInitializeFunctionPassManager(i32) #1

declare dso_local i32* @LLVMGetFirstFunction(i32) #1

declare dso_local i32 @LLVMRunFunctionPassManager(i32, i32*) #1

declare dso_local i32* @LLVMGetNextFunction(i32*) #1

declare dso_local i32 @LLVMFinalizeFunctionPassManager(i32) #1

declare dso_local i32 @LLVMDisposePassManager(i32) #1

declare dso_local i32 @LLVMCreatePassManager(...) #1

declare dso_local i32 @LLVMPassManagerBuilderPopulateModulePassManager(i32, i32) #1

declare dso_local i32 @LLVMAddAlwaysInlinerPass(i32) #1

declare dso_local i32 @LLVMAddFunctionInliningPass(i32) #1

declare dso_local i32 @LLVMRunPassManager(i32, i32) #1

declare dso_local i32 @LLVMPassManagerBuilderDispose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
