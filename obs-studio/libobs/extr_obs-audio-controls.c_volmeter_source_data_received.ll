; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_volmeter_source_data_received.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-audio-controls.c_volmeter_source_data_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_data = type { i32 }
%struct.obs_volmeter = type { float*, float*, i32, i32 }

@MAX_AUDIO_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.audio_data*, i32)* @volmeter_source_data_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @volmeter_source_data_received(i8* %0, i32* %1, %struct.audio_data* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.audio_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.obs_volmeter*, align 8
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.audio_data* %2, %struct.audio_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.obs_volmeter*
  store %struct.obs_volmeter* %17, %struct.obs_volmeter** %9, align 8
  %18 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca float, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca float, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %25 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca float, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %28 = load %struct.obs_volmeter*, %struct.obs_volmeter** %9, align 8
  %29 = getelementptr inbounds %struct.obs_volmeter, %struct.obs_volmeter* %28, i32 0, i32 2
  %30 = call i32 @pthread_mutex_lock(i32* %29)
  %31 = load %struct.obs_volmeter*, %struct.obs_volmeter** %9, align 8
  %32 = load %struct.audio_data*, %struct.audio_data** %7, align 8
  %33 = call i32 @volmeter_process_audio_data(%struct.obs_volmeter* %31, %struct.audio_data* %32)
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %42

37:                                               ; preds = %4
  %38 = load %struct.obs_volmeter*, %struct.obs_volmeter** %9, align 8
  %39 = getelementptr inbounds %struct.obs_volmeter, %struct.obs_volmeter* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call float @db_to_mul(i32 %40)
  br label %42

42:                                               ; preds = %37, %36
  %43 = phi float [ 0.000000e+00, %36 ], [ %41, %37 ]
  store float %43, float* %10, align 4
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %86, %42
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @MAX_AUDIO_CHANNELS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %89

48:                                               ; preds = %44
  %49 = load %struct.obs_volmeter*, %struct.obs_volmeter** %9, align 8
  %50 = getelementptr inbounds %struct.obs_volmeter, %struct.obs_volmeter* %49, i32 0, i32 0
  %51 = load float*, float** %50, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  %55 = load float, float* %54, align 4
  %56 = load float, float* %10, align 4
  %57 = fmul float %55, %56
  %58 = call float @mul_to_db(float %57)
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %21, i64 %60
  store float %58, float* %61, align 4
  %62 = load %struct.obs_volmeter*, %struct.obs_volmeter** %9, align 8
  %63 = getelementptr inbounds %struct.obs_volmeter, %struct.obs_volmeter* %62, i32 0, i32 1
  %64 = load float*, float** %63, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  %68 = load float, float* %67, align 4
  %69 = load float, float* %10, align 4
  %70 = fmul float %68, %69
  %71 = call float @mul_to_db(float %70)
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %24, i64 %73
  store float %71, float* %74, align 4
  %75 = load %struct.obs_volmeter*, %struct.obs_volmeter** %9, align 8
  %76 = getelementptr inbounds %struct.obs_volmeter, %struct.obs_volmeter* %75, i32 0, i32 1
  %77 = load float*, float** %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = call float @mul_to_db(float %81)
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %27, i64 %84
  store float %82, float* %85, align 4
  br label %86

86:                                               ; preds = %48
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  br label %44

89:                                               ; preds = %44
  %90 = load %struct.obs_volmeter*, %struct.obs_volmeter** %9, align 8
  %91 = getelementptr inbounds %struct.obs_volmeter, %struct.obs_volmeter* %90, i32 0, i32 2
  %92 = call i32 @pthread_mutex_unlock(i32* %91)
  %93 = load %struct.obs_volmeter*, %struct.obs_volmeter** %9, align 8
  %94 = call i32 @signal_levels_updated(%struct.obs_volmeter* %93, float* %21, float* %24, float* %27)
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @UNUSED_PARAMETER(i32* %95)
  %97 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %97)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pthread_mutex_lock(i32*) #2

declare dso_local i32 @volmeter_process_audio_data(%struct.obs_volmeter*, %struct.audio_data*) #2

declare dso_local float @db_to_mul(i32) #2

declare dso_local float @mul_to_db(float) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #2

declare dso_local i32 @signal_levels_updated(%struct.obs_volmeter*, float*, float*, float*) #2

declare dso_local i32 @UNUSED_PARAMETER(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
