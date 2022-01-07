; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_drmprime_drm.c_set_current_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_hwdec_drmprime_drm.c_set_current_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { %struct.priv* }
%struct.priv = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_frame = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec*, %struct.drm_frame*)* @set_current_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_current_frame(%struct.ra_hwdec* %0, %struct.drm_frame* %1) #0 {
  %3 = alloca %struct.ra_hwdec*, align 8
  %4 = alloca %struct.drm_frame*, align 8
  %5 = alloca %struct.priv*, align 8
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %3, align 8
  store %struct.drm_frame* %1, %struct.drm_frame** %4, align 8
  %6 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %7 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %5, align 8
  %9 = load %struct.priv*, %struct.priv** %5, align 8
  %10 = getelementptr inbounds %struct.priv, %struct.priv* %9, i32 0, i32 3
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.priv*, %struct.priv** %5, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.priv*, %struct.priv** %5, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.priv*, %struct.priv** %5, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @drm_prime_destroy_framebuffer(i32 %16, i32 %21, i32* %24)
  br label %26

26:                                               ; preds = %13, %2
  %27 = load %struct.priv*, %struct.priv** %5, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load %struct.priv*, %struct.priv** %5, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @mp_image_setrefp(i32** %29, i32* %33)
  %35 = load %struct.priv*, %struct.priv** %5, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.priv*, %struct.priv** %5, align 8
  %40 = getelementptr inbounds %struct.priv, %struct.priv* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.priv*, %struct.priv** %5, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.priv*, %struct.priv** %5, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @mp_image_setrefp(i32** %44, i32* %48)
  %50 = load %struct.priv*, %struct.priv** %5, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.priv*, %struct.priv** %5, align 8
  %55 = getelementptr inbounds %struct.priv, %struct.priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.drm_frame*, %struct.drm_frame** %4, align 8
  %58 = icmp ne %struct.drm_frame* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %26
  %60 = load %struct.drm_frame*, %struct.drm_frame** %4, align 8
  %61 = getelementptr inbounds %struct.drm_frame, %struct.drm_frame* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.priv*, %struct.priv** %5, align 8
  %64 = getelementptr inbounds %struct.priv, %struct.priv* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 8
  %66 = load %struct.priv*, %struct.priv** %5, align 8
  %67 = getelementptr inbounds %struct.priv, %struct.priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.drm_frame*, %struct.drm_frame** %4, align 8
  %70 = getelementptr inbounds %struct.drm_frame, %struct.drm_frame* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @mp_image_setrefp(i32** %68, i32* %71)
  br label %82

73:                                               ; preds = %26
  %74 = load %struct.priv*, %struct.priv** %5, align 8
  %75 = getelementptr inbounds %struct.priv, %struct.priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = call i32 @memset(i32* %76, i32 0, i32 4)
  %78 = load %struct.priv*, %struct.priv** %5, align 8
  %79 = getelementptr inbounds %struct.priv, %struct.priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = call i32 @mp_image_setrefp(i32** %80, i32* null)
  br label %82

82:                                               ; preds = %73, %59
  ret void
}

declare dso_local i32 @drm_prime_destroy_framebuffer(i32, i32, i32*) #1

declare dso_local i32 @mp_image_setrefp(i32**, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
