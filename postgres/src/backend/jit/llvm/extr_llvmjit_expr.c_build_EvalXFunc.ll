; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit_expr.c_build_EvalXFunc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/jit/llvm/extr_llvmjit_expr.c_build_EvalXFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StructExprState = common dso_local global i32 0, align 4
@StructExprEvalStep = common dso_local global i32 0, align 4
@StructExprContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i64, i64, i32*)* @build_EvalXFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_EvalXFunc(i32 %0, i32 %1, i8* %2, i64 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [3 x i64], align 16
  %16 = alloca [3 x i64], align 16
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = call i64 @LLVMGetNamedFunction(i32 %17, i8* %18)
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* %14, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @StructExprState, align 4
  %24 = call i64 @l_ptr(i32 %23)
  %25 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  store i64 %24, i64* %25, align 16
  %26 = load i32, i32* @StructExprEvalStep, align 4
  %27 = call i64 @l_ptr(i32 %26)
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 1
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* @StructExprContext, align 4
  %30 = call i64 @l_ptr(i32 %29)
  %31 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 2
  store i64 %30, i64* %31, align 16
  %32 = call i32 (...) @LLVMVoidType()
  %33 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %34 = getelementptr inbounds [3 x i64], [3 x i64]* %15, i64 0, i64 0
  %35 = call i32 @lengthof(i64* %34)
  %36 = call i64 @LLVMFunctionType(i32 %32, i64* %33, i32 %35, i32 0)
  store i64 %36, i64* %13, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %13, align 8
  %40 = call i64 @LLVMAddFunction(i32 %37, i8* %38, i64 %39)
  store i64 %40, i64* %14, align 8
  br label %41

41:                                               ; preds = %22, %6
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 0
  store i64 %42, i64* %43, align 16
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* @StructExprEvalStep, align 4
  %46 = call i64 @l_ptr(i32 %45)
  %47 = call i64 @l_ptr_const(i32* %44, i64 %46)
  %48 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 1
  store i64 %47, i64* %48, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 2
  store i64 %49, i64* %50, align 16
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %14, align 8
  %53 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 0
  %54 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 0
  %55 = call i32 @lengthof(i64* %54)
  %56 = call i32 @LLVMBuildCall(i32 %51, i64 %52, i64* %53, i32 %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i64 @LLVMGetNamedFunction(i32, i8*) #1

declare dso_local i64 @l_ptr(i32) #1

declare dso_local i64 @LLVMFunctionType(i32, i64*, i32, i32) #1

declare dso_local i32 @LLVMVoidType(...) #1

declare dso_local i32 @lengthof(i64*) #1

declare dso_local i64 @LLVMAddFunction(i32, i8*, i64) #1

declare dso_local i64 @l_ptr_const(i32*, i64) #1

declare dso_local i32 @LLVMBuildCall(i32, i64, i64*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
