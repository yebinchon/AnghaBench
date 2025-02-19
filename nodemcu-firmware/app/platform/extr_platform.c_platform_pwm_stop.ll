; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_platform.c_platform_pwm_stop.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_platform.c_platform_pwm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_PWM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_pwm_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @NUM_PWM, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @pwm_exist(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  br label %15

11:                                               ; preds = %6
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @pwm_set_duty(i32 0, i32 %12)
  %14 = call i32 (...) @pwm_start()
  br label %15

15:                                               ; preds = %10, %11, %1
  ret void
}

declare dso_local i32 @pwm_exist(i32) #1

declare dso_local i32 @pwm_set_duty(i32, i32) #1

declare dso_local i32 @pwm_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
