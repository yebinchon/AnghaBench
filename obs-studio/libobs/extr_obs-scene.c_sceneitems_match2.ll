; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_sceneitems_match2.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-scene.c_sceneitems_match2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_sceneitem_order_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.obs_sceneitem_order_info*, i64)* @sceneitems_match2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sceneitems_match2(i32* %0, %struct.obs_sceneitem_order_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.obs_sceneitem_order_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.obs_sceneitem_order_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.obs_sceneitem_order_info*, align 8
  %12 = alloca %struct.obs_sceneitem_order_info*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.obs_sceneitem_order_info* %1, %struct.obs_sceneitem_order_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @build_current_order_info(i32* %13, %struct.obs_sceneitem_order_info** %8, i64* %9)
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.obs_sceneitem_order_info*, %struct.obs_sceneitem_order_info** %8, align 8
  %20 = call i32 @bfree(%struct.obs_sceneitem_order_info* %19)
  store i32 0, i32* %4, align 4
  br label %58

21:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %52, %21
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %55

26:                                               ; preds = %22
  %27 = load %struct.obs_sceneitem_order_info*, %struct.obs_sceneitem_order_info** %6, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.obs_sceneitem_order_info, %struct.obs_sceneitem_order_info* %27, i64 %28
  store %struct.obs_sceneitem_order_info* %29, %struct.obs_sceneitem_order_info** %11, align 8
  %30 = load %struct.obs_sceneitem_order_info*, %struct.obs_sceneitem_order_info** %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.obs_sceneitem_order_info, %struct.obs_sceneitem_order_info* %30, i64 %31
  store %struct.obs_sceneitem_order_info* %32, %struct.obs_sceneitem_order_info** %12, align 8
  %33 = load %struct.obs_sceneitem_order_info*, %struct.obs_sceneitem_order_info** %11, align 8
  %34 = getelementptr inbounds %struct.obs_sceneitem_order_info, %struct.obs_sceneitem_order_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.obs_sceneitem_order_info*, %struct.obs_sceneitem_order_info** %12, align 8
  %37 = getelementptr inbounds %struct.obs_sceneitem_order_info, %struct.obs_sceneitem_order_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %26
  %41 = load %struct.obs_sceneitem_order_info*, %struct.obs_sceneitem_order_info** %11, align 8
  %42 = getelementptr inbounds %struct.obs_sceneitem_order_info, %struct.obs_sceneitem_order_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.obs_sceneitem_order_info*, %struct.obs_sceneitem_order_info** %12, align 8
  %45 = getelementptr inbounds %struct.obs_sceneitem_order_info, %struct.obs_sceneitem_order_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40, %26
  %49 = load %struct.obs_sceneitem_order_info*, %struct.obs_sceneitem_order_info** %8, align 8
  %50 = call i32 @bfree(%struct.obs_sceneitem_order_info* %49)
  store i32 0, i32* %4, align 4
  br label %58

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %10, align 8
  br label %22

55:                                               ; preds = %22
  %56 = load %struct.obs_sceneitem_order_info*, %struct.obs_sceneitem_order_info** %8, align 8
  %57 = call i32 @bfree(%struct.obs_sceneitem_order_info* %56)
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %48, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @build_current_order_info(i32*, %struct.obs_sceneitem_order_info**, i64*) #1

declare dso_local i32 @bfree(%struct.obs_sceneitem_order_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
