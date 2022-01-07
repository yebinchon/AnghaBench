; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_wayland.c_wayland_egl_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_wayland.c_wayland_egl_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { i32, i32*, i32, i64 }

@EGL_NO_CONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @wayland_egl_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wayland_egl_uninit(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %4 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %4, i32 0, i32 1
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %8 = call i32 @ra_gl_ctx_uninit(%struct.ra_ctx* %7)
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %46

13:                                               ; preds = %1
  %14 = call i32 (...) @eglReleaseThread()
  %15 = load %struct.priv*, %struct.priv** %3, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.priv*, %struct.priv** %3, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @wl_egl_window_destroy(i64 %22)
  br label %24

24:                                               ; preds = %19, %13
  %25 = load %struct.priv*, %struct.priv** %3, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.priv*, %struct.priv** %3, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @eglDestroySurface(i32 %27, i32 %30)
  %32 = load %struct.priv*, %struct.priv** %3, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %36 = call i32 @eglMakeCurrent(i32 %34, i32* null, i32* null, i32 %35)
  %37 = load %struct.priv*, %struct.priv** %3, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.priv*, %struct.priv** %3, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @eglDestroyContext(i32 %39, i32* %42)
  %44 = load %struct.priv*, %struct.priv** %3, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 1
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %24, %1
  %47 = load %struct.priv*, %struct.priv** %3, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @eglTerminate(i32 %49)
  %51 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @vo_wayland_uninit(i32 %53)
  ret void
}

declare dso_local i32 @ra_gl_ctx_uninit(%struct.ra_ctx*) #1

declare dso_local i32 @eglReleaseThread(...) #1

declare dso_local i32 @wl_egl_window_destroy(i64) #1

declare dso_local i32 @eglDestroySurface(i32, i32) #1

declare dso_local i32 @eglMakeCurrent(i32, i32*, i32*, i32) #1

declare dso_local i32 @eglDestroyContext(i32, i32*) #1

declare dso_local i32 @eglTerminate(i32) #1

declare dso_local i32 @vo_wayland_uninit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
