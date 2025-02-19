; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_free.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.demux_internal* }
%struct.demux_internal = type { %struct.demuxer* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demux_free(%struct.demuxer* %0) #0 {
  %2 = alloca %struct.demuxer*, align 8
  %3 = alloca %struct.demux_internal*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %2, align 8
  %4 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %5 = icmp ne %struct.demuxer* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %24

7:                                                ; preds = %1
  %8 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %9 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %8, i32 0, i32 0
  %10 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  store %struct.demux_internal* %10, %struct.demux_internal** %3, align 8
  %11 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %12 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %13 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %12, i32 0, i32 0
  %14 = load %struct.demuxer*, %struct.demuxer** %13, align 8
  %15 = icmp eq %struct.demuxer* %11, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.demuxer*, %struct.demuxer** %2, align 8
  %19 = call i32 @demux_stop_thread(%struct.demuxer* %18)
  %20 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %21 = call i32 @demux_shutdown(%struct.demux_internal* %20)
  %22 = load %struct.demux_internal*, %struct.demux_internal** %3, align 8
  %23 = call i32 @demux_dealloc(%struct.demux_internal* %22)
  br label %24

24:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @demux_stop_thread(%struct.demuxer*) #1

declare dso_local i32 @demux_shutdown(%struct.demux_internal*) #1

declare dso_local i32 @demux_dealloc(%struct.demux_internal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
