; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_update_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-vth264/extr_encoder.c_update_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_h264_encoder = type { i32, i8*, i32, i64, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.video_output_info = type { i64, i32, i32, i32, i32 }
%struct.video_scale_info = type { i32 }

@VIDEO_RANGE_FULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"keyint_sec\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"limit_bitrate\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"max_bitrate\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"max_bitrate_window\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_h264_encoder*, i32*)* @update_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_params(%struct.vt_h264_encoder* %0, i32* %1) #0 {
  %3 = alloca %struct.vt_h264_encoder*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.video_output_info*, align 8
  %7 = alloca %struct.video_scale_info, align 4
  store %struct.vt_h264_encoder* %0, %struct.vt_h264_encoder** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %8, i32 0, i32 10
  %10 = load i32, i32* %9, align 8
  %11 = call i32* @obs_encoder_video(i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.video_output_info* @video_output_get_info(i32* %12)
  store %struct.video_output_info* %13, %struct.video_output_info** %6, align 8
  %14 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %7, i32 0, i32 0
  %15 = load %struct.video_output_info*, %struct.video_output_info** %6, align 8
  %16 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.video_output_info*, %struct.video_output_info** %6, align 8
  %19 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VIDEO_RANGE_FULL, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %25 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %27 = call i32 @vt_h264_video_info(%struct.vt_h264_encoder* %26, %struct.video_scale_info* %7)
  %28 = load %struct.video_output_info*, %struct.video_output_info** %6, align 8
  %29 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %32 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %31, i32 0, i32 13
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %34 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @obs_encoder_get_width(i32 %35)
  %37 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %38 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %37, i32 0, i32 12
  store i32 %36, i32* %38, align 8
  %39 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %40 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @obs_encoder_get_height(i32 %41)
  %43 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %44 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 4
  %45 = load %struct.video_output_info*, %struct.video_output_info** %6, align 8
  %46 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %49 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 4
  %50 = load %struct.video_output_info*, %struct.video_output_info** %6, align 8
  %51 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %54 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i64 @obs_data_get_int(i32* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %59 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %58, i32 0, i32 7
  store i8* %57, i8** %59, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i64 @obs_data_get_int(i32* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %64 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @obs_data_get_string(i32* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %68 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = call i8* @obs_data_get_bool(i32* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %72 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i64 @obs_data_get_int(i32* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %76 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @obs_data_get_double(i32* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %79 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %80 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i8* @obs_data_get_bool(i32* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %83 = load %struct.vt_h264_encoder*, %struct.vt_h264_encoder** %3, align 8
  %84 = getelementptr inbounds %struct.vt_h264_encoder, %struct.vt_h264_encoder* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  ret void
}

declare dso_local i32* @obs_encoder_video(i32) #1

declare dso_local %struct.video_output_info* @video_output_get_info(i32*) #1

declare dso_local i32 @vt_h264_video_info(%struct.vt_h264_encoder*, %struct.video_scale_info*) #1

declare dso_local i32 @obs_encoder_get_width(i32) #1

declare dso_local i32 @obs_encoder_get_height(i32) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i32 @obs_data_get_string(i32*, i8*) #1

declare dso_local i8* @obs_data_get_bool(i32*, i8*) #1

declare dso_local i32 @obs_data_get_double(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
