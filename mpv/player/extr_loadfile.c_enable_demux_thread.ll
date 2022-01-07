; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_enable_demux_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_enable_demux_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.demuxer = type { i32 }

@wakeup_demux = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, %struct.demuxer*)* @enable_demux_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_demux_thread(%struct.MPContext* %0, %struct.demuxer* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.demuxer*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.demuxer* %1, %struct.demuxer** %4, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %13 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %18 = load i32, i32* @wakeup_demux, align 4
  %19 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %20 = call i32 @demux_set_wakeup_cb(%struct.demuxer* %17, i32 %18, %struct.MPContext* %19)
  %21 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %22 = call i32 @demux_start_thread(%struct.demuxer* %21)
  br label %23

23:                                               ; preds = %16, %11, %2
  ret void
}

declare dso_local i32 @demux_set_wakeup_cb(%struct.demuxer*, i32, %struct.MPContext*) #1

declare dso_local i32 @demux_start_thread(%struct.demuxer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
