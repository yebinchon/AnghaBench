; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_frame_perf_data.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_frame_perf_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pass_info = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mp_frame_perf = type { i64, i32*, i32* }

@VO_PASS_PERF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pass_info*, %struct.mp_frame_perf*)* @frame_perf_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frame_perf_data(%struct.pass_info* %0, %struct.mp_frame_perf* %1) #0 {
  %3 = alloca %struct.pass_info*, align 8
  %4 = alloca %struct.mp_frame_perf*, align 8
  %5 = alloca i32, align 4
  store %struct.pass_info* %0, %struct.pass_info** %3, align 8
  store %struct.mp_frame_perf* %1, %struct.mp_frame_perf** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %52, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @VO_PASS_PERF_MAX, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %55

10:                                               ; preds = %6
  %11 = load %struct.pass_info*, %struct.pass_info** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.pass_info, %struct.pass_info* %11, i64 %13
  %15 = getelementptr inbounds %struct.pass_info, %struct.pass_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %55

20:                                               ; preds = %10
  %21 = load %struct.pass_info*, %struct.pass_info** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.pass_info, %struct.pass_info* %21, i64 %23
  %25 = getelementptr inbounds %struct.pass_info, %struct.pass_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mp_frame_perf*, %struct.mp_frame_perf** %4, align 8
  %28 = getelementptr inbounds %struct.mp_frame_perf, %struct.mp_frame_perf* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.mp_frame_perf*, %struct.mp_frame_perf** %4, align 8
  %31 = getelementptr inbounds %struct.mp_frame_perf, %struct.mp_frame_perf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32 %26, i32* %33, align 4
  %34 = load %struct.pass_info*, %struct.pass_info** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.pass_info, %struct.pass_info* %34, i64 %36
  %38 = getelementptr inbounds %struct.pass_info, %struct.pass_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mp_frame_perf*, %struct.mp_frame_perf** %4, align 8
  %42 = getelementptr inbounds %struct.mp_frame_perf, %struct.mp_frame_perf* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.mp_frame_perf*, %struct.mp_frame_perf** %4, align 8
  %45 = getelementptr inbounds %struct.mp_frame_perf, %struct.mp_frame_perf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %40, i32* %47, align 4
  %48 = load %struct.mp_frame_perf*, %struct.mp_frame_perf** %4, align 8
  %49 = getelementptr inbounds %struct.mp_frame_perf, %struct.mp_frame_perf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %20
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %6

55:                                               ; preds = %19, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
