; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/keymaps/halfkeyboard/extr_visualizer.c_off_on_off_gradient.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodox_infinity/keymaps/halfkeyboard/extr_visualizer.c_off_on_off_gradient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_PI = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float, float, float)* @off_on_off_gradient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @off_on_off_gradient(float %0, float %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %12 = load float, float* @M_PI, align 4
  %13 = fmul float %12, 2.000000e+00
  store float %13, float* %8, align 4
  %14 = load float, float* %6, align 4
  %15 = load float, float* %7, align 4
  %16 = fsub float %15, 1.000000e+00
  %17 = fdiv float %14, %16
  %18 = fsub float 1.000000e+00, %17
  %19 = load float, float* %8, align 4
  %20 = fmul float %18, %19
  store float %20, float* %9, align 4
  %21 = load float, float* %5, align 4
  %22 = load float, float* %8, align 4
  %23 = fmul float %21, %22
  %24 = load float, float* %9, align 4
  %25 = fadd float %23, %24
  %26 = load float, float* @M_PI, align 4
  %27 = fsub float %25, %26
  store float %27, float* %10, align 4
  %28 = load float, float* @M_PI, align 4
  %29 = fmul float 1.000000e+00, %28
  %30 = load float, float* %10, align 4
  %31 = fcmp olt float %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %3
  %33 = load float, float* %10, align 4
  %34 = load float, float* @M_PI, align 4
  %35 = fmul float 3.000000e+00, %34
  %36 = fcmp olt float %33, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load float, float* %10, align 4
  %39 = call float @cosf(float %38) #2
  %40 = fadd float %39, 1.000000e+00
  %41 = fpext float %40 to double
  %42 = fmul double 5.000000e-01, %41
  %43 = fptrunc double %42 to float
  store float %43, float* %11, align 4
  %44 = load float, float* %11, align 4
  %45 = fmul float 2.550000e+02, %44
  %46 = fptosi float %45 to i32
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %32, %3
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i32, i32* %4, align 4
  ret i32 %49
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
