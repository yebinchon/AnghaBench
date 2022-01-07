; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_invert-audio-polarity.c_invert_polarity_filter_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_invert-audio-polarity.c_invert_polarity_filter_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_audio_data = type { i32, i64 }

@MAX_AV_PLANES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.obs_audio_data* (i8*, %struct.obs_audio_data*)* @invert_polarity_filter_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.obs_audio_data* @invert_polarity_filter_audio(i8* %0, %struct.obs_audio_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.obs_audio_data*, align 8
  %5 = alloca float**, align 8
  %6 = alloca i64, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.obs_audio_data* %1, %struct.obs_audio_data** %4, align 8
  %9 = load %struct.obs_audio_data*, %struct.obs_audio_data** %4, align 8
  %10 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to float**
  store float** %12, float*** %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %42, %2
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @MAX_AV_PLANES, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load float**, float*** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds float*, float** %18, i64 %19
  %21 = load float*, float** %20, align 8
  store float* %21, float** %7, align 8
  %22 = load float*, float** %7, align 8
  %23 = load %struct.obs_audio_data*, %struct.obs_audio_data** %4, align 8
  %24 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %22, i64 %26
  store float* %27, float** %8, align 8
  %28 = load float*, float** %7, align 8
  %29 = icmp ne float* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  br label %45

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %36, %31
  %33 = load float*, float** %7, align 8
  %34 = load float*, float** %8, align 8
  %35 = icmp ult float* %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load float*, float** %7, align 8
  %38 = getelementptr inbounds float, float* %37, i32 1
  store float* %38, float** %7, align 8
  %39 = load float, float* %37, align 4
  %40 = fmul float %39, -1.000000e+00
  store float %40, float* %37, align 4
  br label %32

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %13

45:                                               ; preds = %30, %13
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @UNUSED_PARAMETER(i8* %46)
  %48 = load %struct.obs_audio_data*, %struct.obs_audio_data** %4, align 8
  ret %struct.obs_audio_data* %48
}

declare dso_local i32 @UNUSED_PARAMETER(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
