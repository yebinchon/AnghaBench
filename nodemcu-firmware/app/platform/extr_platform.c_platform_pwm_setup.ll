; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_platform.c_platform_pwm_setup.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_platform.c_platform_pwm_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_PWM = common dso_local global i32 0, align 4
@PLATFORM_GPIO_OUTPUT = common dso_local global i32 0, align 4
@PLATFORM_GPIO_FLOAT = common dso_local global i32 0, align 4
@pwms_duty = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @platform_pwm_setup(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NUM_PWM, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PLATFORM_GPIO_OUTPUT, align 4
  %15 = load i32, i32* @PLATFORM_GPIO_FLOAT, align 4
  %16 = call i32 @platform_gpio_mode(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @pwm_add(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i64 0, i64* %4, align 8
  br label %42

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pwm_set_duty(i32 0, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** @pwms_duty, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load i64, i64* %6, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @pwm_set_freq(i32 %30, i32 %31)
  br label %34

33:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %42

34:                                               ; preds = %21
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @platform_pwm_get_clock(i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = call i32 (...) @pwm_start()
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i64 0, i64* %4, align 8
  br label %42

40:                                               ; preds = %34
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %40, %39, %33, %20
  %43 = load i64, i64* %4, align 8
  ret i64 %43
}

declare dso_local i32 @platform_gpio_mode(i32, i32, i32) #1

declare dso_local i32 @pwm_add(i32) #1

declare dso_local i32 @pwm_set_duty(i32, i32) #1

declare dso_local i32 @pwm_set_freq(i32, i32) #1

declare dso_local i64 @platform_pwm_get_clock(i32) #1

declare dso_local i32 @pwm_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
