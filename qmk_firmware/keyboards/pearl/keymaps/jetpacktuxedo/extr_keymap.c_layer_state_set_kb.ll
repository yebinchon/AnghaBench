; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/pearl/keymaps/jetpacktuxedo/extr_keymap.c_layer_state_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/pearl/keymaps/jetpacktuxedo/extr_keymap.c_layer_state_set_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PD0 = common dso_local global i32 0, align 4
@PORTD = common dso_local global i32 0, align 4
@PD1 = common dso_local global i32 0, align 4
@PD6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @layer_state_set_kb(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 2
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* @PD0, align 4
  %8 = shl i32 1, %7
  %9 = load i32, i32* @PORTD, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* @PORTD, align 4
  br label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @PD0, align 4
  %13 = shl i32 1, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* @PORTD, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* @PORTD, align 4
  br label %17

17:                                               ; preds = %11, %6
  %18 = load i32, i32* %2, align 4
  %19 = and i32 %18, 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* @PD1, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* @PORTD, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* @PORTD, align 4
  br label %32

26:                                               ; preds = %17
  %27 = load i32, i32* @PD1, align 4
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @PORTD, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* @PORTD, align 4
  br label %32

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* @PD6, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* @PORTD, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* @PORTD, align 4
  br label %47

41:                                               ; preds = %32
  %42 = load i32, i32* @PD6, align 4
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* @PORTD, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* @PORTD, align 4
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
