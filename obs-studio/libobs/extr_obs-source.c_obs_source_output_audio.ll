; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_output_audio.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_output_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.obs_source_audio = type { i32 }
%struct.obs_audio_data = type { i32, i32, i32* }
%struct.audio_data = type { i32, i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"obs_source_output_audio\00", align 1
@MAX_AV_PLANES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_source_output_audio(%struct.TYPE_7__* %0, %struct.obs_source_audio* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.obs_source_audio*, align 8
  %5 = alloca %struct.obs_audio_data*, align 8
  %6 = alloca %struct.audio_data, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.obs_source_audio* %1, %struct.obs_source_audio** %4, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = call i32 @obs_source_valid(%struct.TYPE_7__* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %72

12:                                               ; preds = %2
  %13 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %14 = call i32 @obs_ptr_valid(%struct.obs_source_audio* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %72

17:                                               ; preds = %12
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = load %struct.obs_source_audio*, %struct.obs_source_audio** %4, align 8
  %20 = call i32 @process_audio(%struct.TYPE_7__* %18, %struct.obs_source_audio* %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call i32 @pthread_mutex_lock(i32* %22)
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = call %struct.obs_audio_data* @filter_async_audio(%struct.TYPE_7__* %24, i32* %26)
  store %struct.obs_audio_data* %27, %struct.obs_audio_data** %5, align 8
  %28 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %29 = icmp ne %struct.obs_audio_data* %28, null
  br i1 %29, label %30, label %68

30:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %48, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @MAX_AV_PLANES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %31
  %36 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %37 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %42, i32* %47, align 4
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %31

51:                                               ; preds = %31
  %52 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %53 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.obs_audio_data*, %struct.obs_audio_data** %5, align 8
  %57 = getelementptr inbounds %struct.obs_audio_data, %struct.obs_audio_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.audio_data, %struct.audio_data* %6, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = call i32 @pthread_mutex_lock(i32* %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = call i32 @source_output_audio_data(%struct.TYPE_7__* %63, %struct.audio_data* %6)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = call i32 @pthread_mutex_unlock(i32* %66)
  br label %68

68:                                               ; preds = %51, %17
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = call i32 @pthread_mutex_unlock(i32* %70)
  br label %72

72:                                               ; preds = %68, %16, %11
  ret void
}

declare dso_local i32 @obs_source_valid(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @obs_ptr_valid(%struct.obs_source_audio*, i8*) #1

declare dso_local i32 @process_audio(%struct.TYPE_7__*, %struct.obs_source_audio*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.obs_audio_data* @filter_async_audio(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @source_output_audio_data(%struct.TYPE_7__*, %struct.audio_data*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
