; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_select_fb_config_egl.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_rpi.c_select_fb_config_egl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_egl_rpi = type { i32 }

@EGL_SURFACE_TYPE = common dso_local global i32 0, align 4
@EGL_WINDOW_BIT = common dso_local global i32 0, align 4
@EGL_RED_SIZE = common dso_local global i32 0, align 4
@EGL_GREEN_SIZE = common dso_local global i32 0, align 4
@EGL_BLUE_SIZE = common dso_local global i32 0, align 4
@EGL_DEPTH_SIZE = common dso_local global i32 0, align 4
@EGL_RENDERABLE_TYPE = common dso_local global i32 0, align 4
@EGL_OPENGL_ES2_BIT = common dso_local global i32 0, align 4
@EGL_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could find EGL configuration!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.mp_egl_rpi*)* @select_fb_config_egl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @select_fb_config_egl(%struct.mp_egl_rpi* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.mp_egl_rpi*, align 8
  %4 = alloca [13 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.mp_egl_rpi* %0, %struct.mp_egl_rpi** %3, align 8
  %7 = getelementptr inbounds [13 x i32], [13 x i32]* %4, i64 0, i64 0
  %8 = load i32, i32* @EGL_SURFACE_TYPE, align 4
  store i32 %8, i32* %7, align 4
  %9 = getelementptr inbounds i32, i32* %7, i64 1
  %10 = load i32, i32* @EGL_WINDOW_BIT, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @EGL_RED_SIZE, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 8, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* @EGL_GREEN_SIZE, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 8, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* @EGL_BLUE_SIZE, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 8, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* @EGL_DEPTH_SIZE, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* @EGL_RENDERABLE_TYPE, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* @EGL_OPENGL_ES2_BIT, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  %28 = load i32, i32* @EGL_NONE, align 4
  store i32 %28, i32* %27, align 4
  %29 = load %struct.mp_egl_rpi*, %struct.mp_egl_rpi** %3, align 8
  %30 = getelementptr inbounds %struct.mp_egl_rpi, %struct.mp_egl_rpi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [13 x i32], [13 x i32]* %4, i64 0, i64 0
  %33 = call i32 @eglChooseConfig(i32 %31, i32* %32, i32** %6, i32 1, i32* %5)
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = load %struct.mp_egl_rpi*, %struct.mp_egl_rpi** %3, align 8
  %38 = call i32 @MP_FATAL(%struct.mp_egl_rpi* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %41

39:                                               ; preds = %1
  %40 = load i32*, i32** %6, align 8
  store i32* %40, i32** %2, align 8
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32*, i32** %2, align 8
  ret i32* %42
}

declare dso_local i32 @eglChooseConfig(i32, i32*, i32**, i32, i32*) #1

declare dso_local i32 @MP_FATAL(%struct.mp_egl_rpi*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
