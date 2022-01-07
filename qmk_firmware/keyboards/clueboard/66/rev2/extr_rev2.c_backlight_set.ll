; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/rev2/extr_rev2.c_backlight_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/clueboard/66/rev2/extr_rev2.c_backlight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PORTD = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_set(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load i32, i32* @PORTD, align 4
  %7 = or i32 %6, 64
  store i32 %7, i32* @PORTD, align 4
  %8 = load i32, i32* @PORTB, align 4
  %9 = or i32 %8, 128
  store i32 %9, i32* @PORTB, align 4
  %10 = load i32, i32* @PORTD, align 4
  %11 = or i32 %10, 16
  store i32 %11, i32* @PORTD, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load i32, i32* @PORTD, align 4
  %14 = and i32 %13, -65
  store i32 %14, i32* @PORTD, align 4
  %15 = load i32, i32* @PORTB, align 4
  %16 = and i32 %15, -129
  store i32 %16, i32* @PORTB, align 4
  %17 = load i32, i32* @PORTD, align 4
  %18 = and i32 %17, -17
  store i32 %18, i32* @PORTD, align 4
  br label %19

19:                                               ; preds = %12, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
