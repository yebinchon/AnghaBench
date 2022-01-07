; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_cblasfuncs.c_gemm.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_cblasfuncs.c_gemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@oneD = common dso_local global i32 0, align 4
@zeroD = common dso_local global i32 0, align 4
@oneF = common dso_local global i32 0, align 4
@zeroF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32*)* @gemm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gemm(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8, i32* %9, i32 %10, i32* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32* %9, i32** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32* %11, i32** %24, align 8
  %29 = load i32*, i32** %20, align 8
  %30 = call i8* @PyArray_DATA(i32* %29)
  store i8* %30, i8** %25, align 8
  %31 = load i32*, i32** %22, align 8
  %32 = call i8* @PyArray_DATA(i32* %31)
  store i8* %32, i8** %26, align 8
  %33 = load i32*, i32** %24, align 8
  %34 = call i8* @PyArray_DATA(i32* %33)
  store i8* %34, i8** %27, align 8
  %35 = load i32*, i32** %24, align 8
  %36 = call i32 @PyArray_DIM(i32* %35, i32 1)
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %12
  %39 = load i32*, i32** %24, align 8
  %40 = call i32 @PyArray_DIM(i32* %39, i32 1)
  br label %42

41:                                               ; preds = %12
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ 1, %41 ]
  store i32 %43, i32* %28, align 4
  %44 = load i32, i32* %13, align 4
  switch i32 %44, label %105 [
    i32 129, label %45
    i32 128, label %59
    i32 131, label %73
    i32 130, label %89
  ]

45:                                               ; preds = %42
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %19, align 4
  %52 = load i8*, i8** %25, align 8
  %53 = load i32, i32* %21, align 4
  %54 = load i8*, i8** %26, align 8
  %55 = load i32, i32* %23, align 4
  %56 = load i8*, i8** %27, align 8
  %57 = load i32, i32* %28, align 4
  %58 = call i32 @cblas_dgemm(i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 1, i8* %52, i32 %53, i8* %54, i32 %55, i32 0, i8* %56, i32 %57)
  br label %105

59:                                               ; preds = %42
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load i8*, i8** %25, align 8
  %67 = load i32, i32* %21, align 4
  %68 = load i8*, i8** %26, align 8
  %69 = load i32, i32* %23, align 4
  %70 = load i8*, i8** %27, align 8
  %71 = load i32, i32* %28, align 4
  %72 = call i32 @cblas_sgemm(i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, float 1.000000e+00, i8* %66, i32 %67, i8* %68, i32 %69, float 0.000000e+00, i8* %70, i32 %71)
  br label %105

73:                                               ; preds = %42
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* @oneD, align 4
  %81 = load i8*, i8** %25, align 8
  %82 = load i32, i32* %21, align 4
  %83 = load i8*, i8** %26, align 8
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* @zeroD, align 4
  %86 = load i8*, i8** %27, align 8
  %87 = load i32, i32* %28, align 4
  %88 = call i32 @cblas_zgemm(i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i8* %81, i32 %82, i8* %83, i32 %84, i32 %85, i8* %86, i32 %87)
  br label %105

89:                                               ; preds = %42
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* @oneF, align 4
  %97 = load i8*, i8** %25, align 8
  %98 = load i32, i32* %21, align 4
  %99 = load i8*, i8** %26, align 8
  %100 = load i32, i32* %23, align 4
  %101 = load i32, i32* @zeroF, align 4
  %102 = load i8*, i8** %27, align 8
  %103 = load i32, i32* %28, align 4
  %104 = call i32 @cblas_cgemm(i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i8* %97, i32 %98, i8* %99, i32 %100, i32 %101, i8* %102, i32 %103)
  br label %105

105:                                              ; preds = %42, %89, %73, %59, %45
  ret void
}

declare dso_local i8* @PyArray_DATA(i32*) #1

declare dso_local i32 @PyArray_DIM(i32*, i32) #1

declare dso_local i32 @cblas_dgemm(i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @cblas_sgemm(i32, i32, i32, i32, i32, i32, float, i8*, i32, i8*, i32, float, i8*, i32) #1

declare dso_local i32 @cblas_zgemm(i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @cblas_cgemm(i32, i32, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
