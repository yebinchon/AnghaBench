; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_replay_buffer_start.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_replay_buffer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i64, i32, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"max_time_sec\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"max_size_mb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @replay_buffer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replay_buffer_start(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ffmpeg_muxer*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.ffmpeg_muxer*
  store %struct.ffmpeg_muxer* %7, %struct.ffmpeg_muxer** %4, align 8
  %8 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %9 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @obs_output_can_begin_data_capture(i32 %10, i32 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %16 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @obs_output_initialize_encoders(i32 %17, i32 0)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %51

21:                                               ; preds = %14
  %22 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @obs_output_get_settings(i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @obs_data_get_int(i32* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, 1000000
  %30 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %31 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @obs_data_get_int(i32* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %34 = mul nsw i32 %33, 1048576
  %35 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %36 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @obs_data_release(i32* %37)
  %39 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %40 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %39, i32 0, i32 5
  %41 = call i32 @os_atomic_set_bool(i32* %40, i32 1)
  %42 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %43 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %42, i32 0, i32 4
  %44 = call i32 @os_atomic_set_bool(i32* %43, i32 1)
  %45 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %46 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %48 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @obs_output_begin_data_capture(i32 %49, i32 0)
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %21, %20, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @obs_output_can_begin_data_capture(i32, i32) #1

declare dso_local i32 @obs_output_initialize_encoders(i32, i32) #1

declare dso_local i32* @obs_output_get_settings(i32) #1

declare dso_local i32 @obs_data_get_int(i32*, i8*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @obs_output_begin_data_capture(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
