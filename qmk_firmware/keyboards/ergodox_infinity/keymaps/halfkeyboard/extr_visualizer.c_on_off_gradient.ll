; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/keymaps/halfkeyboard/extr_visualizer.c_on_off_gradient.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/keymaps/halfkeyboard/extr_visualizer.c_on_off_gradient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float, float, float)* @on_off_gradient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_off_gradient(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %11 = load float, float* @M_PI, align 4
  %12 = fmul float %11, 2.000000e+00
  store float %12, float* %7, align 4
  %13 = load float, float* %5, align 4
  %14 = load float, float* %6, align 4
  %15 = fsub float %14, 1.000000e+00
  %16 = fdiv float %13, %15
  %17 = fsub float 1.000000e+00, %16
  %18 = load float, float* %7, align 4
  %19 = fmul float %17, %18
  store float %19, float* %8, align 4
  %20 = load float, float* %4, align 4
  %21 = load float, float* %7, align 4
  %22 = fmul float %20, %21
  %23 = load float, float* %8, align 4
  %24 = fadd float %22, %23
  %25 = load float, float* @M_PI, align 4
  %26 = fsub float %24, %25
  store float %26, float* %9, align 4
  %27 = load float, float* @M_PI, align 4
  %28 = fmul float 2.000000e+00, %27
  %29 = load float, float* %9, align 4
  %30 = fcmp olt float %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %3
  %32 = load float, float* %9, align 4
  %33 = load float, float* @M_PI, align 4
  %34 = fmul float 3.000000e+00, %33
  %35 = fcmp olt float %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load float, float* %9, align 4
  %38 = call float @cosf(float %37) #2
  %39 = fadd float %38, 1.000000e+00
  %40 = fpext float %39 to double
  %41 = fmul double 5.000000e-01, %40
  %42 = fptrunc double %41 to float
  store float %42, float* %10, align 4
  br label %51

43:                                               ; preds = %31, %3
  %44 = load float, float* %9, align 4
  %45 = load float, float* @M_PI, align 4
  %46 = fmul float 3.000000e+00, %45
  %47 = fcmp oge float %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store float 0.000000e+00, float* %10, align 4
  br label %50

49:                                               ; preds = %43
  store float 1.000000e+00, float* %10, align 4
  br label %50

50:                                               ; preds = %49, %48
  br label %51

51:                                               ; preds = %50, %36
  %52 = load float, float* %10, align 4
  %53 = fmul float 2.550000e+02, %52
  %54 = fptosi float %53 to i32
  ret i32 %54
}

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
