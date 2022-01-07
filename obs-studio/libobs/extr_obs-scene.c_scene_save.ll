; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_scene_save.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_scene_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene = type { i32, i32, i64, i32, %struct.obs_scene_item* }
%struct.obs_scene_item = type { %struct.obs_scene_item* }

@.str = private unnamed_addr constant [11 x i8] c"id_counter\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"custom_size\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"cy\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @scene_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scene_save(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.obs_scene*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.obs_scene_item*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.obs_scene*
  store %struct.obs_scene* %9, %struct.obs_scene** %5, align 8
  %10 = call i32* (...) @obs_data_array_create()
  store i32* %10, i32** %6, align 8
  %11 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %12 = call i32 @full_lock(%struct.obs_scene* %11)
  %13 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %14 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %13, i32 0, i32 4
  %15 = load %struct.obs_scene_item*, %struct.obs_scene_item** %14, align 8
  store %struct.obs_scene_item* %15, %struct.obs_scene_item** %7, align 8
  br label %16

16:                                               ; preds = %19, %2
  %17 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %18 = icmp ne %struct.obs_scene_item* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %22 = call i32 @scene_save_item(i32* %20, %struct.obs_scene_item* %21, i32* null)
  %23 = load %struct.obs_scene_item*, %struct.obs_scene_item** %7, align 8
  %24 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %23, i32 0, i32 0
  %25 = load %struct.obs_scene_item*, %struct.obs_scene_item** %24, align 8
  store %struct.obs_scene_item* %25, %struct.obs_scene_item** %7, align 8
  br label %16

26:                                               ; preds = %16
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %29 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @obs_data_set_int(i32* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %34 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @obs_data_set_bool(i32* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %38 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %26
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %44 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @obs_data_set_int(i32* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %49 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @obs_data_set_int(i32* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %41, %26
  %53 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %54 = call i32 @full_unlock(%struct.obs_scene* %53)
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @obs_data_set_array(i32* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @obs_data_array_release(i32* %58)
  ret void
}

declare dso_local i32* @obs_data_array_create(...) #1

declare dso_local i32 @full_lock(%struct.obs_scene*) #1

declare dso_local i32 @scene_save_item(i32*, %struct.obs_scene_item*, i32*) #1

declare dso_local i32 @obs_data_set_int(i32*, i8*, i32) #1

declare dso_local i32 @obs_data_set_bool(i32*, i8*, i64) #1

declare dso_local i32 @full_unlock(%struct.obs_scene*) #1

declare dso_local i32 @obs_data_set_array(i32*, i8*, i32*) #1

declare dso_local i32 @obs_data_array_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
