; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/promethium/extr_promethium.c_battery_level.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/promethium/extr_promethium.c_battery_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BATTERY_PIN = common dso_local global i32 0, align 4
@MIN_VOLTAGE = common dso_local global float 0.000000e+00, align 4
@MAX_VOLTAGE = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @battery_level() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = load i32, i32* @BATTERY_PIN, align 4
  %4 = call i32 @analogRead(i32 %3)
  %5 = mul nsw i32 %4, 2
  %6 = sitofp i32 %5 to double
  %7 = fmul double %6, 3.300000e+00
  %8 = fdiv double %7, 1.024000e+03
  %9 = fptrunc double %8 to float
  store float %9, float* %2, align 4
  %10 = load float, float* %2, align 4
  %11 = load float, float* @MIN_VOLTAGE, align 4
  %12 = fcmp olt float %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %29

14:                                               ; preds = %0
  %15 = load float, float* %2, align 4
  %16 = load float, float* @MAX_VOLTAGE, align 4
  %17 = fcmp ogt float %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 255, i32* %1, align 4
  br label %29

19:                                               ; preds = %14
  %20 = load float, float* %2, align 4
  %21 = load float, float* @MIN_VOLTAGE, align 4
  %22 = fsub float %20, %21
  %23 = load float, float* @MAX_VOLTAGE, align 4
  %24 = load float, float* @MIN_VOLTAGE, align 4
  %25 = fsub float %23, %24
  %26 = fdiv float %22, %25
  %27 = fmul float %26, 2.550000e+02
  %28 = fptosi float %27 to i32
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %19, %18, %13
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare dso_local i32 @analogRead(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
