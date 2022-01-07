; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_alarmtimer-suspend.c_sigalarm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_alarmtimer-suspend.c_sigalarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }

@alarm_clock_id = common dso_local global i32 0, align 4
@alarmcount = common dso_local global i64 0, align 8
@start_time = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@SUSPEND_SECS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"ALARM(%i): %ld:%ld latency: %lld ns \00", align 1
@UNREASONABLE_LAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"[FAIL]\0A\00", align 1
@final_ret = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigalarm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.timespec, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @alarm_clock_id, align 4
  %6 = call i32 @clock_gettime(i32 %5, %struct.timespec* %4)
  %7 = load i64, i64* @alarmcount, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* @alarmcount, align 8
  %9 = load i32, i32* @start_time, align 4
  %10 = bitcast %struct.timespec* %4 to i64*
  %11 = load i64, i64* %10, align 4
  %12 = call i64 @timespec_sub(i32 %9, i64 %11)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* @NSEC_PER_SEC, align 8
  %14 = load i64, i64* @SUSPEND_SECS, align 8
  %15 = mul nsw i64 %13, %14
  %16 = load i64, i64* @alarmcount, align 8
  %17 = mul nsw i64 %15, %16
  %18 = load i64, i64* %3, align 8
  %19 = sub nsw i64 %18, %17
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* @alarmcount, align 8
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %3, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %22, i32 %24, i64 %25)
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @UNREASONABLE_LAT, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* @final_ret, align 4
  br label %34

32:                                               ; preds = %1
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %30
  ret void
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @timespec_sub(i32, i64) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
