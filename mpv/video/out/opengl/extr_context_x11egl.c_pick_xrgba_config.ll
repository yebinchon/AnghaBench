; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_x11egl.c_pick_xrgba_config.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_x11egl.c_pick_xrgba_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.vo*, %struct.priv* }
%struct.vo = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.priv = type { i32 }
%struct.TYPE_8__ = type { i32 }

@EGL_NATIVE_VISUAL_ID = common dso_local global i32 0, align 4
@VisualIDMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @pick_xrgba_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pick_xrgba_config(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ra_ctx*, align 8
  %9 = alloca %struct.priv*, align 8
  %10 = alloca %struct.vo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.ra_ctx*
  store %struct.ra_ctx* %18, %struct.ra_ctx** %8, align 8
  %19 = load %struct.ra_ctx*, %struct.ra_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %19, i32 0, i32 1
  %21 = load %struct.priv*, %struct.priv** %20, align 8
  store %struct.priv* %21, %struct.priv** %9, align 8
  %22 = load %struct.ra_ctx*, %struct.ra_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %22, i32 0, i32 0
  %24 = load %struct.vo*, %struct.vo** %23, align 8
  store %struct.vo* %24, %struct.vo** %10, align 8
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %62, %3
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  %30 = load %struct.priv*, %struct.priv** %9, align 8
  %31 = getelementptr inbounds %struct.priv, %struct.priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @EGL_NATIVE_VISUAL_ID, align 4
  %39 = call i32 @eglGetConfigAttrib(i32 %32, i32 %37, i32 %38, i32* %12)
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %40, align 4
  %42 = load %struct.vo*, %struct.vo** %10, align 8
  %43 = getelementptr inbounds %struct.vo, %struct.vo* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VisualIDMask, align 4
  %48 = call %struct.TYPE_8__* @XGetVisualInfo(i32 %46, i32 %47, %struct.TYPE_8__* %14, i32* %13)
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %15, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %29
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %53 = call i32 @vo_x11_is_rgba_visual(%struct.TYPE_8__* %52)
  store i32 %53, i32* %16, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %55 = call i32 @XFree(%struct.TYPE_8__* %54)
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %66

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %29
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %25

65:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %58
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @eglGetConfigAttrib(i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @XGetVisualInfo(i32, i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @vo_x11_is_rgba_visual(%struct.TYPE_8__*) #1

declare dso_local i32 @XFree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
