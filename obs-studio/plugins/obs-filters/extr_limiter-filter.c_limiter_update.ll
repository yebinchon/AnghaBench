; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_limiter-filter.c_limiter_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_limiter-filter.c_limiter_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.limiter_data = type { float, i64, i64, float, i64, i32, i8*, i8* }

@ATK_TIME = common dso_local global float 0.000000e+00, align 4
@S_RELEASE_TIME = common dso_local global i32 0, align 4
@S_THRESHOLD = common dso_local global i32 0, align 4
@MS_IN_S_F = common dso_local global float 0.000000e+00, align 4
@DEFAULT_AUDIO_BUF_MS = common dso_local global i64 0, align 8
@MS_IN_S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @limiter_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @limiter_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.limiter_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.limiter_data*
  store %struct.limiter_data* %13, %struct.limiter_data** %5, align 8
  %14 = call i32 (...) @obs_get_audio()
  %15 = call i64 @audio_output_get_sample_rate(i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = call i32 (...) @obs_get_audio()
  %17 = call i64 @audio_output_get_channels(i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load float, float* @ATK_TIME, align 4
  store float %18, float* %8, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @S_RELEASE_TIME, align 4
  %21 = call i64 @obs_data_get_int(i32* %19, i32 %20)
  %22 = sitofp i64 %21 to float
  store float %22, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @S_THRESHOLD, align 4
  %25 = call i64 @obs_data_get_double(i32* %23, i32 %24)
  %26 = sitofp i64 %25 to float
  %27 = load %struct.limiter_data*, %struct.limiter_data** %5, align 8
  %28 = getelementptr inbounds %struct.limiter_data, %struct.limiter_data* %27, i32 0, i32 0
  store float %26, float* %28, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load float, float* %8, align 4
  %31 = load float, float* @MS_IN_S_F, align 4
  %32 = fdiv float %30, %31
  %33 = call i8* @gain_coefficient(i64 %29, float %32)
  %34 = load %struct.limiter_data*, %struct.limiter_data** %5, align 8
  %35 = getelementptr inbounds %struct.limiter_data, %struct.limiter_data* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load float, float* %9, align 4
  %38 = load float, float* @MS_IN_S_F, align 4
  %39 = fdiv float %37, %38
  %40 = call i8* @gain_coefficient(i64 %36, float %39)
  %41 = load %struct.limiter_data*, %struct.limiter_data** %5, align 8
  %42 = getelementptr inbounds %struct.limiter_data, %struct.limiter_data* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = call i32 @db_to_mul(float 0.000000e+00)
  %44 = load %struct.limiter_data*, %struct.limiter_data** %5, align 8
  %45 = getelementptr inbounds %struct.limiter_data, %struct.limiter_data* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.limiter_data*, %struct.limiter_data** %5, align 8
  %48 = getelementptr inbounds %struct.limiter_data, %struct.limiter_data* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.limiter_data*, %struct.limiter_data** %5, align 8
  %51 = getelementptr inbounds %struct.limiter_data, %struct.limiter_data* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.limiter_data*, %struct.limiter_data** %5, align 8
  %53 = getelementptr inbounds %struct.limiter_data, %struct.limiter_data* %52, i32 0, i32 3
  store float 1.000000e+00, float* %53, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @DEFAULT_AUDIO_BUF_MS, align 8
  %56 = mul i64 %54, %55
  %57 = load i64, i64* @MS_IN_S, align 8
  %58 = udiv i64 %56, %57
  store i64 %58, i64* %11, align 8
  %59 = load %struct.limiter_data*, %struct.limiter_data** %5, align 8
  %60 = getelementptr inbounds %struct.limiter_data, %struct.limiter_data* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %2
  %64 = load %struct.limiter_data*, %struct.limiter_data** %5, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @resize_env_buffer(%struct.limiter_data* %64, i64 %65)
  br label %67

67:                                               ; preds = %63, %2
  ret void
}

declare dso_local i64 @audio_output_get_sample_rate(i32) #1

declare dso_local i32 @obs_get_audio(...) #1

declare dso_local i64 @audio_output_get_channels(i32) #1

declare dso_local i64 @obs_data_get_int(i32*, i32) #1

declare dso_local i64 @obs_data_get_double(i32*, i32) #1

declare dso_local i8* @gain_coefficient(i64, float) #1

declare dso_local i32 @db_to_mul(float) #1

declare dso_local i32 @resize_env_buffer(%struct.limiter_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
