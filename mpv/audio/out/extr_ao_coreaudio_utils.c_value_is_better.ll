; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_utils.c_value_is_better.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_utils.c_value_is_better.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double, double, double)* @value_is_better to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @value_is_better(double %0, double %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %8 = load double, double* %7, align 8
  %9 = load double, double* %5, align 8
  %10 = fcmp oge double %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load double, double* %6, align 8
  %13 = load double, double* %5, align 8
  %14 = fcmp olt double %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load double, double* %7, align 8
  %17 = load double, double* %6, align 8
  %18 = fcmp ole double %16, %17
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ true, %11 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %4, align 4
  br label %33

22:                                               ; preds = %3
  %23 = load double, double* %6, align 8
  %24 = load double, double* %5, align 8
  %25 = fcmp olt double %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load double, double* %7, align 8
  %28 = load double, double* %6, align 8
  %29 = fcmp oge double %27, %28
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i1 [ false, %22 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %19
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
