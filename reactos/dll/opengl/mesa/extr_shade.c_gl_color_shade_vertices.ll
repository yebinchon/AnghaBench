; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_shade.c_gl_color_shade_vertices.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_shade.c_gl_color_shade_vertices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.gl_light*, %struct.gl_material* }
%struct.TYPE_7__ = type { i32*, i64 }
%struct.gl_light = type { double*, float*, float, float, float, float, float*, float, double**, float*, float*, float*, %struct.gl_light* }
%struct.gl_material = type { float*, i32*, float*, float*, float*, i32 }
%struct.TYPE_6__ = type { float, float, float, float }

@EXP_TABLE_SIZE = common dso_local global i32 0, align 4
@SHINE_TABLE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_color_shade_vertices(%struct.TYPE_9__* %0, i64 %1, i64 %2, [4 x float]* %3, [3 x float]* %4, [4 x i64]* %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x float]*, align 8
  %11 = alloca [3 x float]*, align 8
  %12 = alloca [4 x i64]*, align 8
  %13 = alloca i64, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i64, align 8
  %23 = alloca %struct.gl_light*, align 8
  %24 = alloca %struct.gl_material*, align 8
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
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
  %45 = alloca float, align 4
  %46 = alloca double, align 8
  %47 = alloca i32, align 4
  %48 = alloca float, align 4
  %49 = alloca float, align 4
  %50 = alloca float, align 4
  %51 = alloca float, align 4
  %52 = alloca float, align 4
  %53 = alloca float, align 4
  %54 = alloca float, align 4
  %55 = alloca float, align 4
  %56 = alloca float, align 4
  %57 = alloca float, align 4
  %58 = alloca float, align 4
  %59 = alloca float, align 4
  %60 = alloca float, align 4
  %61 = alloca float, align 4
  %62 = alloca float, align 4
  %63 = alloca float, align 4
  %64 = alloca float, align 4
  %65 = alloca float, align 4
  %66 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store [4 x float]* %3, [4 x float]** %10, align 8
  store [3 x float]* %4, [3 x float]** %11, align 8
  store [4 x i64]* %5, [4 x i64]** %12, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load float, float* %70, align 4
  store float %71, float* %14, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load float, float* %75, align 4
  store float %76, float* %15, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load float, float* %80, align 4
  store float %81, float* %16, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load float, float* %85, align 4
  store float %86, float* %17, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load %struct.gl_material*, %struct.gl_material** %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %90, i64 %91
  store %struct.gl_material* %92, %struct.gl_material** %24, align 8
  %93 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %94 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %93, i32 0, i32 0
  %95 = load float*, float** %94, align 8
  %96 = getelementptr inbounds float, float* %95, i64 0
  %97 = load float, float* %96, align 4
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %106 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %104, %109
  %111 = sitofp i32 %110 to float
  %112 = fadd float %97, %111
  store float %112, float* %18, align 4
  %113 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %114 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %113, i32 0, i32 0
  %115 = load float*, float** %114, align 8
  %116 = getelementptr inbounds float, float* %115, i64 1
  %117 = load float, float* %116, align 4
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %126 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %124, %129
  %131 = sitofp i32 %130 to float
  %132 = fadd float %117, %131
  store float %132, float* %19, align 4
  %133 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %134 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %133, i32 0, i32 0
  %135 = load float*, float** %134, align 8
  %136 = getelementptr inbounds float, float* %135, i64 2
  %137 = load float, float* %136, align 4
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %146 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %144, %149
  %151 = sitofp i32 %150 to float
  %152 = fadd float %137, %151
  store float %152, float* %20, align 4
  %153 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %154 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %153, i32 0, i32 2
  %155 = load float*, float** %154, align 8
  %156 = getelementptr inbounds float, float* %155, i64 3
  %157 = load float, float* %156, align 4
  store float %157, float* %21, align 4
  %158 = load float, float* %21, align 4
  %159 = call float @CLAMP(float %158, float 0.000000e+00, float 1.000000e+00)
  %160 = load float, float* %17, align 4
  %161 = fmul float %159, %160
  %162 = fptoui float %161 to i64
  store i64 %162, i64* %22, align 8
  store i64 0, i64* %13, align 8
  br label %163

163:                                              ; preds = %762, %6
  %164 = load i64, i64* %13, align 8
  %165 = load i64, i64* %9, align 8
  %166 = icmp ult i64 %164, %165
  br i1 %166, label %167, label %765

167:                                              ; preds = %163
  %168 = load i64, i64* %8, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %167
  %171 = load [3 x float]*, [3 x float]** %11, align 8
  %172 = load i64, i64* %13, align 8
  %173 = getelementptr inbounds [3 x float], [3 x float]* %171, i64 %172
  %174 = getelementptr inbounds [3 x float], [3 x float]* %173, i64 0, i64 0
  %175 = load float, float* %174, align 4
  store float %175, float* %28, align 4
  %176 = load [3 x float]*, [3 x float]** %11, align 8
  %177 = load i64, i64* %13, align 8
  %178 = getelementptr inbounds [3 x float], [3 x float]* %176, i64 %177
  %179 = getelementptr inbounds [3 x float], [3 x float]* %178, i64 0, i64 1
  %180 = load float, float* %179, align 4
  store float %180, float* %29, align 4
  %181 = load [3 x float]*, [3 x float]** %11, align 8
  %182 = load i64, i64* %13, align 8
  %183 = getelementptr inbounds [3 x float], [3 x float]* %181, i64 %182
  %184 = getelementptr inbounds [3 x float], [3 x float]* %183, i64 0, i64 2
  %185 = load float, float* %184, align 4
  store float %185, float* %30, align 4
  br label %205

186:                                              ; preds = %167
  %187 = load [3 x float]*, [3 x float]** %11, align 8
  %188 = load i64, i64* %13, align 8
  %189 = getelementptr inbounds [3 x float], [3 x float]* %187, i64 %188
  %190 = getelementptr inbounds [3 x float], [3 x float]* %189, i64 0, i64 0
  %191 = load float, float* %190, align 4
  %192 = fneg float %191
  store float %192, float* %28, align 4
  %193 = load [3 x float]*, [3 x float]** %11, align 8
  %194 = load i64, i64* %13, align 8
  %195 = getelementptr inbounds [3 x float], [3 x float]* %193, i64 %194
  %196 = getelementptr inbounds [3 x float], [3 x float]* %195, i64 0, i64 1
  %197 = load float, float* %196, align 4
  %198 = fneg float %197
  store float %198, float* %29, align 4
  %199 = load [3 x float]*, [3 x float]** %11, align 8
  %200 = load i64, i64* %13, align 8
  %201 = getelementptr inbounds [3 x float], [3 x float]* %199, i64 %200
  %202 = getelementptr inbounds [3 x float], [3 x float]* %201, i64 0, i64 2
  %203 = load float, float* %202, align 4
  %204 = fneg float %203
  store float %204, float* %30, align 4
  br label %205

205:                                              ; preds = %186, %170
  %206 = load float, float* %18, align 4
  store float %206, float* %25, align 4
  %207 = load float, float* %19, align 4
  store float %207, float* %26, align 4
  %208 = load float, float* %20, align 4
  store float %208, float* %27, align 4
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  %212 = load %struct.gl_light*, %struct.gl_light** %211, align 8
  store %struct.gl_light* %212, %struct.gl_light** %23, align 8
  br label %213

213:                                              ; preds = %725, %205
  %214 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %215 = icmp ne %struct.gl_light* %214, null
  br i1 %215, label %216, label %729

216:                                              ; preds = %213
  %217 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %218 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %217, i32 0, i32 0
  %219 = load double*, double** %218, align 8
  %220 = getelementptr inbounds double, double* %219, i64 3
  %221 = load double, double* %220, align 8
  %222 = fcmp oeq double %221, 0.000000e+00
  br i1 %222, label %223, label %239

223:                                              ; preds = %216
  %224 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %225 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %224, i32 0, i32 1
  %226 = load float*, float** %225, align 8
  %227 = getelementptr inbounds float, float* %226, i64 0
  %228 = load float, float* %227, align 4
  store float %228, float* %36, align 4
  %229 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %230 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %229, i32 0, i32 1
  %231 = load float*, float** %230, align 8
  %232 = getelementptr inbounds float, float* %231, i64 1
  %233 = load float, float* %232, align 4
  store float %233, float* %37, align 4
  %234 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %235 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %234, i32 0, i32 1
  %236 = load float*, float** %235, align 8
  %237 = getelementptr inbounds float, float* %236, i64 2
  %238 = load float, float* %237, align 4
  store float %238, float* %38, align 4
  store float 1.000000e+00, float* %34, align 4
  br label %322

239:                                              ; preds = %216
  %240 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %241 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %240, i32 0, i32 0
  %242 = load double*, double** %241, align 8
  %243 = getelementptr inbounds double, double* %242, i64 0
  %244 = load double, double* %243, align 8
  %245 = load [4 x float]*, [4 x float]** %10, align 8
  %246 = load i64, i64* %13, align 8
  %247 = getelementptr inbounds [4 x float], [4 x float]* %245, i64 %246
  %248 = getelementptr inbounds [4 x float], [4 x float]* %247, i64 0, i64 0
  %249 = load float, float* %248, align 4
  %250 = fpext float %249 to double
  %251 = fsub double %244, %250
  %252 = fptrunc double %251 to float
  store float %252, float* %36, align 4
  %253 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %254 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %253, i32 0, i32 0
  %255 = load double*, double** %254, align 8
  %256 = getelementptr inbounds double, double* %255, i64 1
  %257 = load double, double* %256, align 8
  %258 = load [4 x float]*, [4 x float]** %10, align 8
  %259 = load i64, i64* %13, align 8
  %260 = getelementptr inbounds [4 x float], [4 x float]* %258, i64 %259
  %261 = getelementptr inbounds [4 x float], [4 x float]* %260, i64 0, i64 1
  %262 = load float, float* %261, align 4
  %263 = fpext float %262 to double
  %264 = fsub double %257, %263
  %265 = fptrunc double %264 to float
  store float %265, float* %37, align 4
  %266 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %267 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %266, i32 0, i32 0
  %268 = load double*, double** %267, align 8
  %269 = getelementptr inbounds double, double* %268, i64 2
  %270 = load double, double* %269, align 8
  %271 = load [4 x float]*, [4 x float]** %10, align 8
  %272 = load i64, i64* %13, align 8
  %273 = getelementptr inbounds [4 x float], [4 x float]* %271, i64 %272
  %274 = getelementptr inbounds [4 x float], [4 x float]* %273, i64 0, i64 2
  %275 = load float, float* %274, align 4
  %276 = fpext float %275 to double
  %277 = fsub double %270, %276
  %278 = fptrunc double %277 to float
  store float %278, float* %38, align 4
  %279 = load float, float* %36, align 4
  %280 = load float, float* %36, align 4
  %281 = fmul float %279, %280
  %282 = load float, float* %37, align 4
  %283 = load float, float* %37, align 4
  %284 = fmul float %282, %283
  %285 = fadd float %281, %284
  %286 = load float, float* %38, align 4
  %287 = load float, float* %38, align 4
  %288 = fmul float %286, %287
  %289 = fadd float %285, %288
  %290 = call float @GL_SQRT(float %289)
  store float %290, float* %40, align 4
  %291 = load float, float* %40, align 4
  %292 = fcmp ogt float %291, 0x3F50624DE0000000
  br i1 %292, label %293, label %305

293:                                              ; preds = %239
  %294 = load float, float* %40, align 4
  %295 = fdiv float 1.000000e+00, %294
  store float %295, float* %41, align 4
  %296 = load float, float* %41, align 4
  %297 = load float, float* %36, align 4
  %298 = fmul float %297, %296
  store float %298, float* %36, align 4
  %299 = load float, float* %41, align 4
  %300 = load float, float* %37, align 4
  %301 = fmul float %300, %299
  store float %301, float* %37, align 4
  %302 = load float, float* %41, align 4
  %303 = load float, float* %38, align 4
  %304 = fmul float %303, %302
  store float %304, float* %38, align 4
  br label %305

305:                                              ; preds = %293, %239
  %306 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %307 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %306, i32 0, i32 2
  %308 = load float, float* %307, align 8
  %309 = load float, float* %40, align 4
  %310 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %311 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %310, i32 0, i32 3
  %312 = load float, float* %311, align 4
  %313 = load float, float* %40, align 4
  %314 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %315 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %314, i32 0, i32 4
  %316 = load float, float* %315, align 8
  %317 = fmul float %313, %316
  %318 = fadd float %312, %317
  %319 = fmul float %309, %318
  %320 = fadd float %308, %319
  %321 = fdiv float 1.000000e+00, %320
  store float %321, float* %34, align 4
  br label %322

322:                                              ; preds = %305, %223
  %323 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %324 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %323, i32 0, i32 5
  %325 = load float, float* %324, align 4
  %326 = fcmp oeq float %325, 1.800000e+02
  br i1 %326, label %327, label %328

327:                                              ; preds = %322
  store float 1.000000e+00, float* %35, align 4
  br label %402

328:                                              ; preds = %322
  %329 = load float, float* %36, align 4
  %330 = fneg float %329
  store float %330, float* %42, align 4
  %331 = load float, float* %37, align 4
  %332 = fneg float %331
  store float %332, float* %43, align 4
  %333 = load float, float* %38, align 4
  %334 = fneg float %333
  store float %334, float* %44, align 4
  %335 = load float, float* %42, align 4
  %336 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %337 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %336, i32 0, i32 6
  %338 = load float*, float** %337, align 8
  %339 = getelementptr inbounds float, float* %338, i64 0
  %340 = load float, float* %339, align 4
  %341 = fmul float %335, %340
  %342 = load float, float* %43, align 4
  %343 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %344 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %343, i32 0, i32 6
  %345 = load float*, float** %344, align 8
  %346 = getelementptr inbounds float, float* %345, i64 1
  %347 = load float, float* %346, align 4
  %348 = fmul float %342, %347
  %349 = fadd float %341, %348
  %350 = load float, float* %44, align 4
  %351 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %352 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %351, i32 0, i32 6
  %353 = load float*, float** %352, align 8
  %354 = getelementptr inbounds float, float* %353, i64 2
  %355 = load float, float* %354, align 4
  %356 = fmul float %350, %355
  %357 = fadd float %349, %356
  store float %357, float* %45, align 4
  %358 = load float, float* %45, align 4
  %359 = fcmp ole float %358, 0.000000e+00
  br i1 %359, label %366, label %360

360:                                              ; preds = %328
  %361 = load float, float* %45, align 4
  %362 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %363 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %362, i32 0, i32 7
  %364 = load float, float* %363, align 8
  %365 = fcmp olt float %361, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %360, %328
  store float 0.000000e+00, float* %35, align 4
  br label %401

367:                                              ; preds = %360
  %368 = load float, float* %45, align 4
  %369 = load i32, i32* @EXP_TABLE_SIZE, align 4
  %370 = sub nsw i32 %369, 1
  %371 = sitofp i32 %370 to float
  %372 = fmul float %368, %371
  %373 = fpext float %372 to double
  store double %373, double* %46, align 8
  %374 = load double, double* %46, align 8
  %375 = fptosi double %374 to i32
  store i32 %375, i32* %47, align 4
  %376 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %377 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %376, i32 0, i32 8
  %378 = load double**, double*** %377, align 8
  %379 = load i32, i32* %47, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds double*, double** %378, i64 %380
  %382 = load double*, double** %381, align 8
  %383 = getelementptr inbounds double, double* %382, i64 0
  %384 = load double, double* %383, align 8
  %385 = load double, double* %46, align 8
  %386 = load i32, i32* %47, align 4
  %387 = sitofp i32 %386 to double
  %388 = fsub double %385, %387
  %389 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %390 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %389, i32 0, i32 8
  %391 = load double**, double*** %390, align 8
  %392 = load i32, i32* %47, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds double*, double** %391, i64 %393
  %395 = load double*, double** %394, align 8
  %396 = getelementptr inbounds double, double* %395, i64 1
  %397 = load double, double* %396, align 8
  %398 = fmul double %388, %397
  %399 = fadd double %384, %398
  %400 = fptrunc double %399 to float
  store float %400, float* %35, align 4
  br label %401

401:                                              ; preds = %367, %366
  br label %402

402:                                              ; preds = %401, %327
  %403 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %404 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %403, i32 0, i32 1
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 0
  %407 = load i32, i32* %406, align 4
  %408 = sitofp i32 %407 to float
  %409 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %410 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %409, i32 0, i32 9
  %411 = load float*, float** %410, align 8
  %412 = getelementptr inbounds float, float* %411, i64 0
  %413 = load float, float* %412, align 4
  %414 = fmul float %408, %413
  store float %414, float* %31, align 4
  %415 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %416 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %415, i32 0, i32 1
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 1
  %419 = load i32, i32* %418, align 4
  %420 = sitofp i32 %419 to float
  %421 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %422 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %421, i32 0, i32 9
  %423 = load float*, float** %422, align 8
  %424 = getelementptr inbounds float, float* %423, i64 1
  %425 = load float, float* %424, align 4
  %426 = fmul float %420, %425
  store float %426, float* %32, align 4
  %427 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %428 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %427, i32 0, i32 1
  %429 = load i32*, i32** %428, align 8
  %430 = getelementptr inbounds i32, i32* %429, i64 2
  %431 = load i32, i32* %430, align 4
  %432 = sitofp i32 %431 to float
  %433 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %434 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %433, i32 0, i32 9
  %435 = load float*, float** %434, align 8
  %436 = getelementptr inbounds float, float* %435, i64 2
  %437 = load float, float* %436, align 4
  %438 = fmul float %432, %437
  store float %438, float* %33, align 4
  %439 = load float, float* %28, align 4
  %440 = load float, float* %36, align 4
  %441 = fmul float %439, %440
  %442 = load float, float* %29, align 4
  %443 = load float, float* %37, align 4
  %444 = fmul float %442, %443
  %445 = fadd float %441, %444
  %446 = load float, float* %30, align 4
  %447 = load float, float* %38, align 4
  %448 = fmul float %446, %447
  %449 = fadd float %445, %448
  store float %449, float* %39, align 4
  %450 = load float, float* %39, align 4
  %451 = fcmp ole float %450, 0.000000e+00
  br i1 %451, label %452, label %471

452:                                              ; preds = %402
  %453 = load float, float* %34, align 4
  %454 = load float, float* %35, align 4
  %455 = fmul float %453, %454
  store float %455, float* %48, align 4
  %456 = load float, float* %48, align 4
  %457 = load float, float* %31, align 4
  %458 = fmul float %456, %457
  %459 = load float, float* %25, align 4
  %460 = fadd float %459, %458
  store float %460, float* %25, align 4
  %461 = load float, float* %48, align 4
  %462 = load float, float* %32, align 4
  %463 = fmul float %461, %462
  %464 = load float, float* %26, align 4
  %465 = fadd float %464, %463
  store float %465, float* %26, align 4
  %466 = load float, float* %48, align 4
  %467 = load float, float* %33, align 4
  %468 = fmul float %466, %467
  %469 = load float, float* %27, align 4
  %470 = fadd float %469, %468
  store float %470, float* %27, align 4
  br label %724

471:                                              ; preds = %402
  %472 = load float, float* %39, align 4
  %473 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %474 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %473, i32 0, i32 2
  %475 = load float*, float** %474, align 8
  %476 = getelementptr inbounds float, float* %475, i64 0
  %477 = load float, float* %476, align 4
  %478 = fmul float %472, %477
  %479 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %480 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %479, i32 0, i32 10
  %481 = load float*, float** %480, align 8
  %482 = getelementptr inbounds float, float* %481, i64 0
  %483 = load float, float* %482, align 4
  %484 = fmul float %478, %483
  store float %484, float* %49, align 4
  %485 = load float, float* %39, align 4
  %486 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %487 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %486, i32 0, i32 2
  %488 = load float*, float** %487, align 8
  %489 = getelementptr inbounds float, float* %488, i64 1
  %490 = load float, float* %489, align 4
  %491 = fmul float %485, %490
  %492 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %493 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %492, i32 0, i32 10
  %494 = load float*, float** %493, align 8
  %495 = getelementptr inbounds float, float* %494, i64 1
  %496 = load float, float* %495, align 4
  %497 = fmul float %491, %496
  store float %497, float* %50, align 4
  %498 = load float, float* %39, align 4
  %499 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %500 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %499, i32 0, i32 2
  %501 = load float*, float** %500, align 8
  %502 = getelementptr inbounds float, float* %501, i64 2
  %503 = load float, float* %502, align 4
  %504 = fmul float %498, %503
  %505 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %506 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %505, i32 0, i32 10
  %507 = load float*, float** %506, align 8
  %508 = getelementptr inbounds float, float* %507, i64 2
  %509 = load float, float* %508, align 4
  %510 = fmul float %504, %509
  store float %510, float* %51, align 4
  %511 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %512 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %513, i32 0, i32 1
  %515 = load i64, i64* %514, align 8
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %569

517:                                              ; preds = %471
  %518 = load [4 x float]*, [4 x float]** %10, align 8
  %519 = load i64, i64* %13, align 8
  %520 = getelementptr inbounds [4 x float], [4 x float]* %518, i64 %519
  %521 = getelementptr inbounds [4 x float], [4 x float]* %520, i64 0, i64 0
  %522 = load float, float* %521, align 4
  store float %522, float* %60, align 4
  %523 = load [4 x float]*, [4 x float]** %10, align 8
  %524 = load i64, i64* %13, align 8
  %525 = getelementptr inbounds [4 x float], [4 x float]* %523, i64 %524
  %526 = getelementptr inbounds [4 x float], [4 x float]* %525, i64 0, i64 1
  %527 = load float, float* %526, align 4
  store float %527, float* %61, align 4
  %528 = load [4 x float]*, [4 x float]** %10, align 8
  %529 = load i64, i64* %13, align 8
  %530 = getelementptr inbounds [4 x float], [4 x float]* %528, i64 %529
  %531 = getelementptr inbounds [4 x float], [4 x float]* %530, i64 0, i64 2
  %532 = load float, float* %531, align 4
  store float %532, float* %62, align 4
  %533 = load float, float* %60, align 4
  %534 = load float, float* %60, align 4
  %535 = fmul float %533, %534
  %536 = load float, float* %61, align 4
  %537 = load float, float* %61, align 4
  %538 = fmul float %536, %537
  %539 = fadd float %535, %538
  %540 = load float, float* %62, align 4
  %541 = load float, float* %62, align 4
  %542 = fmul float %540, %541
  %543 = fadd float %539, %542
  %544 = call float @GL_SQRT(float %543)
  store float %544, float* %63, align 4
  %545 = load float, float* %63, align 4
  %546 = fcmp ogt float %545, 0x3F1A36E2E0000000
  br i1 %546, label %547, label %559

547:                                              ; preds = %517
  %548 = load float, float* %63, align 4
  %549 = fdiv float 1.000000e+00, %548
  store float %549, float* %64, align 4
  %550 = load float, float* %64, align 4
  %551 = load float, float* %60, align 4
  %552 = fmul float %551, %550
  store float %552, float* %60, align 4
  %553 = load float, float* %64, align 4
  %554 = load float, float* %61, align 4
  %555 = fmul float %554, %553
  store float %555, float* %61, align 4
  %556 = load float, float* %64, align 4
  %557 = load float, float* %62, align 4
  %558 = fmul float %557, %556
  store float %558, float* %62, align 4
  br label %559

559:                                              ; preds = %547, %517
  %560 = load float, float* %36, align 4
  %561 = load float, float* %60, align 4
  %562 = fsub float %560, %561
  store float %562, float* %55, align 4
  %563 = load float, float* %37, align 4
  %564 = load float, float* %61, align 4
  %565 = fsub float %563, %564
  store float %565, float* %56, align 4
  %566 = load float, float* %38, align 4
  %567 = load float, float* %62, align 4
  %568 = fsub float %566, %567
  store float %568, float* %57, align 4
  br label %574

569:                                              ; preds = %471
  %570 = load float, float* %36, align 4
  store float %570, float* %55, align 4
  %571 = load float, float* %37, align 4
  store float %571, float* %56, align 4
  %572 = load float, float* %38, align 4
  %573 = fadd float %572, 1.000000e+00
  store float %573, float* %57, align 4
  br label %574

574:                                              ; preds = %569, %559
  %575 = load float, float* %28, align 4
  %576 = load float, float* %55, align 4
  %577 = fmul float %575, %576
  %578 = load float, float* %29, align 4
  %579 = load float, float* %56, align 4
  %580 = fmul float %578, %579
  %581 = fadd float %577, %580
  %582 = load float, float* %30, align 4
  %583 = load float, float* %57, align 4
  %584 = fmul float %582, %583
  %585 = fadd float %581, %584
  store float %585, float* %58, align 4
  %586 = load float, float* %58, align 4
  %587 = fcmp ole float %586, 0.000000e+00
  br i1 %587, label %588, label %589

588:                                              ; preds = %574
  store float 0.000000e+00, float* %52, align 4
  store float 0.000000e+00, float* %53, align 4
  store float 0.000000e+00, float* %54, align 4
  br label %693

589:                                              ; preds = %574
  %590 = load float, float* %58, align 4
  %591 = load float, float* %55, align 4
  %592 = load float, float* %55, align 4
  %593 = fmul float %591, %592
  %594 = load float, float* %56, align 4
  %595 = load float, float* %56, align 4
  %596 = fmul float %594, %595
  %597 = fadd float %593, %596
  %598 = load float, float* %57, align 4
  %599 = load float, float* %57, align 4
  %600 = fmul float %598, %599
  %601 = fadd float %597, %600
  %602 = call float @GL_SQRT(float %601)
  %603 = fdiv float %590, %602
  store float %603, float* %58, align 4
  %604 = load float, float* %58, align 4
  %605 = fcmp ogt float %604, 1.000000e+00
  br i1 %605, label %606, label %612

606:                                              ; preds = %589
  %607 = load float, float* %58, align 4
  %608 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %609 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %608, i32 0, i32 5
  %610 = load i32, i32* %609, align 8
  %611 = call float @pow(float %607, i32 %610)
  store float %611, float* %65, align 4
  br label %647

612:                                              ; preds = %589
  %613 = load float, float* %58, align 4
  %614 = load i32, i32* @SHINE_TABLE_SIZE, align 4
  %615 = sub nsw i32 %614, 1
  %616 = sitofp i32 %615 to float
  %617 = fmul float %613, %616
  %618 = fptosi float %617 to i32
  store i32 %618, i32* %66, align 4
  %619 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %620 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %619, i32 0, i32 3
  %621 = load float*, float** %620, align 8
  %622 = load i32, i32* %66, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds float, float* %621, i64 %623
  %625 = load float, float* %624, align 4
  %626 = fcmp olt float %625, 0.000000e+00
  br i1 %626, label %627, label %639

627:                                              ; preds = %612
  %628 = load float, float* %58, align 4
  %629 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %630 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %629, i32 0, i32 5
  %631 = load i32, i32* %630, align 8
  %632 = call float @gl_pow(float %628, i32 %631)
  %633 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %634 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %633, i32 0, i32 3
  %635 = load float*, float** %634, align 8
  %636 = load i32, i32* %66, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds float, float* %635, i64 %637
  store float %632, float* %638, align 4
  br label %639

639:                                              ; preds = %627, %612
  %640 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %641 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %640, i32 0, i32 3
  %642 = load float*, float** %641, align 8
  %643 = load i32, i32* %66, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds float, float* %642, i64 %644
  %646 = load float, float* %645, align 4
  store float %646, float* %65, align 4
  br label %647

647:                                              ; preds = %639, %606
  %648 = load float, float* %65, align 4
  %649 = fpext float %648 to double
  %650 = fcmp olt double %649, 1.000000e-10
  br i1 %650, label %651, label %652

651:                                              ; preds = %647
  store float 0.000000e+00, float* %52, align 4
  store float 0.000000e+00, float* %53, align 4
  store float 0.000000e+00, float* %54, align 4
  br label %692

652:                                              ; preds = %647
  %653 = load float, float* %65, align 4
  %654 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %655 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %654, i32 0, i32 4
  %656 = load float*, float** %655, align 8
  %657 = getelementptr inbounds float, float* %656, i64 0
  %658 = load float, float* %657, align 4
  %659 = fmul float %653, %658
  %660 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %661 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %660, i32 0, i32 11
  %662 = load float*, float** %661, align 8
  %663 = getelementptr inbounds float, float* %662, i64 0
  %664 = load float, float* %663, align 4
  %665 = fmul float %659, %664
  store float %665, float* %52, align 4
  %666 = load float, float* %65, align 4
  %667 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %668 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %667, i32 0, i32 4
  %669 = load float*, float** %668, align 8
  %670 = getelementptr inbounds float, float* %669, i64 1
  %671 = load float, float* %670, align 4
  %672 = fmul float %666, %671
  %673 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %674 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %673, i32 0, i32 11
  %675 = load float*, float** %674, align 8
  %676 = getelementptr inbounds float, float* %675, i64 1
  %677 = load float, float* %676, align 4
  %678 = fmul float %672, %677
  store float %678, float* %53, align 4
  %679 = load float, float* %65, align 4
  %680 = load %struct.gl_material*, %struct.gl_material** %24, align 8
  %681 = getelementptr inbounds %struct.gl_material, %struct.gl_material* %680, i32 0, i32 4
  %682 = load float*, float** %681, align 8
  %683 = getelementptr inbounds float, float* %682, i64 2
  %684 = load float, float* %683, align 4
  %685 = fmul float %679, %684
  %686 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %687 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %686, i32 0, i32 11
  %688 = load float*, float** %687, align 8
  %689 = getelementptr inbounds float, float* %688, i64 2
  %690 = load float, float* %689, align 4
  %691 = fmul float %685, %690
  store float %691, float* %54, align 4
  br label %692

692:                                              ; preds = %652, %651
  br label %693

693:                                              ; preds = %692, %588
  %694 = load float, float* %34, align 4
  %695 = load float, float* %35, align 4
  %696 = fmul float %694, %695
  store float %696, float* %59, align 4
  %697 = load float, float* %59, align 4
  %698 = load float, float* %31, align 4
  %699 = load float, float* %49, align 4
  %700 = fadd float %698, %699
  %701 = load float, float* %52, align 4
  %702 = fadd float %700, %701
  %703 = fmul float %697, %702
  %704 = load float, float* %25, align 4
  %705 = fadd float %704, %703
  store float %705, float* %25, align 4
  %706 = load float, float* %59, align 4
  %707 = load float, float* %32, align 4
  %708 = load float, float* %50, align 4
  %709 = fadd float %707, %708
  %710 = load float, float* %53, align 4
  %711 = fadd float %709, %710
  %712 = fmul float %706, %711
  %713 = load float, float* %26, align 4
  %714 = fadd float %713, %712
  store float %714, float* %26, align 4
  %715 = load float, float* %59, align 4
  %716 = load float, float* %33, align 4
  %717 = load float, float* %51, align 4
  %718 = fadd float %716, %717
  %719 = load float, float* %54, align 4
  %720 = fadd float %718, %719
  %721 = fmul float %715, %720
  %722 = load float, float* %27, align 4
  %723 = fadd float %722, %721
  store float %723, float* %27, align 4
  br label %724

724:                                              ; preds = %693, %452
  br label %725

725:                                              ; preds = %724
  %726 = load %struct.gl_light*, %struct.gl_light** %23, align 8
  %727 = getelementptr inbounds %struct.gl_light, %struct.gl_light* %726, i32 0, i32 12
  %728 = load %struct.gl_light*, %struct.gl_light** %727, align 8
  store %struct.gl_light* %728, %struct.gl_light** %23, align 8
  br label %213

729:                                              ; preds = %213
  %730 = load float, float* %25, align 4
  %731 = call float @CLAMP(float %730, float 0.000000e+00, float 1.000000e+00)
  %732 = load float, float* %14, align 4
  %733 = fmul float %731, %732
  %734 = call i64 @FloatToInt(float %733)
  %735 = load [4 x i64]*, [4 x i64]** %12, align 8
  %736 = load i64, i64* %13, align 8
  %737 = getelementptr inbounds [4 x i64], [4 x i64]* %735, i64 %736
  %738 = getelementptr inbounds [4 x i64], [4 x i64]* %737, i64 0, i64 0
  store i64 %734, i64* %738, align 8
  %739 = load float, float* %26, align 4
  %740 = call float @CLAMP(float %739, float 0.000000e+00, float 1.000000e+00)
  %741 = load float, float* %15, align 4
  %742 = fmul float %740, %741
  %743 = call i64 @FloatToInt(float %742)
  %744 = load [4 x i64]*, [4 x i64]** %12, align 8
  %745 = load i64, i64* %13, align 8
  %746 = getelementptr inbounds [4 x i64], [4 x i64]* %744, i64 %745
  %747 = getelementptr inbounds [4 x i64], [4 x i64]* %746, i64 0, i64 1
  store i64 %743, i64* %747, align 8
  %748 = load float, float* %27, align 4
  %749 = call float @CLAMP(float %748, float 0.000000e+00, float 1.000000e+00)
  %750 = load float, float* %16, align 4
  %751 = fmul float %749, %750
  %752 = call i64 @FloatToInt(float %751)
  %753 = load [4 x i64]*, [4 x i64]** %12, align 8
  %754 = load i64, i64* %13, align 8
  %755 = getelementptr inbounds [4 x i64], [4 x i64]* %753, i64 %754
  %756 = getelementptr inbounds [4 x i64], [4 x i64]* %755, i64 0, i64 2
  store i64 %752, i64* %756, align 8
  %757 = load i64, i64* %22, align 8
  %758 = load [4 x i64]*, [4 x i64]** %12, align 8
  %759 = load i64, i64* %13, align 8
  %760 = getelementptr inbounds [4 x i64], [4 x i64]* %758, i64 %759
  %761 = getelementptr inbounds [4 x i64], [4 x i64]* %760, i64 0, i64 3
  store i64 %757, i64* %761, align 8
  br label %762

762:                                              ; preds = %729
  %763 = load i64, i64* %13, align 8
  %764 = add i64 %763, 1
  store i64 %764, i64* %13, align 8
  br label %163

765:                                              ; preds = %163
  ret void
}

declare dso_local float @CLAMP(float, float, float) #1

declare dso_local float @GL_SQRT(float) #1

declare dso_local float @pow(float, i32) #1

declare dso_local float @gl_pow(float, i32) #1

declare dso_local i64 @FloatToInt(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
