; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_blt_special.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_surface_blt_special.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_surface = type { %struct.wined3d_texture* }
%struct.wined3d_texture = type { i32, %struct.TYPE_14__, %struct.wined3d_swapchain* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, %struct.wined3d_device* }
%struct.TYPE_13__ = type { i64 }
%struct.wined3d_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.wined3d_swapchain = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.wined3d_blt_fx = type { i32 }

@.str = private unnamed_addr constant [88 x i8] c"dst_surface %p, dst_rect %s, src_surface %p, src_rect %s, flags %#x, fx %p, filter %s.\0A\00", align 1
@WINED3D_RESOURCE_ACCESS_GPU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Destination resource is not GPU accessible, rejecting GL blit.\0A\00", align 1
@WINED3DERR_INVALIDCALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Source resource is not GPU accessible, rejecting GL blit.\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"No surface is render target, not using hardware blit.\0A\00", align 1
@WINED3D_BLT_DST_CKEY = common dso_local global i32 0, align 4
@WINED3D_BLT_DST_CKEY_OVERRIDE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [83 x i8] c"Destination color key not supported in accelerated Blit, falling back to software\0A\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"Implement hardware blit between two surfaces on the same swapchain\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"Implement hardware blit between two different swapchains\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Blit from active render target to a swapchain\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"Implement blit from a swapchain to the active render target\0A\00", align 1
@WINED3DFMT_P8_UINT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [60 x i8] c"P8 read back not supported by frame buffer to texture blit\0A\00", align 1
@WINED3D_BLT_SRC_CKEY = common dso_local global i32 0, align 4
@WINED3D_BLT_SRC_CKEY_OVERRIDE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [60 x i8] c"Color keying not supported by frame buffer to texture blit\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [73 x i8] c"No stretching in x direction, using direct framebuffer -> texture copy.\0A\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"Using hardware stretching to flip / stretch the texture.\0A\00", align 1
@WINED3D_OK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [82 x i8] c"Didn't find any usable render target setup for hw blit, falling back to software\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_surface*, %struct.TYPE_15__*, %struct.wined3d_surface*, %struct.TYPE_15__*, i32, %struct.wined3d_blt_fx*, i32)* @surface_blt_special to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surface_blt_special(%struct.wined3d_surface* %0, %struct.TYPE_15__* %1, %struct.wined3d_surface* %2, %struct.TYPE_15__* %3, i32 %4, %struct.wined3d_blt_fx* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.wined3d_surface*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.wined3d_surface*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wined3d_blt_fx*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.wined3d_texture*, align 8
  %17 = alloca %struct.wined3d_device*, align 8
  %18 = alloca %struct.wined3d_surface*, align 8
  %19 = alloca %struct.wined3d_swapchain*, align 8
  %20 = alloca %struct.wined3d_swapchain*, align 8
  %21 = alloca %struct.wined3d_texture*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.wined3d_surface* %0, %struct.wined3d_surface** %9, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %10, align 8
  store %struct.wined3d_surface* %2, %struct.wined3d_surface** %11, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.wined3d_blt_fx* %5, %struct.wined3d_blt_fx** %14, align 8
  store i32 %6, i32* %15, align 4
  %26 = load %struct.wined3d_surface*, %struct.wined3d_surface** %9, align 8
  %27 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %26, i32 0, i32 0
  %28 = load %struct.wined3d_texture*, %struct.wined3d_texture** %27, align 8
  store %struct.wined3d_texture* %28, %struct.wined3d_texture** %16, align 8
  %29 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %30 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load %struct.wined3d_device*, %struct.wined3d_device** %31, align 8
  store %struct.wined3d_device* %32, %struct.wined3d_device** %17, align 8
  %33 = load %struct.wined3d_device*, %struct.wined3d_device** %17, align 8
  %34 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.wined3d_surface* @wined3d_rendertarget_view_get_surface(i32 %38)
  store %struct.wined3d_surface* %39, %struct.wined3d_surface** %18, align 8
  %40 = load %struct.wined3d_surface*, %struct.wined3d_surface** %9, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %42 = call i32 @wine_dbgstr_rect(%struct.TYPE_15__* %41)
  %43 = load %struct.wined3d_surface*, %struct.wined3d_surface** %11, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %45 = call i32 @wine_dbgstr_rect(%struct.TYPE_15__* %44)
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.wined3d_blt_fx*, %struct.wined3d_blt_fx** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @debug_d3dtexturefiltertype(i32 %48)
  %50 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), %struct.wined3d_surface* %40, i32 %42, %struct.wined3d_surface* %43, i32 %45, i32 %46, %struct.wined3d_blt_fx* %47, i32 %49)
  %51 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %52 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %7
  %59 = call i32 @WARN(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %60, i32* %8, align 4
  br label %270

61:                                               ; preds = %7
  %62 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %63 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %62, i32 0, i32 2
  %64 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %63, align 8
  store %struct.wined3d_swapchain* %64, %struct.wined3d_swapchain** %20, align 8
  %65 = load %struct.wined3d_surface*, %struct.wined3d_surface** %11, align 8
  %66 = icmp ne %struct.wined3d_surface* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load %struct.wined3d_surface*, %struct.wined3d_surface** %11, align 8
  %69 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %68, i32 0, i32 0
  %70 = load %struct.wined3d_texture*, %struct.wined3d_texture** %69, align 8
  store %struct.wined3d_texture* %70, %struct.wined3d_texture** %21, align 8
  %71 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %72 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @WINED3D_RESOURCE_ACCESS_GPU, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %67
  %79 = call i32 @WARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %80, i32* %8, align 4
  br label %270

81:                                               ; preds = %67
  %82 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %83 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %82, i32 0, i32 2
  %84 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %83, align 8
  store %struct.wined3d_swapchain* %84, %struct.wined3d_swapchain** %19, align 8
  br label %86

85:                                               ; preds = %61
  store %struct.wined3d_texture* null, %struct.wined3d_texture** %21, align 8
  store %struct.wined3d_swapchain* null, %struct.wined3d_swapchain** %19, align 8
  br label %86

86:                                               ; preds = %85, %81
  %87 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %20, align 8
  %88 = icmp ne %struct.wined3d_swapchain* %87, null
  br i1 %88, label %103, label %89

89:                                               ; preds = %86
  %90 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %19, align 8
  %91 = icmp ne %struct.wined3d_swapchain* %90, null
  br i1 %91, label %103, label %92

92:                                               ; preds = %89
  %93 = load %struct.wined3d_surface*, %struct.wined3d_surface** %11, align 8
  %94 = load %struct.wined3d_surface*, %struct.wined3d_surface** %18, align 8
  %95 = icmp ne %struct.wined3d_surface* %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load %struct.wined3d_surface*, %struct.wined3d_surface** %9, align 8
  %98 = load %struct.wined3d_surface*, %struct.wined3d_surface** %18, align 8
  %99 = icmp ne %struct.wined3d_surface* %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %102, i32* %8, align 4
  br label %270

103:                                              ; preds = %96, %92, %89, %86
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @WINED3D_BLT_DST_CKEY, align 4
  %106 = load i32, i32* @WINED3D_BLT_DST_CKEY_OVERRIDE, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0))
  %112 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %112, i32* %8, align 4
  br label %270

113:                                              ; preds = %103
  %114 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %20, align 8
  %115 = icmp ne %struct.wined3d_swapchain* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %20, align 8
  %118 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %19, align 8
  %119 = icmp eq %struct.wined3d_swapchain* %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = call i32 @FIXME(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  %122 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %122, i32* %8, align 4
  br label %270

123:                                              ; preds = %116, %113
  %124 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %20, align 8
  %125 = icmp ne %struct.wined3d_swapchain* %124, null
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %19, align 8
  %128 = icmp ne %struct.wined3d_swapchain* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = call i32 @FIXME(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %131 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %131, i32* %8, align 4
  br label %270

132:                                              ; preds = %126, %123
  %133 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %20, align 8
  %134 = icmp ne %struct.wined3d_swapchain* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load %struct.wined3d_surface*, %struct.wined3d_surface** %11, align 8
  %137 = load %struct.wined3d_surface*, %struct.wined3d_surface** %18, align 8
  %138 = icmp eq %struct.wined3d_surface* %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %135
  br label %153

142:                                              ; preds = %132
  %143 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %19, align 8
  %144 = icmp ne %struct.wined3d_swapchain* %143, null
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load %struct.wined3d_surface*, %struct.wined3d_surface** %9, align 8
  %147 = load %struct.wined3d_surface*, %struct.wined3d_surface** %18, align 8
  %148 = icmp eq %struct.wined3d_surface* %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = call i32 @FIXME(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  %151 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %151, i32* %8, align 4
  br label %270

152:                                              ; preds = %145, %142
  br label %153

153:                                              ; preds = %152, %141
  %154 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %19, align 8
  %155 = icmp ne %struct.wined3d_swapchain* %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %153
  %157 = load %struct.wined3d_surface*, %struct.wined3d_surface** %11, align 8
  %158 = load %struct.wined3d_surface*, %struct.wined3d_surface** %18, align 8
  %159 = icmp eq %struct.wined3d_surface* %157, %158
  br i1 %159, label %160, label %267

160:                                              ; preds = %156, %153
  %161 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %20, align 8
  %162 = icmp ne %struct.wined3d_swapchain* %161, null
  br i1 %162, label %267, label %163

163:                                              ; preds = %160
  %164 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %165 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @WINED3DFMT_P8_UINT, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %181, label %172

172:                                              ; preds = %163
  %173 = load %struct.wined3d_texture*, %struct.wined3d_texture** %16, align 8
  %174 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @WINED3DFMT_P8_UINT, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %172, %163
  %182 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0))
  %183 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %183, i32* %8, align 4
  br label %270

184:                                              ; preds = %172
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* @WINED3D_BLT_SRC_CKEY, align 4
  %187 = load i32, i32* @WINED3D_BLT_SRC_CKEY_OVERRIDE, align 4
  %188 = or i32 %186, %187
  %189 = and i32 %185, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %184
  %192 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0))
  %193 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %193, i32* %8, align 4
  br label %270

194:                                              ; preds = %184
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = sub i32 %197, %200
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = sub i32 %204, %207
  %209 = icmp ne i32 %201, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %194
  %211 = load i32, i32* @TRUE, align 4
  store i32 %211, i32* %25, align 4
  br label %214

212:                                              ; preds = %194
  %213 = load i32, i32* @FALSE, align 4
  store i32 %213, i32* %25, align 4
  br label %214

214:                                              ; preds = %212, %210
  %215 = load %struct.wined3d_surface*, %struct.wined3d_surface** %11, align 8
  %216 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %215)
  %217 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %218 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = urem i32 %216, %219
  store i32 %220, i32* %22, align 4
  %221 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %222 = load i32, i32* %22, align 4
  %223 = call i32 @wined3d_texture_get_level_width(%struct.wined3d_texture* %221, i32 %222)
  store i32 %223, i32* %23, align 4
  %224 = load %struct.wined3d_texture*, %struct.wined3d_texture** %21, align 8
  %225 = load i32, i32* %22, align 4
  %226 = call i32 @wined3d_texture_get_level_height(%struct.wined3d_texture* %224, i32 %225)
  store i32 %226, i32* %24, align 4
  %227 = load i32, i32* %25, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %249

229:                                              ; preds = %214
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = sub i32 %232, %235
  %237 = load i32, i32* %23, align 4
  %238 = icmp ugt i32 %236, %237
  br i1 %238, label %249, label %239

239:                                              ; preds = %229
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = sub i32 %242, %245
  %247 = load i32, i32* %24, align 4
  %248 = icmp ugt i32 %246, %247
  br i1 %248, label %249, label %257

249:                                              ; preds = %239, %229, %214
  %250 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.11, i64 0, i64 0))
  %251 = load %struct.wined3d_surface*, %struct.wined3d_surface** %9, align 8
  %252 = load %struct.wined3d_surface*, %struct.wined3d_surface** %11, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %255 = load i32, i32* %15, align 4
  %256 = call i32 @fb_copy_to_texture_direct(%struct.wined3d_surface* %251, %struct.wined3d_surface* %252, %struct.TYPE_15__* %253, %struct.TYPE_15__* %254, i32 %255)
  br label %265

257:                                              ; preds = %239
  %258 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i64 0, i64 0))
  %259 = load %struct.wined3d_surface*, %struct.wined3d_surface** %9, align 8
  %260 = load %struct.wined3d_surface*, %struct.wined3d_surface** %11, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %263 = load i32, i32* %15, align 4
  %264 = call i32 @fb_copy_to_texture_hwstretch(%struct.wined3d_surface* %259, %struct.wined3d_surface* %260, %struct.TYPE_15__* %261, %struct.TYPE_15__* %262, i32 %263)
  br label %265

265:                                              ; preds = %257, %249
  %266 = load i32, i32* @WINED3D_OK, align 4
  store i32 %266, i32* %8, align 4
  br label %270

267:                                              ; preds = %160, %156
  %268 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.13, i64 0, i64 0))
  %269 = load i32, i32* @WINED3DERR_INVALIDCALL, align 4
  store i32 %269, i32* %8, align 4
  br label %270

270:                                              ; preds = %267, %265, %191, %181, %149, %129, %120, %110, %100, %78, %58
  %271 = load i32, i32* %8, align 4
  ret i32 %271
}

declare dso_local %struct.wined3d_surface* @wined3d_rendertarget_view_get_surface(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @wine_dbgstr_rect(%struct.TYPE_15__*) #1

declare dso_local i32 @debug_d3dtexturefiltertype(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @surface_get_sub_resource_idx(%struct.wined3d_surface*) #1

declare dso_local i32 @wined3d_texture_get_level_width(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @wined3d_texture_get_level_height(%struct.wined3d_texture*, i32) #1

declare dso_local i32 @fb_copy_to_texture_direct(%struct.wined3d_surface*, %struct.wined3d_surface*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @fb_copy_to_texture_hwstretch(%struct.wined3d_surface*, %struct.wined3d_surface*, %struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
