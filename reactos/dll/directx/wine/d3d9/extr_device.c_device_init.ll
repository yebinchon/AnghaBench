; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_device.c_device_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d9/extr_device.c_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d9_device = type { i32, %struct.d3d9*, i32, i32*, %struct.wined3d_swapchain_desc*, i8*, i32, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.wined3d_swapchain_desc = type { i32 }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_9__ = type { i32* }
%struct.d3d9 = type { i32, i32 }
%struct.wined3d = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Ignoring display mode.\0A\00", align 1
@d3d9_device_vtbl = common dso_local global i32 0, align 4
@d3d9_wined3d_device_parent_ops = common dso_local global i32 0, align 4
@D3DCREATE_FPU_PRESERVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to create wined3d device, hr %#x.\0A\00", align 1
@D3DCREATE_ADAPTERGROUP_DEVICE = common dso_local global i32 0, align 4
@D3DCREATE_MULTITHREADED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to acquire focus window, hr %#x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to allocate wined3d parameters.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@D3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to initialize 3D, hr %#x.\0A\00", align 1
@WINED3D_RS_ZENABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"Failed to allocate FVF vertex declaration map memory.\0A\00", align 1
@D3D_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_init(%struct.d3d9_device* %0, %struct.d3d9* %1, %struct.wined3d* %2, i32 %3, i32 %4, i64 %5, i32 %6, %struct.TYPE_11__* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.d3d9_device*, align 8
  %12 = alloca %struct.d3d9*, align 8
  %13 = alloca %struct.wined3d*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.wined3d_swapchain_desc*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_10__, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.d3d9_device* %0, %struct.d3d9_device** %11, align 8
  store %struct.d3d9* %1, %struct.d3d9** %12, align 8
  store %struct.wined3d* %2, %struct.wined3d** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32 1, i32* %22, align 4
  %26 = load i32*, i32** %19, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %9
  %29 = call i32 @FIXME(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %9
  %31 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %32 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %31, i32 0, i32 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32* @d3d9_device_vtbl, i32** %33, align 8
  %34 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %35 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32* @d3d9_wined3d_device_parent_ops, i32** %36, align 8
  %37 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %38 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %37, i32 0, i32 0
  store i32 1, i32* %38, align 8
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* @D3DCREATE_FPU_PRESERVE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %30
  %44 = call i32 (...) @setup_fpu()
  br label %45

45:                                               ; preds = %43, %30
  %46 = call i32 (...) @wined3d_mutex_lock()
  %47 = load %struct.wined3d*, %struct.wined3d** %13, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i64, i64* %16, align 8
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %53 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %52, i32 0, i32 7
  %54 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %55 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %54, i32 0, i32 2
  %56 = call i32 @wined3d_device_create(%struct.wined3d* %47, i32 %48, i32 %49, i64 %50, i32 %51, i32 4, %struct.TYPE_12__* %53, i32* %55)
  store i32 %56, i32* %24, align 4
  %57 = call i64 @FAILED(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %45
  %60 = load i32, i32* %24, align 4
  %61 = call i32 @WARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = call i32 (...) @wined3d_mutex_unlock()
  %63 = load i32, i32* %24, align 4
  store i32 %63, i32* %10, align 4
  br label %334

64:                                               ; preds = %45
  %65 = load %struct.wined3d*, %struct.wined3d** %13, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @wined3d_get_device_caps(%struct.wined3d* %65, i32 %66, i32 %67, %struct.TYPE_10__* %23)
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %72 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* @D3DCREATE_ADAPTERGROUP_DEVICE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %22, align 4
  br label %80

80:                                               ; preds = %77, %64
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* @D3DCREATE_MULTITHREADED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %87 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @wined3d_device_set_multithreaded(i32 %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %157, label %95

95:                                               ; preds = %90
  %96 = load i64, i64* %16, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %16, align 8
  br label %102

102:                                              ; preds = %98, %95
  %103 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %104 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* %16, align 8
  %107 = call i32 @wined3d_device_acquire_focus_window(i32 %105, i64 %106)
  store i32 %107, i32* %24, align 4
  %108 = call i64 @FAILED(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %102
  %111 = load i32, i32* %24, align 4
  %112 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %114 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @wined3d_device_decref(i32 %115)
  %117 = call i32 (...) @wined3d_mutex_unlock()
  %118 = load i32, i32* %24, align 4
  store i32 %118, i32* %10, align 4
  br label %334

119:                                              ; preds = %102
  store i32 0, i32* %21, align 4
  br label %120

120:                                              ; preds = %153, %119
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* %22, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %156

124:                                              ; preds = %120
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %126 = load i32, i32* %21, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %25, align 8
  %131 = load i64, i64* %25, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %124
  %134 = load i64, i64* %16, align 8
  store i64 %134, i64* %25, align 8
  br label %135

135:                                              ; preds = %133, %124
  %136 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %137 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i64, i64* %25, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %141 = load i32, i32* %21, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %147 = load i32, i32* %21, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @wined3d_device_setup_fullscreen_window(i32 %138, i64 %139, i32 %145, i32 %151)
  br label %153

153:                                              ; preds = %135
  %154 = load i32, i32* %21, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %21, align 4
  br label %120

156:                                              ; preds = %120
  br label %157

157:                                              ; preds = %156, %90
  %158 = load i32, i32* %22, align 4
  %159 = zext i32 %158 to i64
  %160 = mul i64 4, %159
  %161 = trunc i64 %160 to i32
  %162 = call i8* @heap_alloc(i32 %161)
  %163 = bitcast i8* %162 to %struct.wined3d_swapchain_desc*
  store %struct.wined3d_swapchain_desc* %163, %struct.wined3d_swapchain_desc** %20, align 8
  %164 = icmp ne %struct.wined3d_swapchain_desc* %163, null
  br i1 %164, label %177, label %165

165:                                              ; preds = %157
  %166 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %167 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %168 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @wined3d_device_release_focus_window(i32 %169)
  %171 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %172 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @wined3d_device_decref(i32 %173)
  %175 = call i32 (...) @wined3d_mutex_unlock()
  %176 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %176, i32* %10, align 4
  br label %334

177:                                              ; preds = %157
  store i32 0, i32* %21, align 4
  br label %178

178:                                              ; preds = %210, %177
  %179 = load i32, i32* %21, align 4
  %180 = load i32, i32* %22, align 4
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %182, label %213

182:                                              ; preds = %178
  %183 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %20, align 8
  %184 = load i32, i32* %21, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %183, i64 %185
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %188 = load i32, i32* %21, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i64 %189
  %191 = load %struct.d3d9*, %struct.d3d9** %12, align 8
  %192 = getelementptr inbounds %struct.d3d9, %struct.d3d9* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @wined3d_swapchain_desc_from_present_parameters(%struct.wined3d_swapchain_desc* %186, %struct.TYPE_11__* %190, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %209, label %196

196:                                              ; preds = %182
  %197 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %198 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @wined3d_device_release_focus_window(i32 %199)
  %201 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %202 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @wined3d_device_decref(i32 %203)
  %205 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %20, align 8
  %206 = call i32 @heap_free(%struct.wined3d_swapchain_desc* %205)
  %207 = call i32 (...) @wined3d_mutex_unlock()
  %208 = load i32, i32* @D3DERR_INVALIDCALL, align 4
  store i32 %208, i32* %10, align 4
  br label %334

209:                                              ; preds = %182
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %21, align 4
  %212 = add i32 %211, 1
  store i32 %212, i32* %21, align 4
  br label %178

213:                                              ; preds = %178
  %214 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %215 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %20, align 8
  %218 = call i32 @wined3d_device_init_3d(i32 %216, %struct.wined3d_swapchain_desc* %217)
  store i32 %218, i32* %24, align 4
  %219 = call i64 @FAILED(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %236

221:                                              ; preds = %213
  %222 = load i32, i32* %24, align 4
  %223 = call i32 @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %222)
  %224 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %225 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @wined3d_device_release_focus_window(i32 %226)
  %228 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %20, align 8
  %229 = call i32 @heap_free(%struct.wined3d_swapchain_desc* %228)
  %230 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %231 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @wined3d_device_decref(i32 %232)
  %234 = call i32 (...) @wined3d_mutex_unlock()
  %235 = load i32, i32* %24, align 4
  store i32 %235, i32* %10, align 4
  br label %334

236:                                              ; preds = %213
  %237 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %238 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @WINED3D_RS_ZENABLE, align 4
  %241 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %20, align 8
  %242 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  %245 = xor i1 %244, true
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  %248 = call i32 @wined3d_device_set_render_state(i32 %239, i32 %240, i32 %247)
  %249 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %250 = call i32 @d3d9_device_get_swapchains(%struct.d3d9_device* %249)
  store i32 %250, i32* %24, align 4
  %251 = call i64 @FAILED(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %268

253:                                              ; preds = %236
  %254 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %255 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @wined3d_device_uninit_3d(i32 %256)
  %258 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %259 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @wined3d_device_release_focus_window(i32 %260)
  %262 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %263 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @wined3d_device_decref(i32 %264)
  %266 = call i32 (...) @wined3d_mutex_unlock()
  %267 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %267, i32* %10, align 4
  br label %334

268:                                              ; preds = %236
  store i32 0, i32* %21, align 4
  br label %269

269:                                              ; preds = %283, %268
  %270 = load i32, i32* %21, align 4
  %271 = load i32, i32* %22, align 4
  %272 = icmp ult i32 %270, %271
  br i1 %272, label %273, label %286

273:                                              ; preds = %269
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %275 = load i32, i32* %21, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i64 %276
  %278 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %20, align 8
  %279 = load i32, i32* %21, align 4
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds %struct.wined3d_swapchain_desc, %struct.wined3d_swapchain_desc* %278, i64 %280
  %282 = call i32 @present_parameters_from_wined3d_swapchain_desc(%struct.TYPE_11__* %277, %struct.wined3d_swapchain_desc* %281)
  br label %283

283:                                              ; preds = %273
  %284 = load i32, i32* %21, align 4
  %285 = add i32 %284, 1
  store i32 %285, i32* %21, align 4
  br label %269

286:                                              ; preds = %269
  %287 = call i32 (...) @wined3d_mutex_unlock()
  %288 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %20, align 8
  %289 = call i32 @heap_free(%struct.wined3d_swapchain_desc* %288)
  %290 = call i8* @heap_alloc(i32 0)
  %291 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %292 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %291, i32 0, i32 5
  store i8* %290, i8** %292, align 8
  %293 = icmp ne i8* %290, null
  br i1 %293, label %315, label %294

294:                                              ; preds = %286
  %295 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  %296 = call i32 (...) @wined3d_mutex_lock()
  %297 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %298 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %297, i32 0, i32 4
  %299 = load %struct.wined3d_swapchain_desc*, %struct.wined3d_swapchain_desc** %298, align 8
  %300 = call i32 @heap_free(%struct.wined3d_swapchain_desc* %299)
  %301 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %302 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @wined3d_device_uninit_3d(i32 %303)
  %305 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %306 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @wined3d_device_release_focus_window(i32 %307)
  %309 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %310 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @wined3d_device_decref(i32 %311)
  %313 = call i32 (...) @wined3d_mutex_unlock()
  %314 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %314, i32* %10, align 4
  br label %334

315:                                              ; preds = %286
  %316 = call i32 (...) @wined3d_mutex_lock()
  %317 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %318 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @wined3d_device_get_rendertarget_view(i32 %319, i32 0)
  %321 = call i32 @wined3d_rendertarget_view_get_sub_resource_parent(i32 %320)
  %322 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %323 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %322, i32 0, i32 3
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  store i32 %321, i32* %325, align 4
  %326 = call i32 (...) @wined3d_mutex_unlock()
  %327 = load %struct.d3d9*, %struct.d3d9** %12, align 8
  %328 = getelementptr inbounds %struct.d3d9, %struct.d3d9* %327, i32 0, i32 0
  %329 = call i32 @IDirect3D9Ex_AddRef(i32* %328)
  %330 = load %struct.d3d9*, %struct.d3d9** %12, align 8
  %331 = load %struct.d3d9_device*, %struct.d3d9_device** %11, align 8
  %332 = getelementptr inbounds %struct.d3d9_device, %struct.d3d9_device* %331, i32 0, i32 1
  store %struct.d3d9* %330, %struct.d3d9** %332, align 8
  %333 = load i32, i32* @D3D_OK, align 4
  store i32 %333, i32* %10, align 4
  br label %334

334:                                              ; preds = %315, %294, %253, %221, %196, %165, %110, %59
  %335 = load i32, i32* %10, align 4
  ret i32 %335
}

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @setup_fpu(...) #1

declare dso_local i32 @wined3d_mutex_lock(...) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wined3d_device_create(%struct.wined3d*, i32, i32, i64, i32, i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @wined3d_mutex_unlock(...) #1

declare dso_local i32 @wined3d_get_device_caps(%struct.wined3d*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @wined3d_device_set_multithreaded(i32) #1

declare dso_local i32 @wined3d_device_acquire_focus_window(i32, i64) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @wined3d_device_decref(i32) #1

declare dso_local i32 @wined3d_device_setup_fullscreen_window(i32, i64, i32, i32) #1

declare dso_local i8* @heap_alloc(i32) #1

declare dso_local i32 @wined3d_device_release_focus_window(i32) #1

declare dso_local i32 @wined3d_swapchain_desc_from_present_parameters(%struct.wined3d_swapchain_desc*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @heap_free(%struct.wined3d_swapchain_desc*) #1

declare dso_local i32 @wined3d_device_init_3d(i32, %struct.wined3d_swapchain_desc*) #1

declare dso_local i32 @wined3d_device_set_render_state(i32, i32, i32) #1

declare dso_local i32 @d3d9_device_get_swapchains(%struct.d3d9_device*) #1

declare dso_local i32 @wined3d_device_uninit_3d(i32) #1

declare dso_local i32 @present_parameters_from_wined3d_swapchain_desc(%struct.TYPE_11__*, %struct.wined3d_swapchain_desc*) #1

declare dso_local i32 @wined3d_rendertarget_view_get_sub_resource_parent(i32) #1

declare dso_local i32 @wined3d_device_get_rendertarget_view(i32, i32) #1

declare dso_local i32 @IDirect3D9Ex_AddRef(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
