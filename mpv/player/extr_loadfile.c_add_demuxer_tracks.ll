; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_add_demuxer_tracks.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_add_demuxer_tracks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }
%struct.demuxer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_demuxer_tracks(%struct.MPContext* %0, %struct.demuxer* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.demuxer*, align 8
  %5 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.demuxer* %1, %struct.demuxer** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %9 = call i32 @demux_get_num_stream(%struct.demuxer* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %21

11:                                               ; preds = %6
  %12 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %13 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %14 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @demux_get_stream(%struct.demuxer* %14, i32 %15)
  %17 = call i32 @add_stream_track(%struct.MPContext* %12, %struct.demuxer* %13, i32 %16)
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %6

21:                                               ; preds = %6
  ret void
}

declare dso_local i32 @demux_get_num_stream(%struct.demuxer*) #1

declare dso_local i32 @add_stream_track(%struct.MPContext*, %struct.demuxer*, i32) #1

declare dso_local i32 @demux_get_stream(%struct.demuxer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
