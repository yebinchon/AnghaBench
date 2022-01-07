; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_set_visibility.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_set_visibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene_item = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_scene_item*, i32)* @set_visibility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_visibility(%struct.obs_scene_item* %0, i32 %1) #0 {
  %3 = alloca %struct.obs_scene_item*, align 8
  %4 = alloca i32, align 4
  store %struct.obs_scene_item* %0, %struct.obs_scene_item** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  %6 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %5, i32 0, i32 2
  %7 = call i32 @pthread_mutex_lock(i32* %6)
  %8 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  %9 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @da_resize(i32 %10, i32 0)
  %12 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  %13 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %12, i32 0, i32 3
  %14 = call i64 @os_atomic_load_long(i32* %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %16
  %20 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  %21 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %20, i32 0, i32 5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  %26 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @obs_source_remove_active_child(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %19, %16
  br label %44

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  %35 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  %40 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @obs_source_add_active_child(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %33, %30
  br label %44

44:                                               ; preds = %43, %29
  %45 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  %46 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %45, i32 0, i32 3
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = call i32 @os_atomic_set_long(i32* %46, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  %54 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  %57 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  %59 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %58, i32 0, i32 2
  %60 = call i32 @pthread_mutex_unlock(i32* %59)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @da_resize(i32, i32) #1

declare dso_local i64 @os_atomic_load_long(i32*) #1

declare dso_local i32 @obs_source_remove_active_child(i32, i32) #1

declare dso_local i32 @obs_source_add_active_child(i32, i32) #1

declare dso_local i32 @os_atomic_set_long(i32*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
