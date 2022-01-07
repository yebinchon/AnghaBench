; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_view.c_validate_resource_view.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_view.c_validate_resource_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_format = type { i64, i32 }
%struct.wined3d_view_desc = type { i64, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.wined3d_resource = type { i64, %struct.wined3d_format*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.wined3d_gl_info }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_buffer = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.wined3d_texture = type { i32, i64 }

@WINED3D_RTYPE_BUFFER = common dso_local global i64 0, align 8
@WINED3D_VIEW_BUFFER_RAW = common dso_local global i32 0, align 4
@WINED3DFMT_R32_TYPELESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Invalid format %s for raw buffer view.\0A\00", align 1
@WINED3DFMT_R32_UINT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Trying to create view for typeless format %s.\0A\00", align 1
@WINED3DFMT_UNKNOWN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"Invalid format %s for structured buffer view.\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"Trying to create incompatible view for non typeless format %s.\0A\00", align 1
@WINED3D_RTYPE_TEXTURE_3D = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wined3d_format* (%struct.wined3d_view_desc*, %struct.wined3d_resource*, i64, i64)* @validate_resource_view to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wined3d_format* @validate_resource_view(%struct.wined3d_view_desc* %0, %struct.wined3d_resource* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.wined3d_format*, align 8
  %6 = alloca %struct.wined3d_view_desc*, align 8
  %7 = alloca %struct.wined3d_resource*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wined3d_gl_info*, align 8
  %11 = alloca %struct.wined3d_format*, align 8
  %12 = alloca %struct.wined3d_buffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_texture*, align 8
  %16 = alloca i32, align 4
  store %struct.wined3d_view_desc* %0, %struct.wined3d_view_desc** %6, align 8
  store %struct.wined3d_resource* %1, %struct.wined3d_resource** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.wined3d_resource*, %struct.wined3d_resource** %7, align 8
  %18 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %17, i32 0, i32 3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store %struct.wined3d_gl_info* %22, %struct.wined3d_gl_info** %10, align 8
  %23 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %24 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %25 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.wined3d_resource*, %struct.wined3d_resource** %7, align 8
  %28 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.wined3d_format* @wined3d_get_format(%struct.wined3d_gl_info* %23, i64 %26, i32 %29)
  store %struct.wined3d_format* %30, %struct.wined3d_format** %11, align 8
  %31 = load %struct.wined3d_resource*, %struct.wined3d_resource** %7, align 8
  %32 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WINED3D_RTYPE_BUFFER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %4
  %37 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %38 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WINED3D_VIEW_BUFFER_RAW, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %36
  %44 = load %struct.wined3d_format*, %struct.wined3d_format** %11, align 8
  %45 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @WINED3DFMT_R32_TYPELESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.wined3d_format*, %struct.wined3d_format** %11, align 8
  %51 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @debug_d3dformat(i64 %52)
  %54 = call i32 @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %53)
  store %struct.wined3d_format* null, %struct.wined3d_format** %5, align 8
  br label %283

55:                                               ; preds = %43
  %56 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %57 = load i64, i64* @WINED3DFMT_R32_UINT, align 8
  %58 = load %struct.wined3d_resource*, %struct.wined3d_resource** %7, align 8
  %59 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.wined3d_format* @wined3d_get_format(%struct.wined3d_gl_info* %56, i64 %57, i32 %60)
  store %struct.wined3d_format* %61, %struct.wined3d_format** %11, align 8
  br label %62

62:                                               ; preds = %55, %36, %4
  %63 = load %struct.wined3d_format*, %struct.wined3d_format** %11, align 8
  %64 = call i64 @wined3d_format_is_typeless(%struct.wined3d_format* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load %struct.wined3d_format*, %struct.wined3d_format** %11, align 8
  %68 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @debug_d3dformat(i64 %69)
  %71 = call i32 @WARN(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  store %struct.wined3d_format* null, %struct.wined3d_format** %5, align 8
  br label %283

72:                                               ; preds = %62
  %73 = load %struct.wined3d_resource*, %struct.wined3d_resource** %7, align 8
  %74 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @WINED3D_RTYPE_BUFFER, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %147

78:                                               ; preds = %72
  %79 = load %struct.wined3d_resource*, %struct.wined3d_resource** %7, align 8
  %80 = call %struct.wined3d_buffer* @buffer_from_resource(%struct.wined3d_resource* %79)
  store %struct.wined3d_buffer* %80, %struct.wined3d_buffer** %12, align 8
  %81 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %12, align 8
  %82 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %78
  %87 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %88 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @WINED3DFMT_UNKNOWN, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %94 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @debug_d3dformat(i64 %95)
  %97 = call i32 @WARN(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  store %struct.wined3d_format* null, %struct.wined3d_format** %5, align 8
  br label %283

98:                                               ; preds = %86
  %99 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %10, align 8
  %100 = load i64, i64* @WINED3DFMT_R32_UINT, align 8
  %101 = load %struct.wined3d_resource*, %struct.wined3d_resource** %7, align 8
  %102 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call %struct.wined3d_format* @wined3d_get_format(%struct.wined3d_gl_info* %99, i64 %100, i32 %103)
  store %struct.wined3d_format* %104, %struct.wined3d_format** %11, align 8
  %105 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %12, align 8
  %106 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %14, align 4
  br label %113

109:                                              ; preds = %78
  %110 = load %struct.wined3d_format*, %struct.wined3d_format** %11, align 8
  %111 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %109, %98
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  store %struct.wined3d_format* null, %struct.wined3d_format** %5, align 8
  br label %283

117:                                              ; preds = %113
  %118 = load %struct.wined3d_buffer*, %struct.wined3d_buffer** %12, align 8
  %119 = getelementptr inbounds %struct.wined3d_buffer, %struct.wined3d_buffer* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %14, align 4
  %123 = udiv i32 %121, %122
  store i32 %123, i32* %13, align 4
  %124 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %125 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = icmp uge i32 %128, %129
  br i1 %130, label %145, label %131

131:                                              ; preds = %117
  %132 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %133 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %139 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sub i32 %137, %142
  %144 = icmp ugt i32 %136, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %131, %117
  store %struct.wined3d_format* null, %struct.wined3d_format** %5, align 8
  br label %283

146:                                              ; preds = %131
  br label %281

147:                                              ; preds = %72
  %148 = load %struct.wined3d_resource*, %struct.wined3d_resource** %7, align 8
  %149 = call %struct.wined3d_texture* @texture_from_resource(%struct.wined3d_resource* %148)
  store %struct.wined3d_texture* %149, %struct.wined3d_texture** %15, align 8
  %150 = load %struct.wined3d_resource*, %struct.wined3d_resource** %7, align 8
  %151 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %150, i32 0, i32 1
  %152 = load %struct.wined3d_format*, %struct.wined3d_format** %151, align 8
  %153 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.wined3d_format*, %struct.wined3d_format** %11, align 8
  %156 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %154, %157
  br i1 %158, label %159, label %185

159:                                              ; preds = %147
  %160 = load %struct.wined3d_resource*, %struct.wined3d_resource** %7, align 8
  %161 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %160, i32 0, i32 1
  %162 = load %struct.wined3d_format*, %struct.wined3d_format** %161, align 8
  %163 = call i64 @wined3d_format_is_typeless(%struct.wined3d_format* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %185, label %165

165:                                              ; preds = %159
  %166 = load i64, i64* %9, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %165
  %169 = load %struct.wined3d_resource*, %struct.wined3d_resource** %7, align 8
  %170 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %169, i32 0, i32 1
  %171 = load %struct.wined3d_format*, %struct.wined3d_format** %170, align 8
  %172 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.wined3d_format*, %struct.wined3d_format** %11, align 8
  %175 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @wined3d_formats_are_srgb_variants(i64 %173, i64 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %168, %165
  %180 = load %struct.wined3d_format*, %struct.wined3d_format** %11, align 8
  %181 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @debug_d3dformat(i64 %182)
  %184 = call i32 @WARN(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i32 %183)
  store %struct.wined3d_format* null, %struct.wined3d_format** %5, align 8
  br label %283

185:                                              ; preds = %168, %159, %147
  %186 = load i64, i64* %8, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %185
  %189 = load %struct.wined3d_resource*, %struct.wined3d_resource** %7, align 8
  %190 = getelementptr inbounds %struct.wined3d_resource, %struct.wined3d_resource* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @WINED3D_RTYPE_TEXTURE_3D, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %188
  %195 = load %struct.wined3d_texture*, %struct.wined3d_texture** %15, align 8
  %196 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %197 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @wined3d_texture_get_level_depth(%struct.wined3d_texture* %195, i64 %200)
  store i32 %201, i32* %16, align 4
  br label %206

202:                                              ; preds = %188, %185
  %203 = load %struct.wined3d_texture*, %struct.wined3d_texture** %15, align 8
  %204 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %16, align 4
  br label %206

206:                                              ; preds = %202, %194
  %207 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %208 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %279

213:                                              ; preds = %206
  %214 = load i64, i64* %8, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %213
  %217 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %218 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 1
  br i1 %222, label %279, label %223

223:                                              ; preds = %216, %213
  %224 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %225 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.wined3d_texture*, %struct.wined3d_texture** %15, align 8
  %230 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = icmp sge i64 %228, %231
  br i1 %232, label %279, label %233

233:                                              ; preds = %223
  %234 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %235 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = load %struct.wined3d_texture*, %struct.wined3d_texture** %15, align 8
  %241 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %244 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = sub nsw i64 %242, %247
  %249 = icmp sgt i64 %239, %248
  br i1 %249, label %279, label %250

250:                                              ; preds = %233
  %251 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %252 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %279

257:                                              ; preds = %250
  %258 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %259 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %16, align 4
  %264 = icmp uge i32 %262, %263
  br i1 %264, label %279, label %265

265:                                              ; preds = %257
  %266 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %267 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %16, align 4
  %272 = load %struct.wined3d_view_desc*, %struct.wined3d_view_desc** %6, align 8
  %273 = getelementptr inbounds %struct.wined3d_view_desc, %struct.wined3d_view_desc* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = sub i32 %271, %276
  %278 = icmp ugt i32 %270, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %265, %257, %250, %233, %223, %216, %206
  store %struct.wined3d_format* null, %struct.wined3d_format** %5, align 8
  br label %283

280:                                              ; preds = %265
  br label %281

281:                                              ; preds = %280, %146
  %282 = load %struct.wined3d_format*, %struct.wined3d_format** %11, align 8
  store %struct.wined3d_format* %282, %struct.wined3d_format** %5, align 8
  br label %283

283:                                              ; preds = %281, %279, %179, %145, %116, %92, %66, %49
  %284 = load %struct.wined3d_format*, %struct.wined3d_format** %5, align 8
  ret %struct.wined3d_format* %284
}

declare dso_local %struct.wined3d_format* @wined3d_get_format(%struct.wined3d_gl_info*, i64, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @debug_d3dformat(i64) #1

declare dso_local i64 @wined3d_format_is_typeless(%struct.wined3d_format*) #1

declare dso_local %struct.wined3d_buffer* @buffer_from_resource(%struct.wined3d_resource*) #1

declare dso_local %struct.wined3d_texture* @texture_from_resource(%struct.wined3d_resource*) #1

declare dso_local i32 @wined3d_formats_are_srgb_variants(i64, i64) #1

declare dso_local i32 @wined3d_texture_get_level_depth(%struct.wined3d_texture*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
