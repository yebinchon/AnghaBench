; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_shade.c_gl_index_shade_vertices.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_shade.c_gl_index_shade_vertices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.gl_light*, %struct.gl_material* }
%struct.TYPE_5__ = type { i64 }
%struct.gl_light = type { double*, float*, float, float, float, float, float, double**, float, float, i32, %struct.gl_light* }
%struct.gl_material = type { float*, float, float, float, i32 }

@EXP_TABLE_SIZE = common dso_local global i32 0, align 4
@SHINE_TABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_index_shade_vertices(%struct.TYPE_7__* %0, i64 %1, i64 %2, [4 x float]* %3, [3 x float]* %4, i64* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x float]*, align 8
  %11 = alloca [3 x float]*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.gl_material*, align 8
  %14 = alloca i64, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.gl_light*, align 8
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca [3 x float], align 4
  %31 = alloca float, align 4
  %32 = alloca double, align 8
  %33 = alloca i32, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  %45 = alloca i32, align 4
  %46 = alloca float, align 4
  %47 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store [4 x float]* %3, [4 x float]** %10, align 8
  store [3 x float]* %4, [3 x float]** %11, align 8
  store i64* %5, i64** %12, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load %struct.gl_material*, %struct.gl_material** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %51, i64 %52
  store %struct.gl_material* %53, %struct.gl_material** %13, align 8
  store i64 0, i64* %14, align 8
  br label %54

54:                                               ; preds = %507, %6
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %510

58:                                               ; preds = %54
  %59 = load i64, i64* %8, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = load [3 x float]*, [3 x float]** %11, align 8
  %63 = load i64, i64* %14, align 8
  %64 = getelementptr inbounds [3 x float], [3 x float]* %62, i64 %63
  %65 = getelementptr inbounds [3 x float], [3 x float]* %64, i64 0, i64 0
  %66 = load float, float* %65, align 4
  store float %66, float* %18, align 4
  %67 = load [3 x float]*, [3 x float]** %11, align 8
  %68 = load i64, i64* %14, align 8
  %69 = getelementptr inbounds [3 x float], [3 x float]* %67, i64 %68
  %70 = getelementptr inbounds [3 x float], [3 x float]* %69, i64 0, i64 1
  %71 = load float, float* %70, align 4
  store float %71, float* %19, align 4
  %72 = load [3 x float]*, [3 x float]** %11, align 8
  %73 = load i64, i64* %14, align 8
  %74 = getelementptr inbounds [3 x float], [3 x float]* %72, i64 %73
  %75 = getelementptr inbounds [3 x float], [3 x float]* %74, i64 0, i64 2
  %76 = load float, float* %75, align 4
  store float %76, float* %20, align 4
  br label %96

77:                                               ; preds = %58
  %78 = load [3 x float]*, [3 x float]** %11, align 8
  %79 = load i64, i64* %14, align 8
  %80 = getelementptr inbounds [3 x float], [3 x float]* %78, i64 %79
  %81 = getelementptr inbounds [3 x float], [3 x float]* %80, i64 0, i64 0
  %82 = load float, float* %81, align 4
  %83 = fneg float %82
  store float %83, float* %18, align 4
  %84 = load [3 x float]*, [3 x float]** %11, align 8
  %85 = load i64, i64* %14, align 8
  %86 = getelementptr inbounds [3 x float], [3 x float]* %84, i64 %85
  %87 = getelementptr inbounds [3 x float], [3 x float]* %86, i64 0, i64 1
  %88 = load float, float* %87, align 4
  %89 = fneg float %88
  store float %89, float* %19, align 4
  %90 = load [3 x float]*, [3 x float]** %11, align 8
  %91 = load i64, i64* %14, align 8
  %92 = getelementptr inbounds [3 x float], [3 x float]* %90, i64 %91
  %93 = getelementptr inbounds [3 x float], [3 x float]* %92, i64 0, i64 2
  %94 = load float, float* %93, align 4
  %95 = fneg float %94
  store float %95, float* %20, align 4
  br label %96

96:                                               ; preds = %77, %61
  store float 0.000000e+00, float* %17, align 4
  store float 0.000000e+00, float* %16, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load %struct.gl_light*, %struct.gl_light** %99, align 8
  store %struct.gl_light* %100, %struct.gl_light** %21, align 8
  br label %101

101:                                              ; preds = %451, %96
  %102 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %103 = icmp ne %struct.gl_light* %102, null
  br i1 %103, label %104, label %455

104:                                              ; preds = %101
  %105 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %106 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %105, i32 0, i32 0
  %107 = load double*, double** %106, align 8
  %108 = getelementptr inbounds double, double* %107, i64 3
  %109 = load double, double* %108, align 8
  %110 = fcmp oeq double %109, 0.000000e+00
  br i1 %110, label %111, label %127

111:                                              ; preds = %104
  %112 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %113 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %112, i32 0, i32 1
  %114 = load float*, float** %113, align 8
  %115 = getelementptr inbounds float, float* %114, i64 0
  %116 = load float, float* %115, align 4
  store float %116, float* %23, align 4
  %117 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %118 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %117, i32 0, i32 1
  %119 = load float*, float** %118, align 8
  %120 = getelementptr inbounds float, float* %119, i64 1
  %121 = load float, float* %120, align 4
  store float %121, float* %24, align 4
  %122 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %123 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %122, i32 0, i32 1
  %124 = load float*, float** %123, align 8
  %125 = getelementptr inbounds float, float* %124, i64 2
  %126 = load float, float* %125, align 4
  store float %126, float* %25, align 4
  store float 1.000000e+00, float* %22, align 4
  br label %210

127:                                              ; preds = %104
  %128 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %129 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %128, i32 0, i32 0
  %130 = load double*, double** %129, align 8
  %131 = getelementptr inbounds double, double* %130, i64 0
  %132 = load double, double* %131, align 8
  %133 = load [4 x float]*, [4 x float]** %10, align 8
  %134 = load i64, i64* %14, align 8
  %135 = getelementptr inbounds [4 x float], [4 x float]* %133, i64 %134
  %136 = getelementptr inbounds [4 x float], [4 x float]* %135, i64 0, i64 0
  %137 = load float, float* %136, align 4
  %138 = fpext float %137 to double
  %139 = fsub double %132, %138
  %140 = fptrunc double %139 to float
  store float %140, float* %23, align 4
  %141 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %142 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %141, i32 0, i32 0
  %143 = load double*, double** %142, align 8
  %144 = getelementptr inbounds double, double* %143, i64 1
  %145 = load double, double* %144, align 8
  %146 = load [4 x float]*, [4 x float]** %10, align 8
  %147 = load i64, i64* %14, align 8
  %148 = getelementptr inbounds [4 x float], [4 x float]* %146, i64 %147
  %149 = getelementptr inbounds [4 x float], [4 x float]* %148, i64 0, i64 1
  %150 = load float, float* %149, align 4
  %151 = fpext float %150 to double
  %152 = fsub double %145, %151
  %153 = fptrunc double %152 to float
  store float %153, float* %24, align 4
  %154 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %155 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %154, i32 0, i32 0
  %156 = load double*, double** %155, align 8
  %157 = getelementptr inbounds double, double* %156, i64 2
  %158 = load double, double* %157, align 8
  %159 = load [4 x float]*, [4 x float]** %10, align 8
  %160 = load i64, i64* %14, align 8
  %161 = getelementptr inbounds [4 x float], [4 x float]* %159, i64 %160
  %162 = getelementptr inbounds [4 x float], [4 x float]* %161, i64 0, i64 2
  %163 = load float, float* %162, align 4
  %164 = fpext float %163 to double
  %165 = fsub double %158, %164
  %166 = fptrunc double %165 to float
  store float %166, float* %25, align 4
  %167 = load float, float* %23, align 4
  %168 = load float, float* %23, align 4
  %169 = fmul float %167, %168
  %170 = load float, float* %24, align 4
  %171 = load float, float* %24, align 4
  %172 = fmul float %170, %171
  %173 = fadd float %169, %172
  %174 = load float, float* %25, align 4
  %175 = load float, float* %25, align 4
  %176 = fmul float %174, %175
  %177 = fadd float %173, %176
  %178 = call float @GL_SQRT(float %177)
  store float %178, float* %27, align 4
  %179 = load float, float* %27, align 4
  %180 = fcmp ogt float %179, 0x3F50624DE0000000
  br i1 %180, label %181, label %193

181:                                              ; preds = %127
  %182 = load float, float* %27, align 4
  %183 = fdiv float 1.000000e+00, %182
  store float %183, float* %28, align 4
  %184 = load float, float* %28, align 4
  %185 = load float, float* %23, align 4
  %186 = fmul float %185, %184
  store float %186, float* %23, align 4
  %187 = load float, float* %28, align 4
  %188 = load float, float* %24, align 4
  %189 = fmul float %188, %187
  store float %189, float* %24, align 4
  %190 = load float, float* %28, align 4
  %191 = load float, float* %25, align 4
  %192 = fmul float %191, %190
  store float %192, float* %25, align 4
  br label %193

193:                                              ; preds = %181, %127
  %194 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %195 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %194, i32 0, i32 2
  %196 = load float, float* %195, align 8
  %197 = load float, float* %27, align 4
  %198 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %199 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %198, i32 0, i32 3
  %200 = load float, float* %199, align 4
  %201 = load float, float* %27, align 4
  %202 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %203 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %202, i32 0, i32 4
  %204 = load float, float* %203, align 8
  %205 = fmul float %201, %204
  %206 = fadd float %200, %205
  %207 = fmul float %197, %206
  %208 = fadd float %196, %207
  %209 = fdiv float 1.000000e+00, %208
  store float %209, float* %22, align 4
  br label %210

210:                                              ; preds = %193, %111
  %211 = load float, float* %23, align 4
  %212 = load float, float* %18, align 4
  %213 = fmul float %211, %212
  %214 = load float, float* %24, align 4
  %215 = load float, float* %19, align 4
  %216 = fmul float %214, %215
  %217 = fadd float %213, %216
  %218 = load float, float* %25, align 4
  %219 = load float, float* %20, align 4
  %220 = fmul float %218, %219
  %221 = fadd float %217, %220
  store float %221, float* %26, align 4
  %222 = load float, float* %26, align 4
  %223 = fcmp ogt float %222, 0.000000e+00
  br i1 %223, label %224, label %450

224:                                              ; preds = %210
  %225 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %226 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %225, i32 0, i32 5
  %227 = load float, float* %226, align 4
  %228 = fcmp oeq float %227, 1.800000e+02
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = load float, float* %22, align 4
  store float %230, float* %29, align 4
  br label %293

231:                                              ; preds = %224
  %232 = load float, float* %23, align 4
  %233 = fneg float %232
  %234 = getelementptr inbounds [3 x float], [3 x float]* %30, i64 0, i64 0
  store float %233, float* %234, align 4
  %235 = load float, float* %24, align 4
  %236 = fneg float %235
  %237 = getelementptr inbounds [3 x float], [3 x float]* %30, i64 0, i64 1
  store float %236, float* %237, align 4
  %238 = load float, float* %25, align 4
  %239 = fneg float %238
  %240 = getelementptr inbounds [3 x float], [3 x float]* %30, i64 0, i64 2
  store float %239, float* %240, align 4
  %241 = getelementptr inbounds [3 x float], [3 x float]* %30, i64 0, i64 0
  %242 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %243 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %242, i32 0, i32 10
  %244 = load i32, i32* %243, align 8
  %245 = call float @DOT3(float* %241, i32 %244)
  store float %245, float* %31, align 4
  %246 = load float, float* %31, align 4
  %247 = fcmp ole float %246, 0.000000e+00
  br i1 %247, label %254, label %248

248:                                              ; preds = %231
  %249 = load float, float* %31, align 4
  %250 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %251 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %250, i32 0, i32 6
  %252 = load float, float* %251, align 8
  %253 = fcmp olt float %249, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %248, %231
  store float 0.000000e+00, float* %29, align 4
  br label %292

255:                                              ; preds = %248
  %256 = load float, float* %31, align 4
  %257 = load i32, i32* @EXP_TABLE_SIZE, align 4
  %258 = sub nsw i32 %257, 1
  %259 = sitofp i32 %258 to float
  %260 = fmul float %256, %259
  %261 = fpext float %260 to double
  store double %261, double* %32, align 8
  %262 = load double, double* %32, align 8
  %263 = fptosi double %262 to i32
  store i32 %263, i32* %33, align 4
  %264 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %265 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %264, i32 0, i32 7
  %266 = load double**, double*** %265, align 8
  %267 = load i32, i32* %33, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds double*, double** %266, i64 %268
  %270 = load double*, double** %269, align 8
  %271 = getelementptr inbounds double, double* %270, i64 0
  %272 = load double, double* %271, align 8
  %273 = load double, double* %32, align 8
  %274 = load i32, i32* %33, align 4
  %275 = sitofp i32 %274 to double
  %276 = fsub double %273, %275
  %277 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %278 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %277, i32 0, i32 7
  %279 = load double**, double*** %278, align 8
  %280 = load i32, i32* %33, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds double*, double** %279, i64 %281
  %283 = load double*, double** %282, align 8
  %284 = getelementptr inbounds double, double* %283, i64 1
  %285 = load double, double* %284, align 8
  %286 = fmul double %276, %285
  %287 = fadd double %272, %286
  %288 = fptrunc double %287 to float
  store float %288, float* %34, align 4
  %289 = load float, float* %34, align 4
  %290 = load float, float* %22, align 4
  %291 = fmul float %289, %290
  store float %291, float* %29, align 4
  br label %292

292:                                              ; preds = %255, %254
  br label %293

293:                                              ; preds = %292, %229
  %294 = load float, float* %26, align 4
  %295 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %296 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %295, i32 0, i32 8
  %297 = load float, float* %296, align 8
  %298 = fmul float %294, %297
  %299 = load float, float* %29, align 4
  %300 = fmul float %298, %299
  %301 = load float, float* %16, align 4
  %302 = fadd float %301, %300
  store float %302, float* %16, align 4
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %361

309:                                              ; preds = %293
  %310 = load [4 x float]*, [4 x float]** %10, align 8
  %311 = load i64, i64* %14, align 8
  %312 = getelementptr inbounds [4 x float], [4 x float]* %310, i64 %311
  %313 = getelementptr inbounds [4 x float], [4 x float]* %312, i64 0, i64 0
  %314 = load float, float* %313, align 4
  store float %314, float* %40, align 4
  %315 = load [4 x float]*, [4 x float]** %10, align 8
  %316 = load i64, i64* %14, align 8
  %317 = getelementptr inbounds [4 x float], [4 x float]* %315, i64 %316
  %318 = getelementptr inbounds [4 x float], [4 x float]* %317, i64 0, i64 1
  %319 = load float, float* %318, align 4
  store float %319, float* %41, align 4
  %320 = load [4 x float]*, [4 x float]** %10, align 8
  %321 = load i64, i64* %14, align 8
  %322 = getelementptr inbounds [4 x float], [4 x float]* %320, i64 %321
  %323 = getelementptr inbounds [4 x float], [4 x float]* %322, i64 0, i64 2
  %324 = load float, float* %323, align 4
  store float %324, float* %42, align 4
  %325 = load float, float* %40, align 4
  %326 = load float, float* %40, align 4
  %327 = fmul float %325, %326
  %328 = load float, float* %41, align 4
  %329 = load float, float* %41, align 4
  %330 = fmul float %328, %329
  %331 = fadd float %327, %330
  %332 = load float, float* %42, align 4
  %333 = load float, float* %42, align 4
  %334 = fmul float %332, %333
  %335 = fadd float %331, %334
  %336 = call float @GL_SQRT(float %335)
  store float %336, float* %43, align 4
  %337 = load float, float* %43, align 4
  %338 = fcmp ogt float %337, 0x3F1A36E2E0000000
  br i1 %338, label %339, label %351

339:                                              ; preds = %309
  %340 = load float, float* %43, align 4
  %341 = fdiv float 1.000000e+00, %340
  store float %341, float* %44, align 4
  %342 = load float, float* %44, align 4
  %343 = load float, float* %40, align 4
  %344 = fmul float %343, %342
  store float %344, float* %40, align 4
  %345 = load float, float* %44, align 4
  %346 = load float, float* %41, align 4
  %347 = fmul float %346, %345
  store float %347, float* %41, align 4
  %348 = load float, float* %44, align 4
  %349 = load float, float* %42, align 4
  %350 = fmul float %349, %348
  store float %350, float* %42, align 4
  br label %351

351:                                              ; preds = %339, %309
  %352 = load float, float* %23, align 4
  %353 = load float, float* %40, align 4
  %354 = fsub float %352, %353
  store float %354, float* %35, align 4
  %355 = load float, float* %24, align 4
  %356 = load float, float* %41, align 4
  %357 = fsub float %355, %356
  store float %357, float* %36, align 4
  %358 = load float, float* %25, align 4
  %359 = load float, float* %42, align 4
  %360 = fsub float %358, %359
  store float %360, float* %37, align 4
  br label %366

361:                                              ; preds = %293
  %362 = load float, float* %23, align 4
  store float %362, float* %35, align 4
  %363 = load float, float* %24, align 4
  store float %363, float* %36, align 4
  %364 = load float, float* %25, align 4
  %365 = fadd float %364, 1.000000e+00
  store float %365, float* %37, align 4
  br label %366

366:                                              ; preds = %361, %351
  %367 = load float, float* %35, align 4
  %368 = load float, float* %18, align 4
  %369 = fmul float %367, %368
  %370 = load float, float* %36, align 4
  %371 = load float, float* %19, align 4
  %372 = fmul float %370, %371
  %373 = fadd float %369, %372
  %374 = load float, float* %37, align 4
  %375 = load float, float* %20, align 4
  %376 = fmul float %374, %375
  %377 = fadd float %373, %376
  store float %377, float* %38, align 4
  %378 = load float, float* %38, align 4
  %379 = fcmp ole float %378, 0.000000e+00
  br i1 %379, label %380, label %381

380:                                              ; preds = %366
  store float 0.000000e+00, float* %39, align 4
  br label %440

381:                                              ; preds = %366
  %382 = load float, float* %38, align 4
  %383 = load float, float* %35, align 4
  %384 = load float, float* %35, align 4
  %385 = fmul float %383, %384
  %386 = load float, float* %36, align 4
  %387 = load float, float* %36, align 4
  %388 = fmul float %386, %387
  %389 = fadd float %385, %388
  %390 = load float, float* %37, align 4
  %391 = load float, float* %37, align 4
  %392 = fmul float %390, %391
  %393 = fadd float %389, %392
  %394 = call float @GL_SQRT(float %393)
  %395 = fdiv float %382, %394
  store float %395, float* %38, align 4
  %396 = load float, float* %38, align 4
  %397 = fcmp ogt float %396, 1.000000e+00
  br i1 %397, label %398, label %404

398:                                              ; preds = %381
  %399 = load float, float* %38, align 4
  %400 = load %struct.gl_material*, %struct.gl_material** %13, align 8
  %401 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %400, i32 0, i32 4
  %402 = load i32, i32* %401, align 4
  %403 = call float @pow(float %399, i32 %402)
  store float %403, float* %39, align 4
  br label %439

404:                                              ; preds = %381
  %405 = load float, float* %38, align 4
  %406 = load i32, i32* @SHINE_TABLE_SIZE, align 4
  %407 = sub nsw i32 %406, 1
  %408 = sitofp i32 %407 to float
  %409 = fmul float %405, %408
  %410 = fptosi float %409 to i32
  store i32 %410, i32* %45, align 4
  %411 = load %struct.gl_material*, %struct.gl_material** %13, align 8
  %412 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %411, i32 0, i32 0
  %413 = load float*, float** %412, align 8
  %414 = load i32, i32* %45, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds float, float* %413, i64 %415
  %417 = load float, float* %416, align 4
  %418 = fcmp olt float %417, 0.000000e+00
  br i1 %418, label %419, label %431

419:                                              ; preds = %404
  %420 = load float, float* %38, align 4
  %421 = load %struct.gl_material*, %struct.gl_material** %13, align 8
  %422 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 4
  %424 = call float @gl_pow(float %420, i32 %423)
  %425 = load %struct.gl_material*, %struct.gl_material** %13, align 8
  %426 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %425, i32 0, i32 0
  %427 = load float*, float** %426, align 8
  %428 = load i32, i32* %45, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds float, float* %427, i64 %429
  store float %424, float* %430, align 4
  br label %431

431:                                              ; preds = %419, %404
  %432 = load %struct.gl_material*, %struct.gl_material** %13, align 8
  %433 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %432, i32 0, i32 0
  %434 = load float*, float** %433, align 8
  %435 = load i32, i32* %45, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds float, float* %434, i64 %436
  %438 = load float, float* %437, align 4
  store float %438, float* %39, align 4
  br label %439

439:                                              ; preds = %431, %398
  br label %440

440:                                              ; preds = %439, %380
  %441 = load float, float* %39, align 4
  %442 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %443 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %442, i32 0, i32 9
  %444 = load float, float* %443, align 4
  %445 = fmul float %441, %444
  %446 = load float, float* %29, align 4
  %447 = fmul float %445, %446
  %448 = load float, float* %17, align 4
  %449 = fadd float %448, %447
  store float %449, float* %17, align 4
  br label %450

450:                                              ; preds = %440, %210
  br label %451

451:                                              ; preds = %450
  %452 = load %struct.gl_light*, %struct.gl_light** %21, align 8
  %453 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %452, i32 0, i32 11
  %454 = load %struct.gl_light*, %struct.gl_light** %453, align 8
  store %struct.gl_light* %454, %struct.gl_light** %21, align 8
  br label %101

455:                                              ; preds = %101
  %456 = load float, float* %17, align 4
  %457 = fcmp ogt float %456, 1.000000e+00
  br i1 %457, label %458, label %462

458:                                              ; preds = %455
  %459 = load %struct.gl_material*, %struct.gl_material** %13, align 8
  %460 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %459, i32 0, i32 1
  %461 = load float, float* %460, align 8
  store float %461, float* %15, align 4
  br label %501

462:                                              ; preds = %455
  %463 = load %struct.gl_material*, %struct.gl_material** %13, align 8
  %464 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %463, i32 0, i32 2
  %465 = load float, float* %464, align 4
  %466 = load %struct.gl_material*, %struct.gl_material** %13, align 8
  %467 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %466, i32 0, i32 3
  %468 = load float, float* %467, align 8
  %469 = fsub float %465, %468
  store float %469, float* %46, align 4
  %470 = load %struct.gl_material*, %struct.gl_material** %13, align 8
  %471 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %470, i32 0, i32 1
  %472 = load float, float* %471, align 8
  %473 = load %struct.gl_material*, %struct.gl_material** %13, align 8
  %474 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %473, i32 0, i32 3
  %475 = load float, float* %474, align 8
  %476 = fsub float %472, %475
  store float %476, float* %47, align 4
  %477 = load %struct.gl_material*, %struct.gl_material** %13, align 8
  %478 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %477, i32 0, i32 3
  %479 = load float, float* %478, align 8
  %480 = load float, float* %16, align 4
  %481 = load float, float* %17, align 4
  %482 = fsub float 1.000000e+00, %481
  %483 = fmul float %480, %482
  %484 = load float, float* %46, align 4
  %485 = fmul float %483, %484
  %486 = fadd float %479, %485
  %487 = load float, float* %17, align 4
  %488 = load float, float* %47, align 4
  %489 = fmul float %487, %488
  %490 = fadd float %486, %489
  store float %490, float* %15, align 4
  %491 = load float, float* %15, align 4
  %492 = load %struct.gl_material*, %struct.gl_material** %13, align 8
  %493 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %492, i32 0, i32 1
  %494 = load float, float* %493, align 8
  %495 = fcmp ogt float %491, %494
  br i1 %495, label %496, label %500

496:                                              ; preds = %462
  %497 = load %struct.gl_material*, %struct.gl_material** %13, align 8
  %498 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %497, i32 0, i32 1
  %499 = load float, float* %498, align 8
  store float %499, float* %15, align 4
  br label %500

500:                                              ; preds = %496, %462
  br label %501

501:                                              ; preds = %500, %458
  %502 = load float, float* %15, align 4
  %503 = fptoui float %502 to i64
  %504 = load i64*, i64** %12, align 8
  %505 = load i64, i64* %14, align 8
  %506 = getelementptr inbounds i64, i64* %504, i64 %505
  store i64 %503, i64* %506, align 8
  br label %507

507:                                              ; preds = %501
  %508 = load i64, i64* %14, align 8
  %509 = add i64 %508, 1
  store i64 %509, i64* %14, align 8
  br label %54

510:                                              ; preds = %54
  ret void
}

declare dso_local float @GL_SQRT(float) #1

declare dso_local float @DOT3(float*, i32) #1

declare dso_local float @pow(float, i32) #1

declare dso_local float @gl_pow(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
