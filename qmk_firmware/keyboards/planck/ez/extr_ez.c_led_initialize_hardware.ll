; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/planck/ez/extr_ez.c_led_initialize_hardware.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/planck/ez/extr_ez.c_led_initialize_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@PWMD4 = common dso_local global i32 0, align 4
@pwmCFG = common dso_local global i32 0, align 4
@keyboard_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GPIOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_initialize_hardware() #0 {
  %1 = call i32 @pwmStart(i32* @PWMD4, i32* @pwmCFG)
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keyboard_config, i32 0, i32 0), align 8
  %3 = trunc i64 %2 to i32
  %4 = mul nsw i32 %3, 255
  %5 = sdiv i32 %4, 4
  %6 = call i32 @planck_ez_right_led_level(i32 %5)
  %7 = load i32, i32* @GPIOB, align 4
  %8 = call i32 @PAL_MODE_ALTERNATE(i32 2)
  %9 = call i32 @palSetPadMode(i32 %7, i32 8, i32 %8)
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @keyboard_config, i32 0, i32 0), align 8
  %11 = trunc i64 %10 to i32
  %12 = mul nsw i32 %11, 255
  %13 = sdiv i32 %12, 4
  %14 = call i32 @planck_ez_left_led_level(i32 %13)
  %15 = load i32, i32* @GPIOB, align 4
  %16 = call i32 @PAL_MODE_ALTERNATE(i32 2)
  %17 = call i32 @palSetPadMode(i32 %15, i32 9, i32 %16)
  %18 = call i32 (...) @planck_ez_left_led_off()
  %19 = call i32 (...) @planck_ez_right_led_off()
  ret void
}

declare dso_local i32 @pwmStart(i32*, i32*) #1

declare dso_local i32 @planck_ez_right_led_level(i32) #1

declare dso_local i32 @palSetPadMode(i32, i32, i32) #1

declare dso_local i32 @PAL_MODE_ALTERNATE(i32) #1

declare dso_local i32 @planck_ez_left_led_level(i32) #1

declare dso_local i32 @planck_ez_left_led_off(...) #1

declare dso_local i32 @planck_ez_right_led_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
