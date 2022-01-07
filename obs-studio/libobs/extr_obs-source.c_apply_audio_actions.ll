; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_apply_audio_actions.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_apply_audio_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.audio_action* }
%struct.audio_action = type { i64 }

@AUDIO_OUTPUT_FRAMES = common dso_local global i32 0, align 4
@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64, i64)* @apply_audio_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_audio_actions(%struct.TYPE_7__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.audio_action, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = call float* @malloc(i32 %18)
  store float* %19, float** %7, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call float @get_source_volume(%struct.TYPE_7__* %20, i64 %23)
  store float %24, float* %8, align 4
  store i64 0, i64* %9, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = call i32 @pthread_mutex_lock(i32* %26)
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %103, %3
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %29, %33
  br i1 %34, label %35, label %106

35:                                               ; preds = %28
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load %struct.audio_action*, %struct.audio_action** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %39, i64 %40
  %42 = bitcast %struct.audio_action* %11 to i8*
  %43 = bitcast %struct.audio_action* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 8, i1 false)
  %44 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %11, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %35
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %12, align 8
  br label %55

55:                                               ; preds = %51, %35
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = call i64 @conv_time_to_frames(i64 %56, i64 %61)
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp uge i64 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %106

68:                                               ; preds = %55
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, -1
  store i64 %72, i64* %10, align 8
  %73 = trunc i64 %71 to i32
  %74 = bitcast %struct.TYPE_8__* %70 to { i64, %struct.audio_action* }*
  %75 = getelementptr inbounds { i64, %struct.audio_action* }, { i64, %struct.audio_action* }* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds { i64, %struct.audio_action* }, { i64, %struct.audio_action* }* %74, i32 0, i32 1
  %78 = load %struct.audio_action*, %struct.audio_action** %77, align 8
  %79 = call i32 @da_erase(i64 %76, %struct.audio_action* %78, i32 %73)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = call i32 @apply_audio_action(%struct.TYPE_7__* %80, %struct.audio_action* %11)
  %82 = load i64, i64* %13, align 8
  %83 = load i64, i64* %9, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %95, %85
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load float, float* %8, align 4
  %92 = load float*, float** %7, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds float, float* %92, i64 %93
  store float %91, float* %94, align 4
  br label %95

95:                                               ; preds = %90
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %9, align 8
  br label %86

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %68
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call float @get_source_volume(%struct.TYPE_7__* %100, i64 %101)
  store float %102, float* %8, align 4
  br label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %10, align 8
  br label %28

106:                                              ; preds = %67, %28
  br label %107

107:                                              ; preds = %117, %106
  %108 = load i64, i64* %9, align 8
  %109 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %110 = sext i32 %109 to i64
  %111 = icmp ult i64 %108, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load float, float* %8, align 4
  %114 = load float*, float** %7, align 8
  %115 = load i64, i64* %9, align 8
  %116 = getelementptr inbounds float, float* %114, i64 %115
  store float %113, float* %116, align 4
  br label %117

117:                                              ; preds = %112
  %118 = load i64, i64* %9, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %9, align 8
  br label %107

120:                                              ; preds = %107
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  %123 = call i32 @pthread_mutex_unlock(i32* %122)
  store i64 0, i64* %14, align 8
  br label %124

124:                                              ; preds = %144, %120
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %147

128:                                              ; preds = %124
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* %14, align 8
  %133 = trunc i64 %132 to i32
  %134 = shl i32 1, %133
  %135 = and i32 %131, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %128
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = load i64, i64* %14, align 8
  %140 = load i64, i64* %5, align 8
  %141 = load float*, float** %7, align 8
  %142 = call i32 @multiply_vol_data(%struct.TYPE_7__* %138, i64 %139, i64 %140, float* %141)
  br label %143

143:                                              ; preds = %137, %128
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %14, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %14, align 8
  br label %124

147:                                              ; preds = %124
  %148 = load float*, float** %7, align 8
  %149 = call i32 @free(float* %148)
  ret void
}

declare dso_local float* @malloc(i32) #1

declare dso_local float @get_source_volume(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @conv_time_to_frames(i64, i64) #1

declare dso_local i32 @da_erase(i64, %struct.audio_action*, i32) #1

declare dso_local i32 @apply_audio_action(%struct.TYPE_7__*, %struct.audio_action*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @multiply_vol_data(%struct.TYPE_7__*, i64, i64, float*) #1

declare dso_local i32 @free(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
