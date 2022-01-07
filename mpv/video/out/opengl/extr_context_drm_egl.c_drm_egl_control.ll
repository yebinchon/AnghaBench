; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_drm_egl_control.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_drm_egl_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_4__*, %struct.priv* }
%struct.TYPE_4__ = type { i32 }
%struct.priv = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@VO_TRUE = common dso_local global i32 0, align 4
@VO_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_ctx*, i32*, i32, i8*)* @drm_egl_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_egl_control(%struct.ra_ctx* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ra_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.priv*, align 8
  %11 = alloca double, align 8
  store %struct.ra_ctx* %0, %struct.ra_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.ra_ctx*, %struct.ra_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %12, i32 0, i32 1
  %14 = load %struct.priv*, %struct.priv** %13, align 8
  store %struct.priv* %14, %struct.priv** %10, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %53 [
    i32 130, label %16
    i32 129, label %29
    i32 128, label %37
  ]

16:                                               ; preds = %4
  %17 = load %struct.priv*, %struct.priv** %10, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call double @kms_get_display_fps(i32 %19)
  store double %20, double* %11, align 8
  %21 = load double, double* %11, align 8
  %22 = fcmp ole double %21, 0.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %53

24:                                               ; preds = %16
  %25 = load double, double* %11, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = bitcast i8* %26 to double*
  store double %25, double* %27, align 8
  %28 = load i32, i32* @VO_TRUE, align 4
  store i32 %28, i32* %5, align 4
  br label %55

29:                                               ; preds = %4
  %30 = load %struct.ra_ctx*, %struct.ra_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.priv*, %struct.priv** %10, align 8
  %35 = getelementptr inbounds %struct.priv, %struct.priv* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* @VO_TRUE, align 4
  store i32 %36, i32* %5, align 4
  br label %55

37:                                               ; preds = %4
  %38 = load %struct.priv*, %struct.priv** %10, align 8
  %39 = getelementptr inbounds %struct.priv, %struct.priv* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  %40 = load %struct.priv*, %struct.priv** %10, align 8
  %41 = getelementptr inbounds %struct.priv, %struct.priv* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 4
  %43 = load %struct.priv*, %struct.priv** %10, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 0, i32* %45, align 4
  %46 = load %struct.priv*, %struct.priv** %10, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = load %struct.priv*, %struct.priv** %10, align 8
  %50 = getelementptr inbounds %struct.priv, %struct.priv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* @VO_TRUE, align 4
  store i32 %52, i32* %5, align 4
  br label %55

53:                                               ; preds = %4, %23
  %54 = load i32, i32* @VO_NOTIMPL, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %37, %29, %24
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local double @kms_get_display_fps(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
