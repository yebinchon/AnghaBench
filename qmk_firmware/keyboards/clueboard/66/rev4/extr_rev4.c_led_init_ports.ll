; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/rev4/extr_rev4.c_led_init_ports.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/rev4/extr_rev4.c_led_init_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GPIOB = common dso_local global i32 0, align 4
@PAL_MODE_OUTPUT_PUSHPULL = common dso_local global i32 0, align 4
@GPIOA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_init_ports() #0 {
  %1 = load i32, i32* @GPIOB, align 4
  %2 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %3 = call i32 @palSetPadMode(i32 %1, i32 13, i32 %2)
  %4 = load i32, i32* @GPIOB, align 4
  %5 = call i32 @palClearPad(i32 %4, i32 13)
  %6 = load i32, i32* @GPIOB, align 4
  %7 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %8 = call i32 @palSetPadMode(i32 %6, i32 14, i32 %7)
  %9 = load i32, i32* @GPIOB, align 4
  %10 = call i32 @palClearPad(i32 %9, i32 14)
  %11 = load i32, i32* @GPIOA, align 4
  %12 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %13 = call i32 @palSetPadMode(i32 %11, i32 8, i32 %12)
  %14 = load i32, i32* @GPIOA, align 4
  %15 = call i32 @palClearPad(i32 %14, i32 8)
  %16 = load i32, i32* @GPIOA, align 4
  %17 = load i32, i32* @PAL_MODE_OUTPUT_PUSHPULL, align 4
  %18 = call i32 @palSetPadMode(i32 %16, i32 0, i32 %17)
  %19 = load i32, i32* @GPIOA, align 4
  %20 = call i32 @palClearPad(i32 %19, i32 0)
  ret void
}

declare dso_local i32 @palSetPadMode(i32, i32, i32) #1

declare dso_local i32 @palClearPad(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
