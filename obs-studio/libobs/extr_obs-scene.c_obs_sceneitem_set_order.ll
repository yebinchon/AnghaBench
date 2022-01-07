; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_set_order.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_set_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.obs_scene_item*, %struct.obs_scene_item*, %struct.obs_scene* }
%struct.obs_scene_item = type { %struct.obs_scene_item*, %struct.obs_scene_item* }
%struct.obs_scene = type { i32 }

@OBS_ORDER_MOVE_DOWN = common dso_local global i32 0, align 4
@OBS_ORDER_MOVE_UP = common dso_local global i32 0, align 4
@OBS_ORDER_MOVE_TOP = common dso_local global i32 0, align 4
@OBS_ORDER_MOVE_BOTTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_sceneitem_set_order(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.obs_scene_item*, align 8
  %6 = alloca %struct.obs_scene_item*, align 8
  %7 = alloca %struct.obs_scene*, align 8
  %8 = alloca %struct.obs_scene_item*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %104

12:                                               ; preds = %2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load %struct.obs_scene*, %struct.obs_scene** %14, align 8
  store %struct.obs_scene* %15, %struct.obs_scene** %7, align 8
  %16 = load %struct.obs_scene*, %struct.obs_scene** %7, align 8
  %17 = call i32 @obs_scene_addref(%struct.obs_scene* %16)
  %18 = load %struct.obs_scene*, %struct.obs_scene** %7, align 8
  %19 = call i32 @full_lock(%struct.obs_scene* %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.obs_scene_item*, %struct.obs_scene_item** %21, align 8
  store %struct.obs_scene_item* %22, %struct.obs_scene_item** %5, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.obs_scene_item*, %struct.obs_scene_item** %24, align 8
  store %struct.obs_scene_item* %25, %struct.obs_scene_item** %6, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = call i32 @detach_sceneitem(%struct.TYPE_6__* %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @OBS_ORDER_MOVE_DOWN, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %12
  %32 = load %struct.obs_scene*, %struct.obs_scene** %7, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %35 = icmp ne %struct.obs_scene_item* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %38 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %37, i32 0, i32 1
  %39 = load %struct.obs_scene_item*, %struct.obs_scene_item** %38, align 8
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi %struct.obs_scene_item* [ %39, %36 ], [ null, %40 ]
  %43 = call i32 @attach_sceneitem(%struct.obs_scene* %32, %struct.TYPE_6__* %33, %struct.obs_scene_item* %42)
  br label %97

44:                                               ; preds = %12
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @OBS_ORDER_MOVE_UP, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.obs_scene*, %struct.obs_scene** %7, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %52 = icmp ne %struct.obs_scene_item* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  br label %57

55:                                               ; preds = %48
  %56 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi %struct.obs_scene_item* [ %54, %53 ], [ %56, %55 ]
  %59 = call i32 @attach_sceneitem(%struct.obs_scene* %49, %struct.TYPE_6__* %50, %struct.obs_scene_item* %58)
  br label %96

60:                                               ; preds = %44
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @OBS_ORDER_MOVE_TOP, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %60
  %65 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  store %struct.obs_scene_item* %65, %struct.obs_scene_item** %8, align 8
  %66 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %67 = icmp ne %struct.obs_scene_item* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  store %struct.obs_scene_item* %69, %struct.obs_scene_item** %8, align 8
  br label %81

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %76, %70
  %72 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %73 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %72, i32 0, i32 0
  %74 = load %struct.obs_scene_item*, %struct.obs_scene_item** %73, align 8
  %75 = icmp ne %struct.obs_scene_item* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %78 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %77, i32 0, i32 0
  %79 = load %struct.obs_scene_item*, %struct.obs_scene_item** %78, align 8
  store %struct.obs_scene_item* %79, %struct.obs_scene_item** %8, align 8
  br label %71

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %68
  %82 = load %struct.obs_scene*, %struct.obs_scene** %7, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %84 = load %struct.obs_scene_item*, %struct.obs_scene_item** %8, align 8
  %85 = call i32 @attach_sceneitem(%struct.obs_scene* %82, %struct.TYPE_6__* %83, %struct.obs_scene_item* %84)
  br label %95

86:                                               ; preds = %60
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @OBS_ORDER_MOVE_BOTTOM, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = load %struct.obs_scene*, %struct.obs_scene** %7, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = call i32 @attach_sceneitem(%struct.obs_scene* %91, %struct.TYPE_6__* %92, %struct.obs_scene_item* null)
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %81
  br label %96

96:                                               ; preds = %95, %57
  br label %97

97:                                               ; preds = %96, %41
  %98 = load %struct.obs_scene*, %struct.obs_scene** %7, align 8
  %99 = call i32 @full_unlock(%struct.obs_scene* %98)
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = call i32 @signal_reorder(%struct.TYPE_6__* %100)
  %102 = load %struct.obs_scene*, %struct.obs_scene** %7, align 8
  %103 = call i32 @obs_scene_release(%struct.obs_scene* %102)
  br label %104

104:                                              ; preds = %97, %11
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
