; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_crtc_release_atomic.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_crtc_release_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { i32, %struct.priv* }
%struct.priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.drm_atomic_context* }
%struct.drm_atomic_context = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Failed to allocate drm atomic request\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Got error while restoring old state\0A\00", align 1
@DRM_MODE_ATOMIC_ALLOW_MODESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Failed to commit ModeSetting atomic request (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*)* @crtc_release_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crtc_release_atomic(%struct.ra_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.drm_atomic_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %3, align 8
  %8 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %8, i32 0, i32 1
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %4, align 8
  %11 = load %struct.priv*, %struct.priv** %4, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %14, align 8
  store %struct.drm_atomic_context* %15, %struct.drm_atomic_context** %5, align 8
  %16 = call i32 (...) @drmModeAtomicAlloc()
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @MP_ERR(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %57

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.drm_atomic_context*, %struct.drm_atomic_context** %5, align 8
  %27 = call i32 @drm_atomic_restore_old_state(i32 %25, %struct.drm_atomic_context* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i8*, ...) @MP_WARN(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.priv*, %struct.priv** %4, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @DRM_MODE_ATOMIC_ALLOW_MODESET, align 4
  %42 = call i32 @drmModeAtomicCommit(i32 %39, i32 %40, i32 %41, i32* null)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %47 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i32, i8*, ...) @MP_WARN(i32 %48, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %34
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @drmModeAtomicFree(i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %51, %19
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @drmModeAtomicAlloc(...) #1

declare dso_local i32 @MP_ERR(i32, i8*) #1

declare dso_local i32 @drm_atomic_restore_old_state(i32, %struct.drm_atomic_context*) #1

declare dso_local i32 @MP_WARN(i32, i8*, ...) #1

declare dso_local i32 @drmModeAtomicCommit(i32, i32, i32, i32*) #1

declare dso_local i32 @drmModeAtomicFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
