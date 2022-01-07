; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_d3d9_device_create.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_d3d9_device_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.vo*, %struct.priv* }
%struct.vo = type { i32 }
%struct.priv = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"eglGetPlatformDisplayEXT\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Missing EGL_EXT_platform_base\0A\00", align 1
@EGL_PLATFORM_ANGLE_TYPE_ANGLE = common dso_local global i32 0, align 4
@EGL_PLATFORM_ANGLE_TYPE_D3D9_ANGLE = common dso_local global i32 0, align 4
@EGL_PLATFORM_ANGLE_DEVICE_TYPE_ANGLE = common dso_local global i32 0, align 4
@EGL_PLATFORM_ANGLE_DEVICE_TYPE_HARDWARE_ANGLE = common dso_local global i32 0, align 4
@EGL_NONE = common dso_local global i32 0, align 4
@EGL_PLATFORM_ANGLE_ANGLE = common dso_local global i32 0, align 4
@EGL_DEFAULT_DISPLAY = common dso_local global i32 0, align 4
@EGL_NO_DISPLAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Couldn't get display\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @d3d9_device_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d9_device_create(%struct.ra_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i64 (i32, i32, i32*)*, align 8
  %7 = alloca [5 x i32], align 16
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %8 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %8, i32 0, i32 1
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %4, align 8
  %11 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %11, i32 0, i32 0
  %13 = load %struct.vo*, %struct.vo** %12, align 8
  store %struct.vo* %13, %struct.vo** %5, align 8
  %14 = call i32 @eglGetProcAddress(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i64 (i32, i32, i32*)*
  store i64 (i32, i32, i32*)* %16, i64 (i32, i32, i32*)** %6, align 8
  %17 = load i64 (i32, i32, i32*)*, i64 (i32, i32, i32*)** %6, align 8
  %18 = icmp ne i64 (i32, i32, i32*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.vo*, %struct.vo** %5, align 8
  %21 = call i32 @MP_FATAL(%struct.vo* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %49

22:                                               ; preds = %1
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %24 = load i32, i32* @EGL_PLATFORM_ANGLE_TYPE_ANGLE, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* @EGL_PLATFORM_ANGLE_TYPE_D3D9_ANGLE, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  %28 = load i32, i32* @EGL_PLATFORM_ANGLE_DEVICE_TYPE_ANGLE, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds i32, i32* %27, i64 1
  %30 = load i32, i32* @EGL_PLATFORM_ANGLE_DEVICE_TYPE_HARDWARE_ANGLE, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  %32 = load i32, i32* @EGL_NONE, align 4
  store i32 %32, i32* %31, align 4
  %33 = load i64 (i32, i32, i32*)*, i64 (i32, i32, i32*)** %6, align 8
  %34 = load i32, i32* @EGL_PLATFORM_ANGLE_ANGLE, align 4
  %35 = load i32, i32* @EGL_DEFAULT_DISPLAY, align 4
  %36 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %37 = call i64 %33(i32 %34, i32 %35, i32* %36)
  %38 = load %struct.priv*, %struct.priv** %4, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.priv*, %struct.priv** %4, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @EGL_NO_DISPLAY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %22
  %46 = load %struct.vo*, %struct.vo** %5, align 8
  %47 = call i32 @MP_FATAL(%struct.vo* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %49

48:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %45, %19
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @eglGetProcAddress(i8*) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
