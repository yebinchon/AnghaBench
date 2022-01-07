; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_group_ungroup.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_group_ungroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_22__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_sceneitem_group_ungroup(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %10 = icmp ne %struct.TYPE_21__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %1
  br label %74

17:                                               ; preds = %11
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %3, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %4, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %5, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = call i32 @full_lock(%struct.TYPE_22__* %28)
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %31 = call i32 @full_lock(%struct.TYPE_22__* %30)
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  store %struct.TYPE_21__* %34, %struct.TYPE_21__** %6, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %7, align 8
  br label %36

36:                                               ; preds = %60, %17
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %38 = icmp ne %struct.TYPE_21__* %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %36
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = call i32 @remove_group_transform(%struct.TYPE_21__* %40, %struct.TYPE_21__* %41)
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %48 = call %struct.TYPE_21__* @obs_scene_add_internal(%struct.TYPE_22__* %43, %struct.TYPE_19__* %46, %struct.TYPE_21__* %47)
  store %struct.TYPE_21__* %48, %struct.TYPE_21__** %8, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %51 = call i32 @duplicate_item_data(%struct.TYPE_21__* %49, %struct.TYPE_21__* %50, i32 1, i32 1, i32 1)
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %54 = call i32 @apply_group_transform(%struct.TYPE_21__* %52, %struct.TYPE_21__* %53)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = icmp ne %struct.TYPE_21__* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %39
  br label %65

60:                                               ; preds = %39
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* %61, %struct.TYPE_21__** %5, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  store %struct.TYPE_21__* %64, %struct.TYPE_21__** %7, align 8
  br label %36

65:                                               ; preds = %59, %36
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %67 = call i32 @full_unlock(%struct.TYPE_22__* %66)
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %69 = call i32 @detach_sceneitem(%struct.TYPE_21__* %68)
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %71 = call i32 @full_unlock(%struct.TYPE_22__* %70)
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %73 = call i32 @obs_sceneitem_release(%struct.TYPE_21__* %72)
  br label %74

74:                                               ; preds = %65, %16
  ret void
}

declare dso_local i32 @full_lock(%struct.TYPE_22__*) #1

declare dso_local i32 @remove_group_transform(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @obs_scene_add_internal(%struct.TYPE_22__*, %struct.TYPE_19__*, %struct.TYPE_21__*) #1

declare dso_local i32 @duplicate_item_data(%struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @apply_group_transform(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @full_unlock(%struct.TYPE_22__*) #1

declare dso_local i32 @detach_sceneitem(%struct.TYPE_21__*) #1

declare dso_local i32 @obs_sceneitem_release(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
