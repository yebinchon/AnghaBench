; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_scene_find_source.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_scene_find_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene_item = type { %struct.obs_scene_item*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.obs_scene_item* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.obs_scene_item* @obs_scene_find_source(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.obs_scene_item*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.obs_scene_item*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = icmp ne %struct.TYPE_9__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.obs_scene_item* null, %struct.obs_scene_item** %3, align 8
  br label %38

10:                                               ; preds = %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = call i32 @full_lock(%struct.TYPE_9__* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.obs_scene_item*, %struct.obs_scene_item** %14, align 8
  store %struct.obs_scene_item* %15, %struct.obs_scene_item** %6, align 8
  br label %16

16:                                               ; preds = %30, %10
  %17 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %18 = icmp ne %struct.obs_scene_item* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %21 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcmp(i32 %25, i8* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %34

30:                                               ; preds = %19
  %31 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %32 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %31, i32 0, i32 0
  %33 = load %struct.obs_scene_item*, %struct.obs_scene_item** %32, align 8
  store %struct.obs_scene_item* %33, %struct.obs_scene_item** %6, align 8
  br label %16

34:                                               ; preds = %29, %16
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = call i32 @full_unlock(%struct.TYPE_9__* %35)
  %37 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  store %struct.obs_scene_item* %37, %struct.obs_scene_item** %3, align 8
  br label %38

38:                                               ; preds = %34, %9
  %39 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  ret %struct.obs_scene_item* %39
}

declare dso_local i32 @full_lock(%struct.TYPE_9__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @full_unlock(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
