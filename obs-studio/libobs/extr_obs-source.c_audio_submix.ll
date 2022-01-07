; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_audio_submix.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_audio_submix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i64* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (i32, i32*, %struct.audio_output_data*, i64, i64)* }
%struct.audio_output_data = type { i64* }
%struct.obs_source_audio = type { i32, i32, i32, i32, i64, i32**, i32 }

@AUDIO_OUTPUT_FRAMES = common dso_local global i32 0, align 4
@AUDIO_FORMAT_FLOAT_PLANAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64, i64)* @audio_submix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_submix(%struct.TYPE_8__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.audio_output_data, align 8
  %8 = alloca %struct.obs_source_audio, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = bitcast %struct.obs_source_audio* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 40, i1 false)
  store i64 0, i64* %11, align 8
  br label %14

14:                                               ; preds = %29, %3
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %11, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.audio_output_data, %struct.audio_output_data* %7, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64 %24, i64* %28, align 8
  br label %29

29:                                               ; preds = %18
  %30 = load i64, i64* %11, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %11, align 8
  br label %14

32:                                               ; preds = %14
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = load i64, i64* %5, align 8
  %42 = mul i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = call i32 @memset(i64 %37, i32 0, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32 (i32, i32*, %struct.audio_output_data*, i64, i64)*, i32 (i32, i32*, %struct.audio_output_data*, i64, i64)** %47, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 %48(i32 %52, i32* %10, %struct.audio_output_data* %7, i64 %53, i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %32
  br label %92

59:                                               ; preds = %32
  store i64 0, i64* %12, align 8
  br label %60

60:                                               ; preds = %75, %59
  %61 = load i64, i64* %12, align 8
  %62 = load i64, i64* %5, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.audio_output_data, %struct.audio_output_data* %7, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i32*
  %71 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %8, i32 0, i32 5
  %72 = load i32**, i32*** %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  store i32* %70, i32** %74, align 8
  br label %75

75:                                               ; preds = %64
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %12, align 8
  br label %60

78:                                               ; preds = %60
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %8, i32 0, i32 4
  store i64 %79, i64* %80, align 8
  %81 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %82 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %8, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = load i32, i32* @AUDIO_FORMAT_FLOAT_PLANAR, align 4
  %84 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %8, i32 0, i32 3
  store i32 %83, i32* %84, align 4
  %85 = load i64, i64* %5, align 8
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %8, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  %89 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %8, i32 0, i32 2
  store i32 %88, i32* %89, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = call i32 @obs_source_output_audio(%struct.TYPE_8__* %90, %struct.obs_source_audio* %8)
  br label %92

92:                                               ; preds = %78, %58
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(i64, i32, i32) #2

declare dso_local i32 @obs_source_output_audio(%struct.TYPE_8__*, %struct.obs_source_audio*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
