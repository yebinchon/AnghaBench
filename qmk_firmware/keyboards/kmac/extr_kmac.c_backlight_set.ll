; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/kmac/extr_kmac.c_backlight_set.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/kmac/extr_kmac.c_backlight_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_ROW_MASK = common dso_local global i32 0, align 4
@B1 = common dso_local global i32 0, align 4
@WASD_MASK = common dso_local global i32 0, align 4
@B2 = common dso_local global i32 0, align 4
@B3 = common dso_local global i32 0, align 4
@B4 = common dso_local global i32 0, align 4
@D7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @backlight_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @F_ROW_MASK, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @B1, align 4
  %9 = call i32 @writePinHigh(i32 %8)
  br label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @B1, align 4
  %12 = call i32 @writePinLow(i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @WASD_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i32, i32* @B2, align 4
  %20 = call i32 @writePinLow(i32 %19)
  %21 = load i32, i32* @B3, align 4
  %22 = call i32 @writePinLow(i32 %21)
  %23 = load i32, i32* @B4, align 4
  %24 = call i32 @writePinLow(i32 %23)
  %25 = load i32, i32* @D7, align 4
  %26 = call i32 @writePinLow(i32 %25)
  br label %36

27:                                               ; preds = %13
  %28 = load i32, i32* @B2, align 4
  %29 = call i32 @writePinHigh(i32 %28)
  %30 = load i32, i32* @B3, align 4
  %31 = call i32 @writePinHigh(i32 %30)
  %32 = load i32, i32* @B4, align 4
  %33 = call i32 @writePinHigh(i32 %32)
  %34 = load i32, i32* @D7, align 4
  %35 = call i32 @writePinHigh(i32 %34)
  br label %36

36:                                               ; preds = %27, %18
  ret void
}

declare dso_local i32 @writePinHigh(i32) #1

declare dso_local i32 @writePinLow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
