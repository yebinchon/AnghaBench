; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_signal_item_remove.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_signal_item_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene_item = type { i32 }
%struct.calldata = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"item_remove\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_scene_item*)* @signal_item_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @signal_item_remove(%struct.obs_scene_item* %0) #0 {
  %2 = alloca %struct.obs_scene_item*, align 8
  %3 = alloca %struct.calldata, align 4
  %4 = alloca [128 x i32], align 16
  store %struct.obs_scene_item* %0, %struct.obs_scene_item** %2, align 8
  %5 = getelementptr inbounds [128 x i32], [128 x i32]* %4, i64 0, i64 0
  %6 = call i32 @calldata_init_fixed(%struct.calldata* %3, i32* %5, i32 512)
  %7 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %8 = call i32 @calldata_set_ptr(%struct.calldata* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.obs_scene_item* %7)
  %9 = load %struct.obs_scene_item*, %struct.obs_scene_item** %2, align 8
  %10 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @signal_parent(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.calldata* %3)
  ret void
}

declare dso_local i32 @calldata_init_fixed(%struct.calldata*, i32*, i32) #1

declare dso_local i32 @calldata_set_ptr(%struct.calldata*, i8*, %struct.obs_scene_item*) #1

declare dso_local i32 @signal_parent(i32, i8*, %struct.calldata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
