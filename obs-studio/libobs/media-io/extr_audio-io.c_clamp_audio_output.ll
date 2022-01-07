; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_clamp_audio_output.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/media-io/extr_audio-io.c_clamp_audio_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_output = type { i64, %struct.audio_mix* }
%struct.audio_mix = type { float**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audio_output*, i64)* @clamp_audio_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clamp_audio_output(%struct.audio_output* %0, i64 %1) #0 {
  %3 = alloca %struct.audio_output*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.audio_mix*, align 8
  %8 = alloca i64, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  store %struct.audio_output* %0, %struct.audio_output** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = udiv i64 %12, 4
  store i64 %13, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %76, %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %79

18:                                               ; preds = %14
  %19 = load %struct.audio_output*, %struct.audio_output** %3, align 8
  %20 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %19, i32 0, i32 1
  %21 = load %struct.audio_mix*, %struct.audio_mix** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %21, i64 %22
  store %struct.audio_mix* %23, %struct.audio_mix** %7, align 8
  %24 = load %struct.audio_mix*, %struct.audio_mix** %7, align 8
  %25 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %76

30:                                               ; preds = %18
  store i64 0, i64* %8, align 8
  br label %31

31:                                               ; preds = %72, %30
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.audio_output*, %struct.audio_output** %3, align 8
  %34 = getelementptr inbounds %struct.audio_output, %struct.audio_output* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %31
  %38 = load %struct.audio_mix*, %struct.audio_mix** %7, align 8
  %39 = getelementptr inbounds %struct.audio_mix, %struct.audio_mix* %38, i32 0, i32 0
  %40 = load float**, float*** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds float*, float** %40, i64 %41
  %43 = load float*, float** %42, align 8
  store float* %43, float** %9, align 8
  %44 = load float*, float** %9, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds float, float* %44, i64 %45
  store float* %46, float** %10, align 8
  br label %47

47:                                               ; preds = %66, %37
  %48 = load float*, float** %9, align 8
  %49 = load float*, float** %10, align 8
  %50 = icmp ult float* %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %47
  %52 = load float*, float** %9, align 8
  %53 = load float, float* %52, align 4
  store float %53, float* %11, align 4
  %54 = load float, float* %11, align 4
  %55 = fcmp ogt float %54, 1.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %59

57:                                               ; preds = %51
  %58 = load float, float* %11, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi float [ 1.000000e+00, %56 ], [ %58, %57 ]
  store float %60, float* %11, align 4
  %61 = load float, float* %11, align 4
  %62 = fcmp olt float %61, -1.000000e+00
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %66

64:                                               ; preds = %59
  %65 = load float, float* %11, align 4
  br label %66

66:                                               ; preds = %64, %63
  %67 = phi float [ -1.000000e+00, %63 ], [ %65, %64 ]
  store float %67, float* %11, align 4
  %68 = load float, float* %11, align 4
  %69 = load float*, float** %9, align 8
  %70 = getelementptr inbounds float, float* %69, i32 1
  store float* %70, float** %9, align 8
  store float %68, float* %69, align 4
  br label %47

71:                                               ; preds = %47
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %31

75:                                               ; preds = %31
  br label %76

76:                                               ; preds = %75, %29
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %6, align 8
  br label %14

79:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
