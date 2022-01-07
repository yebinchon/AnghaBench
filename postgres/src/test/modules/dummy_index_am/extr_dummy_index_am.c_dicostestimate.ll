; ModuleID = '/home/carl/AnghaBench/postgres/src/test/modules/dummy_index_am/extr_dummy_index_am.c_dicostestimate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/modules/dummy_index_am/extr_dummy_index_am.c_dicostestimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, double, double*, double*, i32*, double*, double*)* @dicostestimate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dicostestimate(i32* %0, i32* %1, double %2, double* %3, double* %4, i32* %5, double* %6, double* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca double, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store double %2, double* %11, align 8
  store double* %3, double** %12, align 8
  store double* %4, double** %13, align 8
  store i32* %5, i32** %14, align 8
  store double* %6, double** %15, align 8
  store double* %7, double** %16, align 8
  %17 = load double*, double** %12, align 8
  store double 1.000000e+10, double* %17, align 8
  %18 = load double*, double** %13, align 8
  store double 1.000000e+10, double* %18, align 8
  %19 = load i32*, i32** %14, align 8
  store i32 1, i32* %19, align 4
  %20 = load double*, double** %15, align 8
  store double 0.000000e+00, double* %20, align 8
  %21 = load double*, double** %16, align 8
  store double 1.000000e+00, double* %21, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
