; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_get_main_texture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_get_main_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.obs_core_video }
%struct.obs_core_video = type { i32*, i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @obs_get_main_texture() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.obs_core_video*, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %18

6:                                                ; preds = %0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.obs_core_video* %8, %struct.obs_core_video** %2, align 8
  %9 = load %struct.obs_core_video*, %struct.obs_core_video** %2, align 8
  %10 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  store i32* null, i32** %1, align 8
  br label %18

14:                                               ; preds = %6
  %15 = load %struct.obs_core_video*, %struct.obs_core_video** %2, align 8
  %16 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %1, align 8
  br label %18

18:                                               ; preds = %14, %13, %5
  %19 = load i32*, i32** %1, align 8
  ret i32* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
