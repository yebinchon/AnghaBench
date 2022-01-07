; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_set_volume.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_set_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { float, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.audio_action = type { float, i32, i32 }
%struct.calldata = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"obs_source_set_volume\00", align 1
@AUDIO_ACTION_VOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"volume\00", align 1
@obs = common dso_local global %struct.TYPE_9__* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"source_volume\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_source_set_volume(%struct.TYPE_8__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca float, align 4
  %5 = alloca %struct.audio_action, align 4
  %6 = alloca %struct.calldata, align 4
  %7 = alloca [128 x i32], align 16
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store float %1, float* %4, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = call i64 @obs_source_valid(%struct.TYPE_8__* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %55

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %5, i32 0, i32 0
  %13 = load float, float* %4, align 4
  store float %13, float* %12, align 4
  %14 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %5, i32 0, i32 1
  %15 = load i32, i32* @AUDIO_ACTION_VOL, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.audio_action, %struct.audio_action* %5, i32 0, i32 2
  %17 = call i32 (...) @os_gettime_ns()
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds [128 x i32], [128 x i32]* %7, i64 0, i64 0
  %19 = call i32 @calldata_init_fixed(%struct.calldata* %6, i32* %18, i32 512)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = call i32 @calldata_set_ptr(%struct.calldata* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %20)
  %22 = load float, float* %4, align 4
  %23 = call i32 @calldata_set_float(%struct.calldata* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), float %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @signal_handler_signal(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.calldata* %6)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %11
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** @obs, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @signal_handler_signal(i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), %struct.calldata* %6)
  br label %39

39:                                               ; preds = %34, %11
  %40 = call i64 @calldata_float(%struct.calldata* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %41 = sitofp i64 %40 to float
  store float %41, float* %4, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = call i32 @pthread_mutex_lock(i32* %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @da_push_back(i32 %47, %struct.audio_action* %5)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = call i32 @pthread_mutex_unlock(i32* %50)
  %52 = load float, float* %4, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  store float %52, float* %54, align 4
  br label %55

55:                                               ; preds = %39, %2
  ret void
}

declare dso_local i64 @obs_source_valid(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @os_gettime_ns(...) #1

declare dso_local i32 @calldata_init_fixed(%struct.calldata*, i32*, i32) #1

declare dso_local i32 @calldata_set_ptr(%struct.calldata*, i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @calldata_set_float(%struct.calldata*, i8*, float) #1

declare dso_local i32 @signal_handler_signal(i32, i8*, %struct.calldata*) #1

declare dso_local i64 @calldata_float(%struct.calldata*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @da_push_back(i32, %struct.audio_action*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
