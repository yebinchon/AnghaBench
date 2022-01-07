; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodone/extr_ergodone.c_ergodox_led_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodone/extr_ergodone.c_ergodox_led_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PB5 = common dso_local global i32 0, align 4
@PB6 = common dso_local global i32 0, align 4
@PB3 = common dso_local global i32 0, align 4
@DDRB = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@PB0 = common dso_local global i32 0, align 4
@DDRD = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ergodox_led_init() #0 {
  %1 = load i32, i32* @PB5, align 4
  %2 = shl i32 1, %1
  %3 = load i32, i32* @PB6, align 4
  %4 = shl i32 1, %3
  %5 = or i32 %2, %4
  %6 = load i32, i32* @PB3, align 4
  %7 = shl i32 1, %6
  %8 = or i32 %5, %7
  %9 = load i32, i32* @DDRB, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* @DDRB, align 4
  %11 = load i32, i32* @PB5, align 4
  %12 = shl i32 1, %11
  %13 = load i32, i32* @PB6, align 4
  %14 = shl i32 1, %13
  %15 = or i32 %12, %14
  %16 = load i32, i32* @PB3, align 4
  %17 = shl i32 1, %16
  %18 = or i32 %15, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @PORTB, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* @PORTB, align 4
  %22 = load i32, i32* @PB0, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* @DDRB, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* @DDRB, align 4
  %26 = load i32, i32* @PB0, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* @PORTB, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* @PORTB, align 4
  %30 = load i32, i32* @PB5, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* @DDRD, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* @DDRD, align 4
  %34 = load i32, i32* @PB5, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* @PORTD, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* @PORTD, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
