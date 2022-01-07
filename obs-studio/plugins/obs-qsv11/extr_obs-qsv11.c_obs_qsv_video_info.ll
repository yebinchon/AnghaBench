; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11.c_obs_qsv_video_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11.c_obs_qsv_video_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_scale_info = type { i32 }
%struct.obs_qsv = type { i32 }

@VIDEO_FORMAT_NV12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.video_scale_info*)* @obs_qsv_video_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_qsv_video_info(i8* %0, %struct.video_scale_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.video_scale_info*, align 8
  %5 = alloca %struct.obs_qsv*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.video_scale_info* %1, %struct.video_scale_info** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.obs_qsv*
  store %struct.obs_qsv* %8, %struct.obs_qsv** %5, align 8
  %9 = load %struct.obs_qsv*, %struct.obs_qsv** %5, align 8
  %10 = getelementptr inbounds %struct.obs_qsv, %struct.obs_qsv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @obs_encoder_get_preferred_video_format(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @valid_format(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %2
  %17 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %18 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @valid_format(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %24 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @VIDEO_FORMAT_NV12, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %25, %22 ], [ %27, %26 ]
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %2
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %33 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.obs_qsv*, %struct.obs_qsv** %5, align 8
  %35 = getelementptr inbounds %struct.obs_qsv, %struct.obs_qsv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %38 = call i32 @cap_resolution(i32 %36, %struct.video_scale_info* %37)
  ret void
}

declare dso_local i32 @obs_encoder_get_preferred_video_format(i32) #1

declare dso_local i64 @valid_format(i32) #1

declare dso_local i32 @cap_resolution(i32, %struct.video_scale_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
