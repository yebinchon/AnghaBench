; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_surface.c_d3d8_surface_get_device.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_surface.c_d3d8_surface_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d8_device = type { i32 }
%struct.d3d8_surface = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.d3d8_device* @d3d8_surface_get_device(%struct.d3d8_surface* %0) #0 {
  %2 = alloca %struct.d3d8_surface*, align 8
  %3 = alloca i32*, align 8
  store %struct.d3d8_surface* %0, %struct.d3d8_surface** %2, align 8
  %4 = load %struct.d3d8_surface*, %struct.d3d8_surface** %2, align 8
  %5 = getelementptr inbounds %struct.d3d8_surface, %struct.d3d8_surface* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.d3d8_surface*, %struct.d3d8_surface** %2, align 8
  %10 = getelementptr inbounds %struct.d3d8_surface, %struct.d3d8_surface* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.d3d8_surface*, %struct.d3d8_surface** %2, align 8
  %16 = getelementptr inbounds %struct.d3d8_surface, %struct.d3d8_surface* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  br label %18

18:                                               ; preds = %14, %8
  %19 = phi i32* [ %13, %8 ], [ %17, %14 ]
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call %struct.d3d8_device* @impl_from_IDirect3DDevice8(i32* %20)
  ret %struct.d3d8_device* %21
}

declare dso_local %struct.d3d8_device* @impl_from_IDirect3DDevice8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
