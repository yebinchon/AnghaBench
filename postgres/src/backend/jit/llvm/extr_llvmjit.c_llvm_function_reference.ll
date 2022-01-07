; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_llvm_function_reference.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit.c_llvm_function_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"pgextern.%s.%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"pgoidextern.%u\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TypePGFunction = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @llvm_function_reference(i32* %0, i32 %1, i32 %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @fmgr_symbol(i8* %19, i8** %10, i8** %11)
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %4
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i8* (i8*, i8*, ...) @psprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  store i8* %29, i8** %12, align 8
  br label %73

30:                                               ; preds = %23, %4
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %11, align 8
  %35 = call i8* (i8*, i8*, ...) @psprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i8* %35, i8** %12, align 8
  br label %72

36:                                               ; preds = %30
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* (i8*, i8*, ...) @psprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  store i8* %42, i8** %12, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = call i64 @LLVMGetNamedGlobal(i32 %43, i8* %44)
  store i64 %45, i64* %13, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load i32, i32* %7, align 4
  %50 = load i64, i64* %13, align 8
  %51 = call i64 @LLVMBuildLoad(i32 %49, i64 %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i64 %51, i64* %5, align 8
  br label %88

52:                                               ; preds = %36
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @TypePGFunction, align 4
  %59 = call i64 @l_ptr_const(i32 %57, i32 %58)
  store i64 %59, i64* %14, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @TypePGFunction, align 4
  %62 = load i8*, i8** %12, align 8
  %63 = call i64 @LLVMAddGlobal(i32 %60, i32 %61, i8* %62)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @LLVMSetInitializer(i64 %64, i64 %65)
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @LLVMSetGlobalConstant(i64 %67, i32 1)
  %69 = load i32, i32* %7, align 4
  %70 = load i64, i64* %13, align 8
  %71 = call i64 @LLVMBuildLoad(i32 %69, i64 %70, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i64 %71, i64* %5, align 8
  br label %88

72:                                               ; preds = %33
  br label %73

73:                                               ; preds = %72, %26
  %74 = load i32, i32* %8, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = call i64 @LLVMGetNamedFunction(i32 %74, i8* %75)
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i64, i64* %13, align 8
  store i64 %80, i64* %5, align 8
  br label %88

81:                                               ; preds = %73
  %82 = load i32, i32* %8, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* @TypePGFunction, align 4
  %85 = call i32 @LLVMGetElementType(i32 %84)
  %86 = call i64 @LLVMAddFunction(i32 %82, i8* %83, i32 %85)
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* %13, align 8
  store i64 %87, i64* %5, align 8
  br label %88

88:                                               ; preds = %81, %79, %52, %48
  %89 = load i64, i64* %5, align 8
  ret i64 %89
}

declare dso_local i32 @fmgr_symbol(i8*, i8**, i8**) #1

declare dso_local i8* @psprintf(i8*, i8*, ...) #1

declare dso_local i64 @LLVMGetNamedGlobal(i32, i8*) #1

declare dso_local i64 @LLVMBuildLoad(i32, i64, i8*) #1

declare dso_local i64 @l_ptr_const(i32, i32) #1

declare dso_local i64 @LLVMAddGlobal(i32, i32, i8*) #1

declare dso_local i32 @LLVMSetInitializer(i64, i64) #1

declare dso_local i32 @LLVMSetGlobalConstant(i64, i32) #1

declare dso_local i64 @LLVMGetNamedFunction(i32, i8*) #1

declare dso_local i64 @LLVMAddFunction(i32, i8*, i32) #1

declare dso_local i32 @LLVMGetElementType(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
