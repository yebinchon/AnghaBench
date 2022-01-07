; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_perform_idle_server_maintenance_heartbeat.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_process_ctl.c_fpm_pctl_perform_idle_server_maintenance_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpm_event_s = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.timeval = type { i32 }

@fpm_pctl_perform_idle_server_maintenance_heartbeat.heartbeat = internal global %struct.fpm_event_s zeroinitializer, align 4
@fpm_globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FPM_EV_TIMEOUT = common dso_local global i16 0, align 2
@FPM_EV_PERSIST = common dso_local global i32 0, align 4
@FPM_IDLE_SERVER_MAINTENANCE_HEARTBEAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpm_pctl_perform_idle_server_maintenance_heartbeat(%struct.fpm_event_s* %0, i16 signext %1, i8* %2) #0 {
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
  br label %34

12:                                               ; preds = %3
  %13 = load i16, i16* %5, align 2
  %14 = sext i16 %13 to i32
  %15 = load i16, i16* @FPM_EV_TIMEOUT, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = call i32 @fpm_clock_get(%struct.timeval* %7)
  %20 = call i64 (...) @fpm_pctl_can_spawn_children()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = call i32 @fpm_pctl_perform_idle_server_maintenance(%struct.timeval* %7)
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 1), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %34

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %18
  br label %34

29:                                               ; preds = %12
  %30 = load i32, i32* @FPM_EV_PERSIST, align 4
  %31 = call i32 @fpm_event_set_timer(%struct.fpm_event_s* @fpm_pctl_perform_idle_server_maintenance_heartbeat.heartbeat, i32 %30, void (%struct.fpm_event_s*, i16, i8*)* @fpm_pctl_perform_idle_server_maintenance_heartbeat, i32* null)
  %32 = load i32, i32* @FPM_IDLE_SERVER_MAINTENANCE_HEARTBEAT, align 4
  %33 = call i32 @fpm_event_add(%struct.fpm_event_s* @fpm_pctl_perform_idle_server_maintenance_heartbeat.heartbeat, i32 %32)
  br label %34

34:                                               ; preds = %29, %28, %26, %11
  ret void
}

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @fpm_clock_get(%struct.timeval*) #1

declare dso_local i64 @fpm_pctl_can_spawn_children(...) #1

declare dso_local i32 @fpm_pctl_perform_idle_server_maintenance(%struct.timeval*) #1

declare dso_local i32 @fpm_event_set_timer(%struct.fpm_event_s*, i32, void (%struct.fpm_event_s*, i16, i8*)*, i32*) #1

declare dso_local i32 @fpm_event_add(%struct.fpm_event_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
