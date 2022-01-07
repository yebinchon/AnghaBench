; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_alarmtimer-suspend.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_alarmtimer-suspend.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.itimerspec = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.sigevent = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.sigaction = type { i32, i64, i32 }

@SIGRTMAX = common dso_local global i32 0, align 4
@sigalarm = common dso_local global i32 0, align 4
@SIGEV_SIGNAL = common dso_local global i32 0, align 4
@CLOCK_REALTIME_ALARM = common dso_local global i64 0, align 8
@alarm_clock_id = common dso_local global i64 0, align 8
@CLOCK_BOOTTIME_ALARM = common dso_local global i64 0, align 8
@alarmcount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"timer_create failed, %s unsupported?\0A\00", align 1
@start_time = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Start time (%s): %ld:%ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Setting alarm for every %i seconds\0A\00", align 1
@SUSPEND_SECS = common dso_local global i32 0, align 4
@TIMER_ABSTIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Starting suspend loops\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"echo mem > /sys/power/state\00", align 1
@final_ret = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.itimerspec, align 8
  %4 = alloca %struct.itimerspec, align 8
  %5 = alloca %struct.sigevent, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = load i32, i32* @SIGRTMAX, align 4
  store i32 %9, i32* %7, align 4
  %10 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 2
  %11 = call i32 @sigfillset(i32* %10)
  %12 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* @sigalarm, align 4
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @sigaction(i32 %15, %struct.sigaction* %6, i32* null)
  %17 = call i32 @memset(%struct.sigevent* %5, i32 0, i32 24)
  %18 = load i32, i32* @SIGEV_SIGNAL, align 4
  %19 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %5, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %5, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %5, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* @CLOCK_REALTIME_ALARM, align 8
  store i64 %24, i64* @alarm_clock_id, align 8
  br label %25

25:                                               ; preds = %82, %0
  %26 = load i64, i64* @alarm_clock_id, align 8
  %27 = load i64, i64* @CLOCK_BOOTTIME_ALARM, align 8
  %28 = icmp sle i64 %26, %27
  br i1 %28, label %29, label %85

29:                                               ; preds = %25
  store i32 0, i32* @alarmcount, align 4
  %30 = load i64, i64* @alarm_clock_id, align 8
  %31 = call i32 @timer_create(i64 %30, %struct.sigevent* %5, i32* %2)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i64, i64* @alarm_clock_id, align 8
  %35 = call i8* @clockstring(i64 %34)
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %85

37:                                               ; preds = %29
  %38 = load i64, i64* @alarm_clock_id, align 8
  %39 = call i32 @clock_gettime(i64 %38, %struct.TYPE_7__* @start_time)
  %40 = load i64, i64* @alarm_clock_id, align 8
  %41 = call i8* @clockstring(i64 %40)
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @start_time, i32 0, i32 0), align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @start_time, i32 0, i32 1), align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %42, i32 %43)
  %45 = load i32, i32* @SUSPEND_SECS, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i32 0, i32 1
  %48 = bitcast %struct.TYPE_7__* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 4 bitcast (%struct.TYPE_7__* @start_time to i8*), i64 8, i1 false)
  %49 = load i32, i32* @SUSPEND_SECS, align 4
  %50 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* @SUSPEND_SECS, align 4
  %55 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %3, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* @TIMER_ABSTIME, align 4
  %61 = call i32 @timer_settime(i32 %59, i32 %60, %struct.itimerspec* %3, %struct.itimerspec* %4)
  br label %62

62:                                               ; preds = %65, %37
  %63 = load i32, i32* @alarmcount, align 4
  %64 = icmp slt i32 %63, 5
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 @sleep(i32 1)
  br label %62

67:                                               ; preds = %62
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %78, %67
  %70 = load i32, i32* @alarmcount, align 4
  %71 = icmp slt i32 %70, 10
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = call i32 @sleep(i32 3)
  %74 = call i32 @system(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %79

78:                                               ; preds = %72
  br label %69

79:                                               ; preds = %77, %69
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @timer_delete(i32 %80)
  br label %82

82:                                               ; preds = %79
  %83 = load i64, i64* @alarm_clock_id, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* @alarm_clock_id, align 8
  br label %25

85:                                               ; preds = %33, %25
  %86 = load i64, i64* @final_ret, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 (...) @ksft_exit_fail()
  store i32 %89, i32* %1, align 4
  br label %92

90:                                               ; preds = %85
  %91 = call i32 (...) @ksft_exit_pass()
  store i32 %91, i32* %1, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = load i32, i32* %1, align 4
  ret i32 %93
}

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @memset(%struct.sigevent*, i32, i32) #1

declare dso_local i32 @timer_create(i64, %struct.sigevent*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @clockstring(i64) #1

declare dso_local i32 @clock_gettime(i64, %struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timer_settime(i32, i32, %struct.itimerspec*, %struct.itimerspec*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @timer_delete(i32) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
