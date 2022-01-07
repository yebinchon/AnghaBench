; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_platform.c_platform_pwm_set_duty.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_platform.c_platform_pwm_set_duty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_PWM = common dso_local global i32 0, align 4
@pwms_duty = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_pwm_set_duty(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NUM_PWM, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @pwm_exist(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %34

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @DUTY(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pwm_set_duty(i32 %16, i32 %17)
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

20:                                               ; preds = %14
  %21 = call i32 (...) @pwm_start()
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @pwm_get_duty(i32 %22)
  %24 = call i32 @NORMAL_DUTY(i32 %23)
  %25 = load i32*, i32** @pwms_duty, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load i32*, i32** @pwms_duty, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %20, %19, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @pwm_exist(i32) #1

declare dso_local i32 @pwm_set_duty(i32, i32) #1

declare dso_local i32 @DUTY(i32) #1

declare dso_local i32 @pwm_start(...) #1

declare dso_local i32 @NORMAL_DUTY(i32) #1

declare dso_local i32 @pwm_get_duty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
