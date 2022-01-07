; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_platform.c_platform_sigma_delta_setup.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_platform.c_platform_sigma_delta_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_GPIO = common dso_local global i32 0, align 4
@PLATFORM_GPIO_OUTPUT = common dso_local global i32 0, align 4
@PLATFORM_GPIO_FLOAT = common dso_local global i32 0, align 4
@PLATFORM_GPIO_LOW = common dso_local global i32 0, align 4
@pin_num = common dso_local global i32* null, align 8
@GPIO_PIN_SOURCE_MASK = common dso_local global i32 0, align 4
@SIGMA_AS_PIN_SOURCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_sigma_delta_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NUM_GPIO, align 4
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %42

11:                                               ; preds = %6
  %12 = call i32 (...) @sigma_delta_setup()
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PLATFORM_GPIO_OUTPUT, align 4
  %15 = load i32, i32* @PLATFORM_GPIO_FLOAT, align 4
  %16 = call i32 @platform_gpio_mode(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @PLATFORM_GPIO_LOW, align 4
  %19 = call i32 @platform_gpio_write(i32 %17, i32 %18)
  %20 = load i32*, i32** @pin_num, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GPIO_ID_PIN(i32 %24)
  %26 = call i32 @GPIO_PIN_ADDR(i32 %25)
  %27 = load i32*, i32** @pin_num, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @GPIO_ID_PIN(i32 %31)
  %33 = call i32 @GPIO_PIN_ADDR(i32 %32)
  %34 = call i32 @GPIO_REG_READ(i32 %33)
  %35 = load i32, i32* @GPIO_PIN_SOURCE_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* @SIGMA_AS_PIN_SOURCE, align 4
  %39 = call i32 @GPIO_PIN_SOURCE_SET(i32 %38)
  %40 = or i32 %37, %39
  %41 = call i32 @GPIO_REG_WRITE(i32 %26, i32 %40)
  store i32 1, i32* %2, align 4
  br label %42

42:                                               ; preds = %11, %10
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @sigma_delta_setup(...) #1

declare dso_local i32 @platform_gpio_mode(i32, i32, i32) #1

declare dso_local i32 @platform_gpio_write(i32, i32) #1

declare dso_local i32 @GPIO_REG_WRITE(i32, i32) #1

declare dso_local i32 @GPIO_PIN_ADDR(i32) #1

declare dso_local i32 @GPIO_ID_PIN(i32) #1

declare dso_local i32 @GPIO_REG_READ(i32) #1

declare dso_local i32 @GPIO_PIN_SOURCE_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
