; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_output_video_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_output_video_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.obs_source_frame = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"obs_source_output_video\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.obs_source_frame*)* @obs_source_output_video_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_source_output_video_internal(%struct.TYPE_5__* %0, %struct.obs_source_frame* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.obs_source_frame*, align 8
  %5 = alloca %struct.obs_source_frame*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = call i32 @obs_source_valid(%struct.TYPE_5__* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %51

10:                                               ; preds = %2
  %11 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %12 = icmp ne %struct.obs_source_frame* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  br label %51

16:                                               ; preds = %10
  %17 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %18 = icmp ne %struct.obs_source_frame* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %22 = call %struct.obs_source_frame* @cache_video(%struct.TYPE_5__* %20, %struct.obs_source_frame* %21)
  br label %24

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi %struct.obs_source_frame* [ %22, %19 ], [ null, %23 ]
  store %struct.obs_source_frame* %25, %struct.obs_source_frame** %5, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = call i32 @pthread_mutex_lock(i32* %27)
  %29 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %30 = icmp ne %struct.obs_source_frame* %29, null
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %33 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %32, i32 0, i32 0
  %34 = call i64 @os_atomic_dec_long(i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.obs_source_frame*, %struct.obs_source_frame** %5, align 8
  %38 = call i32 @obs_source_frame_destroy(%struct.obs_source_frame* %37)
  store %struct.obs_source_frame* null, %struct.obs_source_frame** %5, align 8
  br label %46

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @da_push_back(i32 %42, %struct.obs_source_frame** %5)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %39, %36
  br label %47

47:                                               ; preds = %46, %24
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = call i32 @pthread_mutex_unlock(i32* %49)
  br label %51

51:                                               ; preds = %47, %13, %9
  ret void
}

declare dso_local i32 @obs_source_valid(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.obs_source_frame* @cache_video(%struct.TYPE_5__*, %struct.obs_source_frame*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @os_atomic_dec_long(i32*) #1

declare dso_local i32 @obs_source_frame_destroy(%struct.obs_source_frame*) #1

declare dso_local i32 @da_push_back(i32, %struct.obs_source_frame**) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
