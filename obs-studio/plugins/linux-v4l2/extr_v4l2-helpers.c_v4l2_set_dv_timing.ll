; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-helpers.c_v4l2_set_dv_timing.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-helpers.c_v4l2_set_dv_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { i32 }

@VIDIOC_S_DV_TIMINGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_set_dv_timing(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.v4l2_dv_timings, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store i32 -1, i32* %3, align 4
  br label %32

13:                                               ; preds = %9
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %32

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @v4l2_enum_dv_timing(i32 %19, %struct.v4l2_dv_timings* %6, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %32

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @VIDIOC_S_DV_TIMINGS, align 4
  %28 = call i64 @v4l2_ioctl(i32 %26, i32 %27, %struct.v4l2_dv_timings* %6)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %32

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %30, %24, %17, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @v4l2_enum_dv_timing(i32, %struct.v4l2_dv_timings*, i32) #1

declare dso_local i64 @v4l2_ioctl(i32, i32, %struct.v4l2_dv_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
