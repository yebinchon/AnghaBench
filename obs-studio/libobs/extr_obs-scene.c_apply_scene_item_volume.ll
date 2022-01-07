; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_apply_scene_item_volume.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_apply_scene_item_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene_item = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.item_action* }
%struct.item_action = type { i64 }

@AUDIO_OUTPUT_FRAMES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_scene_item*, float**, i64, i64)* @apply_scene_item_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_scene_item_volume(%struct.obs_scene_item* %0, float** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.obs_scene_item*, align 8
  %7 = alloca float**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.item_action, align 8
  %12 = alloca i64, align 8
  store %struct.obs_scene_item* %0, %struct.obs_scene_item** %6, align 8
  store float** %1, float*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %14 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %13, i32 0, i32 0
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  %16 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %17 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %26 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.item_action*, %struct.item_action** %27, align 8
  %29 = getelementptr inbounds %struct.item_action, %struct.item_action* %28, i64 0
  %30 = bitcast %struct.item_action* %11 to i8*
  %31 = bitcast %struct.item_action* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  br label %32

32:                                               ; preds = %24, %4
  %33 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %34 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %33, i32 0, i32 0
  %35 = call i32 @pthread_mutex_unlock(i32* %34)
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %32
  %39 = load i64, i64* @AUDIO_OUTPUT_FRAMES, align 8
  %40 = mul i64 %39, 1000000000
  %41 = load i64, i64* %9, align 8
  %42 = udiv i64 %40, %41
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.item_action, %struct.item_action* %11, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add i64 %48, %49
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %45, %38
  %53 = load %struct.obs_scene_item*, %struct.obs_scene_item** %6, align 8
  %54 = load float**, float*** %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @apply_scene_item_audio_actions(%struct.obs_scene_item* %53, float** %54, i64 %55, i64 %56)
  store i32 1, i32* %5, align 4
  br label %60

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %32
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %52
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @apply_scene_item_audio_actions(%struct.obs_scene_item*, float**, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
