; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_battery.c_battery_status.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/hhkb/rn42/extr_battery.c_battery_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USBSTA = common dso_local global i32 0, align 4
@VBUS = common dso_local global i32 0, align 4
@CHARGING = common dso_local global i32 0, align 4
@FULL_CHARGED = common dso_local global i32 0, align 4
@LOW_VOLTAGE = common dso_local global i32 0, align 4
@DISCHARGING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @battery_status() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @USBSTA, align 4
  %3 = load i32, i32* @VBUS, align 4
  %4 = shl i32 1, %3
  %5 = and i32 %2, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = call i64 (...) @battery_charging()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = load i32, i32* @CHARGING, align 4
  br label %14

12:                                               ; preds = %7
  %13 = load i32, i32* @FULL_CHARGED, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %1, align 4
  br label %25

16:                                               ; preds = %0
  %17 = call i64 (...) @low_voltage()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @LOW_VOLTAGE, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @DISCHARGING, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %23, %14
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i64 @battery_charging(...) #1

declare dso_local i64 @low_voltage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
