; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_egl_window_surface_create.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_egl_window_surface_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.vo*, %struct.priv* }
%struct.vo = type { i32 }
%struct.priv = type { i32, i32, i32, i32, i32 }

@EGL_OPTIMAL_SURFACE_ORIENTATION_ANGLE = common dso_local global i32 0, align 4
@EGL_SURFACE_ORIENTATION_INVERT_Y_ANGLE = common dso_local global i64 0, align 8
@EGL_SURFACE_ORIENTATION_ANGLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Rendering flipped.\0A\00", align 1
@EGL_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not create EGL surface!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @egl_window_surface_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @egl_window_surface_create(%struct.ra_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.vo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %9 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %9, i32 0, i32 1
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %4, align 8
  %12 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %12, i32 0, i32 0
  %14 = load %struct.vo*, %struct.vo** %13, align 8
  store %struct.vo* %14, %struct.vo** %5, align 8
  store i32 0, i32* %6, align 4
  store i64* null, i64** %7, align 8
  %15 = load %struct.priv*, %struct.priv** %4, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.priv*, %struct.priv** %4, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EGL_OPTIMAL_SURFACE_ORIENTATION_ANGLE, align 4
  %22 = call i64 @eglGetConfigAttrib(i32 %17, i32 %20, i32 %21, i64* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %1
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @EGL_SURFACE_ORIENTATION_INVERT_Y_ANGLE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i64*, i64** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i64, i64* @EGL_SURFACE_ORIENTATION_ANGLE, align 8
  %32 = call i32 @MP_TARRAY_APPEND(i32* null, i64* %29, i32 %30, i64 %31)
  %33 = load i64*, i64** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i64, i64* @EGL_SURFACE_ORIENTATION_INVERT_Y_ANGLE, align 8
  %36 = call i32 @MP_TARRAY_APPEND(i32* null, i64* %33, i32 %34, i64 %35)
  %37 = load %struct.priv*, %struct.priv** %4, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.vo*, %struct.vo** %5, align 8
  %40 = call i32 @MP_VERBOSE(%struct.vo* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %28, %24
  br label %42

42:                                               ; preds = %41, %1
  %43 = load i64*, i64** %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i64, i64* @EGL_NONE, align 8
  %46 = call i32 @MP_TARRAY_APPEND(i32* null, i64* %43, i32 %44, i64 %45)
  %47 = load %struct.priv*, %struct.priv** %4, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.priv*, %struct.priv** %4, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vo*, %struct.vo** %5, align 8
  %54 = call i32 @vo_w32_hwnd(%struct.vo* %53)
  %55 = load i64*, i64** %7, align 8
  %56 = call i32 @eglCreateWindowSurface(i32 %49, i32 %52, i32 %54, i64* %55)
  %57 = load %struct.priv*, %struct.priv** %4, align 8
  %58 = getelementptr inbounds %struct.priv, %struct.priv* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i64*, i64** %7, align 8
  %60 = call i32 @talloc_free(i64* %59)
  %61 = load %struct.priv*, %struct.priv** %4, align 8
  %62 = getelementptr inbounds %struct.priv, %struct.priv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %42
  %66 = load %struct.vo*, %struct.vo** %5, align 8
  %67 = call i32 @MP_FATAL(%struct.vo* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %82

68:                                               ; preds = %42
  %69 = load %struct.priv*, %struct.priv** %4, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.priv*, %struct.priv** %4, align 8
  %73 = getelementptr inbounds %struct.priv, %struct.priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.priv*, %struct.priv** %4, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.priv*, %struct.priv** %4, align 8
  %79 = getelementptr inbounds %struct.priv, %struct.priv* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @eglMakeCurrent(i32 %71, i32 %74, i32 %77, i32 %80)
  store i32 1, i32* %2, align 4
  br label %85

82:                                               ; preds = %65
  %83 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %84 = call i32 @egl_window_surface_destroy(%struct.ra_ctx* %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %68
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @eglGetConfigAttrib(i32, i32, i32, i64*) #1

declare dso_local i32 @MP_TARRAY_APPEND(i32*, i64*, i32, i64) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo*, i8*) #1

declare dso_local i32 @eglCreateWindowSurface(i32, i32, i32, i64*) #1

declare dso_local i32 @vo_w32_hwnd(%struct.vo*) #1

declare dso_local i32 @talloc_free(i64*) #1

declare dso_local i32 @MP_FATAL(%struct.vo*, i8*) #1

declare dso_local i32 @eglMakeCurrent(i32, i32, i32, i32) #1

declare dso_local i32 @egl_window_surface_destroy(%struct.ra_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
