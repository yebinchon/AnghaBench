; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_systemd.c_fpm_systemd_heartbeat.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_systemd.c_fpm_systemd_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_event_s = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@fpm_systemd_heartbeat.heartbeat = internal global %struct.fpm_event_s zeroinitializer, align 4
@fpm_globals = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@FPM_EV_TIMEOUT = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [55 x i8] c"READY=1\0ASTATUS=Ready to handle connections\0AMAINPID=%lu\00", align 1
@ZLOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to notify start to systemd\00", align 1
@ZLOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"have notify start to systemd\00", align 1
@fpm_global_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@FPM_EV_PERSIST = common dso_local global i32 0, align 4
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"systemd monitor interval set to %dms\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"systemd monitor disabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_systemd_heartbeat(%struct.fpm_event_s* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca %struct.fpm_event_s*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  store %struct.fpm_event_s* %0, %struct.fpm_event_s** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fpm_globals, i32 0, i32 0), align 8
  %8 = call i64 (...) @getpid()
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %43

11:                                               ; preds = %3
  %12 = load i16, i16* %5, align 2
  %13 = sext i16 %12 to i32
  %14 = load i16, i16* @FPM_EV_TIMEOUT, align 2
  %15 = sext i16 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 (...) @fpm_systemd()
  br label %43

19:                                               ; preds = %11
  %20 = call i64 (...) @getpid()
  %21 = call i64 @sd_notifyf(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = icmp sgt i64 0, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @ZLOG_WARNING, align 4
  %25 = call i32 (i32, i8*, ...) @zlog(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @ZLOG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @zlog(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* @FPM_EV_PERSIST, align 4
  %34 = call i32 @fpm_event_set_timer(%struct.fpm_event_s* @fpm_systemd_heartbeat.heartbeat, i32 %33, void (%struct.fpm_event_s*, i16, i8*)* @fpm_systemd_heartbeat, i32* null)
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 8
  %36 = call i32 @fpm_event_add(%struct.fpm_event_s* @fpm_systemd_heartbeat.heartbeat, i64 %35)
  %37 = load i32, i32* @ZLOG_NOTICE, align 4
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fpm_global_config, i32 0, i32 0), align 8
  %39 = call i32 (i32, i8*, ...) @zlog(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  br label %43

40:                                               ; preds = %29
  %41 = load i32, i32* @ZLOG_NOTICE, align 4
  %42 = call i32 (i32, i8*, ...) @zlog(i32 %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %10, %17, %40, %32
  ret void
}

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @fpm_systemd(...) #1

declare dso_local i64 @sd_notifyf(i32, i8*, i64) #1

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i32 @fpm_event_set_timer(%struct.fpm_event_s*, i32, void (%struct.fpm_event_s*, i16, i8*)*, i32*) #1

declare dso_local i32 @fpm_event_add(%struct.fpm_event_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
