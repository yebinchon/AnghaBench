; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/misc/extr_mperror.c_mperror_heartbeat_signal.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/misc/extr_mperror.c_mperror_heartbeat_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64, i64 }

@mperror_heart_beat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MPERROR_HEARTBEAT_OFF_MS = common dso_local global i64 0, align 8
@MICROPY_SYS_LED_PORT = common dso_local global i32 0, align 4
@MICROPY_SYS_LED_PORT_PIN = common dso_local global i32 0, align 4
@MPERROR_HEARTBEAT_ON_MS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mperror_heartbeat_signal() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mperror_heart_beat, i32 0, i32 0), align 8
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mperror_heart_beat, i32 0, i32 0), align 8
  br label %35

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mperror_heart_beat, i32 0, i32 4), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mperror_heart_beat, i32 0, i32 1), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = call i64 (...) @mp_hal_ticks_ms()
  store i64 %11, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mperror_heart_beat, i32 0, i32 2), align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mperror_heart_beat, i32 0, i32 3), align 8
  %13 = sub nsw i64 %11, %12
  %14 = load i64, i64* @MPERROR_HEARTBEAT_OFF_MS, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i32, i32* @MICROPY_SYS_LED_PORT, align 4
  %18 = load i32, i32* @MICROPY_SYS_LED_PORT_PIN, align 4
  %19 = load i32, i32* @MICROPY_SYS_LED_PORT_PIN, align 4
  %20 = call i32 @MAP_GPIOPinWrite(i32 %17, i32 %18, i32 %19)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mperror_heart_beat, i32 0, i32 1), align 4
  br label %21

21:                                               ; preds = %16, %10
  br label %33

22:                                               ; preds = %7
  %23 = call i64 (...) @mp_hal_ticks_ms()
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mperror_heart_beat, i32 0, i32 3), align 8
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mperror_heart_beat, i32 0, i32 2), align 8
  %25 = sub nsw i64 %23, %24
  %26 = load i64, i64* @MPERROR_HEARTBEAT_ON_MS, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @MICROPY_SYS_LED_PORT, align 4
  %30 = load i32, i32* @MICROPY_SYS_LED_PORT_PIN, align 4
  %31 = call i32 @MAP_GPIOPinWrite(i32 %29, i32 %30, i32 0)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mperror_heart_beat, i32 0, i32 1), align 4
  br label %32

32:                                               ; preds = %28, %22
  br label %33

33:                                               ; preds = %32, %21
  br label %34

34:                                               ; preds = %33, %4
  br label %35

35:                                               ; preds = %34, %3
  ret void
}

declare dso_local i64 @mp_hal_ticks_ms(...) #1

declare dso_local i32 @MAP_GPIOPinWrite(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
