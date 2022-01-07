; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_apply_audio_volume.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_apply_audio_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32**, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.audio_action* }
%struct.audio_action = type { i64 }

@AUDIO_OUTPUT_FRAMES = common dso_local global i32 0, align 4
@MAX_AUDIO_CHANNELS = common dso_local global i32 0, align 4
@MAX_AUDIO_MIXES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64, i64, i64)* @apply_audio_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_audio_volume(%struct.TYPE_8__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.audio_action, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 3
  %17 = call i32 @pthread_mutex_lock(i32* %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.audio_action*, %struct.audio_action** %29, align 8
  %31 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %30, i64 0
  %32 = bitcast %struct.audio_action* %9 to i8*
  %33 = bitcast %struct.audio_action* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 8, i1 false)
  br label %34

34:                                               ; preds = %26, %4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = call i32 @pthread_mutex_unlock(i32* %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load i64, i64* %8, align 8
  %42 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %43 = call i64 @conv_frames_to_time(i64 %41, i32 %42)
  store i64 %43, i64* %12, align 8
  %44 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %9, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add nsw i64 %48, %49
  %51 = icmp slt i64 %45, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @apply_audio_actions(%struct.TYPE_8__* %53, i64 %54, i64 %55)
  br label %124

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %34
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call float @get_source_volume(%struct.TYPE_8__* %59, i64 %62)
  store float %63, float* %11, align 4
  %64 = load float, float* %11, align 4
  %65 = fcmp oeq float %64, 1.000000e+00
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %124

67:                                               ; preds = %58
  %68 = load float, float* %11, align 4
  %69 = fcmp oeq float %68, 0.000000e+00
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i64, i64* %6, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %70, %67
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %83, %85
  %87 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 %86, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memset(i32 %80, i32 0, i32 %90)
  br label %124

92:                                               ; preds = %70
  store i64 0, i64* %13, align 8
  br label %93

93:                                               ; preds = %121, %92
  %94 = load i64, i64* %13, align 8
  %95 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %93
  %99 = load i64, i64* %13, align 8
  %100 = trunc i64 %99 to i32
  %101 = shl i32 1, %100
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %14, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %14, align 8
  %107 = and i64 %105, %106
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %98
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %14, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = load i64, i64* %13, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load float, float* %11, align 4
  %119 = call i32 @multiply_output_audio(%struct.TYPE_8__* %115, i64 %116, i64 %117, float %118)
  br label %120

120:                                              ; preds = %114, %109, %98
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %13, align 8
  br label %93

124:                                              ; preds = %52, %66, %73, %93
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i64 @conv_frames_to_time(i64, i32) #1

declare dso_local i32 @apply_audio_actions(%struct.TYPE_8__*, i64, i64) #1

declare dso_local float @get_source_volume(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @multiply_output_audio(%struct.TYPE_8__*, i64, i64, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
