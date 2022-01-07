; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_process_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source-transition.c_process_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.obs_source_audio_mix = type { %struct.audio_output_data* }
%struct.audio_output_data = type { float** }

@AUDIO_OUTPUT_FRAMES = common dso_local global i64 0, align 8
@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_6__*, %struct.obs_source_audio_mix*, i64, i32, i64, i64, i32)* @process_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_audio(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, %struct.obs_source_audio_mix* %2, i64 %3, i32 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.obs_source_audio_mix*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.obs_source_audio_mix, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.audio_output_data*, align 8
  %23 = alloca %struct.audio_output_data*, align 8
  %24 = alloca i64, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %10, align 8
  store %struct.obs_source_audio_mix* %2, %struct.obs_source_audio_mix** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %28 = icmp ne %struct.TYPE_6__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %8
  %36 = phi i1 [ false, %8 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %115

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %19, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = call i32 @obs_source_get_audio_mix(%struct.TYPE_6__* %45, %struct.obs_source_audio_mix* %18)
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* %19, align 8
  %49 = load i64, i64* %12, align 8
  %50 = sub nsw i64 %48, %49
  %51 = call i64 @ns_to_audio_frames(i64 %47, i64 %50)
  store i64 %51, i64* %20, align 8
  %52 = load i64, i64* %20, align 8
  %53 = load i64, i64* @AUDIO_OUTPUT_FRAMES, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %115

56:                                               ; preds = %41
  store i64 0, i64* %21, align 8
  br label %57

57:                                               ; preds = %112, %56
  %58 = load i64, i64* %21, align 8
  %59 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %115

61:                                               ; preds = %57
  %62 = load %struct.obs_source_audio_mix*, %struct.obs_source_audio_mix** %11, align 8
  %63 = getelementptr inbounds %struct.obs_source_audio_mix, %struct.obs_source_audio_mix* %62, i32 0, i32 0
  %64 = load %struct.audio_output_data*, %struct.audio_output_data** %63, align 8
  %65 = load i64, i64* %21, align 8
  %66 = getelementptr inbounds %struct.audio_output_data, %struct.audio_output_data* %64, i64 %65
  store %struct.audio_output_data* %66, %struct.audio_output_data** %22, align 8
  %67 = getelementptr inbounds %struct.obs_source_audio_mix, %struct.obs_source_audio_mix* %18, i32 0, i32 0
  %68 = load %struct.audio_output_data*, %struct.audio_output_data** %67, align 8
  %69 = load i64, i64* %21, align 8
  %70 = getelementptr inbounds %struct.audio_output_data, %struct.audio_output_data* %68, i64 %69
  store %struct.audio_output_data* %70, %struct.audio_output_data** %23, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i64, i64* %21, align 8
  %73 = trunc i64 %72 to i32
  %74 = shl i32 1, %73
  %75 = and i32 %71, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %61
  br label %112

78:                                               ; preds = %61
  store i64 0, i64* %24, align 8
  br label %79

79:                                               ; preds = %108, %78
  %80 = load i64, i64* %24, align 8
  %81 = load i64, i64* %14, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %79
  %84 = load %struct.audio_output_data*, %struct.audio_output_data** %22, align 8
  %85 = getelementptr inbounds %struct.audio_output_data, %struct.audio_output_data* %84, i32 0, i32 0
  %86 = load float**, float*** %85, align 8
  %87 = load i64, i64* %24, align 8
  %88 = getelementptr inbounds float*, float** %86, i64 %87
  %89 = load float*, float** %88, align 8
  store float* %89, float** %25, align 8
  %90 = load %struct.audio_output_data*, %struct.audio_output_data** %23, align 8
  %91 = getelementptr inbounds %struct.audio_output_data, %struct.audio_output_data* %90, i32 0, i32 0
  %92 = load float**, float*** %91, align 8
  %93 = load i64, i64* %24, align 8
  %94 = getelementptr inbounds float*, float** %92, i64 %93
  %95 = load float*, float** %94, align 8
  store float* %95, float** %26, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %97 = load float*, float** %25, align 8
  %98 = load i64, i64* %20, align 8
  %99 = getelementptr inbounds float, float* %97, i64 %98
  %100 = load float*, float** %26, align 8
  %101 = load i64, i64* @AUDIO_OUTPUT_FRAMES, align 8
  %102 = load i64, i64* %20, align 8
  %103 = sub i64 %101, %102
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* %19, align 8
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @mix_child(%struct.TYPE_6__* %96, float* %99, float* %100, i64 %103, i64 %104, i64 %105, i32 %106)
  br label %108

108:                                              ; preds = %83
  %109 = load i64, i64* %24, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %24, align 8
  br label %79

111:                                              ; preds = %79
  br label %112

112:                                              ; preds = %111, %77
  %113 = load i64, i64* %21, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %21, align 8
  br label %57

115:                                              ; preds = %40, %55, %57
  ret void
}

declare dso_local i32 @obs_source_get_audio_mix(%struct.TYPE_6__*, %struct.obs_source_audio_mix*) #1

declare dso_local i64 @ns_to_audio_frames(i64, i64) #1

declare dso_local i32 @mix_child(%struct.TYPE_6__*, float*, float*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
