; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_rendertarget_view_get_surface.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_wined3d_private.h_wined3d_rendertarget_view_get_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_surface = type { i32 }
%struct.wined3d_rendertarget_view = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.wined3d_texture = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.wined3d_surface* }

@WINED3D_RTYPE_TEXTURE_2D = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_surface* (%struct.wined3d_rendertarget_view*)* @wined3d_rendertarget_view_get_surface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_surface* @wined3d_rendertarget_view_get_surface(%struct.wined3d_rendertarget_view* %0) #0 {
  %2 = alloca %struct.wined3d_surface*, align 8
  %3 = alloca %struct.wined3d_rendertarget_view*, align 8
  %4 = alloca %struct.wined3d_texture*, align 8
  store %struct.wined3d_rendertarget_view* %0, %struct.wined3d_rendertarget_view** %3, align 8
  %5 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %3, align 8
  %6 = icmp ne %struct.wined3d_rendertarget_view* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %3, align 8
  %9 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @WINED3D_RTYPE_TEXTURE_2D, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %7, %1
  store %struct.wined3d_surface* null, %struct.wined3d_surface** %2, align 8
  br label %31

16:                                               ; preds = %7
  %17 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %3, align 8
  %18 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call %struct.wined3d_texture* @texture_from_resource(%struct.TYPE_6__* %19)
  store %struct.wined3d_texture* %20, %struct.wined3d_texture** %4, align 8
  %21 = load %struct.wined3d_texture*, %struct.wined3d_texture** %4, align 8
  %22 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %3, align 8
  %25 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.wined3d_surface*, %struct.wined3d_surface** %29, align 8
  store %struct.wined3d_surface* %30, %struct.wined3d_surface** %2, align 8
  br label %31

31:                                               ; preds = %16, %15
  %32 = load %struct.wined3d_surface*, %struct.wined3d_surface** %2, align 8
  ret %struct.wined3d_surface* %32
}

declare dso_local %struct.wined3d_texture* @texture_from_resource(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
