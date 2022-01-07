; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_angle_submit_frame.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_angle.c_angle_submit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_swapchain = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.priv* }
%struct.priv = type { i64 }
%struct.vo_frame = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_swapchain*, %struct.vo_frame*)* @angle_submit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @angle_submit_frame(%struct.ra_swapchain* %0, %struct.vo_frame* %1) #0 {
  %3 = alloca %struct.ra_swapchain*, align 8
  %4 = alloca %struct.vo_frame*, align 8
  %5 = alloca %struct.priv*, align 8
  %6 = alloca i32, align 4
  store %struct.ra_swapchain* %0, %struct.ra_swapchain** %3, align 8
  store %struct.vo_frame* %1, %struct.vo_frame** %4, align 8
  %7 = load %struct.ra_swapchain*, %struct.ra_swapchain** %3, align 8
  %8 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.priv*, %struct.priv** %10, align 8
  store %struct.priv* %11, %struct.priv** %5, align 8
  %12 = load %struct.ra_swapchain*, %struct.ra_swapchain** %3, align 8
  %13 = load %struct.vo_frame*, %struct.vo_frame** %4, align 8
  %14 = call i32 @ra_gl_ctx_submit_frame(%struct.ra_swapchain* %12, %struct.vo_frame* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.priv*, %struct.priv** %5, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.priv*, %struct.priv** %5, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @ID3D11DeviceContext_Flush(i64 %22)
  br label %24

24:                                               ; preds = %19, %2
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local i32 @ra_gl_ctx_submit_frame(%struct.ra_swapchain*, %struct.vo_frame*) #1

declare dso_local i32 @ID3D11DeviceContext_Flush(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
