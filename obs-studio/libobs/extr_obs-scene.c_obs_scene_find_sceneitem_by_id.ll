; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_scene_find_sceneitem_by_id.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_scene_find_sceneitem_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene_item = type { i64, %struct.obs_scene_item* }
%struct.TYPE_5__ = type { %struct.obs_scene_item* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_scene_item* @obs_scene_find_sceneitem_by_id(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.obs_scene_item*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.obs_scene_item*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.obs_scene_item* null, %struct.obs_scene_item** %3, align 8
  br label %34

10:                                               ; preds = %2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = call i32 @full_lock(%struct.TYPE_5__* %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.obs_scene_item*, %struct.obs_scene_item** %14, align 8
  store %struct.obs_scene_item* %15, %struct.obs_scene_item** %6, align 8
  br label %16

16:                                               ; preds = %26, %10
  %17 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %18 = icmp ne %struct.obs_scene_item* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %21 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %30

26:                                               ; preds = %19
  %27 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %28 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %27, i32 0, i32 1
  %29 = load %struct.obs_scene_item*, %struct.obs_scene_item** %28, align 8
  store %struct.obs_scene_item* %29, %struct.obs_scene_item** %6, align 8
  br label %16

30:                                               ; preds = %25, %16
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = call i32 @full_unlock(%struct.TYPE_5__* %31)
  %33 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  store %struct.obs_scene_item* %33, %struct.obs_scene_item** %3, align 8
  br label %34

34:                                               ; preds = %30, %9
  %35 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  ret %struct.obs_scene_item* %35
}

declare dso_local i32 @full_lock(%struct.TYPE_5__*) #1

declare dso_local i32 @full_unlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
