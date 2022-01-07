; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-dshow/extr_ffmpeg-decode.c_convert_pixel_format.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-dshow/extr_ffmpeg-decode.c_convert_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VIDEO_FORMAT_NONE = common dso_local global i32 0, align 4
@VIDEO_FORMAT_I420 = common dso_local global i32 0, align 4
@VIDEO_FORMAT_NV12 = common dso_local global i32 0, align 4
@VIDEO_FORMAT_YUY2 = common dso_local global i32 0, align 4
@VIDEO_FORMAT_UYVY = common dso_local global i32 0, align 4
@VIDEO_FORMAT_I422 = common dso_local global i32 0, align 4
@VIDEO_FORMAT_RGBA = common dso_local global i32 0, align 4
@VIDEO_FORMAT_BGRA = common dso_local global i32 0, align 4
@VIDEO_FORMAT_BGRX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @convert_pixel_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_pixel_format(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %23 [
    i32 136, label %5
    i32 132, label %7
    i32 130, label %7
    i32 135, label %9
    i32 128, label %11
    i32 133, label %13
    i32 131, label %15
    i32 129, label %15
    i32 134, label %17
    i32 137, label %19
    i32 138, label %21
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @VIDEO_FORMAT_NONE, align 4
  store i32 %6, i32* %2, align 4
  br label %26

7:                                                ; preds = %1, %1
  %8 = load i32, i32* @VIDEO_FORMAT_I420, align 4
  store i32 %8, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load i32, i32* @VIDEO_FORMAT_NV12, align 4
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* @VIDEO_FORMAT_YUY2, align 4
  store i32 %12, i32* %2, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load i32, i32* @VIDEO_FORMAT_UYVY, align 4
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %1, %1
  %16 = load i32, i32* @VIDEO_FORMAT_I422, align 4
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load i32, i32* @VIDEO_FORMAT_RGBA, align 4
  store i32 %18, i32* %2, align 4
  br label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @VIDEO_FORMAT_BGRA, align 4
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %1
  %22 = load i32, i32* @VIDEO_FORMAT_BGRX, align 4
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @VIDEO_FORMAT_NONE, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
