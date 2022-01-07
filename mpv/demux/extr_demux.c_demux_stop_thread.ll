; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_stop_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_stop_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, i32, i32, i32, i32, %struct.demuxer* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demux_stop_thread(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demuxer*, align 8
  %3 = alloca %struct.demux_internal*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %2, align 8
  %4 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %5 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %4, i32 0, i32 0
  %6 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  store %struct.demux_internal* %6, %struct.demux_internal** %3, align 8
  %7 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %8 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %9 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %8, i32 0, i32 5
  %10 = load %struct.demuxer*, %struct.demuxer** %9, align 8
  %11 = icmp eq %struct.demuxer* %7, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %15 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %1
  %19 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %20 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %19, i32 0, i32 3
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %23 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  %24 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %25 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %24, i32 0, i32 4
  %26 = call i32 @pthread_cond_signal(i32* %25)
  %27 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %28 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %27, i32 0, i32 3
  %29 = call i32 @pthread_mutex_unlock(i32* %28)
  %30 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %31 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @pthread_join(i32 %32, i32* null)
  %34 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %35 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %37 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
