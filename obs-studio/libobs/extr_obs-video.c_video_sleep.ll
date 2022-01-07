; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_video_sleep.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-video.c_video_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_core_video = type { i32, i32, i32, i32 }
%struct.obs_vframe_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.obs_core_video*, i32, i32, i32*, i32)* @video_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @video_sleep(%struct.obs_core_video* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.obs_core_video*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.obs_vframe_info, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.obs_core_video* %0, %struct.obs_core_video** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call i64 @os_sleepto_ns(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  store i32 1, i32* %14, align 4
  br label %38

26:                                               ; preds = %5
  %27 = call i32 (...) @os_gettime_ns()
  %28 = load i32, i32* %12, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32, i32* %10, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %14, align 4
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %32, %35
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %26, %23
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %41 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %14, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %47 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %12, align 4
  %51 = getelementptr inbounds %struct.obs_vframe_info, %struct.obs_vframe_info* %11, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %14, align 4
  %53 = getelementptr inbounds %struct.obs_vframe_info, %struct.obs_vframe_info* %11, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %38
  %57 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %58 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %57, i32 0, i32 3
  %59 = call i32 @circlebuf_push_back(i32* %58, %struct.obs_vframe_info* %11, i32 8)
  br label %60

60:                                               ; preds = %56, %38
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.obs_core_video*, %struct.obs_core_video** %6, align 8
  %65 = getelementptr inbounds %struct.obs_core_video, %struct.obs_core_video* %64, i32 0, i32 2
  %66 = call i32 @circlebuf_push_back(i32* %65, %struct.obs_vframe_info* %11, i32 8)
  br label %67

67:                                               ; preds = %63, %60
  ret void
}

declare dso_local i64 @os_sleepto_ns(i32) #1

declare dso_local i32 @os_gettime_ns(...) #1

declare dso_local i32 @circlebuf_push_back(i32*, %struct.obs_vframe_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
