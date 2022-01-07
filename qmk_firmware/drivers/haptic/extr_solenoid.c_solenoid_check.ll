; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/haptic/extr_solenoid.c_solenoid_check.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/haptic/extr_solenoid.c_solenoid_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@solenoid_on = common dso_local global i32 0, align 4
@solenoid_start = common dso_local global i32 0, align 4
@solenoid_dwell = common dso_local global i32 0, align 4
@haptic_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SOLENOID_MIN_DWELL = common dso_local global i32 0, align 4
@solenoid_buzzing = common dso_local global i32 0, align 4
@SOLENOID_PIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solenoid_check() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @solenoid_on, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %37

5:                                                ; preds = %0
  %6 = load i32, i32* @solenoid_start, align 4
  %7 = call i32 @timer_elapsed(i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @solenoid_dwell, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = call i32 (...) @solenoid_stop()
  br label %37

13:                                               ; preds = %5
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @haptic_config, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @SOLENOID_MIN_DWELL, align 4
  %19 = sdiv i32 %17, %18
  %20 = srem i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i32, i32* @solenoid_buzzing, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  store i32 1, i32* @solenoid_buzzing, align 4
  %26 = load i32, i32* @SOLENOID_PIN, align 4
  %27 = call i32 @writePinHigh(i32 %26)
  br label %28

28:                                               ; preds = %25, %22
  br label %36

29:                                               ; preds = %16
  %30 = load i32, i32* @solenoid_buzzing, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  store i32 0, i32* @solenoid_buzzing, align 4
  %33 = load i32, i32* @SOLENOID_PIN, align 4
  %34 = call i32 @writePinLow(i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %28
  br label %37

37:                                               ; preds = %4, %11, %36, %13
  ret void
}

declare dso_local i32 @timer_elapsed(i32) #1

declare dso_local i32 @solenoid_stop(...) #1

declare dso_local i32 @writePinHigh(i32) #1

declare dso_local i32 @writePinLow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
