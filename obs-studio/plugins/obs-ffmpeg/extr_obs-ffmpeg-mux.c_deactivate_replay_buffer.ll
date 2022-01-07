; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_deactivate_replay_buffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_deactivate_replay_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_muxer*, i32)* @deactivate_replay_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deactivate_replay_buffer(%struct.ffmpeg_muxer* %0, i32 %1) #0 {
  %3 = alloca %struct.ffmpeg_muxer*, align 8
  %4 = alloca i32, align 4
  store %struct.ffmpeg_muxer* %0, %struct.ffmpeg_muxer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %9 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @obs_output_signal_stop(i32 %10, i32 %11)
  br label %23

13:                                               ; preds = %2
  %14 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %15 = call i64 @stopping(%struct.ffmpeg_muxer* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %19 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @obs_output_end_data_capture(i32 %20)
  br label %22

22:                                               ; preds = %17, %13
  br label %23

23:                                               ; preds = %22, %7
  %24 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %25 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %24, i32 0, i32 2
  %26 = call i32 @os_atomic_set_bool(i32* %25, i32 0)
  %27 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %28 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %27, i32 0, i32 1
  %29 = call i32 @os_atomic_set_bool(i32* %28, i32 0)
  %30 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %31 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %30, i32 0, i32 0
  %32 = call i32 @os_atomic_set_bool(i32* %31, i32 0)
  %33 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %34 = call i32 @replay_buffer_clear(%struct.ffmpeg_muxer* %33)
  ret void
}

declare dso_local i32 @obs_output_signal_stop(i32, i32) #1

declare dso_local i64 @stopping(%struct.ffmpeg_muxer*) #1

declare dso_local i32 @obs_output_end_data_capture(i32) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @replay_buffer_clear(%struct.ffmpeg_muxer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
