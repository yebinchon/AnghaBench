; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/stm32f072/extr_led.c_backlight_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/stm32f072/extr_led.c_backlight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"backlight_set(%d)\0A\00", align 1
@BACKLIGHT_LEVELS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"duty: (%d)\0A\00", align 1
@PWMD3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %4)
  %6 = load i32, i32* %2, align 4
  %7 = mul nsw i32 65535, %6
  %8 = load i32, i32* @BACKLIGHT_LEVELS, align 4
  %9 = sdiv i32 %7, %8
  %10 = call i64 @cie_lightness(i32 %9)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @pwmDisableChannel(i32* @PWMD3, i32 0)
  br label %26

18:                                               ; preds = %1
  %19 = call i32 (...) @is_breathing()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @PWM_FRACTION_TO_WIDTH(i32* @PWMD3, i32 65535, i32 %22)
  %24 = call i32 @pwmEnableChannel(i32* @PWMD3, i32 0, i32 %23)
  br label %25

25:                                               ; preds = %21, %18
  br label %26

26:                                               ; preds = %25, %16
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

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
