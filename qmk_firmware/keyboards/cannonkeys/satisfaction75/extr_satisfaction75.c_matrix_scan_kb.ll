; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction75.c_matrix_scan_kb.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/cannonkeys/satisfaction75/extr_satisfaction75.c_matrix_scan_kb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RTCD1 = common dso_local global i32 0, align 4
@last_timespec = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@last_minute = common dso_local global i64 0, align 8
@oled_sleeping = common dso_local global i32 0, align 4
@queue_for_send = common dso_local global i32 0, align 4
@DISPLAYOFF = common dso_local global i32 0, align 4
@OLED_OFF = common dso_local global i64 0, align 8
@ScreenOffInterval = common dso_local global i64 0, align 8
@last_flush = common dso_local global i32 0, align 4
@oled_mode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_scan_kb() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @rtcGetTime(i32* @RTCD1, %struct.TYPE_3__* @last_timespec)
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @last_timespec, i32 0, i32 0), align 4
  %4 = sdiv i32 %3, 1000
  %5 = sdiv i32 %4, 60
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @last_minute, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %0
  %11 = load i64, i64* %1, align 8
  store i64 %11, i64* @last_minute, align 8
  %12 = load i32, i32* @oled_sleeping, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 1, i32* @queue_for_send, align 4
  br label %15

15:                                               ; preds = %14, %10
  br label %16

16:                                               ; preds = %15, %0
  ret void
}

declare dso_local i32 @rtcGetTime(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
