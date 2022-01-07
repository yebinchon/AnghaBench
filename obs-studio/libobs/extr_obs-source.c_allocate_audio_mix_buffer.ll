; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_allocate_audio_mix_buffer.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_allocate_audio_mix_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { float** }

@AUDIO_OUTPUT_FRAMES = common dso_local global i32 0, align 4
@MAX_AUDIO_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_source*)* @allocate_audio_mix_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_audio_mix_buffer(%struct.obs_source* %0) #0 {
  %2 = alloca %struct.obs_source*, align 8
  %3 = alloca i64, align 8
  %4 = alloca float*, align 8
  %5 = alloca i64, align 8
  store %struct.obs_source* %0, %struct.obs_source** %2, align 8
  %6 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %8, %10
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call float* @bzalloc(i64 %12)
  store float* %13, float** %4, align 8
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load float*, float** %4, align 8
  %21 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %5, align 8
  %24 = mul i64 %22, %23
  %25 = getelementptr inbounds float, float* %20, i64 %24
  %26 = load %struct.obs_source*, %struct.obs_source** %2, align 8
  %27 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %26, i32 0, i32 0
  %28 = load float**, float*** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds float*, float** %28, i64 %29
  store float* %25, float** %30, align 8
  br label %31

31:                                               ; preds = %19
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %14

34:                                               ; preds = %14
  ret void
}

declare dso_local float* @bzalloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
