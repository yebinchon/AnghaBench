; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_allocate_audio_output_buffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_allocate_audio_output_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { float*** }

@AUDIO_OUTPUT_FRAMES = common dso_local global i32 0, align 4
@MAX_AUDIO_CHANNELS = common dso_local global i32 0, align 4
@MAX_AUDIO_MIXES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_source*)* @allocate_audio_output_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_audio_output_buffer(%struct.obs_source* %0) #0 {
  %2 = alloca %struct.obs_source*, align 8
  %3 = alloca i64, align 8
  %4 = alloca float*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.obs_source* %0, %struct.obs_source** %2, align 8
  %8 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %10, %12
  %14 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %13, %15
  store i64 %16, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call float* @bzalloc(i64 %17)
  store float* %18, float** %4, align 8
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %58, %1
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @MAX_AUDIO_MIXES, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %25, %27
  %29 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %28, %30
  store i64 %31, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %54, %24
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = load float*, float** %4, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds float, float* %38, i64 %39
  %41 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %7, align 8
  %44 = mul i64 %42, %43
  %45 = getelementptr inbounds float, float* %40, i64 %44
  %46 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %47 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %46, i32 0, i32 0
  %48 = load float***, float**** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds float**, float*** %48, i64 %49
  %51 = load float**, float*** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds float*, float** %51, i64 %52
  store float* %45, float** %53, align 8
  br label %54

54:                                               ; preds = %37
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %32

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %5, align 8
  br label %19

61:                                               ; preds = %19
  ret void
}

declare dso_local float* @bzalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
