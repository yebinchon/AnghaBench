; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_receive_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_receive_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_data = type { i32 }
%struct.obs_encoder = type { i32, i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@receive_audio_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.audio_data*)* @receive_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_audio(i8* %0, i64 %1, %struct.audio_data* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.audio_data*, align 8
  %7 = alloca %struct.obs_encoder*, align 8
  %8 = alloca %struct.audio_data, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.audio_data* %2, %struct.audio_data** %6, align 8
  %9 = load i32, i32* @receive_audio_name, align 4
  %10 = call i32 @profile_start(i32 %9)
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.obs_encoder*
  store %struct.obs_encoder* %12, %struct.obs_encoder** %7, align 8
  %13 = load %struct.audio_data*, %struct.audio_data** %6, align 8
  %14 = bitcast %struct.audio_data* %8 to i8*
  %15 = bitcast %struct.audio_data* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  %17 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  %24 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  %26 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  %28 = call i32 @clear_audio(%struct.obs_encoder* %27)
  br label %29

29:                                               ; preds = %20, %3
  %30 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  %31 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %30, i32 0, i32 4
  %32 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  %33 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @audio_pause_check(i32* %31, %struct.audio_data* %8, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %64

38:                                               ; preds = %29
  %39 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  %40 = call i32 @buffer_audio(%struct.obs_encoder* %39, %struct.audio_data* %8)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %64

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %60, %43
  %45 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  %46 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  %52 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load %struct.obs_encoder*, %struct.obs_encoder** %7, align 8
  %57 = call i32 @send_audio_data(%struct.obs_encoder* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  br label %61

60:                                               ; preds = %55
  br label %44

61:                                               ; preds = %59, %44
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @UNUSED_PARAMETER(i64 %62)
  br label %64

64:                                               ; preds = %61, %42, %37
  %65 = load i32, i32* @receive_audio_name, align 4
  %66 = call i32 @profile_end(i32 %65)
  ret void
}

declare dso_local i32 @profile_start(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @clear_audio(%struct.obs_encoder*) #1

declare dso_local i64 @audio_pause_check(i32*, %struct.audio_data*, i32) #1

declare dso_local i32 @buffer_audio(%struct.obs_encoder*, %struct.audio_data*) #1

declare dso_local i32 @send_audio_data(%struct.obs_encoder*) #1

declare dso_local i32 @UNUSED_PARAMETER(i64) #1

declare dso_local i32 @profile_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
