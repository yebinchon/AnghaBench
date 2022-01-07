; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_filter_async_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_filter_async_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.obs_source** }
%struct.obs_source = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.obs_source_frame* (i64, %struct.obs_source_frame*)* }
%struct.obs_source_frame = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_source_frame* @filter_async_video(%struct.TYPE_9__* %0, %struct.obs_source_frame* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.obs_source_frame*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.obs_source*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = call i32 @pthread_mutex_lock(i32* %8)
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %59, %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %14
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.obs_source**, %struct.obs_source*** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = sub i64 %22, 1
  %24 = getelementptr inbounds %struct.obs_source*, %struct.obs_source** %21, i64 %23
  %25 = load %struct.obs_source*, %struct.obs_source** %24, align 8
  store %struct.obs_source* %25, %struct.obs_source** %6, align 8
  %26 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %27 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  br label %59

31:                                               ; preds = %17
  %32 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %33 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %39 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.obs_source_frame* (i64, %struct.obs_source_frame*)*, %struct.obs_source_frame* (i64, %struct.obs_source_frame*)** %40, align 8
  %42 = icmp ne %struct.obs_source_frame* (i64, %struct.obs_source_frame*)* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %45 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.obs_source_frame* (i64, %struct.obs_source_frame*)*, %struct.obs_source_frame* (i64, %struct.obs_source_frame*)** %46, align 8
  %48 = load %struct.obs_source*, %struct.obs_source** %6, align 8
  %49 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %53 = call %struct.obs_source_frame* %47(i64 %51, %struct.obs_source_frame* %52)
  store %struct.obs_source_frame* %53, %struct.obs_source_frame** %4, align 8
  %54 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %55 = icmp ne %struct.obs_source_frame* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %62

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %37, %31
  br label %59

59:                                               ; preds = %58, %30
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %5, align 8
  br label %14

62:                                               ; preds = %56, %14
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = call i32 @pthread_mutex_unlock(i32* %64)
  %66 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  ret %struct.obs_source_frame* %66
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
