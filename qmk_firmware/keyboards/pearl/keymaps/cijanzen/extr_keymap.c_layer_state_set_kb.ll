; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/pearl/keymaps/cijanzen/extr_keymap.c_layer_state_set_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/pearl/keymaps/cijanzen/extr_keymap.c_layer_state_set_kb.c"
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
  br label %93

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, 16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load i32, i32* @PD0, align 4
  %21 = shl i32 1, %20
  %22 = load i32, i32* @PORTD, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* @PORTD, align 4
  %24 = load i32, i32* @PD1, align 4
  %25 = shl i32 1, %24
  %26 = load i32, i32* @PORTD, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* @PORTD, align 4
  %28 = load i32, i32* @PD6, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* @PORTD, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* @PORTD, align 4
  br label %47

32:                                               ; preds = %15
  %33 = load i32, i32* @PD0, align 4
  %34 = shl i32 1, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* @PORTD, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* @PORTD, align 4
  %38 = load i32, i32* @PD1, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* @PORTD, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* @PORTD, align 4
  %42 = load i32, i32* @PD6, align 4
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* @PORTD, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* @PORTD, align 4
  br label %47

47:                                               ; preds = %32, %19
  br label %92

48:                                               ; preds = %11
  %49 = load i32, i32* %2, align 4
  %50 = and i32 %49, 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* @PD6, align 4
  %54 = shl i32 1, %53
  %55 = load i32, i32* @PORTD, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* @PORTD, align 4
  br label %91

57:                                               ; preds = %48
  %58 = load i32, i32* %2, align 4
  %59 = and i32 %58, 16
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load i32, i32* @PD0, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* @PORTD, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* @PORTD, align 4
  %66 = load i32, i32* @PD1, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* @PORTD, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* @PORTD, align 4
  %70 = load i32, i32* @PD6, align 4
  %71 = shl i32 1, %70
  %72 = load i32, i32* @PORTD, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* @PORTD, align 4
  br label %90

74:                                               ; preds = %57
  %75 = load i32, i32* @PD0, align 4
  %76 = shl i32 1, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* @PORTD, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* @PORTD, align 4
  %80 = load i32, i32* @PD1, align 4
  %81 = shl i32 1, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* @PORTD, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* @PORTD, align 4
  %85 = load i32, i32* @PD6, align 4
  %86 = shl i32 1, %85
  %87 = xor i32 %86, -1
  %88 = load i32, i32* @PORTD, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* @PORTD, align 4
  br label %90

90:                                               ; preds = %74, %61
  br label %91

91:                                               ; preds = %90, %52
  br label %92

92:                                               ; preds = %91, %47
  br label %93

93:                                               ; preds = %92, %6
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
