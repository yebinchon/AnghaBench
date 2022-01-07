; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_update_transforms_and_prune_sources.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_update_transforms_and_prune_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.obs_scene_item* }
%struct.darray = type { i32 }
%struct.obs_scene_item = type { %struct.obs_scene_item*, i32, %struct.TYPE_9__*, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.darray*, %struct.obs_scene_item*)* @update_transforms_and_prune_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_transforms_and_prune_sources(%struct.TYPE_8__* %0, %struct.darray* %1, %struct.obs_scene_item* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.darray*, align 8
  %6 = alloca %struct.obs_scene_item*, align 8
  %7 = alloca %struct.obs_scene_item*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.obs_scene_item*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.darray* %1, %struct.darray** %5, align 8
  store %struct.obs_scene_item* %2, %struct.obs_scene_item** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.obs_scene_item*, %struct.obs_scene_item** %12, align 8
  store %struct.obs_scene_item* %13, %struct.obs_scene_item** %7, align 8
  %14 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %15 = icmp ne %struct.obs_scene_item* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %18 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %17, i32 0, i32 4
  %19 = call i64 @os_atomic_load_bool(i32* %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %3
  %22 = phi i1 [ false, %3 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %73, %33, %21
  %25 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %26 = icmp ne %struct.obs_scene_item* %25, null
  br i1 %26, label %27, label %77

27:                                               ; preds = %24
  %28 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %29 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = call i64 @obs_source_removed(%struct.TYPE_9__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  store %struct.obs_scene_item* %34, %struct.obs_scene_item** %9, align 8
  %35 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %36 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %35, i32 0, i32 0
  %37 = load %struct.obs_scene_item*, %struct.obs_scene_item** %36, align 8
  store %struct.obs_scene_item* %37, %struct.obs_scene_item** %7, align 8
  %38 = load %struct.obs_scene_item*, %struct.obs_scene_item** %9, align 8
  %39 = call i32 @remove_without_release(%struct.obs_scene_item* %38)
  %40 = load %struct.darray*, %struct.darray** %5, align 8
  %41 = call i32 @darray_push_back(i32 8, %struct.darray* %40, %struct.obs_scene_item** %9)
  store i32 1, i32* %8, align 4
  br label %24

42:                                               ; preds = %27
  %43 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %44 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %49 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %48, i32 0, i32 2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %10, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = call i32 @video_lock(%struct.TYPE_8__* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = load %struct.darray*, %struct.darray** %5, align 8
  %58 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  call void @update_transforms_and_prune_sources(%struct.TYPE_8__* %56, %struct.darray* %57, %struct.obs_scene_item* %58)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = call i32 @video_unlock(%struct.TYPE_8__* %59)
  br label %61

61:                                               ; preds = %47, %42
  %62 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %63 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %62, i32 0, i32 1
  %64 = call i64 @os_atomic_load_bool(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %68 = call i64 @source_size_changed(%struct.obs_scene_item* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66, %61
  %71 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %72 = call i32 @update_item_transform(%struct.obs_scene_item* %71, i32 1)
  store i32 1, i32* %8, align 4
  br label %73

73:                                               ; preds = %70, %66
  %74 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %75 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %74, i32 0, i32 0
  %76 = load %struct.obs_scene_item*, %struct.obs_scene_item** %75, align 8
  store %struct.obs_scene_item* %76, %struct.obs_scene_item** %7, align 8
  br label %24

77:                                               ; preds = %24
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %82 = icmp ne %struct.obs_scene_item* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %85 = call i32 @resize_group(%struct.obs_scene_item* %84)
  br label %86

86:                                               ; preds = %83, %80, %77
  ret void
}

declare dso_local i64 @os_atomic_load_bool(i32*) #1

declare dso_local i64 @obs_source_removed(%struct.TYPE_9__*) #1

declare dso_local i32 @remove_without_release(%struct.obs_scene_item*) #1

declare dso_local i32 @darray_push_back(i32, %struct.darray*, %struct.obs_scene_item**) #1

declare dso_local i32 @video_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @video_unlock(%struct.TYPE_8__*) #1

declare dso_local i64 @source_size_changed(%struct.obs_scene_item*) #1

declare dso_local i32 @update_item_transform(%struct.obs_scene_item*, i32) #1

declare dso_local i32 @resize_group(%struct.obs_scene_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
