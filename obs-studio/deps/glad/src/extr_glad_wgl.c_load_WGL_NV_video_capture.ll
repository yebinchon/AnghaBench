; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad_wgl.c_load_WGL_NV_video_capture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad_wgl.c_load_WGL_NV_video_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_WGL_NV_video_capture = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"wglBindVideoCaptureDeviceNV\00", align 1
@glad_wglBindVideoCaptureDeviceNV = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"wglEnumerateVideoCaptureDevicesNV\00", align 1
@glad_wglEnumerateVideoCaptureDevicesNV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"wglLockVideoCaptureDeviceNV\00", align 1
@glad_wglLockVideoCaptureDeviceNV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"wglQueryVideoCaptureDeviceNV\00", align 1
@glad_wglQueryVideoCaptureDeviceNV = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"wglReleaseVideoCaptureDeviceNV\00", align 1
@glad_wglReleaseVideoCaptureDeviceNV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64 (i8*)*)* @load_WGL_NV_video_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_WGL_NV_video_capture(i64 (i8*)* %0) #0 {
  %2 = alloca i64 (i8*)*, align 8
  store i64 (i8*)* %0, i64 (i8*)** %2, align 8
  %3 = load i32, i32* @GLAD_WGL_NV_video_capture, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %8 = call i64 %7(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i64 %8, i64* @glad_wglBindVideoCaptureDeviceNV, align 8
  %9 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %10 = call i64 %9(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i64 %10, i64* @glad_wglEnumerateVideoCaptureDevicesNV, align 8
  %11 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %12 = call i64 %11(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i64 %12, i64* @glad_wglLockVideoCaptureDeviceNV, align 8
  %13 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %14 = call i64 %13(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i64 %14, i64* @glad_wglQueryVideoCaptureDeviceNV, align 8
  %15 = load i64 (i8*)*, i64 (i8*)** %2, align 8
  %16 = call i64 %15(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i64 %16, i64* @glad_wglReleaseVideoCaptureDeviceNV, align 8
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
