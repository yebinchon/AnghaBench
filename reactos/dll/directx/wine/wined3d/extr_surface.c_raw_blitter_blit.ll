; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_raw_blitter_blit.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_surface.c_raw_blitter_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_blitter = type { %struct.TYPE_12__*, %struct.wined3d_blitter* }
%struct.TYPE_12__ = type { i32 (%struct.wined3d_blitter*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, %struct.TYPE_13__*, %struct.wined3d_surface*, i32, %struct.TYPE_13__*, %struct.wined3d_color_key*, i32)* }
%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_surface = type { %struct.wined3d_texture* }
%struct.wined3d_texture = type { i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.wined3d_color_key = type { i32 }

@WINED3D_BLIT_OP_RAW_BLIT = common dso_local global i32 0, align 4
@WINED3D_LOCATION_TEXTURE_RGB = common dso_local global i32 0, align 4
@WINED3D_LOCATION_TEXTURE_SRGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"No blitter to handle blit op %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Forwarding to blitter %p.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Blit using ARB_copy_image.\0A\00", align 1
@WINED3D_TEXTURE_IS_SRGB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to load the source sub-resource into %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Failed to prepare the destination sub-resource into %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"Failed to load the destination sub-resource into %s.\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"copy image data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_blitter*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, %struct.TYPE_13__*, %struct.wined3d_surface*, i32, %struct.TYPE_13__*, %struct.wined3d_color_key*, i32)* @raw_blitter_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_blitter_blit(%struct.wined3d_blitter* %0, i32 %1, %struct.wined3d_context* %2, %struct.wined3d_surface* %3, i32 %4, %struct.TYPE_13__* %5, %struct.wined3d_surface* %6, i32 %7, %struct.TYPE_13__* %8, %struct.wined3d_color_key* %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.wined3d_blitter*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_context*, align 8
  %16 = alloca %struct.wined3d_surface*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca %struct.wined3d_surface*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca %struct.wined3d_color_key*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.wined3d_gl_info*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.wined3d_texture*, align 8
  %32 = alloca %struct.wined3d_texture*, align 8
  %33 = alloca %struct.wined3d_blitter*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.wined3d_blitter* %0, %struct.wined3d_blitter** %13, align 8
  store i32 %1, i32* %14, align 4
  store %struct.wined3d_context* %2, %struct.wined3d_context** %15, align 8
  store %struct.wined3d_surface* %3, %struct.wined3d_surface** %16, align 8
  store i32 %4, i32* %17, align 4
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %18, align 8
  store %struct.wined3d_surface* %6, %struct.wined3d_surface** %19, align 8
  store i32 %7, i32* %20, align 4
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %21, align 8
  store %struct.wined3d_color_key* %9, %struct.wined3d_color_key** %22, align 8
  store i32 %10, i32* %23, align 4
  %37 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %38 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %37, i32 0, i32 0
  %39 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %38, align 8
  store %struct.wined3d_gl_info* %39, %struct.wined3d_gl_info** %24, align 8
  %40 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %41 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %40, i32 0, i32 0
  %42 = load %struct.wined3d_texture*, %struct.wined3d_texture** %41, align 8
  store %struct.wined3d_texture* %42, %struct.wined3d_texture** %31, align 8
  %43 = load %struct.wined3d_surface*, %struct.wined3d_surface** %19, align 8
  %44 = getelementptr inbounds %struct.wined3d_surface, %struct.wined3d_surface* %43, i32 0, i32 0
  %45 = load %struct.wined3d_texture*, %struct.wined3d_texture** %44, align 8
  store %struct.wined3d_texture* %45, %struct.wined3d_texture** %32, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @WINED3D_BLIT_OP_RAW_BLIT, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %77, label %49

49:                                               ; preds = %11
  %50 = load %struct.wined3d_texture*, %struct.wined3d_texture** %31, align 8
  %51 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.wined3d_texture*, %struct.wined3d_texture** %32, align 8
  %57 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %55, %61
  br i1 %62, label %63, label %106

63:                                               ; preds = %49
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %66 = load i32, i32* @WINED3D_LOCATION_TEXTURE_SRGB, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %73 = load i32, i32* @WINED3D_LOCATION_TEXTURE_SRGB, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %106, label %77

77:                                               ; preds = %70, %63, %11
  %78 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %13, align 8
  %79 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %78, i32 0, i32 1
  %80 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %79, align 8
  store %struct.wined3d_blitter* %80, %struct.wined3d_blitter** %33, align 8
  %81 = icmp ne %struct.wined3d_blitter* %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %20, align 4
  store i32 %85, i32* %12, align 4
  br label %293

86:                                               ; preds = %77
  %87 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %33, align 8
  %88 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_blitter* %87)
  %89 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %33, align 8
  %90 = getelementptr inbounds %struct.wined3d_blitter, %struct.wined3d_blitter* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32 (%struct.wined3d_blitter*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, %struct.TYPE_13__*, %struct.wined3d_surface*, i32, %struct.TYPE_13__*, %struct.wined3d_color_key*, i32)*, i32 (%struct.wined3d_blitter*, i32, %struct.wined3d_context*, %struct.wined3d_surface*, i32, %struct.TYPE_13__*, %struct.wined3d_surface*, i32, %struct.TYPE_13__*, %struct.wined3d_color_key*, i32)** %92, align 8
  %94 = load %struct.wined3d_blitter*, %struct.wined3d_blitter** %33, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %97 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %98 = load i32, i32* %17, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %100 = load %struct.wined3d_surface*, %struct.wined3d_surface** %19, align 8
  %101 = load i32, i32* %20, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %103 = load %struct.wined3d_color_key*, %struct.wined3d_color_key** %22, align 8
  %104 = load i32, i32* %23, align 4
  %105 = call i32 %93(%struct.wined3d_blitter* %94, i32 %95, %struct.wined3d_context* %96, %struct.wined3d_surface* %97, i32 %98, %struct.TYPE_13__* %99, %struct.wined3d_surface* %100, i32 %101, %struct.TYPE_13__* %102, %struct.wined3d_color_key* %103, i32 %104)
  store i32 %105, i32* %12, align 4
  br label %293

106:                                              ; preds = %70, %49
  %107 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %108 = load %struct.wined3d_surface*, %struct.wined3d_surface** %16, align 8
  %109 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %108)
  store i32 %109, i32* %25, align 4
  %110 = load i32, i32* %25, align 4
  %111 = load %struct.wined3d_texture*, %struct.wined3d_texture** %31, align 8
  %112 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = urem i32 %110, %113
  store i32 %114, i32* %27, align 4
  %115 = load i32, i32* %25, align 4
  %116 = load %struct.wined3d_texture*, %struct.wined3d_texture** %31, align 8
  %117 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = udiv i32 %115, %118
  store i32 %119, i32* %28, align 4
  %120 = load %struct.wined3d_surface*, %struct.wined3d_surface** %19, align 8
  %121 = call i32 @surface_get_sub_resource_idx(%struct.wined3d_surface* %120)
  store i32 %121, i32* %26, align 4
  %122 = load i32, i32* %26, align 4
  %123 = load %struct.wined3d_texture*, %struct.wined3d_texture** %32, align 8
  %124 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = urem i32 %122, %125
  store i32 %126, i32* %29, align 4
  %127 = load i32, i32* %26, align 4
  %128 = load %struct.wined3d_texture*, %struct.wined3d_texture** %32, align 8
  %129 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = udiv i32 %127, %130
  store i32 %131, i32* %30, align 4
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %134 = load i32, i32* @WINED3D_LOCATION_TEXTURE_SRGB, align 4
  %135 = or i32 %133, %134
  %136 = and i32 %132, %135
  store i32 %136, i32* %36, align 4
  %137 = load i32, i32* %36, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %152, label %139

139:                                              ; preds = %106
  %140 = load %struct.wined3d_texture*, %struct.wined3d_texture** %31, align 8
  %141 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @WINED3D_TEXTURE_IS_SRGB, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* @WINED3D_LOCATION_TEXTURE_SRGB, align 4
  br label %150

148:                                              ; preds = %139
  %149 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  store i32 %151, i32* %36, align 4
  br label %152

152:                                              ; preds = %150, %106
  %153 = load %struct.wined3d_texture*, %struct.wined3d_texture** %31, align 8
  %154 = load i32, i32* %25, align 4
  %155 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %156 = load i32, i32* %36, align 4
  %157 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %153, i32 %154, %struct.wined3d_context* %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %152
  %160 = load i32, i32* %36, align 4
  %161 = call i32 @wined3d_debug_location(i32 %160)
  %162 = call i32 @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %159, %152
  %164 = load %struct.wined3d_texture*, %struct.wined3d_texture** %31, align 8
  %165 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %166 = load i32, i32* %36, align 4
  %167 = load i32, i32* @WINED3D_LOCATION_TEXTURE_SRGB, align 4
  %168 = icmp eq i32 %166, %167
  %169 = zext i1 %168 to i32
  %170 = call i32 @wined3d_texture_get_texture_name(%struct.wined3d_texture* %164, %struct.wined3d_context* %165, i32 %169)
  store i32 %170, i32* %34, align 4
  %171 = load i32, i32* %20, align 4
  %172 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  %173 = load i32, i32* @WINED3D_LOCATION_TEXTURE_SRGB, align 4
  %174 = or i32 %172, %173
  %175 = and i32 %171, %174
  store i32 %175, i32* %36, align 4
  %176 = load i32, i32* %36, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %191, label %178

178:                                              ; preds = %163
  %179 = load %struct.wined3d_texture*, %struct.wined3d_texture** %32, align 8
  %180 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @WINED3D_TEXTURE_IS_SRGB, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = load i32, i32* @WINED3D_LOCATION_TEXTURE_SRGB, align 4
  br label %189

187:                                              ; preds = %178
  %188 = load i32, i32* @WINED3D_LOCATION_TEXTURE_RGB, align 4
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  store i32 %190, i32* %36, align 4
  br label %191

191:                                              ; preds = %189, %163
  %192 = load %struct.wined3d_texture*, %struct.wined3d_texture** %32, align 8
  %193 = load i32, i32* %29, align 4
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %195 = call i64 @texture2d_is_full_rect(%struct.wined3d_texture* %192, i32 %193, %struct.TYPE_13__* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %209

197:                                              ; preds = %191
  %198 = load %struct.wined3d_texture*, %struct.wined3d_texture** %32, align 8
  %199 = load i32, i32* %26, align 4
  %200 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %201 = load i32, i32* %36, align 4
  %202 = call i32 @wined3d_texture_prepare_location(%struct.wined3d_texture* %198, i32 %199, %struct.wined3d_context* %200, i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %197
  %205 = load i32, i32* %36, align 4
  %206 = call i32 @wined3d_debug_location(i32 %205)
  %207 = call i32 @ERR(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %204, %197
  br label %221

209:                                              ; preds = %191
  %210 = load %struct.wined3d_texture*, %struct.wined3d_texture** %32, align 8
  %211 = load i32, i32* %26, align 4
  %212 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %213 = load i32, i32* %36, align 4
  %214 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %210, i32 %211, %struct.wined3d_context* %212, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %209
  %217 = load i32, i32* %36, align 4
  %218 = call i32 @wined3d_debug_location(i32 %217)
  %219 = call i32 @ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %216, %209
  br label %221

221:                                              ; preds = %220, %208
  %222 = load %struct.wined3d_texture*, %struct.wined3d_texture** %32, align 8
  %223 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %224 = load i32, i32* %36, align 4
  %225 = load i32, i32* @WINED3D_LOCATION_TEXTURE_SRGB, align 4
  %226 = icmp eq i32 %224, %225
  %227 = zext i1 %226 to i32
  %228 = call i32 @wined3d_texture_get_texture_name(%struct.wined3d_texture* %222, %struct.wined3d_context* %223, i32 %227)
  store i32 %228, i32* %35, align 4
  %229 = load i32, i32* %34, align 4
  %230 = load %struct.wined3d_texture*, %struct.wined3d_texture** %31, align 8
  %231 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %27, align 4
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i32, i32* %28, align 4
  %241 = load i32, i32* %35, align 4
  %242 = load %struct.wined3d_texture*, %struct.wined3d_texture** %32, align 8
  %243 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %29, align 4
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %30, align 4
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = sub nsw i64 %255, %258
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %264 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = sub nsw i64 %262, %265
  %267 = call i32 @glCopyImageSubData(i32 %229, i32 %232, i32 %233, i64 %236, i64 %239, i32 %240, i32 %241, i32 %244, i32 %245, i64 %248, i64 %251, i32 %252, i64 %259, i64 %266, i32 1)
  %268 = call i32 @GL_EXTCALL(i32 %267)
  %269 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %270 = load %struct.wined3d_texture*, %struct.wined3d_texture** %32, align 8
  %271 = load i32, i32* %26, align 4
  %272 = load i32, i32* %36, align 4
  %273 = call i32 @wined3d_texture_validate_location(%struct.wined3d_texture* %270, i32 %271, i32 %272)
  %274 = load %struct.wined3d_texture*, %struct.wined3d_texture** %32, align 8
  %275 = load i32, i32* %26, align 4
  %276 = load i32, i32* %36, align 4
  %277 = xor i32 %276, -1
  %278 = call i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture* %274, i32 %275, i32 %277)
  %279 = load %struct.wined3d_texture*, %struct.wined3d_texture** %32, align 8
  %280 = load i32, i32* %26, align 4
  %281 = load %struct.wined3d_context*, %struct.wined3d_context** %15, align 8
  %282 = load i32, i32* %20, align 4
  %283 = call i32 @wined3d_texture_load_location(%struct.wined3d_texture* %279, i32 %280, %struct.wined3d_context* %281, i32 %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %289, label %285

285:                                              ; preds = %221
  %286 = load i32, i32* %20, align 4
  %287 = call i32 @wined3d_debug_location(i32 %286)
  %288 = call i32 @ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %287)
  br label %289

289:                                              ; preds = %285, %221
  %290 = load i32, i32* %20, align 4
  %291 = load i32, i32* %36, align 4
  %292 = or i32 %290, %291
  store i32 %292, i32* %12, align 4
  br label %293

293:                                              ; preds = %289, %86, %82
  %294 = load i32, i32* %12, align 4
  ret i32 %294
}

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @surface_get_sub_resource_idx(%struct.wined3d_surface*) #1

declare dso_local i32 @wined3d_texture_load_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @wined3d_debug_location(i32) #1

declare dso_local i32 @wined3d_texture_get_texture_name(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i64 @texture2d_is_full_rect(%struct.wined3d_texture*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @wined3d_texture_prepare_location(%struct.wined3d_texture*, i32, %struct.wined3d_context*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glCopyImageSubData(i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i64, i64, i32) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32 @wined3d_texture_validate_location(%struct.wined3d_texture*, i32, i32) #1

declare dso_local i32 @wined3d_texture_invalidate_location(%struct.wined3d_texture*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
