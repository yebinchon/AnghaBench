; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_scene_load.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_scene_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene = type { i32, i8*, i8*, i64 }

@.str = private unnamed_addr constant [6 x i8] c"items\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"id_counter\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"custom_size\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"cy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @scene_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scene_load(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.obs_scene*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.obs_scene*
  store %struct.obs_scene* %11, %struct.obs_scene** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32* @obs_data_get_array(i32* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %13, i32** %6, align 8
  %14 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %15 = call i32 @remove_all_items(%struct.obs_scene* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %67

19:                                               ; preds = %2
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @obs_data_array_count(i32* %20)
  store i64 %21, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %22

22:                                               ; preds = %35, %19
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32* @obs_data_array_item(i32* %27, i64 %28)
  store i32* %29, i32** %9, align 8
  %30 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @scene_load_item(%struct.obs_scene* %30, i32* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @obs_data_release(i32* %33)
  br label %35

35:                                               ; preds = %26
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %22

38:                                               ; preds = %22
  %39 = load i32*, i32** %4, align 8
  %40 = call i64 @obs_data_has_user_value(i32* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32*, i32** %4, align 8
  %44 = call i64 @obs_data_get_int(i32* %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %46 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %45, i32 0, i32 3
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @obs_data_get_bool(i32* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load i32*, i32** %4, align 8
  %53 = call i64 @obs_data_get_int(i32* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %56 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i64 @obs_data_get_int(i32* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %59 = inttoptr i64 %58 to i8*
  %60 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %61 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.obs_scene*, %struct.obs_scene** %5, align 8
  %63 = getelementptr inbounds %struct.obs_scene, %struct.obs_scene* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %51, %47
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @obs_data_array_release(i32* %65)
  br label %67

67:                                               ; preds = %64, %18
  ret void
}

declare dso_local i32* @obs_data_get_array(i32*, i8*) #1

declare dso_local i32 @remove_all_items(%struct.obs_scene*) #1

declare dso_local i64 @obs_data_array_count(i32*) #1

declare dso_local i32* @obs_data_array_item(i32*, i64) #1

declare dso_local i32 @scene_load_item(%struct.obs_scene*, i32*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i64 @obs_data_has_user_value(i32*, i8*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i64 @obs_data_get_bool(i32*, i8*) #1

declare dso_local i32 @obs_data_array_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
