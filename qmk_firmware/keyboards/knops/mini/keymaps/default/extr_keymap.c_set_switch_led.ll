; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/knops/mini/keymaps/default/extr_keymap.c_set_switch_led.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/knops/mini/keymaps/default/extr_keymap.c_set_switch_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORTD = common dso_local global i32 0, align 4
@PINB = common dso_local global i32 0, align 4
@PORTC = common dso_local global i32 0, align 4
@PORTE = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_switch_led(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %35 [
    i32 1, label %9
    i32 2, label %12
    i32 3, label %23
    i32 4, label %26
    i32 5, label %29
    i32 6, label %32
  ]

9:                                                ; preds = %7
  %10 = load i32, i32* @PORTD, align 4
  %11 = or i32 %10, 128
  store i32 %11, i32* @PORTD, align 4
  br label %35

12:                                               ; preds = %7
  %13 = load i32, i32* @PINB, align 4
  %14 = and i32 %13, 128
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* @PORTC, align 4
  %18 = or i32 %17, 64
  store i32 %18, i32* @PORTC, align 4
  br label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @PORTC, align 4
  %21 = or i32 %20, 128
  store i32 %21, i32* @PORTC, align 4
  br label %22

22:                                               ; preds = %19, %16
  br label %35

23:                                               ; preds = %7
  %24 = load i32, i32* @PORTD, align 4
  %25 = or i32 %24, 16
  store i32 %25, i32* @PORTD, align 4
  br label %35

26:                                               ; preds = %7
  %27 = load i32, i32* @PORTE, align 4
  %28 = or i32 %27, 64
  store i32 %28, i32* @PORTE, align 4
  br label %35

29:                                               ; preds = %7
  %30 = load i32, i32* @PORTB, align 4
  %31 = or i32 %30, 16
  store i32 %31, i32* @PORTB, align 4
  br label %35

32:                                               ; preds = %7
  %33 = load i32, i32* @PORTD, align 4
  %34 = or i32 %33, 64
  store i32 %34, i32* @PORTD, align 4
  br label %35

35:                                               ; preds = %7, %32, %29, %26, %23, %22, %9
  br label %65

36:                                               ; preds = %2
  %37 = load i32, i32* %3, align 4
  switch i32 %37, label %64 [
    i32 1, label %38
    i32 2, label %41
    i32 3, label %52
    i32 4, label %55
    i32 5, label %58
    i32 6, label %61
  ]

38:                                               ; preds = %36
  %39 = load i32, i32* @PORTD, align 4
  %40 = and i32 %39, -129
  store i32 %40, i32* @PORTD, align 4
  br label %64

41:                                               ; preds = %36
  %42 = load i32, i32* @PINB, align 4
  %43 = and i32 %42, 128
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @PORTC, align 4
  %47 = and i32 %46, -65
  store i32 %47, i32* @PORTC, align 4
  br label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @PORTC, align 4
  %50 = and i32 %49, -129
  store i32 %50, i32* @PORTC, align 4
  br label %51

51:                                               ; preds = %48, %45
  br label %64

52:                                               ; preds = %36
  %53 = load i32, i32* @PORTD, align 4
  %54 = and i32 %53, -17
  store i32 %54, i32* @PORTD, align 4
  br label %64

55:                                               ; preds = %36
  %56 = load i32, i32* @PORTE, align 4
  %57 = and i32 %56, -65
  store i32 %57, i32* @PORTE, align 4
  br label %64

58:                                               ; preds = %36
  %59 = load i32, i32* @PORTB, align 4
  %60 = and i32 %59, -17
  store i32 %60, i32* @PORTB, align 4
  br label %64

61:                                               ; preds = %36
  %62 = load i32, i32* @PORTD, align 4
  %63 = and i32 %62, -65
  store i32 %63, i32* @PORTD, align 4
  br label %64

64:                                               ; preds = %36, %61, %58, %55, %52, %51, %38
  br label %65

65:                                               ; preds = %64, %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
