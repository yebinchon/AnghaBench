; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_audio }
%struct.obs_core_audio = type { float, i32, i8*, i8*, i32 }
%struct.audio_output_info = type { i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@AUDIO_OUTPUT_SUCCESS = common dso_local global i32 0, align 4
@AUDIO_OUTPUT_INVALIDPARAM = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Invalid audio parameters specified\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Could not open audio output\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.audio_output_info*)* @obs_init_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_init_audio(%struct.audio_output_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audio_output_info*, align 8
  %4 = alloca %struct.obs_core_audio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.audio_output_info* %0, %struct.audio_output_info** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.obs_core_audio* %8, %struct.obs_core_audio** %4, align 8
  %9 = load %struct.obs_core_audio*, %struct.obs_core_audio** %4, align 8
  %10 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %9, i32 0, i32 4
  %11 = call i32 @pthread_mutex_init_value(i32* %10)
  %12 = call i64 @pthread_mutexattr_init(i32* %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %55

15:                                               ; preds = %1
  %16 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %17 = call i64 @pthread_mutexattr_settype(i32* %6, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %55

20:                                               ; preds = %15
  %21 = load %struct.obs_core_audio*, %struct.obs_core_audio** %4, align 8
  %22 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %21, i32 0, i32 4
  %23 = call i64 @pthread_mutex_init(i32* %22, i32* %6)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %55

26:                                               ; preds = %20
  %27 = load %struct.obs_core_audio*, %struct.obs_core_audio** %4, align 8
  %28 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %27, i32 0, i32 0
  store float 1.000000e+00, float* %28, align 8
  %29 = call i8* @bstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.obs_core_audio*, %struct.obs_core_audio** %4, align 8
  %31 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = call i8* @bstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.obs_core_audio*, %struct.obs_core_audio** %4, align 8
  %34 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.obs_core_audio*, %struct.obs_core_audio** %4, align 8
  %36 = getelementptr inbounds %struct.obs_core_audio, %struct.obs_core_audio* %35, i32 0, i32 1
  %37 = load %struct.audio_output_info*, %struct.audio_output_info** %3, align 8
  %38 = call i32 @audio_output_open(i32* %36, %struct.audio_output_info* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @AUDIO_OUTPUT_SUCCESS, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %55

43:                                               ; preds = %26
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @AUDIO_OUTPUT_INVALIDPARAM, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @LOG_ERROR, align 4
  %49 = call i32 @blog(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @LOG_ERROR, align 4
  %52 = call i32 @blog(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %42, %25, %19, %14
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @pthread_mutex_init_value(i32*) #1

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i32 @audio_output_open(i32*, %struct.audio_output_info*) #1

declare dso_local i32 @blog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
