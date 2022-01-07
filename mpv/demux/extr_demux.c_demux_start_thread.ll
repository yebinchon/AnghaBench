; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_start_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_start_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, i32, %struct.demuxer* }

@demux_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demux_start_thread(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demuxer*, align 8
  %3 = alloca %struct.demux_internal*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %2, align 8
  %4 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %5 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %4, i32 0, i32 0
  %6 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  store %struct.demux_internal* %6, %struct.demux_internal** %3, align 8
  %7 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %8 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %9 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %8, i32 0, i32 2
  %10 = load %struct.demuxer*, %struct.demuxer** %9, align 8
  %11 = icmp eq %struct.demuxer* %7, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %15 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %1
  %19 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %20 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %22 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %21, i32 0, i32 1
  %23 = load i32, i32* @demux_thread, align 4
  %24 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %25 = call i64 @pthread_create(i32* %22, i32* null, i32 %23, %struct.demux_internal* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %29 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %18
  br label %31

31:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.demux_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
