; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_attach_sceneitem.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_attach_sceneitem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene = type { %struct.obs_scene_item* }
%struct.obs_scene_item = type { %struct.obs_scene_item*, %struct.obs_scene_item*, %struct.obs_scene* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_scene*, %struct.obs_scene_item*, %struct.obs_scene_item*)* @attach_sceneitem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attach_sceneitem(%struct.obs_scene* %0, %struct.obs_scene_item* %1, %struct.obs_scene_item* %2) #0 {
  %4 = alloca %struct.obs_scene*, align 8
  %5 = alloca %struct.obs_scene_item*, align 8
  %6 = alloca %struct.obs_scene_item*, align 8
  store %struct.obs_scene* %0, %struct.obs_scene** %4, align 8
  store %struct.obs_scene_item* %1, %struct.obs_scene_item** %5, align 8
  store %struct.obs_scene_item* %2, %struct.obs_scene_item** %6, align 8
  %7 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %8 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %9 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %8, i32 0, i32 0
  store %struct.obs_scene_item* %7, %struct.obs_scene_item** %9, align 8
  %10 = load %struct.obs_scene*, %struct.obs_scene** %4, align 8
  %11 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %12 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %11, i32 0, i32 2
  store %struct.obs_scene* %10, %struct.obs_scene** %12, align 8
  %13 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %14 = icmp ne %struct.obs_scene_item* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %3
  %16 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %17 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %16, i32 0, i32 1
  %18 = load %struct.obs_scene_item*, %struct.obs_scene_item** %17, align 8
  %19 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %20 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %19, i32 0, i32 1
  store %struct.obs_scene_item* %18, %struct.obs_scene_item** %20, align 8
  %21 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %22 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %21, i32 0, i32 1
  %23 = load %struct.obs_scene_item*, %struct.obs_scene_item** %22, align 8
  %24 = icmp ne %struct.obs_scene_item* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %27 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %28 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %27, i32 0, i32 1
  %29 = load %struct.obs_scene_item*, %struct.obs_scene_item** %28, align 8
  %30 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %29, i32 0, i32 0
  store %struct.obs_scene_item* %26, %struct.obs_scene_item** %30, align 8
  br label %31

31:                                               ; preds = %25, %15
  %32 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %33 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %34 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %33, i32 0, i32 1
  store %struct.obs_scene_item* %32, %struct.obs_scene_item** %34, align 8
  br label %55

35:                                               ; preds = %3
  %36 = load %struct.obs_scene*, %struct.obs_scene** %4, align 8
  %37 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %36, i32 0, i32 0
  %38 = load %struct.obs_scene_item*, %struct.obs_scene_item** %37, align 8
  %39 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %40 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %39, i32 0, i32 1
  store %struct.obs_scene_item* %38, %struct.obs_scene_item** %40, align 8
  %41 = load %struct.obs_scene*, %struct.obs_scene** %4, align 8
  %42 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %41, i32 0, i32 0
  %43 = load %struct.obs_scene_item*, %struct.obs_scene_item** %42, align 8
  %44 = icmp ne %struct.obs_scene_item* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %47 = load %struct.obs_scene*, %struct.obs_scene** %4, align 8
  %48 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %47, i32 0, i32 0
  %49 = load %struct.obs_scene_item*, %struct.obs_scene_item** %48, align 8
  %50 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %49, i32 0, i32 0
  store %struct.obs_scene_item* %46, %struct.obs_scene_item** %50, align 8
  br label %51

51:                                               ; preds = %45, %35
  %52 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %53 = load %struct.obs_scene*, %struct.obs_scene** %4, align 8
  %54 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %53, i32 0, i32 0
  store %struct.obs_scene_item* %52, %struct.obs_scene_item** %54, align 8
  br label %55

55:                                               ; preds = %51, %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
