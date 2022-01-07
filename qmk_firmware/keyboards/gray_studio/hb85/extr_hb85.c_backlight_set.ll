; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/gray_studio/hb85/extr_hb85.c_backlight_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/gray_studio/hb85/extr_hb85.c_backlight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D0 = common dso_local global i32 0, align 4
@D1 = common dso_local global i32 0, align 4
@D4 = common dso_local global i32 0, align 4
@D6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_set(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i32, i32* @D0, align 4
  %7 = call i32 @writePinLow(i32 %6)
  %8 = load i32, i32* @D1, align 4
  %9 = call i32 @writePinLow(i32 %8)
  %10 = load i32, i32* @D4, align 4
  %11 = call i32 @writePinLow(i32 %10)
  %12 = load i32, i32* @D6, align 4
  %13 = call i32 @writePinLow(i32 %12)
  br label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @D0, align 4
  %16 = call i32 @writePinHigh(i32 %15)
  %17 = load i32, i32* @D1, align 4
  %18 = call i32 @writePinHigh(i32 %17)
  %19 = load i32, i32* @D4, align 4
  %20 = call i32 @writePinHigh(i32 %19)
  %21 = load i32, i32* @D6, align 4
  %22 = call i32 @writePinHigh(i32 %21)
  br label %23

23:                                               ; preds = %14, %5
  ret void
}

declare dso_local i32 @writePinLow(i32) #1

declare dso_local i32 @writePinHigh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
