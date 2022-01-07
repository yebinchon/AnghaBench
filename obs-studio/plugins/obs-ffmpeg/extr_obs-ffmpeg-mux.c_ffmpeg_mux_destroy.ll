; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_ffmpeg_mux_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_ffmpeg_mux_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ffmpeg_mux_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffmpeg_mux_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ffmpeg_muxer*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ffmpeg_muxer*
  store %struct.ffmpeg_muxer* %5, %struct.ffmpeg_muxer** %3, align 8
  %6 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %7 = call i32 @replay_buffer_clear(%struct.ffmpeg_muxer* %6)
  %8 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %9 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %14 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pthread_join(i32 %15, i32* null)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %19 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @da_free(i32 %20)
  %22 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @os_process_pipe_destroy(i32 %24)
  %26 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %27 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %26, i32 0, i32 0
  %28 = call i32 @dstr_free(i32* %27)
  %29 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %3, align 8
  %30 = call i32 @bfree(%struct.ffmpeg_muxer* %29)
  ret void
}

declare dso_local i32 @replay_buffer_clear(%struct.ffmpeg_muxer*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @da_free(i32) #1

declare dso_local i32 @os_process_pipe_destroy(i32) #1

declare dso_local i32 @dstr_free(i32*) #1

declare dso_local i32 @bfree(%struct.ffmpeg_muxer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
