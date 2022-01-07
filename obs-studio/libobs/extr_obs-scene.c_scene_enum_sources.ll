; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_scene_enum_sources.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_scene_enum_sources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene = type { i32, %struct.obs_scene_item* }
%struct.obs_scene_item = type { i32, i32, %struct.obs_scene_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32 (i32, i32, i8*)*, i8*, i32)* @scene_enum_sources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scene_enum_sources(i8* %0, i32 (i32, i32, i8*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32 (i32, i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.obs_scene*, align 8
  %10 = alloca %struct.obs_scene_item*, align 8
  %11 = alloca %struct.obs_scene_item*, align 8
  store i8* %0, i8** %5, align 8
  store i32 (i32, i32, i8*)* %1, i32 (i32, i32, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.obs_scene*
  store %struct.obs_scene* %13, %struct.obs_scene** %9, align 8
  %14 = load %struct.obs_scene*, %struct.obs_scene** %9, align 8
  %15 = call i32 @full_lock(%struct.obs_scene* %14)
  %16 = load %struct.obs_scene*, %struct.obs_scene** %9, align 8
  %17 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %16, i32 0, i32 1
  %18 = load %struct.obs_scene_item*, %struct.obs_scene_item** %17, align 8
  store %struct.obs_scene_item* %18, %struct.obs_scene_item** %10, align 8
  br label %19

19:                                               ; preds = %45, %4
  %20 = load %struct.obs_scene_item*, %struct.obs_scene_item** %10, align 8
  %21 = icmp ne %struct.obs_scene_item* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load %struct.obs_scene_item*, %struct.obs_scene_item** %10, align 8
  %24 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %23, i32 0, i32 2
  %25 = load %struct.obs_scene_item*, %struct.obs_scene_item** %24, align 8
  store %struct.obs_scene_item* %25, %struct.obs_scene_item** %11, align 8
  %26 = load %struct.obs_scene_item*, %struct.obs_scene_item** %10, align 8
  %27 = call i32 @obs_sceneitem_addref(%struct.obs_scene_item* %26)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.obs_scene_item*, %struct.obs_scene_item** %10, align 8
  %32 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %31, i32 0, i32 1
  %33 = call i64 @os_atomic_load_long(i32* %32)
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30, %22
  %36 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %6, align 8
  %37 = load %struct.obs_scene*, %struct.obs_scene** %9, align 8
  %38 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.obs_scene_item*, %struct.obs_scene_item** %10, align 8
  %41 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 %36(i32 %39, i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %35, %30
  %46 = load %struct.obs_scene_item*, %struct.obs_scene_item** %10, align 8
  %47 = call i32 @obs_sceneitem_release(%struct.obs_scene_item* %46)
  %48 = load %struct.obs_scene_item*, %struct.obs_scene_item** %11, align 8
  store %struct.obs_scene_item* %48, %struct.obs_scene_item** %10, align 8
  br label %19

49:                                               ; preds = %19
  %50 = load %struct.obs_scene*, %struct.obs_scene** %9, align 8
  %51 = call i32 @full_unlock(%struct.obs_scene* %50)
  ret void
}

declare dso_local i32 @full_lock(%struct.obs_scene*) #1

declare dso_local i32 @obs_sceneitem_addref(%struct.obs_scene_item*) #1

declare dso_local i64 @os_atomic_load_long(i32*) #1

declare dso_local i32 @obs_sceneitem_release(%struct.obs_scene_item*) #1

declare dso_local i32 @full_unlock(%struct.obs_scene*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
