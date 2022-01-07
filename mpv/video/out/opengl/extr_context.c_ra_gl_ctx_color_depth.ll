; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context.c_ra_gl_ctx_color_depth.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context.c_ra_gl_ctx_color_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_swapchain = type { %struct.priv* }
%struct.priv = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 (i32, i64)*, i32 (i32, i32, i32, i32*)*, i64 }

@MPGL_CAP_FB = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER = common dso_local global i32 0, align 4
@GL_BACK_LEFT = common dso_local global i32 0, align 4
@GL_BACK = common dso_local global i32 0, align 4
@GL_COLOR_ATTACHMENT0 = common dso_local global i32 0, align 4
@GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ra_gl_ctx_color_depth(%struct.ra_swapchain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_swapchain*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ra_swapchain* %0, %struct.ra_swapchain** %3, align 8
  %8 = load %struct.ra_swapchain*, %struct.ra_swapchain** %3, align 8
  %9 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %8, i32 0, i32 0
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %4, align 8
  %11 = load %struct.priv*, %struct.priv** %4, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %5, align 8
  %14 = load %struct.priv*, %struct.priv** %4, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

19:                                               ; preds = %1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %22, 300
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24, %19
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MPGL_CAP_FB, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29, %24
  store i32 0, i32* %2, align 4
  br label %76

37:                                               ; preds = %29
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32 (i32, i64)*, i32 (i32, i64)** %39, align 8
  %41 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %42 = load %struct.priv*, %struct.priv** %4, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 %40(i32 %41, i64 %44)
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @GL_BACK_LEFT, align 4
  br label %54

52:                                               ; preds = %37
  %53 = load i32, i32* @GL_BACK, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %6, align 4
  %56 = load %struct.priv*, %struct.priv** %4, align 8
  %57 = getelementptr inbounds %struct.priv, %struct.priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @GL_COLOR_ATTACHMENT0, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %60, %54
  store i32 0, i32* %7, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32 (i32, i32, i32, i32*)*, i32 (i32, i32, i32, i32*)** %64, align 8
  %66 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE, align 4
  %69 = call i32 %65(i32 %66, i32 %67, i32 %68, i32* %7)
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32 (i32, i64)*, i32 (i32, i64)** %71, align 8
  %73 = load i32, i32* @GL_FRAMEBUFFER, align 4
  %74 = call i32 %72(i32 %73, i64 0)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %62, %36, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
