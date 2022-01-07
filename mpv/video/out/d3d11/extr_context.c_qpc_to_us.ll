; ModuleID = '/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_qpc_to_us.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/d3d11/extr_context.c_qpc_to_us.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_swapchain = type { %struct.priv* }
%struct.priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_swapchain*, i32)* @qpc_to_us to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpc_to_us(%struct.ra_swapchain* %0, i32 %1) #0 {
  %3 = alloca %struct.ra_swapchain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.priv*, align 8
  store %struct.ra_swapchain* %0, %struct.ra_swapchain** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ra_swapchain*, %struct.ra_swapchain** %3, align 8
  %7 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %6, i32 0, i32 0
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.priv*, %struct.priv** %5, align 8
  %11 = getelementptr inbounds %struct.priv, %struct.priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %9, %12
  %14 = mul nsw i32 %13, 1000000
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.priv*, %struct.priv** %5, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = srem i32 %15, %18
  %20 = mul nsw i32 %19, 1000000
  %21 = load %struct.priv*, %struct.priv** %5, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %20, %23
  %25 = add nsw i32 %14, %24
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
