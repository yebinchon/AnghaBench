; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_free_async.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_free_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_free_async_state = type { i32 }
%struct.demuxer = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, i32, i32, i32, i32, %struct.demuxer* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.demux_free_async_state* @demux_free_async(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demux_free_async_state*, align 8
  %3 = alloca %struct.demuxer*, align 8
  %4 = alloca %struct.demux_internal*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %3, align 8
  %5 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %6 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %5, i32 0, i32 0
  %7 = load %struct.demux_internal*, %struct.demux_internal** %6, align 8
  store %struct.demux_internal* %7, %struct.demux_internal** %4, align 8
  %8 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %9 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %10 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %9, i32 0, i32 5
  %11 = load %struct.demuxer*, %struct.demuxer** %10, align 8
  %12 = icmp eq %struct.demuxer* %8, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %16 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store %struct.demux_free_async_state* null, %struct.demux_free_async_state** %2, align 8
  br label %38

20:                                               ; preds = %1
  %21 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %22 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %21, i32 0, i32 2
  %23 = call i32 @pthread_mutex_lock(i32* %22)
  %24 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %25 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %27 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %29 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %28, i32 0, i32 3
  %30 = call i32 @pthread_cond_signal(i32* %29)
  %31 = load %struct.demux_internal*, %struct.demux_internal** %4, align 8
  %32 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %31, i32 0, i32 2
  %33 = call i32 @pthread_mutex_unlock(i32* %32)
  %34 = load %struct.demuxer*, %struct.demuxer** %3, align 8
  %35 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %34, i32 0, i32 0
  %36 = load %struct.demux_internal*, %struct.demux_internal** %35, align 8
  %37 = bitcast %struct.demux_internal* %36 to %struct.demux_free_async_state*
  store %struct.demux_free_async_state* %37, %struct.demux_free_async_state** %2, align 8
  br label %38

38:                                               ; preds = %20, %19
  %39 = load %struct.demux_free_async_state*, %struct.demux_free_async_state** %2, align 8
  ret %struct.demux_free_async_state* %39
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
