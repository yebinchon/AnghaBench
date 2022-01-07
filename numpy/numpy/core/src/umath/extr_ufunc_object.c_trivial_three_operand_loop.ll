; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_trivial_three_operand_loop.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_object.c_trivial_three_operand_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPY_BEGIN_THREADS_DEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"three operand loop count %d\0A\00", align 1
@NPY_END_THREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32 (i8**, i64*, i64*, i8*)*, i8*)* @trivial_three_operand_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trivial_three_operand_loop(i32** %0, i32 (i8**, i64*, i64*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32 (i8**, i64*, i64*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [3 x i8*], align 16
  %8 = alloca [3 x i64], align 16
  %9 = alloca [3 x i64], align 16
  %10 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32 (i8**, i64*, i64*, i8*)* %1, i32 (i8**, i64*, i64*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @NPY_BEGIN_THREADS_DEF, align 4
  %12 = load i32**, i32*** %4, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @PyArray_DESCR(i32* %14)
  %16 = call i64 @PyDataType_REFCHK(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %3
  %19 = load i32**, i32*** %4, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @PyArray_DESCR(i32* %21)
  %23 = call i64 @PyDataType_REFCHK(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load i32**, i32*** %4, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @PyArray_DESCR(i32* %28)
  %30 = call i64 @PyDataType_REFCHK(i32 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %25, %18, %3
  %33 = phi i1 [ true, %18 ], [ true, %3 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i32**, i32*** %4, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32**, i32*** %4, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i64 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32**, i32*** %4, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %45 = load i64, i64* %44, align 16
  %46 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %47 = load i8*, i8** %46, align 16
  %48 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 2
  %51 = load i8*, i8** %50, align 16
  %52 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %53 = load i64, i64* %52, align 16
  %54 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 2
  %57 = load i64, i64* %56, align 16
  %58 = call i32 @PyArray_PREPARE_TRIVIAL_TRIPLE_ITERATION(i32* %37, i32* %40, i32* %43, i64 %45, i8* %47, i8* %49, i8* %51, i64 %53, i64 %55, i64 %57)
  %59 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %60 = load i64, i64* %59, align 16
  %61 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %63 = load i64, i64* %62, align 16
  %64 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  store i64 %63, i64* %64, align 16
  %65 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %66 = load i64, i64* %65, align 16
  %67 = trunc i64 %66 to i32
  %68 = call i32 @NPY_UF_DBG_PRINT1(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %32
  %72 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %73 = load i64, i64* %72, align 16
  %74 = call i32 @NPY_BEGIN_THREADS_THRESHOLDED(i64 %73)
  br label %75

75:                                               ; preds = %71, %32
  %76 = load i32 (i8**, i64*, i64*, i8*)*, i32 (i8**, i64*, i64*, i8*)** %5, align 8
  %77 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %78 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %79 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 %76(i8** %77, i64* %78, i64* %79, i8* %80)
  %82 = load i32, i32* @NPY_END_THREADS, align 4
  ret void
}

declare dso_local i64 @PyDataType_REFCHK(i32) #1

declare dso_local i32 @PyArray_DESCR(i32*) #1

declare dso_local i32 @PyArray_PREPARE_TRIVIAL_TRIPLE_ITERATION(i32*, i32*, i32*, i64, i8*, i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @NPY_UF_DBG_PRINT1(i8*, i32) #1

declare dso_local i32 @NPY_BEGIN_THREADS_THRESHOLDED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
