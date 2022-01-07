; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_volmeter_process_peak.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_volmeter_process_peak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { double*, i32, i32* }
%struct.audio_data = type { i32, i64* }

@.str = private unnamed_addr constant [68 x i8] c"Audio plane %i is not aligned %p skipping peak volume measurement.\0A\00", align 1
@MAX_AUDIO_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.audio_data*, i32)* @volmeter_process_peak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @volmeter_process_peak(%struct.TYPE_4__* %0, %struct.audio_data* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.audio_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.audio_data* %1, %struct.audio_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.audio_data*, %struct.audio_data** %5, align 8
  %14 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %88, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %91

20:                                               ; preds = %16
  %21 = load %struct.audio_data*, %struct.audio_data** %5, align 8
  %22 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to float*
  store float* %28, float** %10, align 8
  %29 = load float*, float** %10, align 8
  %30 = icmp ne float* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %88

32:                                               ; preds = %20
  %33 = load float*, float** %10, align 8
  %34 = ptrtoint float* %33 to i64
  %35 = and i64 %34, 15
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = load float*, float** %10, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %38, float* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  store double 1.000000e+00, double* %46, align 8
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %88

49:                                               ; preds = %32
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @_mm_loadu_ps(i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %67 [
    i32 128, label %61
    i32 129, label %66
  ]

61:                                               ; preds = %49
  %62 = load i32, i32* %11, align 4
  %63 = load float*, float** %10, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call float @get_true_peak(i32 %62, float* %63, i32 %64)
  store float %65, float* %12, align 4
  br label %72

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %49, %66
  %68 = load i32, i32* %11, align 4
  %69 = load float*, float** %10, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call float @get_sample_peak(i32 %68, float* %69, i32 %70)
  store float %71, float* %12, align 4
  br label %72

72:                                               ; preds = %67, %61
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load float*, float** %10, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @volmeter_process_peak_last_samples(%struct.TYPE_4__* %73, i32 %74, float* %75, i32 %76)
  %78 = load float, float* %12, align 4
  %79 = fpext float %78 to double
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load double*, double** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %82, i64 %84
  store double %79, double* %85, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %72, %37, %31
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %16

91:                                               ; preds = %16
  br label %92

92:                                               ; preds = %103, %91
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load double*, double** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds double, double* %99, i64 %101
  store double 0.000000e+00, double* %102, align 8
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %92

106:                                              ; preds = %92
  ret void
}

declare dso_local i32 @printf(i8*, i32, float*) #1

declare dso_local i32 @_mm_loadu_ps(i32) #1

declare dso_local float @get_true_peak(i32, float*, i32) #1

declare dso_local float @get_sample_peak(i32, float*, i32) #1

declare dso_local i32 @volmeter_process_peak_last_samples(%struct.TYPE_4__*, i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
