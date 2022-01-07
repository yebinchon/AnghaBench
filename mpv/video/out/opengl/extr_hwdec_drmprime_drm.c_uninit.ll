; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_drmprime_drm.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_drmprime_drm.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { i32, %struct.priv* }
%struct.priv = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.ra_hwdec* %0) #0 {
  %2 = alloca %struct.ra_hwdec*, align 8
  %3 = alloca %struct.priv*, align 8
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %2, align 8
  %4 = load %struct.ra_hwdec*, %struct.ra_hwdec** %2, align 8
  %5 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %4, i32 0, i32 1
  %6 = load %struct.priv*, %struct.priv** %5, align 8
  store %struct.priv* %6, %struct.priv** %3, align 8
  %7 = load %struct.ra_hwdec*, %struct.ra_hwdec** %2, align 8
  %8 = call i32 @disable_video_plane(%struct.ra_hwdec* %7)
  %9 = load %struct.ra_hwdec*, %struct.ra_hwdec** %2, align 8
  %10 = call i32 @set_current_frame(%struct.ra_hwdec* %9, i32* null)
  %11 = load %struct.ra_hwdec*, %struct.ra_hwdec** %2, align 8
  %12 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 1
  %16 = call i32 @hwdec_devices_remove(i32 %13, %struct.TYPE_2__* %15)
  %17 = load %struct.priv*, %struct.priv** %3, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @av_buffer_unref(i32* %19)
  %21 = load %struct.priv*, %struct.priv** %3, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.priv*, %struct.priv** %3, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @drm_atomic_destroy_context(i32* %28)
  %30 = load %struct.priv*, %struct.priv** %3, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @disable_video_plane(%struct.ra_hwdec*) #1

declare dso_local i32 @set_current_frame(%struct.ra_hwdec*, i32*) #1

declare dso_local i32 @hwdec_devices_remove(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @av_buffer_unref(i32*) #1

declare dso_local i32 @drm_atomic_destroy_context(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
