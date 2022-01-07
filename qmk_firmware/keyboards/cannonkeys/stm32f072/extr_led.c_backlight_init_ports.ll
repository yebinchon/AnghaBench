; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/stm32f072/extr_led.c_backlight_init_ports.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/stm32f072/extr_led.c_backlight_init_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"backlight_init_ports()\0A\00", align 1
@GPIOA = common dso_local global i32 0, align 4
@PWMD3 = common dso_local global i32 0, align 4
@pwmCFG = common dso_local global i32 0, align 4
@kb_backlight_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_init_ports() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @GPIOA, align 4
  %3 = call i32 @PAL_MODE_ALTERNATE(i32 1)
  %4 = call i32 @palSetPadMode(i32 %2, i32 6, i32 %3)
  %5 = call i32 @pwmStart(i32* @PWMD3, i32* @pwmCFG)
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 2), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 1), align 8
  %10 = call i32 @backlight_set(i32 %9)
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 0), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @breathing_enable()
  br label %15

15:                                               ; preds = %13, %8
  br label %18

16:                                               ; preds = %0
  %17 = call i32 @backlight_set(i32 0)
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @palSetPadMode(i32, i32, i32) #1

declare dso_local i32 @PAL_MODE_ALTERNATE(i32) #1

declare dso_local i32 @pwmStart(i32*, i32*) #1

declare dso_local i32 @backlight_set(i32) #1

declare dso_local i32 @breathing_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
