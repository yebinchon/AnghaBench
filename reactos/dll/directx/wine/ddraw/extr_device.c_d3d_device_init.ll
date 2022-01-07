; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_device.c_d3d_device_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/ddraw/extr_device.c_d3d_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.d3d_device = type { i32, i32, %struct.TYPE_14__*, i32, i32, %struct.TYPE_15__, %struct.TYPE_15__, i32, i32, %struct.ddraw*, %struct.TYPE_14__, %struct.TYPE_14__*, i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.ddraw = type { i32, i32, %struct.d3d_device* }
%struct.ddraw_surface = type { i32 }

@d3d_device_init.ident = internal constant %struct.TYPE_15__ { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00 }, align 4
@DDSCL_FPUPRESERVE = common dso_local global i32 0, align 4
@d3d_device7_fpu_preserve_vtbl = common dso_local global i32 0, align 4
@d3d_device7_fpu_setup_vtbl = common dso_local global i32 0, align 4
@d3d_device3_vtbl = common dso_local global i32 0, align 4
@d3d_device2_vtbl = common dso_local global i32 0, align 4
@d3d_device1_vtbl = common dso_local global i32 0, align 4
@d3d_device_inner_vtbl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to initialize handle table.\0A\00", align 1
@DDERR_OUTOFMEMORY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to set render target, hr %#x.\0A\00", align 1
@WINED3D_RS_ZENABLE = common dso_local global i32 0, align 4
@WINED3D_RS_COLORKEYENABLE = common dso_local global i32 0, align 4
@WINED3D_RS_SPECULARENABLE = common dso_local global i32 0, align 4
@WINED3D_RS_NORMALIZENORMALS = common dso_local global i32 0, align 4
@D3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3d_device*, %struct.ddraw*, i32, %struct.ddraw_surface*, %struct.TYPE_14__*, i32, %struct.TYPE_14__*)* @d3d_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d_device_init(%struct.d3d_device* %0, %struct.ddraw* %1, i32 %2, %struct.ddraw_surface* %3, %struct.TYPE_14__* %4, i32 %5, %struct.TYPE_14__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.d3d_device*, align 8
  %10 = alloca %struct.ddraw*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ddraw_surface*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32, align 4
  store %struct.d3d_device* %0, %struct.d3d_device** %9, align 8
  store %struct.ddraw* %1, %struct.ddraw** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ddraw_surface* %3, %struct.ddraw_surface** %12, align 8
  store %struct.TYPE_14__* %4, %struct.TYPE_14__** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %15, align 8
  %17 = load %struct.ddraw*, %struct.ddraw** %10, align 8
  %18 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DDSCL_FPUPRESERVE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %7
  %24 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %25 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %24, i32 0, i32 16
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32* @d3d_device7_fpu_preserve_vtbl, i32** %26, align 8
  br label %31

27:                                               ; preds = %7
  %28 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %29 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %28, i32 0, i32 16
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32* @d3d_device7_fpu_setup_vtbl, i32** %30, align 8
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %33 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %32, i32 0, i32 15
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  store i32* @d3d_device3_vtbl, i32** %34, align 8
  %35 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %36 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %35, i32 0, i32 14
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i32* @d3d_device2_vtbl, i32** %37, align 8
  %38 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %39 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %38, i32 0, i32 13
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i32* @d3d_device1_vtbl, i32** %40, align 8
  %41 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %42 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %41, i32 0, i32 10
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store i32* @d3d_device_inner_vtbl, i32** %43, align 8
  %44 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %45 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %48 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %51 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %50, i32 0, i32 12
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %53 = icmp ne %struct.TYPE_14__* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %31
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %56 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %57 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %56, i32 0, i32 11
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %57, align 8
  br label %63

58:                                               ; preds = %31
  %59 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %60 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %59, i32 0, i32 10
  %61 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %62 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %61, i32 0, i32 11
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %62, align 8
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.ddraw*, %struct.ddraw** %10, align 8
  %65 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %66 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %65, i32 0, i32 9
  store %struct.ddraw* %64, %struct.ddraw** %66, align 8
  %67 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %68 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %67, i32 0, i32 8
  %69 = call i32 @list_init(i32* %68)
  %70 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %71 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %70, i32 0, i32 3
  %72 = call i32 @ddraw_handle_table_init(i32* %71, i32 64)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %63
  %75 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @DDERR_OUTOFMEMORY, align 4
  store i32 %76, i32* %8, align 4
  br label %166

77:                                               ; preds = %63
  %78 = load i32, i32* @FALSE, align 4
  %79 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %80 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 8
  %81 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %82 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %81, i32 0, i32 6
  %83 = bitcast %struct.TYPE_15__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 4 bitcast (%struct.TYPE_15__* @d3d_device_init.ident to i8*), i64 64, i1 false)
  %84 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %85 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %84, i32 0, i32 5
  %86 = bitcast %struct.TYPE_15__* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 4 bitcast (%struct.TYPE_15__* @d3d_device_init.ident to i8*), i64 64, i1 false)
  %87 = load %struct.ddraw*, %struct.ddraw** %10, align 8
  %88 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %91 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ddraw*, %struct.ddraw** %10, align 8
  %93 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @wined3d_device_incref(i32 %94)
  %96 = load %struct.ddraw*, %struct.ddraw** %10, align 8
  %97 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ddraw_surface*, %struct.ddraw_surface** %12, align 8
  %100 = call i32 @ddraw_surface_get_rendertarget_view(%struct.ddraw_surface* %99)
  %101 = load i32, i32* @TRUE, align 4
  %102 = call i32 @wined3d_device_set_rendertarget_view(i32 %98, i32 0, i32 %100, i32 %101)
  store i32 %102, i32* %16, align 4
  %103 = call i64 @FAILED(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %77
  %106 = load i32, i32* %16, align 4
  %107 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %109 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %108, i32 0, i32 3
  %110 = call i32 @ddraw_handle_table_destroy(i32* %109)
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %8, align 4
  br label %166

112:                                              ; preds = %77
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %114 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %115 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %114, i32 0, i32 2
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %115, align 8
  %116 = load i32, i32* %14, align 4
  %117 = icmp ne i32 %116, 1
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %120 = getelementptr inbounds %struct.d3d_device, %struct.d3d_device* %119, i32 0, i32 2
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %120, align 8
  %122 = call i32 @IUnknown_AddRef(%struct.TYPE_14__* %121)
  br label %123

123:                                              ; preds = %118, %112
  %124 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %125 = load %struct.ddraw*, %struct.ddraw** %10, align 8
  %126 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %125, i32 0, i32 2
  store %struct.d3d_device* %124, %struct.d3d_device** %126, align 8
  %127 = load %struct.ddraw*, %struct.ddraw** %10, align 8
  %128 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @WINED3D_RS_ZENABLE, align 4
  %131 = load %struct.d3d_device*, %struct.d3d_device** %9, align 8
  %132 = call i32 @d3d_device_update_depth_stencil(%struct.d3d_device* %131)
  %133 = call i32 @wined3d_device_set_render_state(i32 %129, i32 %130, i32 %132)
  %134 = load i32, i32* %14, align 4
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %143

136:                                              ; preds = %123
  %137 = load %struct.ddraw*, %struct.ddraw** %10, align 8
  %138 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @WINED3D_RS_COLORKEYENABLE, align 4
  %141 = load i32, i32* @TRUE, align 4
  %142 = call i32 @wined3d_device_set_render_state(i32 %139, i32 %140, i32 %141)
  br label %154

143:                                              ; preds = %123
  %144 = load i32, i32* %14, align 4
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load %struct.ddraw*, %struct.ddraw** %10, align 8
  %148 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @WINED3D_RS_SPECULARENABLE, align 4
  %151 = load i32, i32* @TRUE, align 4
  %152 = call i32 @wined3d_device_set_render_state(i32 %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %146, %143
  br label %154

154:                                              ; preds = %153, %136
  %155 = load i32, i32* %14, align 4
  %156 = icmp slt i32 %155, 7
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load %struct.ddraw*, %struct.ddraw** %10, align 8
  %159 = getelementptr inbounds %struct.ddraw, %struct.ddraw* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @WINED3D_RS_NORMALIZENORMALS, align 4
  %162 = load i32, i32* @TRUE, align 4
  %163 = call i32 @wined3d_device_set_render_state(i32 %160, i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %157, %154
  %165 = load i32, i32* @D3D_OK, align 4
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %164, %105, %74
  %167 = load i32, i32* %8, align 4
  ret i32 %167
}

declare dso_local i32 @list_init(i32*) #1

declare dso_local i32 @ddraw_handle_table_init(i32*, i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wined3d_device_incref(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wined3d_device_set_rendertarget_view(i32, i32, i32, i32) #1

declare dso_local i32 @ddraw_surface_get_rendertarget_view(%struct.ddraw_surface*) #1

declare dso_local i32 @ddraw_handle_table_destroy(i32*) #1

declare dso_local i32 @IUnknown_AddRef(%struct.TYPE_14__*) #1

declare dso_local i32 @wined3d_device_set_render_state(i32, i32, i32) #1

declare dso_local i32 @d3d_device_update_depth_stencil(%struct.d3d_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
