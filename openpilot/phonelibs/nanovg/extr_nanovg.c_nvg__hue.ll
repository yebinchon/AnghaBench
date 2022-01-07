; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__hue.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__hue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float)* @nvg__hue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @nvg__hue(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = fcmp olt float %8, 0.000000e+00
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load float, float* %5, align 4
  %12 = fadd float %11, 1.000000e+00
  store float %12, float* %5, align 4
  br label %13

13:                                               ; preds = %10, %3
  %14 = load float, float* %5, align 4
  %15 = fcmp ogt float %14, 1.000000e+00
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load float, float* %5, align 4
  %18 = fsub float %17, 1.000000e+00
  store float %18, float* %5, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load float, float* %5, align 4
  %21 = fcmp olt float %20, 0x3FC5555560000000
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load float, float* %6, align 4
  %24 = load float, float* %7, align 4
  %25 = load float, float* %6, align 4
  %26 = fsub float %24, %25
  %27 = load float, float* %5, align 4
  %28 = fmul float %26, %27
  %29 = fmul float %28, 6.000000e+00
  %30 = fadd float %23, %29
  store float %30, float* %4, align 4
  br label %53

31:                                               ; preds = %19
  %32 = load float, float* %5, align 4
  %33 = fcmp olt float %32, 5.000000e-01
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load float, float* %7, align 4
  store float %35, float* %4, align 4
  br label %53

36:                                               ; preds = %31
  %37 = load float, float* %5, align 4
  %38 = fcmp olt float %37, 0x3FE5555560000000
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load float, float* %6, align 4
  %41 = load float, float* %7, align 4
  %42 = load float, float* %6, align 4
  %43 = fsub float %41, %42
  %44 = load float, float* %5, align 4
  %45 = fsub float 0x3FE5555560000000, %44
  %46 = fmul float %43, %45
  %47 = fmul float %46, 6.000000e+00
  %48 = fadd float %40, %47
  store float %48, float* %4, align 4
  br label %53

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  %52 = load float, float* %6, align 4
  store float %52, float* %4, align 4
  br label %53

53:                                               ; preds = %51, %39, %34, %22
  %54 = load float, float* %4, align 4
  ret float %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
