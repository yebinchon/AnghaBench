; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_build_command_line.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_build_command_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_muxer = type { i32, i32 }
%struct.dstr = type { i32 }

@MAX_AUDIO_MIXES = common dso_local global i32 0, align 4
@FFMPEG_MUX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\22 \22\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\22 %d %d \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"aac \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffmpeg_muxer*, %struct.dstr*, i8*)* @build_command_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_command_line(%struct.ffmpeg_muxer* %0, %struct.dstr* %1, i8* %2) #0 {
  %4 = alloca %struct.ffmpeg_muxer*, align 8
  %5 = alloca %struct.dstr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.ffmpeg_muxer* %0, %struct.ffmpeg_muxer** %4, align 8
  store %struct.dstr* %1, %struct.dstr** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %14 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @obs_output_get_video_encoder(i32 %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i32*, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %30, %3
  %22 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %23 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32* @obs_output_get_audio_encoder(i32 %24, i32 %25)
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %37

30:                                               ; preds = %21
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %20, i64 %33
  store i32* %31, i32** %34, align 8
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %21

37:                                               ; preds = %29
  %38 = load %struct.dstr*, %struct.dstr** %5, align 8
  %39 = load i32, i32* @FFMPEG_MUX, align 4
  %40 = call i32 @os_get_executable_path_ptr(i32 %39)
  %41 = call i32 @dstr_init_move_array(%struct.dstr* %38, i32 %40)
  %42 = load %struct.dstr*, %struct.dstr** %5, align 8
  %43 = call i32 @dstr_insert_ch(%struct.dstr* %42, i32 0, i8 signext 34)
  %44 = load %struct.dstr*, %struct.dstr** %5, align 8
  %45 = call i32 @dstr_cat(%struct.dstr* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %47 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %46, i32 0, i32 0
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @dstr_copy(i32* %47, i8* %48)
  %50 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %51 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %50, i32 0, i32 0
  %52 = call i32 @dstr_replace(i32* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.dstr*, %struct.dstr** %5, align 8
  %54 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %55 = getelementptr inbounds %struct.ffmpeg_muxer, %struct.ffmpeg_muxer* %54, i32 0, i32 0
  %56 = call i32 @dstr_cat_dstr(%struct.dstr* %53, i32* %55)
  %57 = load %struct.dstr*, %struct.dstr** %5, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @dstr_catf(%struct.dstr* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %37
  %67 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %68 = load %struct.dstr*, %struct.dstr** %5, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @add_video_encoder_params(%struct.ffmpeg_muxer* %67, %struct.dstr* %68, i32* %69)
  br label %71

71:                                               ; preds = %66, %37
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load %struct.dstr*, %struct.dstr** %5, align 8
  %76 = call i32 @dstr_cat(%struct.dstr* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %88, %74
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load %struct.dstr*, %struct.dstr** %5, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %20, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @add_audio_encoder_params(%struct.dstr* %82, i32* %86)
  br label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %77

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %71
  %93 = load %struct.dstr*, %struct.dstr** %5, align 8
  %94 = load %struct.ffmpeg_muxer*, %struct.ffmpeg_muxer** %4, align 8
  %95 = call i32 @add_muxer_params(%struct.dstr* %93, %struct.ffmpeg_muxer* %94)
  %96 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %96)
  ret void
}

declare dso_local i32* @obs_output_get_video_encoder(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @obs_output_get_audio_encoder(i32, i32) #1

declare dso_local i32 @dstr_init_move_array(%struct.dstr*, i32) #1

declare dso_local i32 @os_get_executable_path_ptr(i32) #1

declare dso_local i32 @dstr_insert_ch(%struct.dstr*, i32, i8 signext) #1

declare dso_local i32 @dstr_cat(%struct.dstr*, i8*) #1

declare dso_local i32 @dstr_copy(i32*, i8*) #1

declare dso_local i32 @dstr_replace(i32*, i8*, i8*) #1

declare dso_local i32 @dstr_cat_dstr(%struct.dstr*, i32*) #1

declare dso_local i32 @dstr_catf(%struct.dstr*, i8*, i32, i32) #1

declare dso_local i32 @add_video_encoder_params(%struct.ffmpeg_muxer*, %struct.dstr*, i32*) #1

declare dso_local i32 @add_audio_encoder_params(%struct.dstr*, i32*) #1

declare dso_local i32 @add_muxer_params(%struct.dstr*, %struct.ffmpeg_muxer*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
