; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_get_child_at_idx.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_get_child_at_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.obs_scene_item* }
%struct.obs_scene_item = type { i32*, %struct.obs_scene_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i64)* @get_child_at_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_child_at_idx(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.obs_scene_item*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  store %struct.obs_scene_item* %8, %struct.obs_scene_item** %5, align 8
  br label %9

9:                                                ; preds = %18, %2
  %10 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %11 = icmp ne %struct.obs_scene_item* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %4, align 8
  %15 = icmp ne i64 %13, 0
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %20 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %19, i32 0, i32 1
  %21 = load %struct.obs_scene_item*, %struct.obs_scene_item** %20, align 8
  store %struct.obs_scene_item* %21, %struct.obs_scene_item** %5, align 8
  br label %9

22:                                               ; preds = %16
  %23 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %24 = icmp ne %struct.obs_scene_item* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.obs_scene_item*, %struct.obs_scene_item** %5, align 8
  %27 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  br label %30

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i32* [ %28, %25 ], [ null, %29 ]
  ret i32* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
