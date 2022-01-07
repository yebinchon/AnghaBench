; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_surface_get_sub_resource_idx.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_surface_get_sub_resource_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_surface = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_surface*)* @surface_get_sub_resource_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %0) #0 {
  %2 = alloca %struct.wined3d_surface*, align 8
  store %struct.wined3d_surface* %0, %struct.wined3d_surface** %2, align 8
  %3 = load %struct.wined3d_surface*, %struct.wined3d_surface** %2, align 8
  %4 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.wined3d_surface*, %struct.wined3d_surface** %2, align 8
  %7 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %5, %10
  %12 = load %struct.wined3d_surface*, %struct.wined3d_surface** %2, align 8
  %13 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add i32 %11, %14
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
