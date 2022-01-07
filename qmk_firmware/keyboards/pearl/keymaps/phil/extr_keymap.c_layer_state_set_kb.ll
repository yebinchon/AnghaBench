; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/pearl/keymaps/phil/extr_keymap.c_layer_state_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/pearl/keymaps/phil/extr_keymap.c_layer_state_set_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QWERTY = common dso_local global i32 0, align 4
@PD0 = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@WIN = common dso_local global i32 0, align 4
@PD1 = common dso_local global i32 0, align 4
@LIGHT = common dso_local global i32 0, align 4
@PD6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_kb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @QWERTY, align 4
  %5 = shl i32 1, %4
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @PD0, align 4
  %10 = shl i32 1, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* @PORTD, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* @PORTD, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @PD0, align 4
  %16 = shl i32 1, %15
  %17 = load i32, i32* @PORTD, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* @PORTD, align 4
  br label %19

19:                                               ; preds = %14, %8
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @WIN, align 4
  %22 = shl i32 1, %21
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @PD1, align 4
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* @PORTD, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* @PORTD, align 4
  br label %36

31:                                               ; preds = %19
  %32 = load i32, i32* @PD1, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* @PORTD, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @PORTD, align 4
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @LIGHT, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* @PD6, align 4
  %44 = shl i32 1, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* @PORTD, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* @PORTD, align 4
  br label %53

48:                                               ; preds = %36
  %49 = load i32, i32* @PD6, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* @PORTD, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* @PORTD, align 4
  br label %53

53:                                               ; preds = %48, %42
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
