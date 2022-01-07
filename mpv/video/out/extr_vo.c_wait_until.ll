; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_wait_until.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_wait_until.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_internal* }
%struct.vo_internal = type { i32, i32, i32 }
%struct.timespec = type { i32 }

@VO_EVENT_LIVE_RESIZING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*, i64)* @wait_until to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_until(%struct.vo* %0, i64 %1) #0 {
  %3 = alloca %struct.vo*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vo_internal*, align 8
  %6 = alloca %struct.timespec, align 4
  store %struct.vo* %0, %struct.vo** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.vo*, %struct.vo** %3, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 0
  %9 = load %struct.vo_internal*, %struct.vo_internal** %8, align 8
  store %struct.vo_internal* %9, %struct.vo_internal** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @mp_time_us_to_timespec(i64 %10)
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %14 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %13, i32 0, i32 1
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  br label %16

16:                                               ; preds = %36, %2
  %17 = load i64, i64* %4, align 8
  %18 = call i64 (...) @mp_time_us()
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %22 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VO_EVENT_LIVE_RESIZING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %37

28:                                               ; preds = %20
  %29 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %30 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %29, i32 0, i32 2
  %31 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %32 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %31, i32 0, i32 1
  %33 = call i64 @pthread_cond_timedwait(i32* %30, i32* %32, %struct.timespec* %6)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %37

36:                                               ; preds = %28
  br label %16

37:                                               ; preds = %35, %27, %16
  %38 = load %struct.vo_internal*, %struct.vo_internal** %5, align 8
  %39 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %38, i32 0, i32 1
  %40 = call i32 @pthread_mutex_unlock(i32* %39)
  ret void
}

declare dso_local i32 @mp_time_us_to_timespec(i64) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @mp_time_us(...) #1

declare dso_local i64 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
