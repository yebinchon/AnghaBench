; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_get_crop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_obs_sceneitem_get_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_sceneitem_crop = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"obs_sceneitem_get_crop\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @obs_sceneitem_get_crop(%struct.obs_sceneitem_crop* %0, %struct.obs_sceneitem_crop* %1) #0 {
  %3 = alloca %struct.obs_sceneitem_crop*, align 8
  %4 = alloca %struct.obs_sceneitem_crop*, align 8
  store %struct.obs_sceneitem_crop* %0, %struct.obs_sceneitem_crop** %3, align 8
  store %struct.obs_sceneitem_crop* %1, %struct.obs_sceneitem_crop** %4, align 8
  %5 = load %struct.obs_sceneitem_crop*, %struct.obs_sceneitem_crop** %3, align 8
  %6 = call i32 @obs_ptr_valid(%struct.obs_sceneitem_crop* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %19

9:                                                ; preds = %2
  %10 = load %struct.obs_sceneitem_crop*, %struct.obs_sceneitem_crop** %4, align 8
  %11 = call i32 @obs_ptr_valid(%struct.obs_sceneitem_crop* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %19

14:                                               ; preds = %9
  %15 = load %struct.obs_sceneitem_crop*, %struct.obs_sceneitem_crop** %4, align 8
  %16 = load %struct.obs_sceneitem_crop*, %struct.obs_sceneitem_crop** %3, align 8
  %17 = getelementptr inbounds %struct.obs_sceneitem_crop, %struct.obs_sceneitem_crop* %16, i32 0, i32 0
  %18 = call i32 @memcpy(%struct.obs_sceneitem_crop* %15, i32* %17, i32 4)
  br label %19

19:                                               ; preds = %14, %13, %8
  ret void
}

declare dso_local i32 @obs_ptr_valid(%struct.obs_sceneitem_crop*, i8*) #1

declare dso_local i32 @memcpy(%struct.obs_sceneitem_crop*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
