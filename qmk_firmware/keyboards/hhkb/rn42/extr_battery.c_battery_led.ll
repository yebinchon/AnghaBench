; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_battery.c_battery_led.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_battery.c_battery_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LED_TOGGLE = common dso_local global i64 0, align 8
@DDRF = common dso_local global i32 0, align 4
@PINF = common dso_local global i32 0, align 4
@LED_ON = common dso_local global i64 0, align 8
@PORTF = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @battery_led(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @LED_TOGGLE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* @DDRF, align 4
  %8 = or i32 %7, 32
  store i32 %8, i32* @DDRF, align 4
  %9 = load i32, i32* @PINF, align 4
  %10 = or i32 %9, 32
  store i32 %10, i32* @PINF, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @LED_ON, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load i32, i32* @DDRF, align 4
  %17 = or i32 %16, 32
  store i32 %17, i32* @DDRF, align 4
  %18 = load i32, i32* @PORTF, align 4
  %19 = and i32 %18, -33
  store i32 %19, i32* @PORTF, align 4
  br label %35

20:                                               ; preds = %11
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @LED_OFF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @DDRF, align 4
  %26 = or i32 %25, 32
  store i32 %26, i32* @DDRF, align 4
  %27 = load i32, i32* @PORTF, align 4
  %28 = or i32 %27, 32
  store i32 %28, i32* @PORTF, align 4
  br label %34

29:                                               ; preds = %20
  %30 = load i32, i32* @DDRF, align 4
  %31 = and i32 %30, -33
  store i32 %31, i32* @DDRF, align 4
  %32 = load i32, i32* @PORTF, align 4
  %33 = and i32 %32, -33
  store i32 %33, i32* @PORTF, align 4
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %15
  br label %36

36:                                               ; preds = %35, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
