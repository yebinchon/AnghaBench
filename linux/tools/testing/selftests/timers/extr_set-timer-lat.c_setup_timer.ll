; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_set-timer-lat.c_setup_timer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_set-timer-lat.c_setup_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.sigevent = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.itimerspec = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, i64 }

@SIGEV_SIGNAL = common dso_local global i32 0, align 4
@SIGRTMAX = common dso_local global i32 0, align 4
@max_latency_ns = common dso_local global i64 0, align 8
@alarmcount = common dso_local global i64 0, align 8
@timer_fired_early = common dso_local global i64 0, align 8
@CLOCK_REALTIME_ALARM = common dso_local global i32 0, align 4
@CLOCK_BOOTTIME_ALARM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"%-22s %s missing CAP_WAKE_ALARM?    : [UNSUPPORTED]\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ABSTIME\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"RELTIME\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"%s - timer_create() failed\0A\00", align 1
@start_time = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@TIMER_SECS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"%s - timer_settime() failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_timer(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sigevent, align 8
  %11 = alloca %struct.itimerspec, align 8
  %12 = alloca %struct.itimerspec, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = call i32 @memset(%struct.sigevent* %10, i32 0, i32 16)
  %15 = load i32, i32* @SIGEV_SIGNAL, align 4
  %16 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %10, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @SIGRTMAX, align 4
  %18 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %10, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %10, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  store i64 0, i64* @max_latency_ns, align 8
  store i64 0, i64* @alarmcount, align 8
  store i64 0, i64* @timer_fired_early, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @timer_create(i32 %21, %struct.sigevent* %10, i32* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @CLOCK_REALTIME_ALARM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @CLOCK_BOOTTIME_ALARM, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %6, align 4
  %36 = call i8* @clockstring(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %41 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %40)
  store i32 1, i32* %5, align 4
  br label %82

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = call i8* @clockstring(i32 %43)
  %45 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  store i32 -1, i32* %5, align 4
  br label %82

46:                                               ; preds = %4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @clock_gettime(i32 %47, %struct.TYPE_7__* @start_time)
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %11, i32 0, i32 1
  %53 = bitcast %struct.TYPE_7__* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 bitcast (%struct.TYPE_7__* @start_time to i8*), i64 16, i1 false)
  %54 = load i64, i64* @TIMER_SECS, align 8
  %55 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %11, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  br label %65

59:                                               ; preds = %46
  %60 = load i64, i64* @TIMER_SECS, align 8
  %61 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %11, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %11, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %59, %51
  %66 = load i32, i32* %8, align 4
  %67 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %11, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %11, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @timer_settime(i32 %72, i32 %73, %struct.itimerspec* %11, %struct.itimerspec* %12)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %65
  %78 = load i32, i32* %6, align 4
  %79 = call i8* @clockstring(i32 %78)
  %80 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  store i32 -1, i32* %5, align 4
  br label %82

81:                                               ; preds = %65
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %77, %42, %34
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @memset(%struct.sigevent*, i32, i32) #1

declare dso_local i32 @timer_create(i32, %struct.sigevent*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @clockstring(i32) #1

declare dso_local i32 @clock_gettime(i32, %struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timer_settime(i32, i32, %struct.itimerspec*, %struct.itimerspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
