; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/mitosis/keymaps/datagrok/extr_keymap.c_led_set_user.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/mitosis/keymaps/datagrok/extr_keymap.c_led_set_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@layer_state = common dso_local global i32 0, align 4
@default_layer_state = common dso_local global i32 0, align 4
@PORTF = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @led_set_user(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @layer_state, align 4
  %6 = load i32, i32* @default_layer_state, align 4
  %7 = or i32 %5, %6
  %8 = and i32 %7, 96
  %9 = ashr i32 %8, 1
  %10 = load i32, i32* @layer_state, align 4
  %11 = load i32, i32* @default_layer_state, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %12, 16
  %14 = shl i32 %13, 1
  %15 = or i32 %9, %14
  %16 = load i32, i32* @layer_state, align 4
  %17 = load i32, i32* @default_layer_state, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %18, 64
  %20 = ashr i32 %19, 2
  %21 = or i32 %15, %20
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 1
  %24 = shl i32 %23, 5
  %25 = load i32, i32* @layer_state, align 4
  %26 = load i32, i32* @default_layer_state, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %27, 8
  %29 = ashr i32 %28, 2
  %30 = or i32 %24, %29
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @PORTF, align 4
  %32 = load i32, i32* %3, align 4
  %33 = xor i32 %32, -1
  %34 = call i32 @setbits(i32 %31, i32 %33, i32 48)
  %35 = load i32, i32* @PORTD, align 4
  %36 = load i32, i32* %4, align 4
  %37 = xor i32 %36, -1
  %38 = call i32 @setbits(i32 %35, i32 %37, i32 34)
  ret void
}

declare dso_local i32 @setbits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
