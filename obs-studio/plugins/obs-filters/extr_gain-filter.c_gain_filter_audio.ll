; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gain-filter.c_gain_filter_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gain-filter.c_gain_filter_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_audio_data = type { i64, i64* }
%struct.gain_data = type { i64, float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_audio_data* (i8*, %struct.obs_audio_data*)* @gain_filter_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_audio_data* @gain_filter_audio(i8* %0, %struct.obs_audio_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.obs_audio_data*, align 8
  %5 = alloca %struct.gain_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca float**, align 8
  %8 = alloca float, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.obs_audio_data* %1, %struct.obs_audio_data** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.gain_data*
  store %struct.gain_data* %12, %struct.gain_data** %5, align 8
  %13 = load %struct.gain_data*, %struct.gain_data** %5, align 8
  %14 = getelementptr inbounds %struct.gain_data, %struct.gain_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %6, align 8
  %16 = load %struct.obs_audio_data*, %struct.obs_audio_data** %4, align 8
  %17 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = bitcast i64* %18 to float**
  store float** %19, float*** %7, align 8
  %20 = load %struct.gain_data*, %struct.gain_data** %5, align 8
  %21 = getelementptr inbounds %struct.gain_data, %struct.gain_data* %20, i32 0, i32 1
  %22 = load float, float* %21, align 8
  store float %22, float* %8, align 4
  store i64 0, i64* %9, align 8
  br label %23

23:                                               ; preds = %57, %2
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = load %struct.obs_audio_data*, %struct.obs_audio_data** %4, align 8
  %29 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %27
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.obs_audio_data*, %struct.obs_audio_data** %4, align 8
  %39 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load float, float* %8, align 4
  %44 = load float**, float*** %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds float*, float** %44, i64 %45
  %47 = load float*, float** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds float, float* %47, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fmul float %50, %43
  store float %51, float* %49, align 4
  br label %52

52:                                               ; preds = %42
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %10, align 8
  br label %36

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %55, %27
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %23

60:                                               ; preds = %23
  %61 = load %struct.obs_audio_data*, %struct.obs_audio_data** %4, align 8
  ret %struct.obs_audio_data* %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
