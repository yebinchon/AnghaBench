; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_make_video_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_make_video_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_output_info = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.obs_video_info = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"video\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_output_info*, %struct.obs_video_info*)* @make_video_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_video_info(%struct.video_output_info* %0, %struct.obs_video_info* %1) #0 {
  %3 = alloca %struct.video_output_info*, align 8
  %4 = alloca %struct.obs_video_info*, align 8
  store %struct.video_output_info* %0, %struct.video_output_info** %3, align 8
  store %struct.obs_video_info* %1, %struct.obs_video_info** %4, align 8
  %5 = load %struct.video_output_info*, %struct.video_output_info** %3, align 8
  %6 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %8 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.video_output_info*, %struct.video_output_info** %3, align 8
  %11 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 4
  %12 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %13 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.video_output_info*, %struct.video_output_info** %3, align 8
  %16 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %18 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.video_output_info*, %struct.video_output_info** %3, align 8
  %21 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %23 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.video_output_info*, %struct.video_output_info** %3, align 8
  %26 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %28 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.video_output_info*, %struct.video_output_info** %3, align 8
  %31 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %33 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.video_output_info*, %struct.video_output_info** %3, align 8
  %36 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.obs_video_info*, %struct.obs_video_info** %4, align 8
  %38 = getelementptr inbounds %struct.obs_video_info, %struct.obs_video_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.video_output_info*, %struct.video_output_info** %3, align 8
  %41 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.video_output_info*, %struct.video_output_info** %3, align 8
  %43 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %42, i32 0, i32 1
  store i32 6, i32* %43, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
