; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11.c_cap_resolution.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-qsv11/extr_obs-qsv11.c_cap_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_scale_info = type { i32, i32 }

@QSV_CPU_PLATFORM_IVB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.video_scale_info*)* @cap_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cap_resolution(i32* %0, %struct.video_scale_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.video_scale_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.video_scale_info* %1, %struct.video_scale_info** %4, align 8
  %8 = call i32 (...) @qsv_get_cpu_platform()
  store i32 %8, i32* %5, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @obs_encoder_get_width(i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @obs_encoder_get_height(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %15 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %18 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @QSV_CPU_PLATFORM_IVB, align 4
  %21 = icmp ule i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 1920
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %27 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %26, i32 0, i32 1
  store i32 1920, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %7, align 4
  %30 = icmp sgt i32 %29, 1200
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.video_scale_info*, %struct.video_scale_info** %4, align 8
  %33 = getelementptr inbounds %struct.video_scale_info, %struct.video_scale_info* %32, i32 0, i32 0
  store i32 1200, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %2
  ret void
}

declare dso_local i32 @qsv_get_cpu_platform(...) #1

declare dso_local i32 @obs_encoder_get_width(i32*) #1

declare dso_local i32 @obs_encoder_get_height(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
