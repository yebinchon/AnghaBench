; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_cpu_blt_colour_fill.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_cpu_blt_colour_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_rendertarget_view = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_7__*, %struct.wined3d_device* }
%struct.TYPE_7__ = type { i64 }
%struct.wined3d_device = type { i64 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32 }
%struct.wined3d_box = type { i32, i32, i32, i32, i32 }
%struct.wined3d_color = type { i32 }
%struct.wined3d_context = type { i32 }
%struct.wined3d_texture = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.wined3d_bo_address = type { i32 }
%struct.wined3d_map_desc = type { i32, i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"view %p, box %s, colour %s.\0A\00", align 1
@WINED3DFMT_FLAG_BLOCKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Not implemented for format %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"View format %s doesn't match resource format %s.\0A\00", align 1
@WINED3D_RTYPE_BUFFER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Not implemented for buffers.\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to load the sub-resource into %s.\0A\00", align 1
@GL_PIXEL_UNPACK_BUFFER = common dso_local global i32 0, align 4
@WINED3D_MAP_WRITE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Not implemented for bpp %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_rendertarget_view*, %struct.wined3d_box*, %struct.wined3d_color*)* @surface_cpu_blt_colour_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @surface_cpu_blt_colour_fill(%struct.wined3d_rendertarget_view* %0, %struct.wined3d_box* %1, %struct.wined3d_color* %2) #0 {
  %4 = alloca %struct.wined3d_rendertarget_view*, align 8
  %5 = alloca %struct.wined3d_box*, align 8
  %6 = alloca %struct.wined3d_color*, align 8
  %7 = alloca %struct.wined3d_device*, align 8
  %8 = alloca %struct.wined3d_context*, align 8
  %9 = alloca %struct.wined3d_texture*, align 8
  %10 = alloca %struct.wined3d_bo_address, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.wined3d_map_desc, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.wined3d_rendertarget_view* %0, %struct.wined3d_rendertarget_view** %4, align 8
  store %struct.wined3d_box* %1, %struct.wined3d_box** %5, align 8
  store %struct.wined3d_color* %2, %struct.wined3d_color** %6, align 8
  %20 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %21 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load %struct.wined3d_device*, %struct.wined3d_device** %23, align 8
  store %struct.wined3d_device* %24, %struct.wined3d_device** %7, align 8
  store %struct.wined3d_context* null, %struct.wined3d_context** %8, align 8
  %25 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %26 = load %struct.wined3d_box*, %struct.wined3d_box** %5, align 8
  %27 = call i32 @debug_box(%struct.wined3d_box* %26)
  %28 = load %struct.wined3d_color*, %struct.wined3d_color** %6, align 8
  %29 = call i32 @debug_color(%struct.wined3d_color* %28)
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.wined3d_rendertarget_view* %25, i32 %27, i32 %29)
  %31 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %32 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @WINED3DFMT_FLAG_BLOCKS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %3
  %38 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %39 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %38, i32 0, i32 3
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @debug_d3dformat(i64 %42)
  %44 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %340

45:                                               ; preds = %3
  %46 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %47 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %46, i32 0, i32 3
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %52 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %51, i32 0, i32 2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %50, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %45
  %60 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %61 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %60, i32 0, i32 3
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @debug_d3dformat(i64 %64)
  %66 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %67 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @debug_d3dformat(i64 %72)
  %74 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %73)
  br label %75

75:                                               ; preds = %59, %45
  %76 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %77 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %76, i32 0, i32 2
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @WINED3D_RTYPE_BUFFER, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %340

85:                                               ; preds = %75
  %86 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %87 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.wined3d_device*, %struct.wined3d_device** %7, align 8
  %92 = call %struct.wined3d_context* @context_acquire(%struct.wined3d_device* %91, i32* null, i32 0)
  store %struct.wined3d_context* %92, %struct.wined3d_context** %8, align 8
  br label %93

93:                                               ; preds = %90, %85
  %94 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %95 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %94, i32 0, i32 3
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = load %struct.wined3d_color*, %struct.wined3d_color** %6, align 8
  %98 = call i32 @wined3d_format_convert_from_float(%struct.TYPE_11__* %96, %struct.wined3d_color* %97)
  store i32 %98, i32* %19, align 4
  %99 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %100 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %99, i32 0, i32 3
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %15, align 4
  %104 = load %struct.wined3d_box*, %struct.wined3d_box** %5, align 8
  %105 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.wined3d_box*, %struct.wined3d_box** %5, align 8
  %108 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sub i32 %106, %109
  store i32 %110, i32* %13, align 4
  %111 = load %struct.wined3d_box*, %struct.wined3d_box** %5, align 8
  %112 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.wined3d_box*, %struct.wined3d_box** %5, align 8
  %115 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = sub i32 %113, %116
  store i32 %117, i32* %14, align 4
  %118 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %119 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %118, i32 0, i32 2
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = call %struct.wined3d_texture* @texture_from_resource(%struct.TYPE_10__* %120)
  store %struct.wined3d_texture* %121, %struct.wined3d_texture** %9, align 8
  %122 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %123 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %17, align 4
  %126 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %127 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %128 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %131 = load i32, i32* %17, align 4
  %132 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %126, i32 %129, %struct.wined3d_context* %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %93
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @wined3d_debug_location(i32 %135)
  %137 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %134, %93
  %139 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %140 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %141 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %17, align 4
  %144 = xor i32 %143, -1
  %145 = call i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture* %139, i32 %142, i32 %144)
  %146 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %147 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %148 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %151 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = srem i32 %149, %152
  %154 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %16, i32 0, i32 0
  %155 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %16, i32 0, i32 1
  %156 = call i32 @wined3d_texture_get_pitch(%struct.wined3d_texture* %146, i32 %153, i32* %154, i32* %155)
  %157 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %158 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %159 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %17, align 4
  %162 = call i32 @wined3d_texture_get_memory(%struct.wined3d_texture* %157, i32 %160, %struct.wined3d_bo_address* %10, i32 %161)
  %163 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %164 = load %struct.wined3d_texture*, %struct.wined3d_texture** %9, align 8
  %165 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %164, i32 0, i32 1
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %168 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %175 = load i32, i32* @WINED3D_MAP_WRITE, align 4
  %176 = call i32* @context_map_bo_address(%struct.wined3d_context* %163, %struct.wined3d_bo_address* %10, i32 %173, i32 %174, i32 %175)
  %177 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %16, i32 0, i32 2
  store i32* %176, i32** %177, align 8
  %178 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %16, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.wined3d_box*, %struct.wined3d_box** %5, align 8
  %181 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %16, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %182, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %179, i64 %186
  %188 = load %struct.wined3d_box*, %struct.wined3d_box** %5, align 8
  %189 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %192 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %191, i32 0, i32 3
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = sdiv i32 %190, %195
  %197 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %16, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = mul nsw i32 %196, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %187, i64 %200
  %202 = load %struct.wined3d_box*, %struct.wined3d_box** %5, align 8
  %203 = getelementptr inbounds %struct.wined3d_box, %struct.wined3d_box* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %206 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %205, i32 0, i32 3
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = sdiv i32 %204, %209
  %211 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %212 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %211, i32 0, i32 3
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %210, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %201, i64 %217
  %219 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %16, i32 0, i32 2
  store i32* %218, i32** %219, align 8
  %220 = load i32, i32* %15, align 4
  switch i32 %220, label %297 [
    i32 1, label %221
    i32 2, label %237
    i32 3, label %253
    i32 4, label %281
  ]

221:                                              ; preds = %138
  store i32 0, i32* %11, align 4
  br label %222

222:                                              ; preds = %233, %221
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* %13, align 4
  %225 = icmp ult i32 %223, %224
  br i1 %225, label %226, label %236

226:                                              ; preds = %222
  %227 = load i32, i32* %19, align 4
  %228 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %16, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %11, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 %227, i32* %232, align 4
  br label %233

233:                                              ; preds = %226
  %234 = load i32, i32* %11, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %11, align 4
  br label %222

236:                                              ; preds = %222
  br label %308

237:                                              ; preds = %138
  store i32 0, i32* %11, align 4
  br label %238

238:                                              ; preds = %249, %237
  %239 = load i32, i32* %11, align 4
  %240 = load i32, i32* %13, align 4
  %241 = icmp ult i32 %239, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %238
  %243 = load i32, i32* %19, align 4
  %244 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %16, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %243, i32* %248, align 4
  br label %249

249:                                              ; preds = %242
  %250 = load i32, i32* %11, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %11, align 4
  br label %238

252:                                              ; preds = %238
  br label %308

253:                                              ; preds = %138
  %254 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %16, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  store i32* %255, i32** %18, align 8
  store i32 0, i32* %11, align 4
  br label %256

256:                                              ; preds = %275, %253
  %257 = load i32, i32* %11, align 4
  %258 = load i32, i32* %13, align 4
  %259 = icmp ult i32 %257, %258
  br i1 %259, label %260, label %280

260:                                              ; preds = %256
  %261 = load i32, i32* %19, align 4
  %262 = and i32 %261, 255
  %263 = load i32*, i32** %18, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  store i32 %262, i32* %264, align 4
  %265 = load i32, i32* %19, align 4
  %266 = ashr i32 %265, 8
  %267 = and i32 %266, 255
  %268 = load i32*, i32** %18, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* %19, align 4
  %271 = ashr i32 %270, 16
  %272 = and i32 %271, 255
  %273 = load i32*, i32** %18, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 2
  store i32 %272, i32* %274, align 4
  br label %275

275:                                              ; preds = %260
  %276 = load i32, i32* %11, align 4
  %277 = add i32 %276, 1
  store i32 %277, i32* %11, align 4
  %278 = load i32*, i32** %18, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 3
  store i32* %279, i32** %18, align 8
  br label %256

280:                                              ; preds = %256
  br label %308

281:                                              ; preds = %138
  store i32 0, i32* %11, align 4
  br label %282

282:                                              ; preds = %293, %281
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* %13, align 4
  %285 = icmp ult i32 %283, %284
  br i1 %285, label %286, label %296

286:                                              ; preds = %282
  %287 = load i32, i32* %19, align 4
  %288 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %16, i32 0, i32 2
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %11, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  store i32 %287, i32* %292, align 4
  br label %293

293:                                              ; preds = %286
  %294 = load i32, i32* %11, align 4
  %295 = add i32 %294, 1
  store i32 %295, i32* %11, align 4
  br label %282

296:                                              ; preds = %282
  br label %308

297:                                              ; preds = %138
  %298 = load i32, i32* %15, align 4
  %299 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %298)
  %300 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %301 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %300, i32 0, i32 2
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %301, align 8
  %303 = load %struct.wined3d_rendertarget_view*, %struct.wined3d_rendertarget_view** %4, align 8
  %304 = getelementptr inbounds %struct.wined3d_rendertarget_view, %struct.wined3d_rendertarget_view* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = sext i32 %305 to i64
  %307 = call i32 @wined3d_resource_unmap(%struct.TYPE_10__* %302, i64 %306)
  br label %340

308:                                              ; preds = %296, %280, %252, %236
  %309 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %16, i32 0, i32 2
  %310 = load i32*, i32** %309, align 8
  store i32* %310, i32** %18, align 8
  store i32 1, i32* %12, align 4
  br label %311

311:                                              ; preds = %328, %308
  %312 = load i32, i32* %12, align 4
  %313 = load i32, i32* %14, align 4
  %314 = icmp ult i32 %312, %313
  br i1 %314, label %315, label %331

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %16, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32*, i32** %18, align 8
  %319 = sext i32 %317 to i64
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  store i32* %320, i32** %18, align 8
  %321 = load i32*, i32** %18, align 8
  %322 = getelementptr inbounds %struct.wined3d_map_desc, %struct.wined3d_map_desc* %16, i32 0, i32 2
  %323 = load i32*, i32** %322, align 8
  %324 = load i32, i32* %13, align 4
  %325 = load i32, i32* %15, align 4
  %326 = mul i32 %324, %325
  %327 = call i32 @memcpy(i32* %321, i32* %323, i32 %326)
  br label %328

328:                                              ; preds = %315
  %329 = load i32, i32* %12, align 4
  %330 = add i32 %329, 1
  store i32 %330, i32* %12, align 4
  br label %311

331:                                              ; preds = %311
  %332 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %333 = load i32, i32* @GL_PIXEL_UNPACK_BUFFER, align 4
  %334 = call i32 @context_unmap_bo_address(%struct.wined3d_context* %332, %struct.wined3d_bo_address* %10, i32 %333)
  %335 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %336 = icmp ne %struct.wined3d_context* %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %331
  %338 = load %struct.wined3d_context*, %struct.wined3d_context** %8, align 8
  %339 = call i32 @context_release(%struct.wined3d_context* %338)
  br label %340

340:                                              ; preds = %37, %83, %297, %337, %331
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_rendertarget_view*, i32, i32) #1

declare dso_local i32 @debug_box(%struct.wined3d_box*) #1

declare dso_local i32 @debug_color(%struct.wined3d_color*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @debug_d3dformat(i64) #1

declare dso_local %struct.wined3d_context* @context_acquire(%struct.wined3d_device*, i32*, i32) #1

declare dso_local i32 @wined3d_format_convert_from_float(%struct.TYPE_11__*, %struct.wined3d_color*) #1

declare dso_local %struct.wined3d_texture* @texture_from_resource(%struct.TYPE_10__*) #1

declare dso_local i32 @wined3d_texture_load_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @wined3d_debug_location(i32) #1

declare dso_local i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture*, i32, i32) #1

declare dso_local i32 @wined3d_texture_get_pitch(%struct.wined3d_texture*, i32, i32*, i32*) #1

declare dso_local i32 @wined3d_texture_get_memory(%struct.wined3d_texture*, i32, %struct.wined3d_bo_address*, i32) #1

declare dso_local i32* @context_map_bo_address(%struct.wined3d_context*, %struct.wined3d_bo_address*, i32, i32, i32) #1

declare dso_local i32 @wined3d_resource_unmap(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @context_unmap_bo_address(%struct.wined3d_context*, %struct.wined3d_bo_address*, i32) #1

declare dso_local i32 @context_release(%struct.wined3d_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
