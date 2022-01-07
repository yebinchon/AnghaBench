; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_coreaudio-output.c_on_audio_playback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/osx/extr_coreaudio-output.c_on_audio_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { float }
%struct.audio_data = type { i64, i64 }
%struct.audio_monitor = type { i32, i64, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@MAX_AV_PLANES = common dso_local global i32 0, align 4
@EPSILON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_7__*, %struct.audio_data*, i32)* @on_audio_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_audio_playback(i8* %0, %struct.TYPE_7__* %1, %struct.audio_data* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.audio_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.audio_monitor*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store %struct.audio_data* %2, %struct.audio_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.audio_monitor*
  store %struct.audio_monitor* %21, %struct.audio_monitor** %9, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load float, float* %23, align 4
  store float %24, float* %10, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = call i32 @UNUSED_PARAMETER(%struct.TYPE_7__* %25)
  %27 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %28 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %27, i32 0, i32 8
  %29 = call i32 @os_atomic_load_bool(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %4
  br label %151

32:                                               ; preds = %4
  %33 = load i32, i32* @MAX_AV_PLANES, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %12, align 8
  %36 = alloca i32*, i64 %34, align 16
  store i64 %34, i64* %13, align 8
  %37 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %38 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %41 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32**
  %44 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %45 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @audio_resampler_resample(i32 %39, i32** %36, i32* %14, i32* %15, i32** %43, i32 %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %32
  store i32 1, i32* %17, align 4
  br label %148

52:                                               ; preds = %32
  %53 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %54 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %57, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = getelementptr inbounds i32*, i32** %36, i64 0
  %66 = load i32*, i32** %65, align 16
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @memset(i32* %66, i32 0, i32 %67)
  br label %98

69:                                               ; preds = %52
  %70 = load float, float* %10, align 4
  %71 = load i32, i32* @EPSILON, align 4
  %72 = call i32 @close_float(float %70, float 1.000000e+00, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %97, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds i32*, i32** %36, i64 0
  %76 = load i32*, i32** %75, align 16
  %77 = bitcast i32* %76 to float*
  store float* %77, float** %18, align 8
  %78 = load float*, float** %18, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %81 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = mul nsw i32 %79, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %78, i64 %84
  store float* %85, float** %19, align 8
  br label %86

86:                                               ; preds = %90, %74
  %87 = load float*, float** %18, align 8
  %88 = load float*, float** %19, align 8
  %89 = icmp ult float* %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load float, float* %10, align 4
  %92 = load float*, float** %18, align 8
  %93 = getelementptr inbounds float, float* %92, i32 1
  store float* %93, float** %18, align 8
  %94 = load float, float* %92, align 4
  %95 = fmul float %94, %91
  store float %95, float* %92, align 4
  br label %86

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %69
  br label %98

98:                                               ; preds = %97, %64
  %99 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %100 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %99, i32 0, i32 3
  %101 = call i32 @pthread_mutex_lock(i32* %100)
  %102 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %103 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %102, i32 0, i32 6
  %104 = getelementptr inbounds i32*, i32** %36, i64 0
  %105 = load i32*, i32** %104, align 16
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @circlebuf_push_back(%struct.TYPE_8__* %103, i32* %105, i32 %106)
  %108 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %109 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %108, i32 0, i32 6
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %113 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp sge i64 %111, %114
  br i1 %115, label %116, label %144

116:                                              ; preds = %98
  %117 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %118 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %130, %116
  %120 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %121 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %127 = call i32 @fill_buffer(%struct.audio_monitor* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  br label %131

130:                                              ; preds = %125
  br label %119

131:                                              ; preds = %129, %119
  %132 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %133 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %138 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @AudioQueueStart(i32 %139, i32* null)
  %141 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %142 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %141, i32 0, i32 2
  store i32 0, i32* %142, align 8
  br label %143

143:                                              ; preds = %136, %131
  br label %144

144:                                              ; preds = %143, %98
  %145 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %146 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %145, i32 0, i32 3
  %147 = call i32 @pthread_mutex_unlock(i32* %146)
  store i32 0, i32* %17, align 4
  br label %148

148:                                              ; preds = %144, %51
  %149 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %17, align 4
  switch i32 %150, label %152 [
    i32 0, label %151
    i32 1, label %151
  ]

151:                                              ; preds = %31, %148, %148
  ret void

152:                                              ; preds = %148
  unreachable
}

declare dso_local i32 @UNUSED_PARAMETER(%struct.TYPE_7__*) #1

declare dso_local i32 @os_atomic_load_bool(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @audio_resampler_resample(i32, i32**, i32*, i32*, i32**, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @close_float(float, float, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @circlebuf_push_back(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @fill_buffer(%struct.audio_monitor*) #1

declare dso_local i32 @AudioQueueStart(i32, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
