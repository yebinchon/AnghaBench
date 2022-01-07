; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_mono_backlight.c_backlight_timer_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/extr_wt_mono_backlight.c_backlight_timer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@backlight_timer_init.backlight_timer_is_init = internal global i32 0, align 4
@WGM32 = common dso_local global i32 0, align 4
@CS32 = common dso_local global i32 0, align 4
@CS30 = common dso_local global i32 0, align 4
@TCCR3B = common dso_local global i32 0, align 4
@SREG = common dso_local global i32 0, align 4
@TIMER3_TOP = common dso_local global i32 0, align 4
@OCR3AH = common dso_local global i32 0, align 4
@OCR3AL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_timer_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @backlight_timer_init.backlight_timer_is_init, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %22

5:                                                ; preds = %0
  store i32 1, i32* @backlight_timer_init.backlight_timer_is_init, align 4
  %6 = load i32, i32* @WGM32, align 4
  %7 = call i32 @_BV(i32 %6)
  %8 = load i32, i32* @CS32, align 4
  %9 = call i32 @_BV(i32 %8)
  %10 = or i32 %7, %9
  %11 = load i32, i32* @CS30, align 4
  %12 = call i32 @_BV(i32 %11)
  %13 = or i32 %10, %12
  store i32 %13, i32* @TCCR3B, align 4
  %14 = load i32, i32* @SREG, align 4
  store i32 %14, i32* %1, align 4
  %15 = call i32 (...) @cli()
  %16 = load i32, i32* @TIMER3_TOP, align 4
  %17 = ashr i32 %16, 8
  %18 = and i32 %17, 255
  store i32 %18, i32* @OCR3AH, align 4
  %19 = load i32, i32* @TIMER3_TOP, align 4
  %20 = and i32 %19, 255
  store i32 %20, i32* @OCR3AL, align 4
  %21 = load i32, i32* %1, align 4
  store i32 %21, i32* @SREG, align 4
  br label %22

22:                                               ; preds = %5, %4
  ret void
}

declare dso_local i32 @_BV(i32) #1

declare dso_local i32 @cli(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
