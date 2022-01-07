; ModuleID = '/home/carl/AnghaBench/obs-studio/test/test-input/extr_sync-pair-aud.c_sync_pair_aud_thread.c'
source_filename = "/home/carl/AnghaBench/obs-studio/test/test-input/extr_sync-pair-aud.c_sync_pair_aud_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sync_pair_aud = type { i32, i32 }
%struct.video_output_info = type { i32, i32 }
%struct.obs_source_audio = type { i32, i32, i32, i32, i32, i32** }

@EAGAIN = common dso_local global i64 0, align 8
@rate = common dso_local global double 0.000000e+00, align 8
@M_PI_X2 = common dso_local global double 0.000000e+00, align 8
@SPEAKERS_MONO = common dso_local global i32 0, align 4
@AUDIO_FORMAT_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @sync_pair_aud_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sync_pair_aud_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sync_pair_aud*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.video_output_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.obs_source_audio, align 8
  store i8* %0, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = bitcast i8* %16 to %struct.sync_pair_aud*
  store %struct.sync_pair_aud* %17, %struct.sync_pair_aud** %3, align 8
  %18 = call i32 (...) @obs_get_audio()
  %19 = call i32 @audio_output_get_sample_rate(i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sdiv i32 %20, 100
  store i32 %21, i32* %5, align 4
  %22 = call i32 (...) @obs_get_video_frame_time()
  store i32 %22, i32* %6, align 4
  store double 0.000000e+00, double* %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call float* @malloc(i32 %26)
  store float* %27, float** %8, align 8
  %28 = call i32 (...) @obs_get_video()
  %29 = call i32 @video_output_get_frame_time(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = call i32 (...) @obs_get_video()
  %31 = call %struct.video_output_info* @video_output_get_info(i32 %30)
  store %struct.video_output_info* %31, %struct.video_output_info** %10, align 8
  %32 = load %struct.video_output_info*, %struct.video_output_info** %10, align 8
  %33 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.video_output_info*, %struct.video_output_info** %10, align 8
  %36 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %105, %1
  %39 = load %struct.sync_pair_aud*, %struct.sync_pair_aud** %3, align 8
  %40 = getelementptr inbounds %struct.sync_pair_aud, %struct.sync_pair_aud* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @os_event_try(i32 %41)
  %43 = load i64, i64* @EAGAIN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %125

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 10000000
  store i32 %47, i32* %6, align 4
  %48 = call i32 @os_sleepto_ns(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = call i32 (...) @obs_get_video_frame_time()
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %45
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %102, %52
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %105

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 1000000000
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = udiv i64 %62, %64
  %66 = add i64 %59, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i64 @whitelist_time(i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %57
  %75 = load double, double* @rate, align 8
  %76 = load double, double* @M_PI_X2, align 8
  %77 = fmul double %75, %76
  %78 = load double, double* %7, align 8
  %79 = fadd double %78, %77
  store double %79, double* %7, align 8
  %80 = load double, double* %7, align 8
  %81 = load double, double* @M_PI_X2, align 8
  %82 = fcmp ogt double %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load double, double* @M_PI_X2, align 8
  %85 = load double, double* %7, align 8
  %86 = fsub double %85, %84
  store double %86, double* %7, align 8
  br label %87

87:                                               ; preds = %83, %74
  %88 = load double, double* %7, align 8
  %89 = call double @cos(double %88) #3
  %90 = fmul double %89, 5.000000e-01
  %91 = fptrunc double %90 to float
  %92 = load float*, float** %8, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds float, float* %92, i64 %94
  store float %91, float* %95, align 4
  br label %101

96:                                               ; preds = %57
  %97 = load float*, float** %8, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %97, i64 %99
  store float 0.000000e+00, float* %100, align 4
  br label %101

101:                                              ; preds = %96, %87
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %53

105:                                              ; preds = %53
  %106 = load float*, float** %8, align 8
  %107 = bitcast float* %106 to i32*
  %108 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %15, i32 0, i32 5
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  store i32* %107, i32** %110, align 8
  %111 = load i32, i32* %5, align 4
  %112 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %15, i32 0, i32 0
  store i32 %111, i32* %112, align 8
  %113 = load i32, i32* @SPEAKERS_MONO, align 4
  %114 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %15, i32 0, i32 4
  store i32 %113, i32* %114, align 8
  %115 = load i32, i32* %4, align 4
  %116 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %15, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* %6, align 4
  %118 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %15, i32 0, i32 2
  store i32 %117, i32* %118, align 8
  %119 = load i32, i32* @AUDIO_FORMAT_FLOAT, align 4
  %120 = getelementptr inbounds %struct.obs_source_audio, %struct.obs_source_audio* %15, i32 0, i32 3
  store i32 %119, i32* %120, align 4
  %121 = load %struct.sync_pair_aud*, %struct.sync_pair_aud** %3, align 8
  %122 = getelementptr inbounds %struct.sync_pair_aud, %struct.sync_pair_aud* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @obs_source_output_audio(i32 %123, %struct.obs_source_audio* %15)
  br label %38

125:                                              ; preds = %38
  %126 = load float*, float** %8, align 8
  %127 = call i32 @free(float* %126)
  ret i8* null
}

declare dso_local i32 @audio_output_get_sample_rate(i32) #1

declare dso_local i32 @obs_get_audio(...) #1

declare dso_local i32 @obs_get_video_frame_time(...) #1

declare dso_local float* @malloc(i32) #1

declare dso_local i32 @video_output_get_frame_time(i32) #1

declare dso_local i32 @obs_get_video(...) #1

declare dso_local %struct.video_output_info* @video_output_get_info(i32) #1

declare dso_local i64 @os_event_try(i32) #1

declare dso_local i32 @os_sleepto_ns(i32) #1

declare dso_local i64 @whitelist_time(i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #2

declare dso_local i32 @obs_source_output_audio(i32, %struct.obs_source_audio*) #1

declare dso_local i32 @free(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
