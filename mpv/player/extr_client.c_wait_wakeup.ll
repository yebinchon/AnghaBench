; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_wait_wakeup.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_wait_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpv_handle = type { i32, i32, i32, i32 }
%struct.timespec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpv_handle*, i32)* @wait_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_wakeup(%struct.mpv_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.mpv_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec, align 4
  store %struct.mpv_handle* %0, %struct.mpv_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.mpv_handle*, %struct.mpv_handle** %3, align 8
  %8 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %7, i32 0, i32 1
  %9 = call i32 @pthread_mutex_unlock(i32* %8)
  %10 = load %struct.mpv_handle*, %struct.mpv_handle** %3, align 8
  %11 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %10, i32 0, i32 2
  %12 = call i32 @pthread_mutex_lock(i32* %11)
  %13 = load %struct.mpv_handle*, %struct.mpv_handle** %3, align 8
  %14 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @mp_time_us_to_timespec(i32 %18)
  %20 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.mpv_handle*, %struct.mpv_handle** %3, align 8
  %22 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %21, i32 0, i32 3
  %23 = load %struct.mpv_handle*, %struct.mpv_handle** %3, align 8
  %24 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %23, i32 0, i32 2
  %25 = call i32 @pthread_cond_timedwait(i32* %22, i32* %24, %struct.timespec* %6)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %17, %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.mpv_handle*, %struct.mpv_handle** %3, align 8
  %31 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.mpv_handle*, %struct.mpv_handle** %3, align 8
  %34 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %33, i32 0, i32 2
  %35 = call i32 @pthread_mutex_unlock(i32* %34)
  %36 = load %struct.mpv_handle*, %struct.mpv_handle** %3, align 8
  %37 = getelementptr inbounds %struct.mpv_handle, %struct.mpv_handle* %36, i32 0, i32 1
  %38 = call i32 @pthread_mutex_lock(i32* %37)
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @mp_time_us_to_timespec(i32) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
