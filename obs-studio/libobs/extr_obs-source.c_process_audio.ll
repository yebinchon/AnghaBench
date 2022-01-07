; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_process_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_process_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { float, i32, %struct.TYPE_11__, i32, i64, i64 }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.obs_source_audio = type { i64, i64, i64, i32, i32, i32** }

@MAX_AV_PLANES = common dso_local global i32 0, align 4
@obs = common dso_local global %struct.TYPE_13__* null, align 8
@SPEAKERS_STEREO = common dso_local global i64 0, align 8
@OBS_BALANCE_TYPE_SINE_LAW = common dso_local global i32 0, align 4
@OBS_SOURCE_FLAG_FORCE_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.obs_source_audio*)* @process_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_audio(%struct.TYPE_12__* %0, %struct.obs_source_audio* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.obs_source_audio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.obs_source_audio* %1, %struct.obs_source_audio** %4, align 8
  %9 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %10 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %17 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %26 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %20
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %35 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %29, %20, %2
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %41 = call i32 @reset_resampler(%struct.TYPE_12__* %39, %struct.obs_source_audio* %40)
  br label %42

42:                                               ; preds = %38, %29
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %141

48:                                               ; preds = %42
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %48
  %54 = load i32, i32* @MAX_AV_PLANES, align 4
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %7, align 8
  %57 = alloca i32*, i64 %55, align 16
  store i64 %55, i64* %8, align 8
  %58 = mul nuw i64 8, %55
  %59 = trunc i64 %58 to i32
  %60 = call i32 @memset(i32** %57, i32 0, i32 %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  %66 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %67 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %66, i32 0, i32 5
  %68 = load i32**, i32*** %67, align 8
  %69 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %70 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @audio_resampler_resample(i64 %63, i32** %57, i32* %5, i32* %65, i32** %68, i32 %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %76 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @copy_audio_data(%struct.TYPE_12__* %73, i32** %57, i32 %74, i32 %77)
  %79 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %79)
  br label %92

80:                                               ; preds = %48
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %82 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %83 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %82, i32 0, i32 5
  %84 = load i32**, i32*** %83, align 8
  %85 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %86 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %89 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @copy_audio_data(%struct.TYPE_12__* %81, i32** %84, i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %80, %53
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** @obs, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @audio_output_get_channels(i32 %96)
  %98 = icmp eq i32 %97, 1
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %127, label %102

102:                                              ; preds = %92
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SPEAKERS_STEREO, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %102
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load float, float* %111, align 8
  %113 = fcmp ogt float %112, 0x3FE051EB80000000
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load float, float* %116, align 8
  %118 = fcmp olt float %117, 0x3FDF5C2900000000
  br i1 %118, label %119, label %127

119:                                              ; preds = %114, %109
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load float, float* %123, align 8
  %125 = load i32, i32* @OBS_BALANCE_TYPE_SINE_LAW, align 4
  %126 = call i32 @process_audio_balancing(%struct.TYPE_12__* %120, i32 %121, float %124, i32 %125)
  br label %127

127:                                              ; preds = %119, %114, %102, %92
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %127
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @OBS_SOURCE_FLAG_FORCE_MONO, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @downmix_to_mono_planar(%struct.TYPE_12__* %138, i32 %139)
  br label %141

141:                                              ; preds = %47, %137, %130, %127
  ret void
}

declare dso_local i32 @reset_resampler(%struct.TYPE_12__*, %struct.obs_source_audio*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @audio_resampler_resample(i64, i32**, i32*, i32*, i32**, i32) #1

declare dso_local i32 @copy_audio_data(%struct.TYPE_12__*, i32**, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @audio_output_get_channels(i32) #1

declare dso_local i32 @process_audio_balancing(%struct.TYPE_12__*, i32, float, i32) #1

declare dso_local i32 @downmix_to_mono_planar(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
