; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/co60/rev6/extr_led.c_backlight_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/co60/rev6/extr_led.c_backlight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BACKLIGHT_LEVELS = common dso_local global i32 0, align 4
@PWMD4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_set(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = trunc i64 %4 to i32
  %6 = mul nsw i32 65535, %5
  %7 = load i32, i32* @BACKLIGHT_LEVELS, align 4
  %8 = sdiv i32 %6, %7
  %9 = call i64 @cie_lightness(i32 %8)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i64, i64* %2, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @pwmDisableChannel(i32* @PWMD4, i32 2)
  br label %23

15:                                               ; preds = %1
  %16 = call i32 (...) @is_breathing()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @PWM_FRACTION_TO_WIDTH(i32* @PWMD4, i32 65535, i32 %19)
  %21 = call i32 @pwmEnableChannel(i32* @PWMD4, i32 2, i32 %20)
  br label %22

22:                                               ; preds = %18, %15
  br label %23

23:                                               ; preds = %22, %13
  ret void
}

declare dso_local i64 @cie_lightness(i32) #1

declare dso_local i32 @pwmDisableChannel(i32*, i32) #1

declare dso_local i32 @is_breathing(...) #1

declare dso_local i32 @pwmEnableChannel(i32*, i32, i32) #1

declare dso_local i32 @PWM_FRACTION_TO_WIDTH(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
