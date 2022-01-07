; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_drmprime_drm.c_disable_video_plane.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_drmprime_drm.c_disable_video_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { %struct.priv* }
%struct.priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"FB_ID\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CRTC_ID\00", align 1
@DRM_MODE_ATOMIC_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to commit disable plane request (code %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec*)* @disable_video_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disable_video_plane(%struct.ra_hwdec* %0) #0 {
  %2 = alloca %struct.ra_hwdec*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %2, align 8
  %6 = load %struct.ra_hwdec*, %struct.ra_hwdec** %2, align 8
  %7 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.priv*, %struct.priv** %3, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.priv*, %struct.priv** %3, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %58

22:                                               ; preds = %14
  %23 = call i64 (...) @drmModeAtomicAlloc()
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.priv*, %struct.priv** %3, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @drm_object_set_property(i64 %27, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.priv*, %struct.priv** %3, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @drm_object_set_property(i64 %34, i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %41 = load %struct.priv*, %struct.priv** %3, align 8
  %42 = getelementptr inbounds %struct.priv, %struct.priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %4, align 8
  %47 = load i32, i32* @DRM_MODE_ATOMIC_NONBLOCK, align 4
  %48 = call i32 @drmModeAtomicCommit(i32 %45, i64 %46, i32 %47, i32* null)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %26
  %52 = load %struct.ra_hwdec*, %struct.ra_hwdec** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @MP_ERR(%struct.ra_hwdec* %52, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %26
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @drmModeAtomicFree(i64 %56)
  br label %58

58:                                               ; preds = %13, %21, %55, %22
  ret void
}

declare dso_local i64 @drmModeAtomicAlloc(...) #1

declare dso_local i32 @drm_object_set_property(i64, i32, i8*, i32) #1

declare dso_local i32 @drmModeAtomicCommit(i32, i64, i32, i32*) #1

declare dso_local i32 @MP_ERR(%struct.ra_hwdec*, i8*, i32) #1

declare dso_local i32 @drmModeAtomicFree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
