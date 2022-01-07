; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_find_arb_vs_compile_args.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_find_arb_vs_compile_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_state = type { %struct.TYPE_14__*, i64*, i64*, %struct.wined3d_shader** }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.wined3d_context = type { i64*, %struct.TYPE_8__, %struct.wined3d_d3d_info*, %struct.wined3d_gl_info* }
%struct.TYPE_8__ = type { i32 }
%struct.wined3d_d3d_info = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.wined3d_gl_info = type { i64* }
%struct.wined3d_shader = type { %struct.TYPE_13__, %struct.arb_pshader_private*, %struct.wined3d_device* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.arb_pshader_private = type { i32, i32 }
%struct.wined3d_device = type { %struct.wined3d_adapter* }
%struct.wined3d_adapter = type { i32* }
%struct.arb_vs_compile_args = type { i64**, %struct.TYPE_12__, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_12__ = type { i64* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32, i8, i32 }

@WINED3D_SHADER_TYPE_PIXEL = common dso_local global i64 0, align 8
@arbfp_fragment_pipeline = common dso_local global i32 0, align 4
@WINED3D_RS_CLIPPING = common dso_local global i64 0, align 8
@WINED3D_RS_CLIPPLANEENABLE = common dso_local global i64 0, align 8
@WINED3D_MAX_CONSTS_B = common dso_local global i32 0, align 4
@MAX_FRAGMENT_SAMPLERS = common dso_local global i32 0, align 4
@NV_VERTEX_PROGRAM2_OPTION = common dso_local global i64 0, align 8
@WINED3D_MAX_CONSTS_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_state*, %struct.wined3d_context*, %struct.wined3d_shader*, %struct.arb_vs_compile_args*)* @find_arb_vs_compile_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_arb_vs_compile_args(%struct.wined3d_state* %0, %struct.wined3d_context* %1, %struct.wined3d_shader* %2, %struct.arb_vs_compile_args* %3) #0 {
  %5 = alloca %struct.wined3d_state*, align 8
  %6 = alloca %struct.wined3d_context*, align 8
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca %struct.arb_vs_compile_args*, align 8
  %9 = alloca %struct.wined3d_device*, align 8
  %10 = alloca %struct.wined3d_adapter*, align 8
  %11 = alloca %struct.wined3d_gl_info*, align 8
  %12 = alloca %struct.wined3d_d3d_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wined3d_shader*, align 8
  %16 = alloca %struct.arb_pshader_private*, align 8
  store %struct.wined3d_state* %0, %struct.wined3d_state** %5, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %6, align 8
  store %struct.wined3d_shader* %2, %struct.wined3d_shader** %7, align 8
  store %struct.arb_vs_compile_args* %3, %struct.arb_vs_compile_args** %8, align 8
  %17 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %18 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %17, i32 0, i32 2
  %19 = load %struct.wined3d_device*, %struct.wined3d_device** %18, align 8
  store %struct.wined3d_device* %19, %struct.wined3d_device** %9, align 8
  %20 = load %struct.wined3d_device*, %struct.wined3d_device** %9, align 8
  %21 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %20, i32 0, i32 0
  %22 = load %struct.wined3d_adapter*, %struct.wined3d_adapter** %21, align 8
  store %struct.wined3d_adapter* %22, %struct.wined3d_adapter** %10, align 8
  %23 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %24 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %23, i32 0, i32 3
  %25 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %24, align 8
  store %struct.wined3d_gl_info* %25, %struct.wined3d_gl_info** %11, align 8
  %26 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %27 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %26, i32 0, i32 2
  %28 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %27, align 8
  store %struct.wined3d_d3d_info* %28, %struct.wined3d_d3d_info** %12, align 8
  %29 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %30 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %31 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %32 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %36 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %35, i32 0, i32 4
  %37 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %38 = call i32 @find_vs_compile_args(%struct.wined3d_state* %29, %struct.wined3d_shader* %30, i32 %34, i32* %36, %struct.wined3d_context* %37)
  %39 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %40 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %43 = call i64 @use_ps(%struct.wined3d_state* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %4
  %46 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %47 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %46, i32 0, i32 3
  %48 = load %struct.wined3d_shader**, %struct.wined3d_shader*** %47, align 8
  %49 = load i64, i64* @WINED3D_SHADER_TYPE_PIXEL, align 8
  %50 = getelementptr inbounds %struct.wined3d_shader*, %struct.wined3d_shader** %48, i64 %49
  %51 = load %struct.wined3d_shader*, %struct.wined3d_shader** %50, align 8
  store %struct.wined3d_shader* %51, %struct.wined3d_shader** %15, align 8
  %52 = load %struct.wined3d_shader*, %struct.wined3d_shader** %15, align 8
  %53 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %52, i32 0, i32 1
  %54 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %53, align 8
  store %struct.arb_pshader_private* %54, %struct.arb_pshader_private** %16, align 8
  %55 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %16, align 8
  %56 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %59 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.arb_pshader_private*, %struct.arb_pshader_private** %16, align 8
  %61 = getelementptr inbounds %struct.arb_pshader_private, %struct.arb_pshader_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  %64 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %65 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  br label %97

68:                                               ; preds = %4
  %69 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %70 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %69, i32 0, i32 3
  store i32 -1, i32* %70, align 8
  %71 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %12, align 8
  %72 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %96, label %75

75:                                               ; preds = %68
  %76 = load %struct.wined3d_adapter*, %struct.wined3d_adapter** %10, align 8
  %77 = getelementptr inbounds %struct.wined3d_adapter, %struct.wined3d_adapter* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, @arbfp_fragment_pipeline
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %82 = call i64 @ffp_clip_emul(%struct.wined3d_context* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %12, align 8
  %86 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  br label %90

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %84
  %91 = phi i32 [ %88, %84 ], [ 0, %89 ]
  %92 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %93 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 8
  br label %96

96:                                               ; preds = %90, %75, %68
  br label %97

97:                                               ; preds = %96, %45
  %98 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %99 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %97
  %105 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %106 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %105, i32 0, i32 2
  %107 = load i64*, i64** %106, align 8
  %108 = load i64, i64* @WINED3D_RS_CLIPPING, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %104
  %113 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %114 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %113, i32 0, i32 2
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* @WINED3D_RS_CLIPPLANEENABLE, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = trunc i64 %118 to i8
  %120 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %121 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  store i8 %119, i8* %123, align 4
  br label %124

124:                                              ; preds = %112, %104
  br label %125

125:                                              ; preds = %124, %97
  %126 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %127 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %131 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 2
  store i32 %129, i32* %133, align 8
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %157, %125
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @WINED3D_MAX_CONSTS_B, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %134
  %139 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %140 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %139, i32 0, i32 1
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %138
  %148 = load i32, i32* %13, align 4
  %149 = shl i32 1, %148
  %150 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %151 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %149
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %147, %138
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %13, align 4
  br label %134

160:                                              ; preds = %134
  %161 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %162 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* @MAX_FRAGMENT_SAMPLERS, align 4
  %165 = add nsw i32 %164, 0
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %163, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %170 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  store i64 %168, i64* %173, align 8
  %174 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %175 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %174, i32 0, i32 0
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* @MAX_FRAGMENT_SAMPLERS, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %176, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %183 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 1
  store i64 %181, i64* %186, align 8
  %187 = load %struct.wined3d_context*, %struct.wined3d_context** %6, align 8
  %188 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* @MAX_FRAGMENT_SAMPLERS, align 4
  %191 = add nsw i32 %190, 2
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %189, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %196 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 2
  store i64 %194, i64* %199, align 8
  %200 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %201 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i64*, i64** %202, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 3
  store i64 0, i64* %204, align 8
  %205 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %206 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = xor i32 %208, -1
  %210 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %211 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %209, %213
  store i32 %214, i32* %14, align 4
  %215 = load i32, i32* %14, align 4
  %216 = icmp eq i32 %215, 65535
  br i1 %216, label %225, label %217

217:                                              ; preds = %160
  %218 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %11, align 8
  %219 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %218, i32 0, i32 0
  %220 = load i64*, i64** %219, align 8
  %221 = load i64, i64* @NV_VERTEX_PROGRAM2_OPTION, align 8
  %222 = getelementptr inbounds i64, i64* %220, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %217, %160
  %226 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %227 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %226, i32 0, i32 0
  %228 = load i64**, i64*** %227, align 8
  %229 = call i32 @memset(i64** %228, i32 0, i32 8)
  br label %319

230:                                              ; preds = %217
  store i32 0, i32* %13, align 4
  br label %231

231:                                              ; preds = %316, %230
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* @WINED3D_MAX_CONSTS_I, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %319

235:                                              ; preds = %231
  %236 = load i32, i32* %14, align 4
  %237 = load i32, i32* %13, align 4
  %238 = shl i32 1, %237
  %239 = and i32 %236, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %266

241:                                              ; preds = %235
  %242 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %243 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %242, i32 0, i32 0
  %244 = load i64**, i64*** %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64*, i64** %244, i64 %246
  %248 = load i64*, i64** %247, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 0
  store i64 0, i64* %249, align 8
  %250 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %251 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %250, i32 0, i32 0
  %252 = load i64**, i64*** %251, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64*, i64** %252, i64 %254
  %256 = load i64*, i64** %255, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 1
  store i64 0, i64* %257, align 8
  %258 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %259 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %258, i32 0, i32 0
  %260 = load i64**, i64*** %259, align 8
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64*, i64** %260, i64 %262
  %264 = load i64*, i64** %263, align 8
  %265 = getelementptr inbounds i64, i64* %264, i64 2
  store i64 0, i64* %265, align 8
  br label %315

266:                                              ; preds = %235
  %267 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %268 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %267, i32 0, i32 0
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %268, align 8
  %270 = load i32, i32* %13, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %276 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %275, i32 0, i32 0
  %277 = load i64**, i64*** %276, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64*, i64** %277, i64 %279
  %281 = load i64*, i64** %280, align 8
  %282 = getelementptr inbounds i64, i64* %281, i64 0
  store i64 %274, i64* %282, align 8
  %283 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %284 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %283, i32 0, i32 0
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %284, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %292 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %291, i32 0, i32 0
  %293 = load i64**, i64*** %292, align 8
  %294 = load i32, i32* %13, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i64*, i64** %293, i64 %295
  %297 = load i64*, i64** %296, align 8
  %298 = getelementptr inbounds i64, i64* %297, i64 1
  store i64 %290, i64* %298, align 8
  %299 = load %struct.wined3d_state*, %struct.wined3d_state** %5, align 8
  %300 = getelementptr inbounds %struct.wined3d_state, %struct.wined3d_state* %299, i32 0, i32 0
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %300, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.arb_vs_compile_args*, %struct.arb_vs_compile_args** %8, align 8
  %308 = getelementptr inbounds %struct.arb_vs_compile_args, %struct.arb_vs_compile_args* %307, i32 0, i32 0
  %309 = load i64**, i64*** %308, align 8
  %310 = load i32, i32* %13, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64*, i64** %309, i64 %311
  %313 = load i64*, i64** %312, align 8
  %314 = getelementptr inbounds i64, i64* %313, i64 2
  store i64 %306, i64* %314, align 8
  br label %315

315:                                              ; preds = %266, %241
  br label %316

316:                                              ; preds = %315
  %317 = load i32, i32* %13, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %13, align 4
  br label %231

319:                                              ; preds = %225, %231
  ret void
}

declare dso_local i32 @find_vs_compile_args(%struct.wined3d_state*, %struct.wined3d_shader*, i32, i32*, %struct.wined3d_context*) #1

declare dso_local i64 @use_ps(%struct.wined3d_state*) #1

declare dso_local i64 @ffp_clip_emul(%struct.wined3d_context*) #1

declare dso_local i32 @memset(i64**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
