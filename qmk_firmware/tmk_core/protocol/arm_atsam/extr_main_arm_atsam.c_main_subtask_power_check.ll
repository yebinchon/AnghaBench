; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_main_arm_atsam.c_main_subtask_power_check.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/extr_main_arm_atsam.c_main_subtask_power_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main_subtask_power_check.next_5v_checkup = internal global i64 0, align 8
@ADC_5V = common dso_local global i32 0, align 4
@v_5v = common dso_local global double 0.000000e+00, align 8
@v_5v_avg = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main_subtask_power_check() #0 {
  %1 = call i64 (...) @timer_read64()
  %2 = load i64, i64* @main_subtask_power_check.next_5v_checkup, align 8
  %3 = icmp sgt i64 %1, %2
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = call i64 (...) @timer_read64()
  %6 = add nsw i64 %5, 5
  store i64 %6, i64* @main_subtask_power_check.next_5v_checkup, align 8
  %7 = load i32, i32* @ADC_5V, align 4
  %8 = call double @adc_get(i32 %7)
  store double %8, double* @v_5v, align 8
  %9 = load double, double* @v_5v_avg, align 8
  %10 = fmul double 9.000000e-01, %9
  %11 = load double, double* @v_5v, align 8
  %12 = fmul double 1.000000e-01, %11
  %13 = fadd double %10, %12
  store double %13, double* @v_5v_avg, align 8
  br label %14

14:                                               ; preds = %4, %0
  ret void
}

declare dso_local i64 @timer_read64(...) #1

declare dso_local double @adc_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
