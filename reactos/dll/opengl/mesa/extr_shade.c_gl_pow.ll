; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_shade.c_gl_pow.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_shade.c_gl_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float)* @gl_pow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @gl_pow(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca double, align 8
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %7 = load float, float* %4, align 4
  %8 = load float, float* %5, align 4
  %9 = call double @pow(float %7, float %8)
  store double %9, double* %6, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp olt double %10, 1.000000e-10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store float 0.000000e+00, float* %3, align 4
  br label %16

13:                                               ; preds = %2
  %14 = load double, double* %6, align 8
  %15 = fptrunc double %14 to float
  store float %15, float* %3, align 4
  br label %16

16:                                               ; preds = %13, %12
  %17 = load float, float* %3, align 4
  ret float %17
}

declare dso_local double @pow(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
