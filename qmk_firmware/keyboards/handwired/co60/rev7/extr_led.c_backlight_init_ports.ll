; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/co60/rev7/extr_led.c_backlight_init_ports.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/handwired/co60/rev7/extr_led.c_backlight_init_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@GPIOB = common dso_local global i32 0, align 4
@PWMD4 = common dso_local global i32 0, align 4
@pwmCFG = common dso_local global i32 0, align 4
@kb_backlight_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_init_ports() #0 {
  %1 = load i32, i32* @GPIOB, align 4
  %2 = call i32 @PAL_MODE_ALTERNATE(i32 2)
  %3 = call i32 @palSetPadMode(i32 %1, i32 8, i32 %2)
  %4 = call i32 @pwmStart(i32* @PWMD4, i32* @pwmCFG)
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 2), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 1), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (...) @breathing_enable()
  br label %15

12:                                               ; preds = %7
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kb_backlight_config, i32 0, i32 0), align 8
  %14 = call i32 @backlight_set(i32 %13)
  br label %15

15:                                               ; preds = %12, %10
  br label %18

16:                                               ; preds = %0
  %17 = call i32 @backlight_set(i32 0)
  br label %18

18:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @palSetPadMode(i32, i32, i32) #1

declare dso_local i32 @PAL_MODE_ALTERNATE(i32) #1

declare dso_local i32 @pwmStart(i32*, i32*) #1

declare dso_local i32 @breathing_enable(...) #1

declare dso_local i32 @backlight_set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
