; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_ffp_get_vs_settings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_wined3d_ffp_get_vs_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i32, %struct.wined3d_d3d_info*, %struct.wined3d_gl_info*, %struct.wined3d_stream_info }
%struct.wined3d_d3d_info = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_stream_info = type { i32, i32, i64 }
%struct.wined3d_state = type { i64, i32*, i32**, %struct.TYPE_7__*, %struct.TYPE_6__** }
%struct.TYPE_7__ = type { float, float, float, float }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.wined3d_ffp_vs_settings = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32 }

@GL_POINTS = common dso_local global i64 0, align 8
@WINED3D_FFP_PSIZE = common dso_local global i32 0, align 4
@WINED3D_RS_FOGENABLE = common dso_local global i64 0, align 8
@WINED3D_FFP_VS_FOG_OFF = common dso_local global i8* null, align 8
@WINED3D_RS_FOGTABLEMODE = common dso_local global i64 0, align 8
@WINED3D_FOG_NONE = common dso_local global i32 0, align 4
@WINED3D_FFP_VS_FOG_DEPTH = common dso_local global i8* null, align 8
@WINED3D_FFP_VS_FOG_FOGCOORD = common dso_local global i8* null, align 8
@MAX_TEXTURES = common dso_local global i32 0, align 4
@WINED3D_TSS_TEXCOORD_INDEX = common dso_local global i64 0, align 8
@WINED3D_FFP_TEXCOORD0 = common dso_local global i32 0, align 4
@WINED3D_RS_SHADEMODE = common dso_local global i64 0, align 8
@WINED3D_SHADE_FLAT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@WINED3D_RS_VERTEXBLEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Unsupported vertex blending: %d\0A\00", align 1
@WINED3D_RS_CLIPPING = common dso_local global i64 0, align 8
@WINED3D_RS_CLIPPLANEENABLE = common dso_local global i64 0, align 8
@WINED3D_FFP_NORMAL = common dso_local global i32 0, align 4
@WINED3D_RS_NORMALIZENORMALS = common dso_local global i64 0, align 8
@WINED3D_RS_LIGHTING = common dso_local global i64 0, align 8
@WINED3D_RS_LOCALVIEWER = common dso_local global i64 0, align 8
@WINED3D_RS_COLORVERTEX = common dso_local global i64 0, align 8
@WINED3D_FFP_DIFFUSE = common dso_local global i32 0, align 4
@WINED3D_RS_DIFFUSEMATERIALSOURCE = common dso_local global i64 0, align 8
@WINED3D_RS_EMISSIVEMATERIALSOURCE = common dso_local global i64 0, align 8
@WINED3D_RS_AMBIENTMATERIALSOURCE = common dso_local global i64 0, align 8
@WINED3D_RS_SPECULARMATERIALSOURCE = common dso_local global i64 0, align 8
@WINED3D_MCS_MATERIAL = common dso_local global i8* null, align 8
@MAX_ACTIVE_LIGHTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unhandled light type %#x.\0A\00", align 1
@WINED3D_TS_PROJECTION = common dso_local global i64 0, align 8
@WINED3D_RS_FOGVERTEXMODE = common dso_local global i64 0, align 8
@WINED3D_RS_RANGEFOGENABLE = common dso_local global i64 0, align 8
@WINED3D_FFP_VS_FOG_RANGE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wined3d_ffp_get_vs_settings(%struct.wined3d_context* %0, %struct.wined3d_state* %1, %struct.wined3d_ffp_vs_settings* %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca %struct.wined3d_ffp_vs_settings*, align 8
  %7 = alloca %struct.wined3d_stream_info*, align 8
  %8 = alloca %struct.wined3d_gl_info*, align 8
  %9 = alloca %struct.wined3d_d3d_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_state* %1, %struct.wined3d_state** %5, align 8
  store %struct.wined3d_ffp_vs_settings* %2, %struct.wined3d_ffp_vs_settings** %6, align 8
  %12 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %13 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %12, i32 0, i32 3
  store %struct.wined3d_stream_info* %13, %struct.wined3d_stream_info** %7, align 8
  %14 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %15 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %14, i32 0, i32 2
  %16 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %15, align 8
  store %struct.wined3d_gl_info* %16, %struct.wined3d_gl_info** %8, align 8
  %17 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %18 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %17, i32 0, i32 1
  %19 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %18, align 8
  store %struct.wined3d_d3d_info* %19, %struct.wined3d_d3d_info** %9, align 8
  %20 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %21 = call i32 @memset(%struct.wined3d_ffp_vs_settings* %20, i32 0, i32 112)
  %22 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %23 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %176

26:                                               ; preds = %3
  %27 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %28 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %30 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GL_POINTS, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %36 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %38 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WINED3D_FFP_PSIZE, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %48 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %50 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @WINED3D_RS_FOGENABLE, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %26
  %57 = load i8*, i8** @WINED3D_FFP_VS_FOG_OFF, align 8
  %58 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %59 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %58, i32 0, i32 20
  store i8* %57, i8** %59, align 8
  br label %78

60:                                               ; preds = %26
  %61 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %62 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @WINED3D_RS_FOGTABLEMODE, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @WINED3D_FOG_NONE, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load i8*, i8** @WINED3D_FFP_VS_FOG_DEPTH, align 8
  %71 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %72 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %71, i32 0, i32 20
  store i8* %70, i8** %72, align 8
  br label %77

73:                                               ; preds = %60
  %74 = load i8*, i8** @WINED3D_FFP_VS_FOG_FOGCOORD, align 8
  %75 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %76 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %75, i32 0, i32 20
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %56
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %131, %78
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @MAX_TEXTURES, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %134

83:                                               ; preds = %79
  %84 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %85 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %84, i32 0, i32 2
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @WINED3D_TSS_TEXCOORD_INDEX, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* @MAX_TEXTURES, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %83
  %98 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %99 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @WINED3D_FFP_TEXCOORD0, align 4
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %101, %102
  %104 = shl i32 1, %103
  %105 = and i32 %100, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %97
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 1, %108
  %110 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %111 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %107, %97, %83
  %115 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %116 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %115, i32 0, i32 2
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @WINED3D_TSS_TEXCOORD_INDEX, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %126 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 %124, i32* %130, align 4
  br label %131

131:                                              ; preds = %114
  %132 = load i32, i32* %11, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %11, align 4
  br label %79

134:                                              ; preds = %79
  %135 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %9, align 8
  %136 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %140 = call i64 @wined3d_max_compat_varyings(%struct.wined3d_gl_info* %139)
  %141 = icmp sge i64 %138, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load i32, i32* @MAX_TEXTURES, align 4
  %144 = shl i32 1, %143
  %145 = sub i32 %144, 1
  %146 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %147 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %142, %134
  %149 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %9, align 8
  %150 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %148
  %154 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %155 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @WINED3D_RS_SHADEMODE, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @WINED3D_SHADE_FLAT, align 4
  %161 = icmp eq i32 %159, %160
  %162 = zext i1 %161 to i32
  %163 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %164 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %163, i32 0, i32 5
  store i32 %162, i32* %164, align 8
  br label %170

165:                                              ; preds = %148
  %166 = load i8*, i8** @FALSE, align 8
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %169 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %168, i32 0, i32 5
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %165, %153
  %171 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %172 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %175 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %174, i32 0, i32 19
  store i32 %173, i32* %175, align 8
  br label %633

176:                                              ; preds = %3
  %177 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %178 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @WINED3D_RS_VERTEXBLEND, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  switch i32 %182, label %192 [
    i32 128, label %183
    i32 131, label %183
    i32 130, label %183
    i32 129, label %183
  ]

183:                                              ; preds = %176, %176, %176, %176
  %184 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %185 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* @WINED3D_RS_VERTEXBLEND, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %191 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %190, i32 0, i32 6
  store i32 %189, i32* %191, align 4
  br label %200

192:                                              ; preds = %176
  %193 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %194 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @WINED3D_RS_VERTEXBLEND, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @FIXME(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %192, %183
  %201 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %202 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %203 = call i64 @use_indexed_vertex_blending(%struct.wined3d_state* %201, %struct.wined3d_stream_info* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %218

205:                                              ; preds = %200
  %206 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %207 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @use_software_vertex_processing(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %205
  %212 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %213 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %212, i32 0, i32 7
  store i32 1, i32* %213, align 8
  br label %217

214:                                              ; preds = %205
  %215 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %216 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %215, i32 0, i32 8
  store i32 1, i32* %216, align 4
  br label %217

217:                                              ; preds = %214, %211
  br label %218

218:                                              ; preds = %217, %200
  %219 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %220 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* @WINED3D_RS_CLIPPING, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %218
  %227 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %228 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* @WINED3D_RS_CLIPPLANEENABLE, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br label %234

234:                                              ; preds = %226, %218
  %235 = phi i1 [ false, %218 ], [ %233, %226 ]
  %236 = zext i1 %235 to i32
  %237 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %238 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %237, i32 0, i32 9
  store i32 %236, i32* %238, align 8
  %239 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %240 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @WINED3D_FFP_NORMAL, align 4
  %243 = shl i32 1, %242
  %244 = and i32 %241, %243
  %245 = icmp ne i32 %244, 0
  %246 = xor i1 %245, true
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  %249 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %250 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %249, i32 0, i32 10
  store i32 %248, i32* %250, align 4
  %251 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %252 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %251, i32 0, i32 10
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %263

255:                                              ; preds = %234
  %256 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %257 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* @WINED3D_RS_NORMALIZENORMALS, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br label %263

263:                                              ; preds = %255, %234
  %264 = phi i1 [ false, %234 ], [ %262, %255 ]
  %265 = zext i1 %264 to i32
  %266 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %267 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %266, i32 0, i32 11
  store i32 %265, i32* %267, align 8
  %268 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %269 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = load i64, i64* @WINED3D_RS_LIGHTING, align 8
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  %275 = xor i1 %274, true
  %276 = xor i1 %275, true
  %277 = zext i1 %276 to i32
  %278 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %279 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %278, i32 0, i32 12
  store i32 %277, i32* %279, align 4
  %280 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %281 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load i64, i64* @WINED3D_RS_LOCALVIEWER, align 8
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  %287 = xor i1 %286, true
  %288 = xor i1 %287, true
  %289 = zext i1 %288 to i32
  %290 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %291 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %290, i32 0, i32 13
  store i32 %289, i32* %291, align 8
  %292 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %293 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @GL_POINTS, align 8
  %296 = icmp eq i64 %294, %295
  %297 = zext i1 %296 to i32
  %298 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %299 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 4
  %300 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %301 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @WINED3D_FFP_PSIZE, align 4
  %304 = shl i32 1, %303
  %305 = and i32 %302, %304
  %306 = icmp ne i32 %305, 0
  %307 = xor i1 %306, true
  %308 = xor i1 %307, true
  %309 = zext i1 %308 to i32
  %310 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %311 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %310, i32 0, i32 2
  store i32 %309, i32* %311, align 8
  %312 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %313 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %312, i32 0, i32 1
  %314 = load i32*, i32** %313, align 8
  %315 = load i64, i64* @WINED3D_RS_COLORVERTEX, align 8
  %316 = getelementptr inbounds i32, i32* %314, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %360

319:                                              ; preds = %263
  %320 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %321 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @WINED3D_FFP_DIFFUSE, align 4
  %324 = shl i32 1, %323
  %325 = and i32 %322, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %360

327:                                              ; preds = %319
  %328 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %329 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %328, i32 0, i32 1
  %330 = load i32*, i32** %329, align 8
  %331 = load i64, i64* @WINED3D_RS_DIFFUSEMATERIALSOURCE, align 8
  %332 = getelementptr inbounds i32, i32* %330, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %335 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %334, i32 0, i32 14
  store i32 %333, i32* %335, align 4
  %336 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %337 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = load i64, i64* @WINED3D_RS_EMISSIVEMATERIALSOURCE, align 8
  %340 = getelementptr inbounds i32, i32* %338, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %343 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %342, i32 0, i32 15
  store i32 %341, i32* %343, align 8
  %344 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %345 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %344, i32 0, i32 1
  %346 = load i32*, i32** %345, align 8
  %347 = load i64, i64* @WINED3D_RS_AMBIENTMATERIALSOURCE, align 8
  %348 = getelementptr inbounds i32, i32* %346, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %351 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %350, i32 0, i32 16
  store i32 %349, i32* %351, align 4
  %352 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %353 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %352, i32 0, i32 1
  %354 = load i32*, i32** %353, align 8
  %355 = load i64, i64* @WINED3D_RS_SPECULARMATERIALSOURCE, align 8
  %356 = getelementptr inbounds i32, i32* %354, i64 %355
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %359 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %358, i32 0, i32 17
  store i32 %357, i32* %359, align 8
  br label %377

360:                                              ; preds = %319, %263
  %361 = load i8*, i8** @WINED3D_MCS_MATERIAL, align 8
  %362 = ptrtoint i8* %361 to i32
  %363 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %364 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %363, i32 0, i32 14
  store i32 %362, i32* %364, align 4
  %365 = load i8*, i8** @WINED3D_MCS_MATERIAL, align 8
  %366 = ptrtoint i8* %365 to i32
  %367 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %368 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %367, i32 0, i32 15
  store i32 %366, i32* %368, align 8
  %369 = load i8*, i8** @WINED3D_MCS_MATERIAL, align 8
  %370 = ptrtoint i8* %369 to i32
  %371 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %372 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %371, i32 0, i32 16
  store i32 %370, i32* %372, align 4
  %373 = load i8*, i8** @WINED3D_MCS_MATERIAL, align 8
  %374 = ptrtoint i8* %373 to i32
  %375 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %376 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %375, i32 0, i32 17
  store i32 %374, i32* %376, align 8
  br label %377

377:                                              ; preds = %360, %327
  store i32 0, i32* %11, align 4
  br label %378

378:                                              ; preds = %430, %377
  %379 = load i32, i32* %11, align 4
  %380 = load i32, i32* @MAX_TEXTURES, align 4
  %381 = icmp ult i32 %379, %380
  br i1 %381, label %382, label %433

382:                                              ; preds = %378
  %383 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %384 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %383, i32 0, i32 2
  %385 = load i32**, i32*** %384, align 8
  %386 = load i32, i32* %11, align 4
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds i32*, i32** %385, i64 %387
  %389 = load i32*, i32** %388, align 8
  %390 = load i64, i64* @WINED3D_TSS_TEXCOORD_INDEX, align 8
  %391 = getelementptr inbounds i32, i32* %389, i64 %390
  %392 = load i32, i32* %391, align 4
  store i32 %392, i32* %10, align 4
  %393 = load i32, i32* %10, align 4
  %394 = load i32, i32* @MAX_TEXTURES, align 4
  %395 = icmp ult i32 %393, %394
  br i1 %395, label %396, label %413

396:                                              ; preds = %382
  %397 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %398 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @WINED3D_FFP_TEXCOORD0, align 4
  %401 = load i32, i32* %10, align 4
  %402 = add i32 %400, %401
  %403 = shl i32 1, %402
  %404 = and i32 %399, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %396
  %407 = load i32, i32* %11, align 4
  %408 = shl i32 1, %407
  %409 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %410 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 4
  %412 = or i32 %411, %408
  store i32 %412, i32* %410, align 4
  br label %413

413:                                              ; preds = %406, %396, %382
  %414 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %415 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %414, i32 0, i32 2
  %416 = load i32**, i32*** %415, align 8
  %417 = load i32, i32* %11, align 4
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds i32*, i32** %416, i64 %418
  %420 = load i32*, i32** %419, align 8
  %421 = load i64, i64* @WINED3D_TSS_TEXCOORD_INDEX, align 8
  %422 = getelementptr inbounds i32, i32* %420, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %425 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %424, i32 0, i32 4
  %426 = load i32*, i32** %425, align 8
  %427 = load i32, i32* %11, align 4
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  store i32 %423, i32* %429, align 4
  br label %430

430:                                              ; preds = %413
  %431 = load i32, i32* %11, align 4
  %432 = add i32 %431, 1
  store i32 %432, i32* %11, align 4
  br label %378

433:                                              ; preds = %378
  %434 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %9, align 8
  %435 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %8, align 8
  %439 = call i64 @wined3d_max_compat_varyings(%struct.wined3d_gl_info* %438)
  %440 = icmp sge i64 %437, %439
  br i1 %440, label %441, label %447

441:                                              ; preds = %433
  %442 = load i32, i32* @MAX_TEXTURES, align 4
  %443 = shl i32 1, %442
  %444 = sub i32 %443, 1
  %445 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %446 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %445, i32 0, i32 3
  store i32 %444, i32* %446, align 4
  br label %447

447:                                              ; preds = %441, %433
  store i32 0, i32* %11, align 4
  br label %448

448:                                              ; preds = %506, %447
  %449 = load i32, i32* %11, align 4
  %450 = load i32, i32* @MAX_ACTIVE_LIGHTS, align 4
  %451 = icmp ult i32 %449, %450
  br i1 %451, label %452, label %509

452:                                              ; preds = %448
  %453 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %454 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %453, i32 0, i32 4
  %455 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %454, align 8
  %456 = load i32, i32* %11, align 4
  %457 = zext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %455, i64 %457
  %459 = load %struct.TYPE_6__*, %struct.TYPE_6__** %458, align 8
  %460 = icmp ne %struct.TYPE_6__* %459, null
  br i1 %460, label %462, label %461

461:                                              ; preds = %452
  br label %506

462:                                              ; preds = %452
  %463 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %464 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %463, i32 0, i32 4
  %465 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %464, align 8
  %466 = load i32, i32* %11, align 4
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %465, i64 %467
  %469 = load %struct.TYPE_6__*, %struct.TYPE_6__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  switch i32 %472, label %493 [
    i32 133, label %473
    i32 132, label %478
    i32 135, label %483
    i32 134, label %488
  ]

473:                                              ; preds = %462
  %474 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %475 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %474, i32 0, i32 24
  %476 = load i32, i32* %475, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %475, align 4
  br label %505

478:                                              ; preds = %462
  %479 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %480 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %479, i32 0, i32 23
  %481 = load i32, i32* %480, align 8
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %480, align 8
  br label %505

483:                                              ; preds = %462
  %484 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %485 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %484, i32 0, i32 22
  %486 = load i32, i32* %485, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %485, align 4
  br label %505

488:                                              ; preds = %462
  %489 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %490 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %489, i32 0, i32 21
  %491 = load i32, i32* %490, align 8
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %490, align 8
  br label %505

493:                                              ; preds = %462
  %494 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %495 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %494, i32 0, i32 4
  %496 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %495, align 8
  %497 = load i32, i32* %11, align 4
  %498 = zext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %496, i64 %498
  %500 = load %struct.TYPE_6__*, %struct.TYPE_6__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %503)
  br label %505

505:                                              ; preds = %493, %488, %483, %478, %473
  br label %506

506:                                              ; preds = %505, %461
  %507 = load i32, i32* %11, align 4
  %508 = add i32 %507, 1
  store i32 %508, i32* %11, align 4
  br label %448

509:                                              ; preds = %448
  %510 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %511 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %510, i32 0, i32 1
  %512 = load i32*, i32** %511, align 8
  %513 = load i64, i64* @WINED3D_RS_FOGENABLE, align 8
  %514 = getelementptr inbounds i32, i32* %512, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %521, label %517

517:                                              ; preds = %509
  %518 = load i8*, i8** @WINED3D_FFP_VS_FOG_OFF, align 8
  %519 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %520 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %519, i32 0, i32 20
  store i8* %518, i8** %520, align 8
  br label %605

521:                                              ; preds = %509
  %522 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %523 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %522, i32 0, i32 1
  %524 = load i32*, i32** %523, align 8
  %525 = load i64, i64* @WINED3D_RS_FOGTABLEMODE, align 8
  %526 = getelementptr inbounds i32, i32* %524, i64 %525
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* @WINED3D_FOG_NONE, align 4
  %529 = icmp ne i32 %527, %528
  br i1 %529, label %530, label %573

530:                                              ; preds = %521
  %531 = load i8*, i8** @WINED3D_FFP_VS_FOG_DEPTH, align 8
  %532 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %533 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %532, i32 0, i32 20
  store i8* %531, i8** %533, align 8
  %534 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %535 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %534, i32 0, i32 3
  %536 = load %struct.TYPE_7__*, %struct.TYPE_7__** %535, align 8
  %537 = load i64, i64* @WINED3D_TS_PROJECTION, align 8
  %538 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %536, i64 %537
  %539 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %538, i32 0, i32 0
  %540 = load float, float* %539, align 4
  %541 = fcmp oeq float %540, 0.000000e+00
  br i1 %541, label %542, label %572

542:                                              ; preds = %530
  %543 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %544 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %543, i32 0, i32 3
  %545 = load %struct.TYPE_7__*, %struct.TYPE_7__** %544, align 8
  %546 = load i64, i64* @WINED3D_TS_PROJECTION, align 8
  %547 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %545, i64 %546
  %548 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %547, i32 0, i32 1
  %549 = load float, float* %548, align 4
  %550 = fcmp oeq float %549, 0.000000e+00
  br i1 %550, label %551, label %572

551:                                              ; preds = %542
  %552 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %553 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %552, i32 0, i32 3
  %554 = load %struct.TYPE_7__*, %struct.TYPE_7__** %553, align 8
  %555 = load i64, i64* @WINED3D_TS_PROJECTION, align 8
  %556 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %554, i64 %555
  %557 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %556, i32 0, i32 2
  %558 = load float, float* %557, align 4
  %559 = fcmp oeq float %558, 0.000000e+00
  br i1 %559, label %560, label %572

560:                                              ; preds = %551
  %561 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %562 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %561, i32 0, i32 3
  %563 = load %struct.TYPE_7__*, %struct.TYPE_7__** %562, align 8
  %564 = load i64, i64* @WINED3D_TS_PROJECTION, align 8
  %565 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %563, i64 %564
  %566 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %565, i32 0, i32 3
  %567 = load float, float* %566, align 4
  %568 = fcmp oeq float %567, 1.000000e+00
  br i1 %568, label %569, label %572

569:                                              ; preds = %560
  %570 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %571 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %570, i32 0, i32 18
  store i32 1, i32* %571, align 4
  br label %572

572:                                              ; preds = %569, %560, %551, %542, %530
  br label %604

573:                                              ; preds = %521
  %574 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %575 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %574, i32 0, i32 1
  %576 = load i32*, i32** %575, align 8
  %577 = load i64, i64* @WINED3D_RS_FOGVERTEXMODE, align 8
  %578 = getelementptr inbounds i32, i32* %576, i64 %577
  %579 = load i32, i32* %578, align 4
  %580 = load i32, i32* @WINED3D_FOG_NONE, align 4
  %581 = icmp eq i32 %579, %580
  br i1 %581, label %582, label %586

582:                                              ; preds = %573
  %583 = load i8*, i8** @WINED3D_FFP_VS_FOG_FOGCOORD, align 8
  %584 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %585 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %584, i32 0, i32 20
  store i8* %583, i8** %585, align 8
  br label %603

586:                                              ; preds = %573
  %587 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %588 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %587, i32 0, i32 1
  %589 = load i32*, i32** %588, align 8
  %590 = load i64, i64* @WINED3D_RS_RANGEFOGENABLE, align 8
  %591 = getelementptr inbounds i32, i32* %589, i64 %590
  %592 = load i32, i32* %591, align 4
  %593 = icmp ne i32 %592, 0
  br i1 %593, label %594, label %598

594:                                              ; preds = %586
  %595 = load i8*, i8** @WINED3D_FFP_VS_FOG_RANGE, align 8
  %596 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %597 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %596, i32 0, i32 20
  store i8* %595, i8** %597, align 8
  br label %602

598:                                              ; preds = %586
  %599 = load i8*, i8** @WINED3D_FFP_VS_FOG_DEPTH, align 8
  %600 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %601 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %600, i32 0, i32 20
  store i8* %599, i8** %601, align 8
  br label %602

602:                                              ; preds = %598, %594
  br label %603

603:                                              ; preds = %602, %582
  br label %604

604:                                              ; preds = %603, %572
  br label %605

605:                                              ; preds = %604, %517
  %606 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %9, align 8
  %607 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %606, i32 0, i32 0
  %608 = load i64, i64* %607, align 8
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %622

610:                                              ; preds = %605
  %611 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %612 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %611, i32 0, i32 1
  %613 = load i32*, i32** %612, align 8
  %614 = load i64, i64* @WINED3D_RS_SHADEMODE, align 8
  %615 = getelementptr inbounds i32, i32* %613, i64 %614
  %616 = load i32, i32* %615, align 4
  %617 = load i32, i32* @WINED3D_SHADE_FLAT, align 4
  %618 = icmp eq i32 %616, %617
  %619 = zext i1 %618 to i32
  %620 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %621 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %620, i32 0, i32 5
  store i32 %619, i32* %621, align 8
  br label %627

622:                                              ; preds = %605
  %623 = load i8*, i8** @FALSE, align 8
  %624 = ptrtoint i8* %623 to i32
  %625 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %626 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %625, i32 0, i32 5
  store i32 %624, i32* %626, align 8
  br label %627

627:                                              ; preds = %622, %610
  %628 = load %struct.wined3d_stream_info*, %struct.wined3d_stream_info** %7, align 8
  %629 = getelementptr inbounds %struct.wined3d_stream_info, %struct.wined3d_stream_info* %628, i32 0, i32 1
  %630 = load i32, i32* %629, align 4
  %631 = load %struct.wined3d_ffp_vs_settings*, %struct.wined3d_ffp_vs_settings** %6, align 8
  %632 = getelementptr inbounds %struct.wined3d_ffp_vs_settings, %struct.wined3d_ffp_vs_settings* %631, i32 0, i32 19
  store i32 %630, i32* %632, align 8
  br label %633

633:                                              ; preds = %627, %170
  ret void
}

declare dso_local i32 @memset(%struct.wined3d_ffp_vs_settings*, i32, i32) #1

declare dso_local i64 @wined3d_max_compat_varyings(%struct.wined3d_gl_info*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i64 @use_indexed_vertex_blending(%struct.wined3d_state*, %struct.wined3d_stream_info*) #1

declare dso_local i64 @use_software_vertex_processing(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
