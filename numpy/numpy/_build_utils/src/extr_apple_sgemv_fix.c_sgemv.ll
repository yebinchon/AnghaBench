; ModuleID = '/home/carl/AnghaBench/numpy/numpy/_build_utils/src/extr_apple_sgemv_fix.c_sgemv.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/_build_utils/src/extr_apple_sgemv_fix.c_sgemv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgemv(i8* %0, i32* %1, i32* %2, float* %3, float* %4, i32* %5, float* %6, i32* %7, float* %8, float* %9, i32* %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca i32*, align 8
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store float* %3, float** %15, align 8
  store float* %4, float** %16, align 8
  store i32* %5, i32** %17, align 8
  store float* %6, float** %18, align 8
  store i32* %7, i32** %19, align 8
  store float* %8, float** %20, align 8
  store float* %9, float** %21, align 8
  store i32* %10, i32** %22, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = load float*, float** %15, align 8
  %27 = load float*, float** %16, align 8
  %28 = load i32*, i32** %17, align 8
  %29 = load float*, float** %18, align 8
  %30 = load i32*, i32** %19, align 8
  %31 = load float*, float** %20, align 8
  %32 = load float*, float** %21, align 8
  %33 = load i32*, i32** %22, align 8
  %34 = call i32 @sgemv_(i8* %23, i32* %24, i32* %25, float* %26, float* %27, i32* %28, float* %29, i32* %30, float* %31, float* %32, i32* %33)
  ret void
}

declare dso_local i32 @sgemv_(i8*, i32*, i32*, float*, float*, i32*, float*, i32*, float*, float*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
