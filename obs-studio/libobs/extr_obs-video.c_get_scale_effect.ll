; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_get_scale_effect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_get_scale_effect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_core_video = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.obs_core_video*, i32, i32)* @get_scale_effect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_scale_effect(%struct.obs_core_video* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.obs_core_video*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.obs_core_video* %0, %struct.obs_core_video** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @resolution_close(%struct.obs_core_video* %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %16 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %4, align 8
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %20 = call i32* @get_scale_effect_internal(%struct.obs_core_video* %19)
  store i32* %20, i32** %8, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %38, label %23

23:                                               ; preds = %18
  %24 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %25 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %30 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.obs_core_video*, %struct.obs_core_video** %5, align 8
  %34 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32* [ %31, %28 ], [ %35, %32 ]
  store i32* %37, i32** %8, align 8
  br label %38

38:                                               ; preds = %36, %18
  %39 = load i32*, i32** %8, align 8
  store i32* %39, i32** %4, align 8
  br label %40

40:                                               ; preds = %38, %14
  %41 = load i32*, i32** %4, align 8
  ret i32* %41
}

declare dso_local i64 @resolution_close(%struct.obs_core_video*, i32, i32) #1

declare dso_local i32* @get_scale_effect_internal(%struct.obs_core_video*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
