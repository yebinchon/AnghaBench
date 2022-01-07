; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_wasapi-output.c_on_audio_playback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/win32/extr_wasapi-output.c_on_audio_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float, i64, i64, i32 }
%struct.audio_data = type { i64, i64, i64 }
%struct.audio_monitor = type { i32, i32, i64, %struct.TYPE_13__*, i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_13__*, i32*)* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32**)* }

@MAX_AV_PLANES = common dso_local global i32 0, align 4
@EPSILON = common dso_local global i32 0, align 4
@AUDCLNT_BUFFERFLAGS_SILENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_11__*, %struct.audio_data*, i32)* @on_audio_playback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_audio_playback(i8* %0, %struct.TYPE_11__* %1, %struct.audio_data* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.audio_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.audio_monitor*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.audio_data* %2, %struct.audio_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to %struct.audio_monitor*
  store %struct.audio_monitor* %26, %struct.audio_monitor** %9, align 8
  %27 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %28 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %27, i32 0, i32 5
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %10, align 8
  %30 = load i32, i32* @MAX_AV_PLANES, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %11, align 8
  %33 = alloca i32*, i64 %31, align 16
  store i64 %31, i64* %12, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load float, float* %35, align 8
  store float %36, float* %13, align 4
  %37 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %38 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %37, i32 0, i32 1
  %39 = call i64 @pthread_mutex_trylock(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %4
  store i32 1, i32* %18, align 4
  br label %187

42:                                               ; preds = %4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = call i64 @os_atomic_load_long(i32* %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %183

48:                                               ; preds = %42
  %49 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %50 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %53 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32**
  %56 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %57 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @audio_resampler_resample(i32 %51, i32** %33, i32* %14, i64* %15, i32** %55, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %48
  br label %183

64:                                               ; preds = %48
  store i32 0, i32* %19, align 4
  %65 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %66 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %65, i32 0, i32 3
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_13__*, i32*)*, i32 (%struct.TYPE_13__*, i32*)** %70, align 8
  %72 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %73 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %72, i32 0, i32 3
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = call i32 %71(%struct.TYPE_13__* %74, i32* %19)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %64
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br label %85

85:                                               ; preds = %80, %64
  %86 = phi i1 [ false, %64 ], [ %84, %80 ]
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %20, align 4
  %88 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %89 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %85
  %93 = load i32, i32* %20, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %92
  %96 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %97 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %15, align 8
  %100 = sub nsw i64 %98, %99
  store i64 %100, i64* %21, align 8
  %101 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %102 = getelementptr inbounds i32*, i32** %33, i64 0
  %103 = bitcast i32** %102 to float**
  %104 = load i64, i64* %21, align 8
  %105 = load i32, i32* %19, align 4
  %106 = call i32 @process_audio_delay(%struct.audio_monitor* %101, float** %103, i32* %14, i64 %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %95
  br label %183

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109, %92, %85
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32 (%struct.TYPE_12__*, i32, i32**)*, i32 (%struct.TYPE_12__*, i32, i32**)** %114, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %117 = load i32, i32* %14, align 4
  %118 = call i32 %115(%struct.TYPE_12__* %116, i32 %117, i32** %17)
  store i32 %118, i32* %22, align 4
  %119 = load i32, i32* %22, align 4
  %120 = call i64 @FAILED(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %110
  br label %183

123:                                              ; preds = %110
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %167, label %126

126:                                              ; preds = %123
  %127 = load float, float* %13, align 4
  %128 = load i32, i32* @EPSILON, align 4
  %129 = call i32 @close_float(float %127, float 1.000000e+00, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %154, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds i32*, i32** %33, i64 0
  %133 = load i32*, i32** %132, align 16
  %134 = bitcast i32* %133 to float*
  store float* %134, float** %23, align 8
  %135 = load float*, float** %23, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %138 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = mul nsw i32 %136, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %135, i64 %141
  store float* %142, float** %24, align 8
  br label %143

143:                                              ; preds = %147, %131
  %144 = load float*, float** %23, align 8
  %145 = load float*, float** %24, align 8
  %146 = icmp ult float* %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load float, float* %13, align 4
  %149 = load float*, float** %23, align 8
  %150 = getelementptr inbounds float, float* %149, i32 1
  store float* %150, float** %23, align 8
  %151 = load float, float* %149, align 4
  %152 = fmul float %151, %148
  store float %152, float* %149, align 4
  br label %143

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %153, %126
  %155 = load i32*, i32** %17, align 8
  %156 = getelementptr inbounds i32*, i32** %33, i64 0
  %157 = load i32*, i32** %156, align 16
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %160 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = mul nsw i32 %158, %161
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 4
  %165 = trunc i64 %164 to i32
  %166 = call i32 @memcpy(i32* %155, i32* %157, i32 %165)
  br label %167

167:                                              ; preds = %154, %123
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32 (%struct.TYPE_12__*, i32, i32)*, i32 (%struct.TYPE_12__*, i32, i32)** %171, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %167
  %178 = load i32, i32* @AUDCLNT_BUFFERFLAGS_SILENT, align 4
  br label %180

179:                                              ; preds = %167
  br label %180

180:                                              ; preds = %179, %177
  %181 = phi i32 [ %178, %177 ], [ 0, %179 ]
  %182 = call i32 %172(%struct.TYPE_12__* %173, i32 %174, i32 %181)
  br label %183

183:                                              ; preds = %180, %122, %108, %63, %47
  %184 = load %struct.audio_monitor*, %struct.audio_monitor** %9, align 8
  %185 = getelementptr inbounds %struct.audio_monitor, %struct.audio_monitor* %184, i32 0, i32 1
  %186 = call i32 @pthread_mutex_unlock(i32* %185)
  store i32 0, i32* %18, align 4
  br label %187

187:                                              ; preds = %183, %41
  %188 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %188)
  %189 = load i32, i32* %18, align 4
  switch i32 %189, label %191 [
    i32 0, label %190
    i32 1, label %190
  ]

190:                                              ; preds = %187, %187
  ret void

191:                                              ; preds = %187
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @pthread_mutex_trylock(i32*) #2

declare dso_local i64 @os_atomic_load_long(i32*) #2

declare dso_local i32 @audio_resampler_resample(i32, i32**, i32*, i64*, i32**, i32) #2

declare dso_local i32 @process_audio_delay(%struct.audio_monitor*, float**, i32*, i64, i32) #2

declare dso_local i64 @FAILED(i32) #2

declare dso_local i32 @close_float(float, float, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
