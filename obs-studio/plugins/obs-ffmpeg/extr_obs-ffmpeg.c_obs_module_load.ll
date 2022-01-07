; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg.c_obs_module_load.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg.c_obs_module_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ffmpeg_source = common dso_local global i32 0, align 4
@ffmpeg_output = common dso_local global i32 0, align 4
@ffmpeg_muxer = common dso_local global i32 0, align 4
@replay_buffer = common dso_local global i32 0, align 4
@aac_encoder_info = common dso_local global i32 0, align 4
@opus_encoder_info = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"NVENC supported\00", align 1
@nvenc_encoder_info = common dso_local global i32 0, align 4
@vaapi_encoder_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obs_module_load() #0 {
  %1 = call i32 @obs_register_source(i32* @ffmpeg_source)
  %2 = call i32 @obs_register_output(i32* @ffmpeg_output)
  %3 = call i32 @obs_register_output(i32* @ffmpeg_muxer)
  %4 = call i32 @obs_register_output(i32* @replay_buffer)
  %5 = call i32 @obs_register_encoder(i32* @aac_encoder_info)
  %6 = call i32 @obs_register_encoder(i32* @opus_encoder_info)
  %7 = call i64 (...) @nvenc_supported()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @LOG_INFO, align 4
  %11 = call i32 @blog(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @obs_register_encoder(i32* @nvenc_encoder_info)
  br label %13

13:                                               ; preds = %9, %0
  ret i32 1
}

declare dso_local i32 @obs_register_source(i32*) #1

declare dso_local i32 @obs_register_output(i32*) #1

declare dso_local i32 @obs_register_encoder(i32*) #1

declare dso_local i64 @nvenc_supported(...) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
