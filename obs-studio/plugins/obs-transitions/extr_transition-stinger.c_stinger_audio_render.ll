; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-stinger.c_stinger_audio_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-transitions/extr_transition-stinger.c_stinger_audio_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source_audio_mix = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { float** }
%struct.stinger_info = type { i32, i32, i32, i32 }

@MAX_AUDIO_MIXES = common dso_local global i64 0, align 8
@AUDIO_OUTPUT_FRAMES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, %struct.obs_source_audio_mix*, i32, i64, i64)* @stinger_audio_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stinger_audio_render(i8* %0, i64* %1, %struct.obs_source_audio_mix* %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.obs_source_audio_mix*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.stinger_info*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.obs_source_audio_mix, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  store i8* %0, i8** %8, align 8
  store i64* %1, i64** %9, align 8
  store %struct.obs_source_audio_mix* %2, %struct.obs_source_audio_mix** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = bitcast i8* %23 to %struct.stinger_info*
  store %struct.stinger_info* %24, %struct.stinger_info** %14, align 8
  store i64 0, i64* %15, align 8
  %25 = load %struct.stinger_info*, %struct.stinger_info** %14, align 8
  %26 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @obs_source_audio_pending(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %6
  %31 = load %struct.stinger_info*, %struct.stinger_info** %14, align 8
  %32 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @obs_source_get_audio_timestamp(i32 %33)
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* %15, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %138

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %6
  %40 = load %struct.stinger_info*, %struct.stinger_info** %14, align 8
  %41 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i64*, i64** %9, align 8
  %44 = load %struct.obs_source_audio_mix*, %struct.obs_source_audio_mix** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load %struct.stinger_info*, %struct.stinger_info** %14, align 8
  %49 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.stinger_info*, %struct.stinger_info** %14, align 8
  %52 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @obs_transition_audio_render(i32 %42, i64* %43, %struct.obs_source_audio_mix* %44, i32 %45, i64 %46, i64 %47, i32 %50, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i64, i64* %15, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %7, align 4
  br label %138

59:                                               ; preds = %39
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i64, i64* %15, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63, %59
  %69 = load i64, i64* %15, align 8
  %70 = load i64*, i64** %9, align 8
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.stinger_info*, %struct.stinger_info** %14, align 8
  %73 = getelementptr inbounds %struct.stinger_info, %struct.stinger_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @obs_source_get_audio_mix(i32 %74, %struct.obs_source_audio_mix* %17)
  store i64 0, i64* %18, align 8
  br label %76

76:                                               ; preds = %134, %71
  %77 = load i64, i64* %18, align 8
  %78 = load i64, i64* @MAX_AUDIO_MIXES, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %137

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = load i64, i64* %18, align 8
  %83 = trunc i64 %82 to i32
  %84 = shl i32 1, %83
  %85 = and i32 %81, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %134

88:                                               ; preds = %80
  store i64 0, i64* %19, align 8
  br label %89

89:                                               ; preds = %130, %88
  %90 = load i64, i64* %19, align 8
  %91 = load i64, i64* %12, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %133

93:                                               ; preds = %89
  %94 = load %struct.obs_source_audio_mix*, %struct.obs_source_audio_mix** %10, align 8
  %95 = getelementptr inbounds %struct.obs_source_audio_mix, %struct.obs_source_audio_mix* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i64, i64* %18, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load float**, float*** %99, align 8
  %101 = load i64, i64* %19, align 8
  %102 = getelementptr inbounds float*, float** %100, i64 %101
  %103 = load float*, float** %102, align 8
  store float* %103, float** %20, align 8
  %104 = getelementptr inbounds %struct.obs_source_audio_mix, %struct.obs_source_audio_mix* %17, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i64, i64* %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load float**, float*** %108, align 8
  %110 = load i64, i64* %19, align 8
  %111 = getelementptr inbounds float*, float** %109, i64 %110
  %112 = load float*, float** %111, align 8
  store float* %112, float** %21, align 8
  %113 = load float*, float** %21, align 8
  %114 = load i32, i32* @AUDIO_OUTPUT_FRAMES, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  store float* %116, float** %22, align 8
  br label %117

117:                                              ; preds = %121, %93
  %118 = load float*, float** %21, align 8
  %119 = load float*, float** %22, align 8
  %120 = icmp ult float* %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load float*, float** %21, align 8
  %123 = getelementptr inbounds float, float* %122, i32 1
  store float* %123, float** %21, align 8
  %124 = load float, float* %122, align 4
  %125 = load float*, float** %20, align 8
  %126 = getelementptr inbounds float, float* %125, i32 1
  store float* %126, float** %20, align 8
  %127 = load float, float* %125, align 4
  %128 = fadd float %127, %124
  store float %128, float* %125, align 4
  br label %117

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %19, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %19, align 8
  br label %89

133:                                              ; preds = %89
  br label %134

134:                                              ; preds = %133, %87
  %135 = load i64, i64* %18, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %18, align 8
  br label %76

137:                                              ; preds = %76
  store i32 1, i32* %7, align 4
  br label %138

138:                                              ; preds = %137, %57, %37
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @obs_source_audio_pending(i32) #1

declare dso_local i64 @obs_source_get_audio_timestamp(i32) #1

declare dso_local i32 @obs_transition_audio_render(i32, i64*, %struct.obs_source_audio_mix*, i32, i64, i64, i32, i32) #1

declare dso_local i32 @obs_source_get_audio_mix(i32, %struct.obs_source_audio_mix*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
