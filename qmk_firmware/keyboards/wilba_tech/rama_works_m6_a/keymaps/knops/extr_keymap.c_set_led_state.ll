; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/rama_works_m6_a/keymaps/knops/extr_keymap.c_set_led_state.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/wilba_tech/rama_works_m6_a/keymaps/knops/extr_keymap.c_set_led_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORTD = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@PORTF = common dso_local global i32 0, align 4
@PORTC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_led_state(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %27 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %15
    i32 3, label %18
    i32 4, label %21
    i32 5, label %24
  ]

9:                                                ; preds = %7
  %10 = load i32, i32* @PORTD, align 4
  %11 = or i32 %10, 64
  store i32 %11, i32* @PORTD, align 4
  br label %27

12:                                               ; preds = %7
  %13 = load i32, i32* @PORTB, align 4
  %14 = or i32 %13, 64
  store i32 %14, i32* @PORTB, align 4
  br label %27

15:                                               ; preds = %7
  %16 = load i32, i32* @PORTF, align 4
  %17 = or i32 %16, 32
  store i32 %17, i32* @PORTF, align 4
  br label %27

18:                                               ; preds = %7
  %19 = load i32, i32* @PORTB, align 4
  %20 = or i32 %19, 16
  store i32 %20, i32* @PORTB, align 4
  br label %27

21:                                               ; preds = %7
  %22 = load i32, i32* @PORTC, align 4
  %23 = or i32 %22, 128
  store i32 %23, i32* @PORTC, align 4
  br label %27

24:                                               ; preds = %7
  %25 = load i32, i32* @PORTF, align 4
  %26 = or i32 %25, 128
  store i32 %26, i32* @PORTF, align 4
  br label %27

27:                                               ; preds = %7, %24, %21, %18, %15, %12, %9
  br label %49

28:                                               ; preds = %2
  %29 = load i32, i32* %3, align 4
  switch i32 %29, label %48 [
    i32 0, label %30
    i32 1, label %33
    i32 2, label %36
    i32 3, label %39
    i32 4, label %42
    i32 5, label %45
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @PORTD, align 4
  %32 = and i32 %31, -65
  store i32 %32, i32* @PORTD, align 4
  br label %48

33:                                               ; preds = %28
  %34 = load i32, i32* @PORTB, align 4
  %35 = and i32 %34, -65
  store i32 %35, i32* @PORTB, align 4
  br label %48

36:                                               ; preds = %28
  %37 = load i32, i32* @PORTF, align 4
  %38 = and i32 %37, -33
  store i32 %38, i32* @PORTF, align 4
  br label %48

39:                                               ; preds = %28
  %40 = load i32, i32* @PORTB, align 4
  %41 = and i32 %40, -17
  store i32 %41, i32* @PORTB, align 4
  br label %48

42:                                               ; preds = %28
  %43 = load i32, i32* @PORTC, align 4
  %44 = and i32 %43, -129
  store i32 %44, i32* @PORTC, align 4
  br label %48

45:                                               ; preds = %28
  %46 = load i32, i32* @PORTF, align 4
  %47 = and i32 %46, -129
  store i32 %47, i32* @PORTF, align 4
  br label %48

48:                                               ; preds = %28, %45, %42, %39, %36, %33, %30
  br label %49

49:                                               ; preds = %48, %27
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
