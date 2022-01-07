; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_texture.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_cs.c_wined3d_cs_exec_set_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_cs = type { %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.wined3d_d3d_info, %struct.wined3d_gl_info }
%struct.wined3d_d3d_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.wined3d_gl_info = type { i32 }
%struct.TYPE_9__ = type { %struct.wined3d_texture** }
%struct.wined3d_texture = type { i64, i64, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.wined3d_format* }
%struct.wined3d_format = type { i32 }
%struct.wined3d_cs_set_texture = type { i64, %struct.wined3d_texture* }

@FALSE = common dso_local global i64 0, align 8
@WINED3DFMT_FLAG_SHADOW = common dso_local global i32 0, align 4
@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i32 0, align 4
@WINED3D_TSS_COLOR_OP = common dso_local global i32 0, align 4
@WINED3D_TSS_ALPHA_OP = common dso_local global i32 0, align 4
@WINED3D_CKEY_SRC_BLT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Searching for other stages the texture is bound to.\0A\00", align 1
@MAX_COMBINED_SAMPLERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Texture is also bound to stage %u.\0A\00", align 1
@WINED3D_RS_COLORKEYENABLE = common dso_local global i32 0, align 4
@STATE_COLOR_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_cs*, i8*)* @wined3d_cs_exec_set_texture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wined3d_cs_exec_set_texture(%struct.wined3d_cs* %0, i8* %1) #0 {
  %3 = alloca %struct.wined3d_cs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.wined3d_d3d_info*, align 8
  %7 = alloca %struct.wined3d_cs_set_texture*, align 8
  %8 = alloca %struct.wined3d_texture*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wined3d_format*, align 8
  %12 = alloca %struct.wined3d_format*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wined3d_cs* %0, %struct.wined3d_cs** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %17 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store %struct.wined3d_gl_info* %21, %struct.wined3d_gl_info** %5, align 8
  %22 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %23 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store %struct.wined3d_d3d_info* %27, %struct.wined3d_d3d_info** %6, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to %struct.wined3d_cs_set_texture*
  store %struct.wined3d_cs_set_texture* %29, %struct.wined3d_cs_set_texture** %7, align 8
  %30 = load i64, i64* @FALSE, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %10, align 8
  %32 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %33 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.wined3d_texture**, %struct.wined3d_texture*** %34, align 8
  %36 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %37 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.wined3d_texture*, %struct.wined3d_texture** %35, i64 %38
  %40 = load %struct.wined3d_texture*, %struct.wined3d_texture** %39, align 8
  store %struct.wined3d_texture* %40, %struct.wined3d_texture** %8, align 8
  %41 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %42 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %41, i32 0, i32 1
  %43 = load %struct.wined3d_texture*, %struct.wined3d_texture** %42, align 8
  %44 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %45 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.wined3d_texture**, %struct.wined3d_texture*** %46, align 8
  %48 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %49 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.wined3d_texture*, %struct.wined3d_texture** %47, i64 %50
  store %struct.wined3d_texture* %43, %struct.wined3d_texture** %51, align 8
  %52 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %53 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %52, i32 0, i32 1
  %54 = load %struct.wined3d_texture*, %struct.wined3d_texture** %53, align 8
  %55 = icmp ne %struct.wined3d_texture* %54, null
  br i1 %55, label %56, label %200

56:                                               ; preds = %2
  %57 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %58 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %57, i32 0, i32 1
  %59 = load %struct.wined3d_texture*, %struct.wined3d_texture** %58, align 8
  %60 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = load %struct.wined3d_format*, %struct.wined3d_format** %61, align 8
  store %struct.wined3d_format* %62, %struct.wined3d_format** %11, align 8
  %63 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %64 = icmp ne %struct.wined3d_texture* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %67 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load %struct.wined3d_format*, %struct.wined3d_format** %68, align 8
  br label %71

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %65
  %72 = phi %struct.wined3d_format* [ %69, %65 ], [ null, %70 ]
  store %struct.wined3d_format* %72, %struct.wined3d_format** %12, align 8
  %73 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %74 = icmp ne %struct.wined3d_texture* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %77 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  br label %81

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %75
  %82 = phi i32 [ %79, %75 ], [ 0, %80 ]
  store i32 %82, i32* %13, align 4
  %83 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %84 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %83, i32 0, i32 1
  %85 = load %struct.wined3d_texture*, %struct.wined3d_texture** %84, align 8
  %86 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %14, align 4
  %89 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %90 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %89, i32 0, i32 1
  %91 = load %struct.wined3d_texture*, %struct.wined3d_texture** %90, align 8
  %92 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = call i32 @InterlockedIncrement(i32* %93)
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %104

96:                                               ; preds = %81
  %97 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %98 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %101 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %100, i32 0, i32 1
  %102 = load %struct.wined3d_texture*, %struct.wined3d_texture** %101, align 8
  %103 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %102, i32 0, i32 0
  store i64 %99, i64* %103, align 8
  br label %104

104:                                              ; preds = %96, %81
  %105 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %106 = icmp ne %struct.wined3d_texture* %105, null
  br i1 %106, label %107, label %144

107:                                              ; preds = %104
  %108 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %109 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %108, i32 0, i32 1
  %110 = load %struct.wined3d_texture*, %struct.wined3d_texture** %109, align 8
  %111 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %114 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %112, %115
  br i1 %116, label %144, label %117

117:                                              ; preds = %107
  %118 = load %struct.wined3d_format*, %struct.wined3d_format** %11, align 8
  %119 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.wined3d_format*, %struct.wined3d_format** %12, align 8
  %122 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @is_same_fixup(i32 %120, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %117
  %127 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %128 = load %struct.wined3d_format*, %struct.wined3d_format** %11, align 8
  %129 = call i64 @can_use_texture_swizzle(%struct.wined3d_gl_info* %127, %struct.wined3d_format* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %126
  %132 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %5, align 8
  %133 = load %struct.wined3d_format*, %struct.wined3d_format** %12, align 8
  %134 = call i64 @can_use_texture_swizzle(%struct.wined3d_gl_info* %132, %struct.wined3d_format* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %131, %117
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @WINED3DFMT_FLAG_SHADOW, align 4
  %139 = and i32 %137, %138
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @WINED3DFMT_FLAG_SHADOW, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %139, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %136, %131, %126, %107, %104
  %145 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %146 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %145, i32 0, i32 0
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = load i32, i32* @WINED3D_SHADER_TYPE_PIXEL, align 4
  %149 = call i32 @STATE_SHADER(i32 %148)
  %150 = call i32 @device_invalidate_state(%struct.TYPE_12__* %147, i32 %149)
  br label %151

151:                                              ; preds = %144, %136
  %152 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %153 = icmp ne %struct.wined3d_texture* %152, null
  br i1 %153, label %182, label %154

154:                                              ; preds = %151
  %155 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %156 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %6, align 8
  %159 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ult i64 %157, %161
  br i1 %162, label %163, label %182

163:                                              ; preds = %154
  %164 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %165 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %164, i32 0, i32 0
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %168 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* @WINED3D_TSS_COLOR_OP, align 4
  %171 = call i32 @STATE_TEXTURESTAGE(i64 %169, i32 %170)
  %172 = call i32 @device_invalidate_state(%struct.TYPE_12__* %166, i32 %171)
  %173 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %174 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %173, i32 0, i32 0
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %177 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* @WINED3D_TSS_ALPHA_OP, align 4
  %180 = call i32 @STATE_TEXTURESTAGE(i64 %178, i32 %179)
  %181 = call i32 @device_invalidate_state(%struct.TYPE_12__* %175, i32 %180)
  br label %182

182:                                              ; preds = %163, %154, %151
  %183 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %184 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %199, label %187

187:                                              ; preds = %182
  %188 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %189 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %188, i32 0, i32 1
  %190 = load %struct.wined3d_texture*, %struct.wined3d_texture** %189, align 8
  %191 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @WINED3D_CKEY_SRC_BLT, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %187
  %198 = load i64, i64* @TRUE, align 8
  store i64 %198, i64* %10, align 8
  br label %199

199:                                              ; preds = %197, %187, %182
  br label %200

200:                                              ; preds = %199, %2
  %201 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %202 = icmp ne %struct.wined3d_texture* %201, null
  br i1 %202, label %203, label %295

203:                                              ; preds = %200
  %204 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %205 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = call i64 @InterlockedDecrement(i32* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %246

209:                                              ; preds = %203
  %210 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %211 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %214 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %212, %215
  br i1 %216, label %217, label %246

217:                                              ; preds = %209
  %218 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %219

219:                                              ; preds = %242, %217
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* @MAX_COMBINED_SAMPLERS, align 4
  %222 = icmp ult i32 %220, %221
  br i1 %222, label %223, label %245

223:                                              ; preds = %219
  %224 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %225 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load %struct.wined3d_texture**, %struct.wined3d_texture*** %226, align 8
  %228 = load i32, i32* %15, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.wined3d_texture*, %struct.wined3d_texture** %227, i64 %229
  %231 = load %struct.wined3d_texture*, %struct.wined3d_texture** %230, align 8
  %232 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %233 = icmp eq %struct.wined3d_texture* %231, %232
  br i1 %233, label %234, label %241

234:                                              ; preds = %223
  %235 = load i32, i32* %15, align 4
  %236 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %235)
  %237 = load i32, i32* %15, align 4
  %238 = zext i32 %237 to i64
  %239 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %240 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %239, i32 0, i32 0
  store i64 %238, i64* %240, align 8
  br label %245

241:                                              ; preds = %223
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %15, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %15, align 4
  br label %219

245:                                              ; preds = %234, %219
  br label %246

246:                                              ; preds = %245, %209, %203
  %247 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %248 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %247, i32 0, i32 1
  %249 = load %struct.wined3d_texture*, %struct.wined3d_texture** %248, align 8
  %250 = icmp ne %struct.wined3d_texture* %249, null
  br i1 %250, label %279, label %251

251:                                              ; preds = %246
  %252 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %253 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %6, align 8
  %256 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ult i64 %254, %258
  br i1 %259, label %260, label %279

260:                                              ; preds = %251
  %261 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %262 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %261, i32 0, i32 0
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %265 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i32, i32* @WINED3D_TSS_COLOR_OP, align 4
  %268 = call i32 @STATE_TEXTURESTAGE(i64 %266, i32 %267)
  %269 = call i32 @device_invalidate_state(%struct.TYPE_12__* %263, i32 %268)
  %270 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %271 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %270, i32 0, i32 0
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %274 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i32, i32* @WINED3D_TSS_ALPHA_OP, align 4
  %277 = call i32 @STATE_TEXTURESTAGE(i64 %275, i32 %276)
  %278 = call i32 @device_invalidate_state(%struct.TYPE_12__* %272, i32 %277)
  br label %279

279:                                              ; preds = %260, %251, %246
  %280 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %281 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %294, label %284

284:                                              ; preds = %279
  %285 = load %struct.wined3d_texture*, %struct.wined3d_texture** %8, align 8
  %286 = getelementptr inbounds %struct.wined3d_texture, %struct.wined3d_texture* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @WINED3D_CKEY_SRC_BLT, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %284
  %293 = load i64, i64* @TRUE, align 8
  store i64 %293, i64* %9, align 8
  br label %294

294:                                              ; preds = %292, %284, %279
  br label %295

295:                                              ; preds = %294, %200
  %296 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %297 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %296, i32 0, i32 0
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %297, align 8
  %299 = load %struct.wined3d_cs_set_texture*, %struct.wined3d_cs_set_texture** %7, align 8
  %300 = getelementptr inbounds %struct.wined3d_cs_set_texture, %struct.wined3d_cs_set_texture* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = call i32 @STATE_SAMPLER(i64 %301)
  %303 = call i32 @device_invalidate_state(%struct.TYPE_12__* %298, i32 %302)
  %304 = load i64, i64* %10, align 8
  %305 = load i64, i64* %9, align 8
  %306 = icmp ne i64 %304, %305
  br i1 %306, label %307, label %314

307:                                              ; preds = %295
  %308 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %309 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %308, i32 0, i32 0
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %309, align 8
  %311 = load i32, i32* @WINED3D_RS_COLORKEYENABLE, align 4
  %312 = call i32 @STATE_RENDER(i32 %311)
  %313 = call i32 @device_invalidate_state(%struct.TYPE_12__* %310, i32 %312)
  br label %314

314:                                              ; preds = %307, %295
  %315 = load i64, i64* %10, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %314
  %318 = load %struct.wined3d_cs*, %struct.wined3d_cs** %3, align 8
  %319 = getelementptr inbounds %struct.wined3d_cs, %struct.wined3d_cs* %318, i32 0, i32 0
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %319, align 8
  %321 = load i32, i32* @STATE_COLOR_KEY, align 4
  %322 = call i32 @device_invalidate_state(%struct.TYPE_12__* %320, i32 %321)
  br label %323

323:                                              ; preds = %317, %314
  ret void
}

declare dso_local i32 @InterlockedIncrement(i32*) #1

declare dso_local i32 @is_same_fixup(i32, i32) #1

declare dso_local i64 @can_use_texture_swizzle(%struct.wined3d_gl_info*, %struct.wined3d_format*) #1

declare dso_local i32 @device_invalidate_state(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @STATE_SHADER(i32) #1

declare dso_local i32 @STATE_TEXTURESTAGE(i64, i32) #1

declare dso_local i64 @InterlockedDecrement(i32*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @STATE_SAMPLER(i64) #1

declare dso_local i32 @STATE_RENDER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
