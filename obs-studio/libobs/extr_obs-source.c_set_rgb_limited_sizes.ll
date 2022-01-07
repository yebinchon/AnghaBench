; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_set_rgb_limited_sizes.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_set_rgb_limited_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { i32, i32*, i32*, i32* }
%struct.obs_source_frame = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_source*, %struct.obs_source_frame*)* @set_rgb_limited_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rgb_limited_sizes(%struct.obs_source* %0, %struct.obs_source_frame* %1) #0 {
  %3 = alloca %struct.obs_source*, align 8
  %4 = alloca %struct.obs_source_frame*, align 8
  store %struct.obs_source* %0, %struct.obs_source** %3, align 8
  store %struct.obs_source_frame* %1, %struct.obs_source_frame** %4, align 8
  %5 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %6 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %9 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %13 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %16 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.obs_source_frame*, %struct.obs_source_frame** %4, align 8
  %20 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @convert_video_format(i32 %21)
  %23 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %24 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %28 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  ret i32 1
}

declare dso_local i32 @convert_video_format(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
