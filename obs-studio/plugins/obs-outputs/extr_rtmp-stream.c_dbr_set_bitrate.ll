; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_dbr_set_bitrate.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_dbr_set_bitrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtmp_stream*)* @dbr_set_bitrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbr_set_bitrate(%struct.rtmp_stream* %0) #0 {
  %2 = alloca %struct.rtmp_stream*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %2, align 8
  %5 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %6 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32* @obs_output_get_video_encoder(i32 %7)
  store i32* %8, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @obs_encoder_get_settings(i32* %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.rtmp_stream*, %struct.rtmp_stream** %2, align 8
  %13 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @obs_data_set_int(i32* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @obs_encoder_update(i32* %16, i32* %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @obs_data_release(i32* %19)
  ret void
}

declare dso_local i32* @obs_output_get_video_encoder(i32) #1

declare dso_local i32* @obs_encoder_get_settings(i32*) #1

declare dso_local i32 @obs_data_set_int(i32*, i8*, i32) #1

declare dso_local i32 @obs_encoder_update(i32*, i32*) #1

declare dso_local i32 @obs_data_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
