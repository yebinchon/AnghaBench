; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_reserve_reply.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_reserve_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_handle = type { i64, i64, i64, i32, i32 }

@MPV_ERROR_EVENT_QUEUE_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpv_handle*)* @reserve_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_reply(%struct.mpv_handle* %0) #0 {
  %2 = alloca %struct.mpv_handle*, align 8
  %3 = alloca i32, align 4
  store %struct.mpv_handle* %0, %struct.mpv_handle** %2, align 8
  %4 = load i32, i32* @MPV_ERROR_EVENT_QUEUE_FULL, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.mpv_handle*, %struct.mpv_handle** %2, align 8
  %6 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %5, i32 0, i32 3
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  %8 = load %struct.mpv_handle*, %struct.mpv_handle** %2, align 8
  %9 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.mpv_handle*, %struct.mpv_handle** %2, align 8
  %12 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load %struct.mpv_handle*, %struct.mpv_handle** %2, align 8
  %16 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.mpv_handle*, %struct.mpv_handle** %2, align 8
  %21 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.mpv_handle*, %struct.mpv_handle** %2, align 8
  %26 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %19, %1
  %30 = load %struct.mpv_handle*, %struct.mpv_handle** %2, align 8
  %31 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %30, i32 0, i32 3
  %32 = call i32 @pthread_mutex_unlock(i32* %31)
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
