; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_cron_handle_tmr.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_cron.c_cron_handle_tmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_timeval = type { i64, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i64 }

@cron_timer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cron_handle_tmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cron_handle_tmr() #0 {
  %1 = alloca %struct.rtc_timeval, align 8
  %2 = alloca i64, align 8
  %3 = alloca %struct.tm, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @rtctime_gettimeofday(%struct.rtc_timeval* %1)
  %6 = getelementptr inbounds %struct.rtc_timeval, %struct.rtc_timeval* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @os_timer_arm(i32* @cron_timer, i32 1000, i32 0)
  br label %47

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.rtc_timeval, %struct.rtc_timeval* %1, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %2, align 8
  %14 = call i32 @gmtime_r(i64* %2, %struct.tm* %3)
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %16, 1000
  %18 = sub nsw i32 60000, %17
  %19 = getelementptr inbounds %struct.rtc_timeval, %struct.rtc_timeval* %1, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 1000
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %4, align 4
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 59
  br i1 %25, label %26, label %32

26:                                               ; preds = %11
  %27 = load i64, i64* %2, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 60000
  store i32 %30, i32* %4, align 4
  %31 = call i32 @gmtime_r(i64* %2, %struct.tm* %3)
  br label %32

32:                                               ; preds = %26, %11
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @os_timer_arm(i32* @cron_timer, i32 %33, i32 0)
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cron_handle_time(i64 %37, i32 %39, i32 %41, i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %32, %9
  ret void
}

declare dso_local i32 @rtctime_gettimeofday(%struct.rtc_timeval*) #1

declare dso_local i32 @os_timer_arm(i32*, i32, i32) #1

declare dso_local i32 @gmtime_r(i64*, %struct.tm*) #1

declare dso_local i32 @cron_handle_time(i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
