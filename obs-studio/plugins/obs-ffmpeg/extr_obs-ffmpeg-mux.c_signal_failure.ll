; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_signal_failure.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_signal_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"ffmpeg-mux: %s\00", align 1
@OBS_OUTPUT_UNSUPPORTED = common dso_local global i32 0, align 4
@OBS_OUTPUT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_muxer*)* @signal_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_failure(%struct.ffmpeg_muxer* %0) #0 {
  %2 = alloca %struct.ffmpeg_muxer*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ffmpeg_muxer* %0, %struct.ffmpeg_muxer** %2, align 8
  %7 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %8 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %11 = bitcast i8* %10 to i32*
  %12 = call i64 @os_process_pipe_read_err(i32 %9, i32* %11, i32 1023)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 %16
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %19 = call i32 @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %21 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %24 = call i32 @obs_output_set_last_error(i32 %22, i8* %23)
  br label %25

25:                                               ; preds = %15, %1
  %26 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %27 = call i32 @deactivate(%struct.ffmpeg_muxer* %26, i32 0)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %31 [
    i32 128, label %29
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* @OBS_OUTPUT_UNSUPPORTED, align 4
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @OBS_OUTPUT_ERROR, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %35 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @obs_output_signal_stop(i32 %36, i32 %37)
  %39 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %2, align 8
  %40 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %39, i32 0, i32 0
  %41 = call i32 @os_atomic_set_bool(i32* %40, i32 0)
  ret void
}

declare dso_local i64 @os_process_pipe_read_err(i32, i32*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @obs_output_set_last_error(i32, i8*) #1

declare dso_local i32 @deactivate(%struct.ffmpeg_muxer*, i32) #1

declare dso_local i32 @obs_output_signal_stop(i32, i32) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
