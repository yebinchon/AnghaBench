; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_add_audio_encoder_params.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-mux.c_add_audio_encoder_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\22%s\22 %d %d %d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dstr*, i32*)* @add_audio_encoder_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_audio_encoder_params(%struct.dstr* %0, i32* %1) #0 {
  %3 = alloca %struct.dstr*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dstr, align 4
  store %struct.dstr* %0, %struct.dstr** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32* @obs_encoder_get_settings(i32* %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @obs_data_get_int(i32* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = call i32* (...) @obs_get_audio()
  store i32* %14, i32** %7, align 8
  %15 = bitcast %struct.dstr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 8, i1 false)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @obs_data_release(i32* %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @obs_encoder_get_name(i32* %18)
  %20 = call i32 @dstr_copy(%struct.dstr* %8, i32 %19)
  %21 = call i32 @dstr_replace(%struct.dstr* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.dstr*, %struct.dstr** %3, align 8
  %23 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @obs_encoder_get_sample_rate(i32* %26)
  %28 = trunc i64 %27 to i32
  %29 = load i32*, i32** %7, align 8
  %30 = call i64 @audio_output_get_channels(i32* %29)
  %31 = trunc i64 %30 to i32
  %32 = call i32 @dstr_catf(%struct.dstr* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %24, i32 %25, i32 %28, i32 %31)
  %33 = call i32 @dstr_free(%struct.dstr* %8)
  ret void
}

declare dso_local i32* @obs_encoder_get_settings(i32*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i32* @obs_get_audio(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @dstr_copy(%struct.dstr*, i32) #1

declare dso_local i32 @obs_encoder_get_name(i32*) #1

declare dso_local i32 @dstr_replace(%struct.dstr*, i8*, i8*) #1

declare dso_local i32 @dstr_catf(%struct.dstr*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @obs_encoder_get_sample_rate(i32*) #1

declare dso_local i64 @audio_output_get_channels(i32*) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
