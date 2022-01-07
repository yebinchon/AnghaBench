; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_heartbeat.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_event_s = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.timeval = type { i32 }

@fpm_pctl_heartbeat.heartbeat = internal global %struct.fpm_event_s zeroinitializer, align 4
@fpm_globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FPM_EV_TIMEOUT = common dso_local global i16 0, align 2
@FPM_PCTL_MIN_HEARTBEAT = common dso_local global i32 0, align 4
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"heartbeat have been set up with a timeout of %dms\00", align 1
@FPM_EV_PERSIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_pctl_heartbeat(%struct.fpm_event_s* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.fpm_event_s*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval, align 4
  store %struct.fpm_event_s* %0, %struct.fpm_event_s** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 8
  %9 = call i64 (...) @getpid()
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %32

12:                                               ; preds = %3
  %13 = load i16, i16* %5, align 2
  %14 = sext i16 %13 to i32
  %15 = load i16, i16* @FPM_EV_TIMEOUT, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = call i32 @fpm_clock_get(%struct.timeval* %7)
  %20 = call i32 @fpm_pctl_check_request_timeout(%struct.timeval* %7)
  br label %32

21:                                               ; preds = %12
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 1), align 8
  %23 = load i32, i32* @FPM_PCTL_MIN_HEARTBEAT, align 4
  %24 = call i32 @MAX(i32 %22, i32 %23)
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 1), align 8
  %25 = load i32, i32* @ZLOG_DEBUG, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 1), align 8
  %27 = call i32 @zlog(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @FPM_EV_PERSIST, align 4
  %29 = call i32 @fpm_event_set_timer(%struct.fpm_event_s* @fpm_pctl_heartbeat.heartbeat, i32 %28, void (%struct.fpm_event_s*, i16, i8*)* @fpm_pctl_heartbeat, i32* null)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 1), align 8
  %31 = call i32 @fpm_event_add(%struct.fpm_event_s* @fpm_pctl_heartbeat.heartbeat, i32 %30)
  br label %32

32:                                               ; preds = %21, %18, %11
  ret void
}

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @fpm_clock_get(%struct.timeval*) #1

declare dso_local i32 @fpm_pctl_check_request_timeout(%struct.timeval*) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @zlog(i32, i8*, i32) #1

declare dso_local i32 @fpm_event_set_timer(%struct.fpm_event_s*, i32, void (%struct.fpm_event_s*, i16, i8*)*, i32*) #1

declare dso_local i32 @fpm_event_add(%struct.fpm_event_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
