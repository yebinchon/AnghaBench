; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_cblasfuncs.c_gemv.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/common/extr_cblasfuncs.c_gemv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@oneD = common dso_local global i32 0, align 4
@zeroD = common dso_local global i32 0, align 4
@oneF = common dso_local global i32 0, align 4
@zeroF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32, i32*, i32, i32*)* @gemv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gemv(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i8* @PyArray_DATA(i32* %22)
  store i8* %23, i8** %17, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = call i8* @PyArray_DATA(i32* %24)
  store i8* %25, i8** %18, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = call i8* @PyArray_DATA(i32* %26)
  store i8* %27, i8** %19, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @PyArray_DIM(i32* %28, i32 0)
  store i32 %29, i32* %20, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @PyArray_DIM(i32* %30, i32 1)
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %81 [
    i32 129, label %33
    i32 128, label %44
    i32 131, label %55
    i32 130, label %68
  ]

33:                                               ; preds = %8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %20, align 4
  %37 = load i32, i32* %21, align 4
  %38 = load i8*, i8** %17, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i8*, i8** %18, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i8*, i8** %19, align 8
  %43 = call i32 @cblas_dgemv(i32 %34, i32 %35, i32 %36, i32 %37, i32 1, i8* %38, i32 %39, i8* %40, i32 %41, i32 0, i8* %42, i32 1)
  br label %81

44:                                               ; preds = %8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %21, align 4
  %49 = load i8*, i8** %17, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i8*, i8** %18, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i8*, i8** %19, align 8
  %54 = call i32 @cblas_sgemv(i32 %45, i32 %46, i32 %47, i32 %48, float 1.000000e+00, i8* %49, i32 %50, i8* %51, i32 %52, float 0.000000e+00, i8* %53, i32 1)
  br label %81

55:                                               ; preds = %8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* @oneD, align 4
  %61 = load i8*, i8** %17, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i8*, i8** %18, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @zeroD, align 4
  %66 = load i8*, i8** %19, align 8
  %67 = call i32 @cblas_zgemv(i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i8* %61, i32 %62, i8* %63, i32 %64, i32 %65, i8* %66, i32 1)
  br label %81

68:                                               ; preds = %8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* @oneF, align 4
  %74 = load i8*, i8** %17, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i8*, i8** %18, align 8
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @zeroF, align 4
  %79 = load i8*, i8** %19, align 8
  %80 = call i32 @cblas_cgemv(i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i8* %74, i32 %75, i8* %76, i32 %77, i32 %78, i8* %79, i32 1)
  br label %81

81:                                               ; preds = %8, %68, %55, %44, %33
  ret void
}

declare dso_local i8* @PyArray_DATA(i32*) #1

declare dso_local i32 @PyArray_DIM(i32*, i32) #1

declare dso_local i32 @cblas_dgemv(i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @cblas_sgemv(i32, i32, i32, i32, float, i8*, i32, i8*, i32, float, i8*, i32) #1

declare dso_local i32 @cblas_zgemv(i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @cblas_cgemv(i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
