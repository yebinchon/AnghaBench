; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_calc_cy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_calc_cy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_scene_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.obs_scene_item*, i64)* @calc_cy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_cy(%struct.obs_scene_item* %0, i64 %1) #0 {
  %3 = alloca %struct.obs_scene_item*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.obs_scene_item* %0, %struct.obs_scene_item** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  %7 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.obs_scene_item*, %struct.obs_scene_item** %3, align 8
  %11 = getelementptr inbounds %struct.obs_scene_item, %struct.obs_scene_item* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %9, %13
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %23

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = sub nsw i64 %20, %21
  br label %23

23:                                               ; preds = %19, %18
  %24 = phi i64 [ 2, %18 ], [ %22, %19 ]
  ret i64 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
