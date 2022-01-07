; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_dummy_ticks.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_dummy_ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, double, i64 }

@STATUS_PLAYING = common dso_local global i64 0, align 8
@STATUS_DRAINING = common dso_local global i64 0, align 8
@MPV_EVENT_TICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @handle_dummy_ticks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_dummy_ticks(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %3 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %4 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @STATUS_PLAYING, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %10 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @STATUS_DRAINING, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %16 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14, %8
  %20 = call double (...) @mp_time_sec()
  %21 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %22 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %21, i32 0, i32 1
  %23 = load double, double* %22, align 8
  %24 = fsub double %20, %23
  %25 = fcmp ogt double %24, 5.000000e-02
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = call double (...) @mp_time_sec()
  %28 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %29 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %28, i32 0, i32 1
  store double %27, double* %29, align 8
  %30 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %31 = load i32, i32* @MPV_EVENT_TICK, align 4
  %32 = call i32 @mp_notify(%struct.MPContext* %30, i32 %31, i32* null)
  br label %33

33:                                               ; preds = %26, %19
  br label %34

34:                                               ; preds = %33, %14
  ret void
}

declare dso_local double @mp_time_sec(...) #1

declare dso_local i32 @mp_notify(%struct.MPContext*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
