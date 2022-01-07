; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_clock_handler.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_clock_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@__const.clock_handler.t = private unnamed_addr constant %struct.timeval { i32 1, i32 0 }, align 4
@clock_handler.initialized = internal global i32 0, align 4
@clockevent = common dso_local global i32 0, align 4
@stats_state = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@main_base = common dso_local global i32 0, align 4
@process_started = common dso_local global i32 0, align 4
@current_time = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@monotonic = common dso_local global i64 0, align 8
@monotonic_start = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @clock_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clock_handler(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.timeval, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %9 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.timeval* @__const.clock_handler.t to i8*), i64 8, i1 false)
  %10 = load i32, i32* @clock_handler.initialized, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @evtimer_del(i32* @clockevent)
  br label %15

14:                                               ; preds = %3
  store i32 1, i32* @clock_handler.initialized, align 4
  br label %15

15:                                               ; preds = %14, %12
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @stats_state, i32 0, i32 0), align 4
  %17 = call i32 @assoc_start_expand(i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 0), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @settings, i32 0, i32 1), align 4
  %22 = call i32 @authfile_load(i32 %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = call i32 @evtimer_set(i32* @clockevent, void (i32, i16, i8*)* @clock_handler, i32 0)
  %25 = load i32, i32* @main_base, align 4
  %26 = call i32 @event_base_set(i32 %25, i32* @clockevent)
  %27 = call i32 @evtimer_add(i32* @clockevent, %struct.timeval* %7)
  %28 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @process_started, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* @current_time, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @evtimer_del(i32*) #2

declare dso_local i32 @assoc_start_expand(i32) #2

declare dso_local i32 @authfile_load(i32) #2

declare dso_local i32 @evtimer_set(i32*, void (i32, i16, i8*)*, i32) #2

declare dso_local i32 @event_base_set(i32, i32*) #2

declare dso_local i32 @evtimer_add(i32*, %struct.timeval*) #2

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
