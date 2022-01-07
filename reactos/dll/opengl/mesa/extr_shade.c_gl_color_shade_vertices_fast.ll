; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_shade.c_gl_color_shade_vertices_fast.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_shade.c_gl_color_shade_vertices_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { float**, %struct.gl_material*, %struct.gl_light* }
%struct.gl_material = type { float*, i32 }
%struct.gl_light = type { float*, float**, float*, float**, %struct.gl_light* }
%struct.TYPE_5__ = type { float, float, float, float }

@SHINE_TABLE_SIZE = common dso_local global i32 0, align 4
@A = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_color_shade_vertices_fast(%struct.TYPE_7__* %0, i64 %1, i64 %2, [3 x float]* %3, [4 x float]* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x float]*, align 8
  %10 = alloca [4 x float]*, align 8
  %11 = alloca i64, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i64, align 8
  %17 = alloca float*, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca %struct.gl_light*, align 8
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float*, align 8
  %28 = alloca float, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.gl_material*, align 8
  %31 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store [3 x float]* %3, [3 x float]** %9, align 8
  store [4 x float]* %4, [4 x float]** %10, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load float**, float*** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds float*, float** %35, i64 %36
  %38 = load float*, float** %37, align 8
  store float* %38, float** %17, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load float, float* %42, align 4
  store float %43, float* %12, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load float, float* %47, align 4
  store float %48, float* %13, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load float, float* %52, align 4
  store float %53, float* %14, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load float, float* %57, align 4
  store float %58, float* %15, align 4
  %59 = load float*, float** %17, align 8
  %60 = getelementptr inbounds float, float* %59, i64 3
  %61 = load float, float* %60, align 4
  %62 = load float, float* %15, align 4
  %63 = fmul float %61, %62
  %64 = fptoui float %63 to i64
  store i64 %64, i64* %16, align 8
  store i64 0, i64* %11, align 8
  br label %65

65:                                               ; preds = %375, %5
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %378

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load [3 x float]*, [3 x float]** %9, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds [3 x float], [3 x float]* %73, i64 %74
  %76 = getelementptr inbounds [3 x float], [3 x float]* %75, i64 0, i64 0
  %77 = load float, float* %76, align 4
  store float %77, float* %21, align 4
  %78 = load [3 x float]*, [3 x float]** %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds [3 x float], [3 x float]* %78, i64 %79
  %81 = getelementptr inbounds [3 x float], [3 x float]* %80, i64 0, i64 1
  %82 = load float, float* %81, align 4
  store float %82, float* %22, align 4
  %83 = load [3 x float]*, [3 x float]** %9, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds [3 x float], [3 x float]* %83, i64 %84
  %86 = getelementptr inbounds [3 x float], [3 x float]* %85, i64 0, i64 2
  %87 = load float, float* %86, align 4
  store float %87, float* %23, align 4
  br label %107

88:                                               ; preds = %69
  %89 = load [3 x float]*, [3 x float]** %9, align 8
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds [3 x float], [3 x float]* %89, i64 %90
  %92 = getelementptr inbounds [3 x float], [3 x float]* %91, i64 0, i64 0
  %93 = load float, float* %92, align 4
  %94 = fneg float %93
  store float %94, float* %21, align 4
  %95 = load [3 x float]*, [3 x float]** %9, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds [3 x float], [3 x float]* %95, i64 %96
  %98 = getelementptr inbounds [3 x float], [3 x float]* %97, i64 0, i64 1
  %99 = load float, float* %98, align 4
  %100 = fneg float %99
  store float %100, float* %22, align 4
  %101 = load [3 x float]*, [3 x float]** %9, align 8
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds [3 x float], [3 x float]* %101, i64 %102
  %104 = getelementptr inbounds [3 x float], [3 x float]* %103, i64 0, i64 2
  %105 = load float, float* %104, align 4
  %106 = fneg float %105
  store float %106, float* %23, align 4
  br label %107

107:                                              ; preds = %88, %72
  %108 = load float*, float** %17, align 8
  %109 = getelementptr inbounds float, float* %108, i64 0
  %110 = load float, float* %109, align 4
  store float %110, float* %18, align 4
  %111 = load float*, float** %17, align 8
  %112 = getelementptr inbounds float, float* %111, i64 1
  %113 = load float, float* %112, align 4
  store float %113, float* %19, align 4
  %114 = load float*, float** %17, align 8
  %115 = getelementptr inbounds float, float* %114, i64 2
  %116 = load float, float* %115, align 4
  store float %116, float* %20, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load %struct.gl_light*, %struct.gl_light** %119, align 8
  store %struct.gl_light* %120, %struct.gl_light** %24, align 8
  br label %121

121:                                              ; preds = %337, %107
  %122 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %123 = icmp ne %struct.gl_light* %122, null
  br i1 %123, label %124, label %341

124:                                              ; preds = %121
  %125 = load float, float* %21, align 4
  %126 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %127 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %126, i32 0, i32 0
  %128 = load float*, float** %127, align 8
  %129 = getelementptr inbounds float, float* %128, i64 0
  %130 = load float, float* %129, align 4
  %131 = fmul float %125, %130
  %132 = load float, float* %22, align 4
  %133 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %134 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %133, i32 0, i32 0
  %135 = load float*, float** %134, align 8
  %136 = getelementptr inbounds float, float* %135, i64 1
  %137 = load float, float* %136, align 4
  %138 = fmul float %132, %137
  %139 = fadd float %131, %138
  %140 = load float, float* %23, align 4
  %141 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %142 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %141, i32 0, i32 0
  %143 = load float*, float** %142, align 8
  %144 = getelementptr inbounds float, float* %143, i64 2
  %145 = load float, float* %144, align 4
  %146 = fmul float %140, %145
  %147 = fadd float %139, %146
  store float %147, float* %25, align 4
  %148 = load float, float* %25, align 4
  %149 = fcmp ogt float %148, 0.000000e+00
  br i1 %149, label %150, label %336

150:                                              ; preds = %124
  %151 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %152 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %151, i32 0, i32 1
  %153 = load float**, float*** %152, align 8
  %154 = load i64, i64* %7, align 8
  %155 = getelementptr inbounds float*, float** %153, i64 %154
  %156 = load float*, float** %155, align 8
  store float* %156, float** %27, align 8
  %157 = load float, float* %25, align 4
  %158 = load float*, float** %27, align 8
  %159 = getelementptr inbounds float, float* %158, i64 0
  %160 = load float, float* %159, align 4
  %161 = fmul float %157, %160
  %162 = load float, float* %18, align 4
  %163 = fadd float %162, %161
  store float %163, float* %18, align 4
  %164 = load float, float* %25, align 4
  %165 = load float*, float** %27, align 8
  %166 = getelementptr inbounds float, float* %165, i64 1
  %167 = load float, float* %166, align 4
  %168 = fmul float %164, %167
  %169 = load float, float* %19, align 4
  %170 = fadd float %169, %168
  store float %170, float* %19, align 4
  %171 = load float, float* %25, align 4
  %172 = load float*, float** %27, align 8
  %173 = getelementptr inbounds float, float* %172, i64 2
  %174 = load float, float* %173, align 4
  %175 = fmul float %171, %174
  %176 = load float, float* %20, align 4
  %177 = fadd float %176, %175
  store float %177, float* %20, align 4
  %178 = load float, float* %21, align 4
  %179 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %180 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %179, i32 0, i32 2
  %181 = load float*, float** %180, align 8
  %182 = getelementptr inbounds float, float* %181, i64 0
  %183 = load float, float* %182, align 4
  %184 = fmul float %178, %183
  %185 = load float, float* %22, align 4
  %186 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %187 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %186, i32 0, i32 2
  %188 = load float*, float** %187, align 8
  %189 = getelementptr inbounds float, float* %188, i64 1
  %190 = load float, float* %189, align 4
  %191 = fmul float %185, %190
  %192 = fadd float %184, %191
  %193 = load float, float* %23, align 4
  %194 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %195 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %194, i32 0, i32 2
  %196 = load float*, float** %195, align 8
  %197 = getelementptr inbounds float, float* %196, i64 2
  %198 = load float, float* %197, align 4
  %199 = fmul float %193, %198
  %200 = fadd float %192, %199
  store float %200, float* %26, align 4
  %201 = load float, float* %26, align 4
  %202 = fcmp ogt float %201, 0.000000e+00
  br i1 %202, label %203, label %335

203:                                              ; preds = %150
  %204 = load float, float* %26, align 4
  %205 = fcmp ogt float %204, 1.000000e+00
  br i1 %205, label %206, label %257

206:                                              ; preds = %203
  %207 = load float, float* %26, align 4
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load %struct.gl_material*, %struct.gl_material** %210, align 8
  %212 = load i64, i64* %7, align 8
  %213 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %211, i64 %212
  %214 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call float @pow(float %207, i32 %215)
  store float %216, float* %28, align 4
  %217 = load float, float* %28, align 4
  %218 = fcmp ogt float %217, 0x3DDB7CDFE0000000
  br i1 %218, label %219, label %256

219:                                              ; preds = %206
  %220 = load float, float* %28, align 4
  %221 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %222 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %221, i32 0, i32 3
  %223 = load float**, float*** %222, align 8
  %224 = load i64, i64* %7, align 8
  %225 = getelementptr inbounds float*, float** %223, i64 %224
  %226 = load float*, float** %225, align 8
  %227 = getelementptr inbounds float, float* %226, i64 0
  %228 = load float, float* %227, align 4
  %229 = fmul float %220, %228
  %230 = load float, float* %18, align 4
  %231 = fadd float %230, %229
  store float %231, float* %18, align 4
  %232 = load float, float* %28, align 4
  %233 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %234 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %233, i32 0, i32 3
  %235 = load float**, float*** %234, align 8
  %236 = load i64, i64* %7, align 8
  %237 = getelementptr inbounds float*, float** %235, i64 %236
  %238 = load float*, float** %237, align 8
  %239 = getelementptr inbounds float, float* %238, i64 1
  %240 = load float, float* %239, align 4
  %241 = fmul float %232, %240
  %242 = load float, float* %19, align 4
  %243 = fadd float %242, %241
  store float %243, float* %19, align 4
  %244 = load float, float* %28, align 4
  %245 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %246 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %245, i32 0, i32 3
  %247 = load float**, float*** %246, align 8
  %248 = load i64, i64* %7, align 8
  %249 = getelementptr inbounds float*, float** %247, i64 %248
  %250 = load float*, float** %249, align 8
  %251 = getelementptr inbounds float, float* %250, i64 2
  %252 = load float, float* %251, align 4
  %253 = fmul float %244, %252
  %254 = load float, float* %20, align 4
  %255 = fadd float %254, %253
  store float %255, float* %20, align 4
  br label %256

256:                                              ; preds = %219, %206
  br label %334

257:                                              ; preds = %203
  %258 = load float, float* %26, align 4
  %259 = load i32, i32* @SHINE_TABLE_SIZE, align 4
  %260 = sub nsw i32 %259, 1
  %261 = sitofp i32 %260 to float
  %262 = fmul float %258, %261
  %263 = fptosi float %262 to i32
  store i32 %263, i32* %29, align 4
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 1
  %267 = load %struct.gl_material*, %struct.gl_material** %266, align 8
  %268 = load i64, i64* %7, align 8
  %269 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %267, i64 %268
  store %struct.gl_material* %269, %struct.gl_material** %30, align 8
  %270 = load %struct.gl_material*, %struct.gl_material** %30, align 8
  %271 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %270, i32 0, i32 0
  %272 = load float*, float** %271, align 8
  %273 = load i32, i32* %29, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float, float* %272, i64 %274
  %276 = load float, float* %275, align 4
  %277 = fcmp olt float %276, 0.000000e+00
  br i1 %277, label %278, label %290

278:                                              ; preds = %257
  %279 = load float, float* %26, align 4
  %280 = load %struct.gl_material*, %struct.gl_material** %30, align 8
  %281 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = call float @gl_pow(float %279, i32 %282)
  %284 = load %struct.gl_material*, %struct.gl_material** %30, align 8
  %285 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %284, i32 0, i32 0
  %286 = load float*, float** %285, align 8
  %287 = load i32, i32* %29, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds float, float* %286, i64 %288
  store float %283, float* %289, align 4
  br label %290

290:                                              ; preds = %278, %257
  %291 = load %struct.gl_material*, %struct.gl_material** %30, align 8
  %292 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %291, i32 0, i32 0
  %293 = load float*, float** %292, align 8
  %294 = load i32, i32* %29, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds float, float* %293, i64 %295
  %297 = load float, float* %296, align 4
  store float %297, float* %31, align 4
  %298 = load float, float* %31, align 4
  %299 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %300 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %299, i32 0, i32 3
  %301 = load float**, float*** %300, align 8
  %302 = load i64, i64* %7, align 8
  %303 = getelementptr inbounds float*, float** %301, i64 %302
  %304 = load float*, float** %303, align 8
  %305 = getelementptr inbounds float, float* %304, i64 0
  %306 = load float, float* %305, align 4
  %307 = fmul float %298, %306
  %308 = load float, float* %18, align 4
  %309 = fadd float %308, %307
  store float %309, float* %18, align 4
  %310 = load float, float* %31, align 4
  %311 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %312 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %311, i32 0, i32 3
  %313 = load float**, float*** %312, align 8
  %314 = load i64, i64* %7, align 8
  %315 = getelementptr inbounds float*, float** %313, i64 %314
  %316 = load float*, float** %315, align 8
  %317 = getelementptr inbounds float, float* %316, i64 1
  %318 = load float, float* %317, align 4
  %319 = fmul float %310, %318
  %320 = load float, float* %19, align 4
  %321 = fadd float %320, %319
  store float %321, float* %19, align 4
  %322 = load float, float* %31, align 4
  %323 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %324 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %323, i32 0, i32 3
  %325 = load float**, float*** %324, align 8
  %326 = load i64, i64* %7, align 8
  %327 = getelementptr inbounds float*, float** %325, i64 %326
  %328 = load float*, float** %327, align 8
  %329 = getelementptr inbounds float, float* %328, i64 2
  %330 = load float, float* %329, align 4
  %331 = fmul float %322, %330
  %332 = load float, float* %20, align 4
  %333 = fadd float %332, %331
  store float %333, float* %20, align 4
  br label %334

334:                                              ; preds = %290, %256
  br label %335

335:                                              ; preds = %334, %150
  br label %336

336:                                              ; preds = %335, %124
  br label %337

337:                                              ; preds = %336
  %338 = load %struct.gl_light*, %struct.gl_light** %24, align 8
  %339 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %338, i32 0, i32 4
  %340 = load %struct.gl_light*, %struct.gl_light** %339, align 8
  store %struct.gl_light* %340, %struct.gl_light** %24, align 8
  br label %121

341:                                              ; preds = %121
  %342 = load float, float* %18, align 4
  %343 = call float @MIN2(float %342, float 1.000000e+00)
  %344 = load float, float* %12, align 4
  %345 = fmul float %343, %344
  %346 = call float @FloatToInt(float %345)
  %347 = load [4 x float]*, [4 x float]** %10, align 8
  %348 = load i64, i64* %11, align 8
  %349 = getelementptr inbounds [4 x float], [4 x float]* %347, i64 %348
  %350 = getelementptr inbounds [4 x float], [4 x float]* %349, i64 0, i64 0
  store float %346, float* %350, align 4
  %351 = load float, float* %19, align 4
  %352 = call float @MIN2(float %351, float 1.000000e+00)
  %353 = load float, float* %13, align 4
  %354 = fmul float %352, %353
  %355 = call float @FloatToInt(float %354)
  %356 = load [4 x float]*, [4 x float]** %10, align 8
  %357 = load i64, i64* %11, align 8
  %358 = getelementptr inbounds [4 x float], [4 x float]* %356, i64 %357
  %359 = getelementptr inbounds [4 x float], [4 x float]* %358, i64 0, i64 1
  store float %355, float* %359, align 4
  %360 = load float, float* %20, align 4
  %361 = call float @MIN2(float %360, float 1.000000e+00)
  %362 = load float, float* %14, align 4
  %363 = fmul float %361, %362
  %364 = call float @FloatToInt(float %363)
  %365 = load [4 x float]*, [4 x float]** %10, align 8
  %366 = load i64, i64* %11, align 8
  %367 = getelementptr inbounds [4 x float], [4 x float]* %365, i64 %366
  %368 = getelementptr inbounds [4 x float], [4 x float]* %367, i64 0, i64 2
  store float %364, float* %368, align 4
  %369 = load i64, i64* %16, align 8
  %370 = uitofp i64 %369 to float
  %371 = load [4 x float]*, [4 x float]** %10, align 8
  %372 = load i64, i64* %11, align 8
  %373 = getelementptr inbounds [4 x float], [4 x float]* %371, i64 %372
  %374 = getelementptr inbounds [4 x float], [4 x float]* %373, i64 0, i64 3
  store float %370, float* %374, align 4
  br label %375

375:                                              ; preds = %341
  %376 = load i64, i64* %11, align 8
  %377 = add i64 %376, 1
  store i64 %377, i64* %11, align 8
  br label %65

378:                                              ; preds = %65
  ret void
}

declare dso_local float @pow(float, i32) #1

declare dso_local float @gl_pow(float, i32) #1

declare dso_local float @FloatToInt(float) #1

declare dso_local float @MIN2(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
