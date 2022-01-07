; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_get_scale_effect_internal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_get_scale_effect_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_core_video = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.obs_core_video*)* @get_scale_effect_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_scale_effect_internal(%struct.obs_core_video* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.obs_core_video*, align 8
  store %struct.obs_core_video* %0, %struct.obs_core_video** %3, align 8
  %4 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %5 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %8 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sdiv i32 %9, 2
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %14 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %17 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 2
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %12
  %22 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %23 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %22, i32 0, i32 9
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %2, align 8
  br label %47

25:                                               ; preds = %12, %1
  %26 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %27 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %42 [
    i32 129, label %29
    i32 128, label %33
    i32 131, label %37
    i32 130, label %41
  ]

29:                                               ; preds = %25
  %30 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %31 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %30, i32 0, i32 8
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %2, align 8
  br label %47

33:                                               ; preds = %25
  %34 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %35 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %34, i32 0, i32 7
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %2, align 8
  br label %47

37:                                               ; preds = %25
  %38 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %39 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %2, align 8
  br label %47

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %25, %41
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.obs_core_video*, %struct.obs_core_video** %3, align 8
  %45 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %2, align 8
  br label %47

47:                                               ; preds = %43, %37, %33, %29, %21
  %48 = load i32*, i32** %2, align 8
  ret i32* %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
