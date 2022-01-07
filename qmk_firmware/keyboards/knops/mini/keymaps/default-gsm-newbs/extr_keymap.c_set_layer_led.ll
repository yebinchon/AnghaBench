; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/knops/mini/keymaps/default-gsm-newbs/extr_keymap.c_set_layer_led.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/knops/mini/keymaps/default-gsm-newbs/extr_keymap.c_set_layer_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORTD = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_layer_led(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @PORTD, align 4
  %4 = or i32 %3, 32
  store i32 %4, i32* @PORTD, align 4
  %5 = load i32, i32* @PORTB, align 4
  %6 = and i32 %5, -65
  store i32 %6, i32* @PORTB, align 4
  %7 = load i32, i32* @PORTB, align 4
  %8 = or i32 %7, 1
  store i32 %8, i32* @PORTB, align 4
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %19 [
    i32 0, label %10
    i32 1, label %13
    i32 2, label %16
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @PORTD, align 4
  %12 = and i32 %11, -33
  store i32 %12, i32* @PORTD, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @PORTB, align 4
  %15 = or i32 %14, 64
  store i32 %15, i32* @PORTB, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @PORTB, align 4
  %18 = and i32 %17, -2
  store i32 %18, i32* @PORTB, align 4
  br label %19

19:                                               ; preds = %1, %16, %13, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
