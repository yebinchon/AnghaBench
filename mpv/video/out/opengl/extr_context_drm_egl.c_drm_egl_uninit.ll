; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_drm_egl_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_drm_egl_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.drm_atomic_context* }
%struct.drm_atomic_context = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"Failed to commit atomic request (%d)\0A\00", align 1
@EGL_NO_SURFACE = common dso_local global i32 0, align 4
@EGL_NO_CONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @drm_egl_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_egl_uninit(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.drm_atomic_context*, align 8
  %5 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %6 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %6, i32 0, i32 1
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %12, align 8
  store %struct.drm_atomic_context* %13, %struct.drm_atomic_context** %4, align 8
  %14 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %4, align 8
  %15 = icmp ne %struct.drm_atomic_context* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load %struct.priv*, %struct.priv** %3, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %4, align 8
  %23 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @drmModeAtomicCommit(i32 %21, i32 %24, i32 0, i32* null)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %30 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @MP_ERR(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %16
  %35 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %4, align 8
  %36 = getelementptr inbounds %struct.drm_atomic_context, %struct.drm_atomic_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @drmModeAtomicFree(i32 %37)
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %41 = call i32 @ra_gl_ctx_uninit(%struct.ra_ctx* %40)
  %42 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %43 = call i32 @crtc_release(%struct.ra_ctx* %42)
  %44 = load %struct.priv*, %struct.priv** %3, align 8
  %45 = getelementptr inbounds %struct.priv, %struct.priv* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.priv*, %struct.priv** %3, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 4
  %51 = call i32 @vt_switcher_destroy(i32* %50)
  br label %52

52:                                               ; preds = %48, %39
  br label %53

53:                                               ; preds = %59, %52
  %54 = load %struct.priv*, %struct.priv** %3, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %61 = call i32 @swapchain_step(%struct.ra_ctx* %60)
  br label %53

62:                                               ; preds = %53
  %63 = load %struct.priv*, %struct.priv** %3, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @EGL_NO_SURFACE, align 4
  %68 = load i32, i32* @EGL_NO_SURFACE, align 4
  %69 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %70 = call i32 @eglMakeCurrent(i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.priv*, %struct.priv** %3, align 8
  %72 = getelementptr inbounds %struct.priv, %struct.priv* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.priv*, %struct.priv** %3, align 8
  %76 = getelementptr inbounds %struct.priv, %struct.priv* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @eglDestroyContext(i32 %74, i32 %78)
  %80 = load %struct.priv*, %struct.priv** %3, align 8
  %81 = getelementptr inbounds %struct.priv, %struct.priv* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.priv*, %struct.priv** %3, align 8
  %85 = getelementptr inbounds %struct.priv, %struct.priv* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @eglDestroySurface(i32 %83, i32 %87)
  %89 = load %struct.priv*, %struct.priv** %3, align 8
  %90 = getelementptr inbounds %struct.priv, %struct.priv* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @gbm_surface_destroy(i32 %92)
  %94 = load %struct.priv*, %struct.priv** %3, align 8
  %95 = getelementptr inbounds %struct.priv, %struct.priv* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @eglTerminate(i32 %97)
  %99 = load %struct.priv*, %struct.priv** %3, align 8
  %100 = getelementptr inbounds %struct.priv, %struct.priv* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @gbm_device_destroy(i32 %102)
  %104 = load i32, i32* @EGL_NO_CONTEXT, align 4
  %105 = load %struct.priv*, %struct.priv** %3, align 8
  %106 = getelementptr inbounds %struct.priv, %struct.priv* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load %struct.priv*, %struct.priv** %3, align 8
  %109 = getelementptr inbounds %struct.priv, %struct.priv* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.priv*, %struct.priv** %3, align 8
  %113 = getelementptr inbounds %struct.priv, %struct.priv* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @eglDestroyContext(i32 %111, i32 %115)
  %117 = load %struct.priv*, %struct.priv** %3, align 8
  %118 = getelementptr inbounds %struct.priv, %struct.priv* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @close(i32 %120)
  %122 = load %struct.priv*, %struct.priv** %3, align 8
  %123 = getelementptr inbounds %struct.priv, %struct.priv* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = icmp ne %struct.TYPE_8__* %124, null
  br i1 %125, label %126, label %133

126:                                              ; preds = %62
  %127 = load %struct.priv*, %struct.priv** %3, align 8
  %128 = getelementptr inbounds %struct.priv, %struct.priv* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = call i32 @kms_destroy(%struct.TYPE_8__* %129)
  %131 = load %struct.priv*, %struct.priv** %3, align 8
  %132 = getelementptr inbounds %struct.priv, %struct.priv* %131, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %132, align 8
  br label %133

133:                                              ; preds = %126, %62
  ret void
}

declare dso_local i32 @drmModeAtomicCommit(i32, i32, i32, i32*) #1

declare dso_local i32 @MP_ERR(i32, i8*, i32) #1

declare dso_local i32 @drmModeAtomicFree(i32) #1

declare dso_local i32 @ra_gl_ctx_uninit(%struct.ra_ctx*) #1

declare dso_local i32 @crtc_release(%struct.ra_ctx*) #1

declare dso_local i32 @vt_switcher_destroy(i32*) #1

declare dso_local i32 @swapchain_step(%struct.ra_ctx*) #1

declare dso_local i32 @eglMakeCurrent(i32, i32, i32, i32) #1

declare dso_local i32 @eglDestroyContext(i32, i32) #1

declare dso_local i32 @eglDestroySurface(i32, i32) #1

declare dso_local i32 @gbm_surface_destroy(i32) #1

declare dso_local i32 @eglTerminate(i32) #1

declare dso_local i32 @gbm_device_destroy(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @kms_destroy(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
