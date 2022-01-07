; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio.c_mix_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio.c_mix_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_output_data = type { float** }
%struct.TYPE_3__ = type { i64, float*** }
%struct.ts_info = type { i64, i64 }

@AUDIO_OUTPUT_FRAMES = common dso_local global i64 0, align 8
@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_output_data*, %struct.TYPE_3__*, i64, i64, %struct.ts_info*)* @mix_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mix_audio(%struct.audio_output_data* %0, %struct.TYPE_3__* %1, i64 %2, i64 %3, %struct.ts_info* %4) #0 {
  %6 = alloca %struct.audio_output_data*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ts_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  store %struct.audio_output_data* %0, %struct.audio_output_data** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.ts_info* %4, %struct.ts_info** %10, align 8
  %18 = load i64, i64* @AUDIO_OUTPUT_FRAMES, align 8
  store i64 %18, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ts_info*, %struct.ts_info** %10, align 8
  %23 = getelementptr inbounds %struct.ts_info, %struct.ts_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %5
  %27 = load %struct.ts_info*, %struct.ts_info** %10, align 8
  %28 = getelementptr inbounds %struct.ts_info, %struct.ts_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26, %5
  br label %115

35:                                               ; preds = %26
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ts_info*, %struct.ts_info** %10, align 8
  %40 = getelementptr inbounds %struct.ts_info, %struct.ts_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %35
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ts_info*, %struct.ts_info** %10, align 8
  %49 = getelementptr inbounds %struct.ts_info, %struct.ts_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = call i64 @convert_time_to_frames(i64 %44, i64 %51)
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @AUDIO_OUTPUT_FRAMES, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %115

57:                                               ; preds = %43
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %11, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %57, %35
  store i64 0, i64* %13, align 8
  br label %62

62:                                               ; preds = %112, %61
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %115

66:                                               ; preds = %62
  store i64 0, i64* %14, align 8
  br label %67

67:                                               ; preds = %108, %66
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %111

71:                                               ; preds = %67
  %72 = load %struct.audio_output_data*, %struct.audio_output_data** %6, align 8
  %73 = load i64, i64* %13, align 8
  %74 = getelementptr inbounds %struct.audio_output_data, %struct.audio_output_data* %72, i64 %73
  %75 = getelementptr inbounds %struct.audio_output_data, %struct.audio_output_data* %74, i32 0, i32 0
  %76 = load float**, float*** %75, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds float*, float** %76, i64 %77
  %79 = load float*, float** %78, align 8
  store float* %79, float** %15, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load float***, float**** %81, align 8
  %83 = load i64, i64* %13, align 8
  %84 = getelementptr inbounds float**, float*** %82, i64 %83
  %85 = load float**, float*** %84, align 8
  %86 = load i64, i64* %14, align 8
  %87 = getelementptr inbounds float*, float** %85, i64 %86
  %88 = load float*, float** %87, align 8
  store float* %88, float** %16, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load float*, float** %15, align 8
  %91 = getelementptr inbounds float, float* %90, i64 %89
  store float* %91, float** %15, align 8
  %92 = load float*, float** %16, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds float, float* %92, i64 %93
  store float* %94, float** %17, align 8
  br label %95

95:                                               ; preds = %99, %71
  %96 = load float*, float** %16, align 8
  %97 = load float*, float** %17, align 8
  %98 = icmp ult float* %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load float*, float** %16, align 8
  %101 = getelementptr inbounds float, float* %100, i32 1
  store float* %101, float** %16, align 8
  %102 = load float, float* %100, align 4
  %103 = load float*, float** %15, align 8
  %104 = getelementptr inbounds float, float* %103, i32 1
  store float* %104, float** %15, align 8
  %105 = load float, float* %103, align 4
  %106 = fadd float %105, %102
  store float %106, float* %103, align 4
  br label %95

107:                                              ; preds = %95
  br label %108

108:                                              ; preds = %107
  %109 = load i64, i64* %14, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %14, align 8
  br label %67

111:                                              ; preds = %67
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %13, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %13, align 8
  br label %62

115:                                              ; preds = %34, %56, %62
  ret void
}

declare dso_local i64 @convert_time_to_frames(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
