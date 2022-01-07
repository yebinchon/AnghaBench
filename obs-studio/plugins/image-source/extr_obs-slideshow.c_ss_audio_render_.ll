; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_obs-slideshow.c_ss_audio_render_.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/image-source/extr_obs-slideshow.c_ss_audio_render_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source_audio_mix = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { float** }

@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8
@AUDIO_OUTPUT_FRAMES = common dso_local global i32 0, align 4
@MAX_AUDIO_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, %struct.obs_source_audio_mix*, i32, i64, i64)* @ss_audio_render_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ss_audio_render_(i32* %0, i64* %1, %struct.obs_source_audio_mix* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.obs_source_audio_mix*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.obs_source_audio_mix, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store %struct.obs_source_audio_mix* %2, %struct.obs_source_audio_mix** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i64 @obs_source_audio_pending(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %91

24:                                               ; preds = %6
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @obs_source_get_audio_timestamp(i32* %25)
  store i64 %26, i64* %15, align 8
  %27 = load i64, i64* %15, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %91

30:                                               ; preds = %24
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @obs_source_get_audio_mix(i32* %31, %struct.obs_source_audio_mix* %14)
  store i64 0, i64* %16, align 8
  br label %33

33:                                               ; preds = %83, %30
  %34 = load i64, i64* %16, align 8
  %35 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %86

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = load i64, i64* %16, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 1, %40
  %42 = and i32 %38, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %83

45:                                               ; preds = %37
  store i64 0, i64* %17, align 8
  br label %46

46:                                               ; preds = %79, %45
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %82

50:                                               ; preds = %46
  %51 = load %struct.obs_source_audio_mix*, %struct.obs_source_audio_mix** %10, align 8
  %52 = getelementptr inbounds %struct.obs_source_audio_mix, %struct.obs_source_audio_mix* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i64, i64* %16, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load float**, float*** %56, align 8
  %58 = load i64, i64* %17, align 8
  %59 = getelementptr inbounds float*, float** %57, i64 %58
  %60 = load float*, float** %59, align 8
  store float* %60, float** %18, align 8
  %61 = getelementptr inbounds %struct.obs_source_audio_mix, %struct.obs_source_audio_mix* %14, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i64, i64* %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load float**, float*** %65, align 8
  %67 = load i64, i64* %17, align 8
  %68 = getelementptr inbounds float*, float** %66, i64 %67
  %69 = load float*, float** %68, align 8
  store float* %69, float** %19, align 8
  %70 = load float*, float** %18, align 8
  %71 = load float*, float** %19, align 8
  %72 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %73 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = trunc i64 %76 to i32
  %78 = call i32 @memcpy(float* %70, float* %71, i32 %77)
  br label %79

79:                                               ; preds = %50
  %80 = load i64, i64* %17, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %17, align 8
  br label %46

82:                                               ; preds = %46
  br label %83

83:                                               ; preds = %82, %44
  %84 = load i64, i64* %16, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %16, align 8
  br label %33

86:                                               ; preds = %33
  %87 = load i64, i64* %15, align 8
  %88 = load i64*, i64** %9, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i64, i64* %13, align 8
  %90 = call i32 @UNUSED_PARAMETER(i64 %89)
  store i32 1, i32* %7, align 4
  br label %91

91:                                               ; preds = %86, %29, %23
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i64 @obs_source_audio_pending(i32*) #1

declare dso_local i64 @obs_source_get_audio_timestamp(i32*) #1

declare dso_local i32 @obs_source_get_audio_mix(i32*, %struct.obs_source_audio_mix*) #1

declare dso_local i32 @memcpy(float*, float*, i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
