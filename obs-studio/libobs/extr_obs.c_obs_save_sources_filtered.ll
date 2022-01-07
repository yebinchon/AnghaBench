; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_save_sources_filtered.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_save_sources_filtered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.obs_core_data }
%struct.obs_core_data = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64 }

@obs = common dso_local global %struct.TYPE_11__* null, align 8
@OBS_SOURCE_TYPE_FILTER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_save_sources_filtered(i64 (i8*, %struct.TYPE_10__*)* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64 (i8*, %struct.TYPE_10__*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.obs_core_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  store i64 (i8*, %struct.TYPE_10__*)* %0, i64 (i8*, %struct.TYPE_10__*)** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** @obs, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %66

13:                                               ; preds = %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** @obs, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store %struct.obs_core_data* %15, %struct.obs_core_data** %6, align 8
  %16 = call i32* (...) @obs_data_array_create()
  store i32* %16, i32** %7, align 8
  %17 = load %struct.obs_core_data*, %struct.obs_core_data** %6, align 8
  %18 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %17, i32 0, i32 0
  %19 = call i32 @pthread_mutex_lock(i32* %18)
  %20 = load %struct.obs_core_data*, %struct.obs_core_data** %6, align 8
  %21 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %8, align 8
  br label %23

23:                                               ; preds = %55, %13
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %25 = icmp ne %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %61

26:                                               ; preds = %23
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OBS_SOURCE_TYPE_FILTER, align 8
  %32 = icmp ne i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %26
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %35
  %42 = load i64 (i8*, %struct.TYPE_10__*)*, i64 (i8*, %struct.TYPE_10__*)** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %45 = call i64 %42(i8* %43, %struct.TYPE_10__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = call i32* @obs_save_source(%struct.TYPE_10__* %48)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @obs_data_array_push_back(i32* %50, i32* %51)
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @obs_data_release(i32* %53)
  br label %55

55:                                               ; preds = %47, %41, %35, %26
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %8, align 8
  br label %23

61:                                               ; preds = %23
  %62 = load %struct.obs_core_data*, %struct.obs_core_data** %6, align 8
  %63 = getelementptr inbounds %struct.obs_core_data, %struct.obs_core_data* %62, i32 0, i32 0
  %64 = call i32 @pthread_mutex_unlock(i32* %63)
  %65 = load i32*, i32** %7, align 8
  store i32* %65, i32** %3, align 8
  br label %66

66:                                               ; preds = %61, %12
  %67 = load i32*, i32** %3, align 8
  ret i32* %67
}

declare dso_local i32* @obs_data_array_create(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32* @obs_save_source(%struct.TYPE_10__*) #1

declare dso_local i32 @obs_data_array_push_back(i32*, i32*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
