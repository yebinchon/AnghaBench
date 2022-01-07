; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_drm_egl_swap_buffers.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_drm_egl.c_drm_egl_swap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_swapchain = type { %struct.ra_ctx* }
%struct.ra_ctx = type { %struct.TYPE_10__*, %struct.priv* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.priv = type { %struct.TYPE_8__, i64, %struct.TYPE_6__, i32, i64, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__**, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.gbm_bo = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Couldn't lock front buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Hole in swapchain?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_swapchain*)* @drm_egl_swap_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_egl_swap_buffers(%struct.ra_swapchain* %0) #0 {
  %2 = alloca %struct.ra_swapchain*, align 8
  %3 = alloca %struct.ra_ctx*, align 8
  %4 = alloca %struct.priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gbm_bo*, align 8
  store %struct.ra_swapchain* %0, %struct.ra_swapchain** %2, align 8
  %7 = load %struct.ra_swapchain*, %struct.ra_swapchain** %2, align 8
  %8 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %7, i32 0, i32 0
  %9 = load %struct.ra_ctx*, %struct.ra_ctx** %8, align 8
  store %struct.ra_ctx* %9, %struct.ra_ctx** %3, align 8
  %10 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %10, i32 0, i32 1
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %4, align 8
  %13 = load %struct.priv*, %struct.priv** %4, align 8
  %14 = getelementptr inbounds %struct.priv, %struct.priv* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load %struct.priv*, %struct.priv** %4, align 8
  %19 = getelementptr inbounds %struct.priv, %struct.priv* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %1
  %23 = phi i1 [ true, %1 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load %struct.priv*, %struct.priv** %4, align 8
  %26 = getelementptr inbounds %struct.priv, %struct.priv* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %137

30:                                               ; preds = %22
  %31 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %32 = call i32 @wait_fence(%struct.ra_ctx* %31)
  %33 = load %struct.priv*, %struct.priv** %4, align 8
  %34 = getelementptr inbounds %struct.priv, %struct.priv* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.priv*, %struct.priv** %4, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @eglSwapBuffers(i32 %36, i32 %40)
  %42 = load %struct.priv*, %struct.priv** %4, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.gbm_bo* @gbm_surface_lock_front_buffer(i32 %45)
  store %struct.gbm_bo* %46, %struct.gbm_bo** %6, align 8
  %47 = load %struct.gbm_bo*, %struct.gbm_bo** %6, align 8
  %48 = icmp ne %struct.gbm_bo* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %30
  %50 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = call i32 @MP_ERR(%struct.TYPE_10__* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %137

54:                                               ; preds = %30
  %55 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %56 = load %struct.gbm_bo*, %struct.gbm_bo** %6, align 8
  %57 = call i32 @enqueue_bo(%struct.ra_ctx* %55, %struct.gbm_bo* %56)
  %58 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %59 = call i32 @new_fence(%struct.ra_ctx* %58)
  br label %60

60:                                               ; preds = %128, %121, %54
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %84, label %63

63:                                               ; preds = %60
  %64 = load %struct.priv*, %struct.priv** %4, align 8
  %65 = getelementptr inbounds %struct.priv, %struct.priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %67, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %63
  %77 = load %struct.priv*, %struct.priv** %4, align 8
  %78 = getelementptr inbounds %struct.priv, %struct.priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @gbm_surface_has_free_buffers(i32 %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %76, %63, %60
  %85 = phi i1 [ true, %63 ], [ true, %60 ], [ %83, %76 ]
  br i1 %85, label %86, label %137

86:                                               ; preds = %84
  %87 = load %struct.priv*, %struct.priv** %4, align 8
  %88 = getelementptr inbounds %struct.priv, %struct.priv* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %93 = call i32 @wait_on_flip(%struct.ra_ctx* %92)
  %94 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %95 = call i32 @swapchain_step(%struct.ra_ctx* %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.priv*, %struct.priv** %4, align 8
  %98 = getelementptr inbounds %struct.priv, %struct.priv* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sle i32 %100, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %137

103:                                              ; preds = %96
  %104 = load %struct.priv*, %struct.priv** %4, align 8
  %105 = getelementptr inbounds %struct.priv, %struct.priv* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %107, i64 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = icmp ne %struct.TYPE_9__* %109, null
  br i1 %110, label %111, label %121

111:                                              ; preds = %103
  %112 = load %struct.priv*, %struct.priv** %4, align 8
  %113 = getelementptr inbounds %struct.priv, %struct.priv* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %115, i64 1
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %111, %103
  %122 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %123 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %122, i32 0, i32 0
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = call i32 @MP_ERR(%struct.TYPE_10__* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %126 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %127 = call i32 @swapchain_step(%struct.ra_ctx* %126)
  br label %60

128:                                              ; preds = %111
  %129 = load %struct.ra_ctx*, %struct.ra_ctx** %3, align 8
  %130 = load %struct.priv*, %struct.priv** %4, align 8
  %131 = getelementptr inbounds %struct.priv, %struct.priv* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %133, i64 1
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = call i32 @queue_flip(%struct.ra_ctx* %129, %struct.TYPE_9__* %135)
  br label %60

137:                                              ; preds = %29, %49, %102, %84
  ret void
}

declare dso_local i32 @wait_fence(%struct.ra_ctx*) #1

declare dso_local i32 @eglSwapBuffers(i32, i32) #1

declare dso_local %struct.gbm_bo* @gbm_surface_lock_front_buffer(i32) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @enqueue_bo(%struct.ra_ctx*, %struct.gbm_bo*) #1

declare dso_local i32 @new_fence(%struct.ra_ctx*) #1

declare dso_local i32 @gbm_surface_has_free_buffers(i32) #1

declare dso_local i32 @wait_on_flip(%struct.ra_ctx*) #1

declare dso_local i32 @swapchain_step(%struct.ra_ctx*) #1

declare dso_local i32 @queue_flip(%struct.ra_ctx*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
