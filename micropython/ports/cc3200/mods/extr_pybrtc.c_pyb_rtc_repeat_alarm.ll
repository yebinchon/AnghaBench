; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/mods/extr_pybrtc.c_pyb_rtc_repeat_alarm.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/mods/extr_pybrtc.c_pyb_rtc_repeat_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i64 }

@PYB_RTC_MIN_ALARM_TIME_MS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pyb_rtc_repeat_alarm(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %1
  %14 = call i32 @pyb_rtc_get_time(i32* %4, i64* %6)
  %15 = load i32, i32* %4, align 4
  %16 = mul nsw i32 %15, 1000
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %6, align 8
  %19 = add nsw i64 %17, %18
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 1000
  %24 = sext i32 %23 to i64
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = sub nsw i64 %19, %28
  store i64 %29, i64* %7, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = sub nsw i64 %32, %33
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %13
  %38 = load i64, i64* %8, align 8
  br label %41

39:                                               ; preds = %13
  %40 = load i64, i64* @PYB_RTC_MIN_ALARM_TIME_MS, align 8
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i64 [ %38, %37 ], [ %40, %39 ]
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @pyb_rtc_calc_future_time(i64 %43, i32* %3, i64* %5)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @pyb_rtc_set_alarm(%struct.TYPE_4__* %45, i32 %46, i64 %47)
  br label %49

49:                                               ; preds = %41, %1
  ret void
}

declare dso_local i32 @pyb_rtc_get_time(i32*, i64*) #1

declare dso_local i32 @pyb_rtc_calc_future_time(i64, i32*, i64*) #1

declare dso_local i32 @pyb_rtc_set_alarm(%struct.TYPE_4__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
