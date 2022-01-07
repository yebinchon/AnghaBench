; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context.c_ra_gl_ctx_resize.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context.c_ra_gl_ctx_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_swapchain = type { %struct.TYPE_6__*, %struct.priv* }
%struct.TYPE_6__ = type { i32 }
%struct.priv = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_gl_ctx_resize(%struct.ra_swapchain* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ra_swapchain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.priv*, align 8
  store %struct.ra_swapchain* %0, %struct.ra_swapchain** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.ra_swapchain*, %struct.ra_swapchain** %5, align 8
  %11 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %10, i32 0, i32 1
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %9, align 8
  %13 = load %struct.priv*, %struct.priv** %9, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %4
  %19 = load %struct.priv*, %struct.priv** %9, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.priv*, %struct.priv** %9, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %23
  %33 = load %struct.priv*, %struct.priv** %9, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %71

42:                                               ; preds = %32, %23, %18, %4
  %43 = load %struct.priv*, %struct.priv** %9, align 8
  %44 = getelementptr inbounds %struct.priv, %struct.priv* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.ra_swapchain*, %struct.ra_swapchain** %5, align 8
  %49 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.priv*, %struct.priv** %9, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 1
  %55 = call i32 @ra_tex_free(i32 %52, %struct.TYPE_7__** %54)
  br label %56

56:                                               ; preds = %47, %42
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.priv*, %struct.priv** %9, align 8
  %59 = getelementptr inbounds %struct.priv, %struct.priv* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ra_swapchain*, %struct.ra_swapchain** %5, align 8
  %61 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call %struct.TYPE_7__* @ra_create_wrapped_fb(i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.priv*, %struct.priv** %9, align 8
  %70 = getelementptr inbounds %struct.priv, %struct.priv* %69, i32 0, i32 1
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %70, align 8
  br label %71

71:                                               ; preds = %56, %41
  ret void
}

declare dso_local i32 @ra_tex_free(i32, %struct.TYPE_7__**) #1

declare dso_local %struct.TYPE_7__* @ra_create_wrapped_fb(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
