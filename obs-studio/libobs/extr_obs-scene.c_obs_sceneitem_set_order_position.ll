; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_set_order_position.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_set_order_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.obs_scene* }
%struct.obs_scene = type { %struct.obs_scene_item* }
%struct.obs_scene_item = type { %struct.obs_scene_item* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_sceneitem_set_order_position(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.obs_scene*, align 8
  %6 = alloca %struct.obs_scene_item*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = icmp ne %struct.TYPE_6__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %60

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.obs_scene*, %struct.obs_scene** %13, align 8
  store %struct.obs_scene* %14, %struct.obs_scene** %5, align 8
  %15 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %16 = call i32 @obs_scene_addref(%struct.obs_scene* %15)
  %17 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %18 = call i32 @full_lock(%struct.obs_scene* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = call i32 @detach_sceneitem(%struct.TYPE_6__* %19)
  %21 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %22 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %21, i32 0, i32 0
  %23 = load %struct.obs_scene_item*, %struct.obs_scene_item** %22, align 8
  store %struct.obs_scene_item* %23, %struct.obs_scene_item** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %11
  %27 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = call i32 @attach_sceneitem(%struct.obs_scene* %27, %struct.TYPE_6__* %28, %struct.obs_scene_item* null)
  br label %53

30:                                               ; preds = %11
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %45, %30
  %33 = load i32, i32* %7, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %37 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %36, i32 0, i32 0
  %38 = load %struct.obs_scene_item*, %struct.obs_scene_item** %37, align 8
  %39 = icmp eq %struct.obs_scene_item* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %48

41:                                               ; preds = %35
  %42 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %43 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %42, i32 0, i32 0
  %44 = load %struct.obs_scene_item*, %struct.obs_scene_item** %43, align 8
  store %struct.obs_scene_item* %44, %struct.obs_scene_item** %6, align 8
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %7, align 4
  br label %32

48:                                               ; preds = %40, %32
  %49 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %52 = call i32 @attach_sceneitem(%struct.obs_scene* %49, %struct.TYPE_6__* %50, %struct.obs_scene_item* %51)
  br label %53

53:                                               ; preds = %48, %26
  %54 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %55 = call i32 @full_unlock(%struct.obs_scene* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = call i32 @signal_reorder(%struct.TYPE_6__* %56)
  %58 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %59 = call i32 @obs_scene_release(%struct.obs_scene* %58)
  br label %60

60:                                               ; preds = %53, %10
  ret void
}

declare dso_local i32 @obs_scene_addref(%struct.obs_scene*) #1

declare dso_local i32 @full_lock(%struct.obs_scene*) #1

declare dso_local i32 @detach_sceneitem(%struct.TYPE_6__*) #1

declare dso_local i32 @attach_sceneitem(%struct.obs_scene*, %struct.TYPE_6__*, %struct.obs_scene_item*) #1

declare dso_local i32 @full_unlock(%struct.obs_scene*) #1

declare dso_local i32 @signal_reorder(%struct.TYPE_6__*) #1

declare dso_local i32 @obs_scene_release(%struct.obs_scene*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
