; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_depth_stencil_view.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_depth_stencil_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_14__, %struct.TYPE_11__, %struct.wined3d_device* }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.wined3d_rendertarget_view* }
%struct.wined3d_rendertarget_view = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.wined3d_device = type { %struct.TYPE_13__** }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.wined3d_cs_set_depth_stencil_view = type { %struct.TYPE_17__* }
%struct.wined3d_surface = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }

@WINED3D_SWAPCHAIN_DISCARD_DEPTHSTENCIL = common dso_local global i32 0, align 4
@WINED3D_TEXTURE_DISCARD = common dso_local global i32 0, align 4
@WINED3D_LOCATION_DISCARDED = common dso_local global i32 0, align 4
@WINED3D_RS_ZENABLE = common dso_local global i32 0, align 4
@WINED3D_RS_STENCILENABLE = common dso_local global i32 0, align 4
@WINED3D_RS_STENCILWRITEMASK = common dso_local global i32 0, align 4
@WINED3D_RS_DEPTHBIAS = common dso_local global i32 0, align 4
@WINED3D_RS_DEPTHBIASCLAMP = common dso_local global i32 0, align 4
@STATE_FRAMEBUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_set_depth_stencil_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_set_depth_stencil_view(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_cs_set_depth_stencil_view*, align 8
  %6 = alloca %struct.wined3d_device*, align 8
  %7 = alloca %struct.wined3d_rendertarget_view*, align 8
  %8 = alloca %struct.wined3d_surface*, align 8
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.wined3d_cs_set_depth_stencil_view*
  store %struct.wined3d_cs_set_depth_stencil_view* %10, %struct.wined3d_cs_set_depth_stencil_view** %5, align 8
  %11 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %12 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %11, i32 0, i32 2
  %13 = load %struct.wined3d_device*, %struct.wined3d_device** %12, align 8
  store %struct.wined3d_device* %13, %struct.wined3d_device** %6, align 8
  %14 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %15 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %18, align 8
  store %struct.wined3d_rendertarget_view* %19, %struct.wined3d_rendertarget_view** %7, align 8
  %20 = icmp ne %struct.wined3d_rendertarget_view* %19, null
  br i1 %20, label %21, label %57

21:                                               ; preds = %2
  %22 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %7, align 8
  %23 = call %struct.wined3d_surface* @wined3d_rendertarget_view_get_surface(%struct.wined3d_rendertarget_view* %22)
  store %struct.wined3d_surface* %23, %struct.wined3d_surface** %8, align 8
  %24 = load %struct.wined3d_surface*, %struct.wined3d_surface** %8, align 8
  %25 = icmp ne %struct.wined3d_surface* %24, null
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %28 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %29, i64 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @WINED3D_SWAPCHAIN_DISCARD_DEPTHSTENCIL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %26
  %39 = load %struct.wined3d_surface*, %struct.wined3d_surface** %8, align 8
  %40 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %39, i32 0, i32 0
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @WINED3D_TEXTURE_DISCARD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %38, %26
  %48 = load %struct.wined3d_surface*, %struct.wined3d_surface** %8, align 8
  %49 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %48, i32 0, i32 0
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %7, align 8
  %52 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @WINED3D_LOCATION_DISCARDED, align 4
  %55 = call i32 @wined3d_texture_validate_location(%struct.TYPE_18__* %50, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %38, %21
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.wined3d_cs_set_depth_stencil_view*, %struct.wined3d_cs_set_depth_stencil_view** %5, align 8
  %59 = getelementptr inbounds %struct.wined3d_cs_set_depth_stencil_view, %struct.wined3d_cs_set_depth_stencil_view* %58, i32 0, i32 0
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %62 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %63, align 8
  %64 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %7, align 8
  %65 = icmp ne %struct.wined3d_rendertarget_view* %64, null
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load %struct.wined3d_cs_set_depth_stencil_view*, %struct.wined3d_cs_set_depth_stencil_view** %5, align 8
  %69 = getelementptr inbounds %struct.wined3d_cs_set_depth_stencil_view, %struct.wined3d_cs_set_depth_stencil_view* %68, i32 0, i32 0
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = icmp ne %struct.TYPE_17__* %70, null
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = icmp ne i32 %67, %73
  br i1 %74, label %75, label %96

75:                                               ; preds = %57
  %76 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %77 = load i32, i32* @WINED3D_RS_ZENABLE, align 4
  %78 = call i32 @STATE_RENDER(i32 %77)
  %79 = call i32 @device_invalidate_state(%struct.wined3d_device* %76, i32 %78)
  %80 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %81 = load i32, i32* @WINED3D_RS_STENCILENABLE, align 4
  %82 = call i32 @STATE_RENDER(i32 %81)
  %83 = call i32 @device_invalidate_state(%struct.wined3d_device* %80, i32 %82)
  %84 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %85 = load i32, i32* @WINED3D_RS_STENCILWRITEMASK, align 4
  %86 = call i32 @STATE_RENDER(i32 %85)
  %87 = call i32 @device_invalidate_state(%struct.wined3d_device* %84, i32 %86)
  %88 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %89 = load i32, i32* @WINED3D_RS_DEPTHBIAS, align 4
  %90 = call i32 @STATE_RENDER(i32 %89)
  %91 = call i32 @device_invalidate_state(%struct.wined3d_device* %88, i32 %90)
  %92 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %93 = load i32, i32* @WINED3D_RS_DEPTHBIASCLAMP, align 4
  %94 = call i32 @STATE_RENDER(i32 %93)
  %95 = call i32 @device_invalidate_state(%struct.wined3d_device* %92, i32 %94)
  br label %119

96:                                               ; preds = %57
  %97 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %7, align 8
  %98 = icmp ne %struct.wined3d_rendertarget_view* %97, null
  br i1 %98, label %99, label %118

99:                                               ; preds = %96
  %100 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %7, align 8
  %101 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %100, i32 0, i32 0
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.wined3d_cs_set_depth_stencil_view*, %struct.wined3d_cs_set_depth_stencil_view** %5, align 8
  %106 = getelementptr inbounds %struct.wined3d_cs_set_depth_stencil_view, %struct.wined3d_cs_set_depth_stencil_view* %105, i32 0, i32 0
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %104, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %99
  %114 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %115 = load i32, i32* @WINED3D_RS_DEPTHBIAS, align 4
  %116 = call i32 @STATE_RENDER(i32 %115)
  %117 = call i32 @device_invalidate_state(%struct.wined3d_device* %114, i32 %116)
  br label %118

118:                                              ; preds = %113, %99, %96
  br label %119

119:                                              ; preds = %118, %75
  %120 = load %struct.wined3d_device*, %struct.wined3d_device** %6, align 8
  %121 = load i32, i32* @STATE_FRAMEBUFFER, align 4
  %122 = call i32 @device_invalidate_state(%struct.wined3d_device* %120, i32 %121)
  ret void
}

declare dso_local %struct.wined3d_surface* @wined3d_rendertarget_view_get_surface(%struct.wined3d_rendertarget_view*) #1

declare dso_local i32 @wined3d_texture_validate_location(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @device_invalidate_state(%struct.wined3d_device*, i32) #1

declare dso_local i32 @STATE_RENDER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
