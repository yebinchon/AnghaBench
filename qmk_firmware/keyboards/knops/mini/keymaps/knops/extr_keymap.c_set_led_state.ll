; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/knops/mini/keymaps/knops/extr_keymap.c_set_led_state.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/knops/mini/keymaps/knops/extr_keymap.c_set_led_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORTD = common dso_local global i32 0, align 4
@PINB = common dso_local global i32 0, align 4
@PORTC = common dso_local global i32 0, align 4
@PORTE = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_led_state(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %45

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %44 [
    i32 0, label %9
    i32 1, label %12
    i32 2, label %23
    i32 3, label %26
    i32 4, label %29
    i32 5, label %32
    i32 6, label %35
    i32 7, label %38
    i32 8, label %41
  ]

9:                                                ; preds = %7
  %10 = load i32, i32* @PORTD, align 4
  %11 = or i32 %10, 128
  store i32 %11, i32* @PORTD, align 4
  br label %44

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
  br label %44

23:                                               ; preds = %7
  %24 = load i32, i32* @PORTD, align 4
  %25 = or i32 %24, 16
  store i32 %25, i32* @PORTD, align 4
  br label %44

26:                                               ; preds = %7
  %27 = load i32, i32* @PORTE, align 4
  %28 = or i32 %27, 64
  store i32 %28, i32* @PORTE, align 4
  br label %44

29:                                               ; preds = %7
  %30 = load i32, i32* @PORTB, align 4
  %31 = or i32 %30, 16
  store i32 %31, i32* @PORTB, align 4
  br label %44

32:                                               ; preds = %7
  %33 = load i32, i32* @PORTD, align 4
  %34 = or i32 %33, 64
  store i32 %34, i32* @PORTD, align 4
  br label %44

35:                                               ; preds = %7
  %36 = load i32, i32* @PORTD, align 4
  %37 = and i32 %36, -33
  store i32 %37, i32* @PORTD, align 4
  br label %44

38:                                               ; preds = %7
  %39 = load i32, i32* @PORTB, align 4
  %40 = or i32 %39, 64
  store i32 %40, i32* @PORTB, align 4
  br label %44

41:                                               ; preds = %7
  %42 = load i32, i32* @PORTB, align 4
  %43 = and i32 %42, -2
  store i32 %43, i32* @PORTB, align 4
  br label %44

44:                                               ; preds = %7, %41, %38, %35, %32, %29, %26, %23, %22, %9
  br label %83

45:                                               ; preds = %2
  %46 = load i32, i32* %3, align 4
  switch i32 %46, label %82 [
    i32 0, label %47
    i32 1, label %50
    i32 2, label %61
    i32 3, label %64
    i32 4, label %67
    i32 5, label %70
    i32 6, label %73
    i32 7, label %76
    i32 8, label %79
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @PORTD, align 4
  %49 = and i32 %48, -129
  store i32 %49, i32* @PORTD, align 4
  br label %82

50:                                               ; preds = %45
  %51 = load i32, i32* @PINB, align 4
  %52 = and i32 %51, 128
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @PORTC, align 4
  %56 = and i32 %55, -65
  store i32 %56, i32* @PORTC, align 4
  br label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @PORTC, align 4
  %59 = and i32 %58, -129
  store i32 %59, i32* @PORTC, align 4
  br label %60

60:                                               ; preds = %57, %54
  br label %82

61:                                               ; preds = %45
  %62 = load i32, i32* @PORTD, align 4
  %63 = and i32 %62, -17
  store i32 %63, i32* @PORTD, align 4
  br label %82

64:                                               ; preds = %45
  %65 = load i32, i32* @PORTE, align 4
  %66 = and i32 %65, -65
  store i32 %66, i32* @PORTE, align 4
  br label %82

67:                                               ; preds = %45
  %68 = load i32, i32* @PORTB, align 4
  %69 = and i32 %68, -17
  store i32 %69, i32* @PORTB, align 4
  br label %82

70:                                               ; preds = %45
  %71 = load i32, i32* @PORTD, align 4
  %72 = and i32 %71, -65
  store i32 %72, i32* @PORTD, align 4
  br label %82

73:                                               ; preds = %45
  %74 = load i32, i32* @PORTD, align 4
  %75 = or i32 %74, 32
  store i32 %75, i32* @PORTD, align 4
  br label %82

76:                                               ; preds = %45
  %77 = load i32, i32* @PORTB, align 4
  %78 = and i32 %77, -65
  store i32 %78, i32* @PORTB, align 4
  br label %82

79:                                               ; preds = %45
  %80 = load i32, i32* @PORTB, align 4
  %81 = or i32 %80, 1
  store i32 %81, i32* @PORTB, align 4
  br label %82

82:                                               ; preds = %45, %79, %76, %73, %70, %67, %64, %61, %60, %47
  br label %83

83:                                               ; preds = %82, %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
