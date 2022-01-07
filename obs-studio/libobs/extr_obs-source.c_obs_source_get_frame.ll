; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_get_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_get_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source_frame = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.obs_source_frame* }

@.str = private unnamed_addr constant [21 x i8] c"obs_source_get_frame\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_source_frame* @obs_source_get_frame(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.obs_source_frame*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.obs_source_frame*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.obs_source_frame* null, %struct.obs_source_frame** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = call i32 @obs_source_valid(%struct.TYPE_4__* %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.obs_source_frame* null, %struct.obs_source_frame** %2, align 8
  br label %29

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @pthread_mutex_lock(i32* %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.obs_source_frame*, %struct.obs_source_frame** %14, align 8
  store %struct.obs_source_frame* %15, %struct.obs_source_frame** %4, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store %struct.obs_source_frame* null, %struct.obs_source_frame** %17, align 8
  %18 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %19 = icmp ne %struct.obs_source_frame* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  %21 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %22 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %21, i32 0, i32 0
  %23 = call i32 @os_atomic_inc_long(i32* %22)
  br label %24

24:                                               ; preds = %20, %9
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @pthread_mutex_unlock(i32* %26)
  %28 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  store %struct.obs_source_frame* %28, %struct.obs_source_frame** %2, align 8
  br label %29

29:                                               ; preds = %24, %8
  %30 = load %struct.obs_source_frame*, %struct.obs_source_frame** %2, align 8
  ret %struct.obs_source_frame* %30
}

declare dso_local i32 @obs_source_valid(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @os_atomic_inc_long(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
