; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_fog.c_gl_fog_color_pixels.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_fog.c_gl_fog_color_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { double*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { double*, i32, double, float, double }
%struct.TYPE_8__ = type { double, float }
%struct.TYPE_7__ = type { double, double, double }

@.str = private unnamed_addr constant [36 x i8] c"Bad fog mode in gl_fog_color_pixels\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_fog_color_pixels(%struct.TYPE_10__* %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca double, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load double*, double** %39, align 8
  %41 = getelementptr inbounds double, double* %40, i64 10
  %42 = load double, double* %41, align 8
  store double %42, double* %15, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load double*, double** %44, align 8
  %46 = getelementptr inbounds double, double* %45, i64 14
  %47 = load double, double* %46, align 8
  store double %47, double* %16, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load double*, double** %50, align 8
  %52 = getelementptr inbounds double, double* %51, i64 0
  %53 = load double, double* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load double, double* %57, align 8
  %59 = fmul double %53, %58
  store double %59, double* %18, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load double*, double** %62, align 8
  %64 = getelementptr inbounds double, double* %63, i64 1
  %65 = load double, double* %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 3
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load double, double* %69, align 8
  %71 = fmul double %65, %70
  store double %71, double* %19, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load double*, double** %74, align 8
  %76 = getelementptr inbounds double, double* %75, i64 2
  %77 = load double, double* %76, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load double, double* %81, align 8
  %83 = fmul double %77, %82
  store double %83, double* %20, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load double, double* %86, align 8
  store double %87, double* %21, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load float, float* %90, align 8
  %92 = fdiv float 1.000000e+00, %91
  %93 = fpext float %92 to double
  store double %93, double* %22, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %382 [
    i32 128, label %98
    i32 130, label %198
    i32 129, label %286
  ]

98:                                               ; preds = %7
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load double, double* %101, align 8
  store double %102, double* %23, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  %106 = load double, double* %105, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 3
  %110 = load float, float* %109, align 8
  %111 = fpext float %110 to double
  %112 = fsub double %106, %111
  %113 = fdiv double 1.000000e+00, %112
  store double %113, double* %24, align 8
  store i64 0, i64* %17, align 8
  br label %114

114:                                              ; preds = %194, %98
  %115 = load i64, i64* %17, align 8
  %116 = load i64, i64* %9, align 8
  %117 = icmp ult i64 %115, %116
  br i1 %117, label %118, label %197

118:                                              ; preds = %114
  %119 = load i32*, i32** %10, align 8
  %120 = load i64, i64* %17, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sitofp i32 %122 to double
  %124 = load double, double* %21, align 8
  %125 = fsub double %123, %124
  %126 = load double, double* %22, align 8
  %127 = fmul double %125, %126
  store double %127, double* %25, align 8
  %128 = load double, double* %16, align 8
  %129 = fneg double %128
  %130 = load double, double* %15, align 8
  %131 = load double, double* %25, align 8
  %132 = fadd double %130, %131
  %133 = fdiv double %129, %132
  store double %133, double* %26, align 8
  %134 = load double, double* %26, align 8
  %135 = fcmp olt double %134, 0.000000e+00
  br i1 %135, label %136, label %139

136:                                              ; preds = %118
  %137 = load double, double* %26, align 8
  %138 = fneg double %137
  store double %138, double* %26, align 8
  br label %139

139:                                              ; preds = %136, %118
  %140 = load double, double* %23, align 8
  %141 = load double, double* %26, align 8
  %142 = fsub double %140, %141
  %143 = load double, double* %24, align 8
  %144 = fmul double %142, %143
  store double %144, double* %27, align 8
  %145 = load double, double* %27, align 8
  %146 = call double @CLAMP(double %145, float 0.000000e+00, float 1.000000e+00)
  store double %146, double* %27, align 8
  %147 = load double, double* %27, align 8
  %148 = fsub double 1.000000e+00, %147
  store double %148, double* %28, align 8
  %149 = load double, double* %27, align 8
  %150 = load i32*, i32** %11, align 8
  %151 = load i64, i64* %17, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sitofp i32 %153 to double
  %155 = fmul double %149, %154
  %156 = load double, double* %28, align 8
  %157 = load double, double* %18, align 8
  %158 = fmul double %156, %157
  %159 = fadd double %155, %158
  %160 = fptosi double %159 to i32
  %161 = load i32*, i32** %11, align 8
  %162 = load i64, i64* %17, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32 %160, i32* %163, align 4
  %164 = load double, double* %27, align 8
  %165 = load i32*, i32** %12, align 8
  %166 = load i64, i64* %17, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sitofp i32 %168 to double
  %170 = fmul double %164, %169
  %171 = load double, double* %28, align 8
  %172 = load double, double* %19, align 8
  %173 = fmul double %171, %172
  %174 = fadd double %170, %173
  %175 = fptosi double %174 to i32
  %176 = load i32*, i32** %12, align 8
  %177 = load i64, i64* %17, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32 %175, i32* %178, align 4
  %179 = load double, double* %27, align 8
  %180 = load i32*, i32** %13, align 8
  %181 = load i64, i64* %17, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = sitofp i32 %183 to double
  %185 = fmul double %179, %184
  %186 = load double, double* %28, align 8
  %187 = load double, double* %20, align 8
  %188 = fmul double %186, %187
  %189 = fadd double %185, %188
  %190 = fptosi double %189 to i32
  %191 = load i32*, i32** %13, align 8
  %192 = load i64, i64* %17, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32 %190, i32* %193, align 4
  br label %194

194:                                              ; preds = %139
  %195 = load i64, i64* %17, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %17, align 8
  br label %114

197:                                              ; preds = %114
  br label %385

198:                                              ; preds = %7
  store i64 0, i64* %17, align 8
  br label %199

199:                                              ; preds = %282, %198
  %200 = load i64, i64* %17, align 8
  %201 = load i64, i64* %9, align 8
  %202 = icmp ult i64 %200, %201
  br i1 %202, label %203, label %285

203:                                              ; preds = %199
  %204 = load i32*, i32** %10, align 8
  %205 = load i64, i64* %17, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = sitofp i32 %207 to double
  %209 = load double, double* %21, align 8
  %210 = fsub double %208, %209
  %211 = load double, double* %22, align 8
  %212 = fmul double %210, %211
  store double %212, double* %29, align 8
  %213 = load double, double* %16, align 8
  %214 = fneg double %213
  %215 = load double, double* %15, align 8
  %216 = load double, double* %29, align 8
  %217 = fadd double %215, %216
  %218 = fdiv double %214, %217
  store double %218, double* %30, align 8
  %219 = load double, double* %30, align 8
  %220 = fcmp olt double %219, 0.000000e+00
  br i1 %220, label %221, label %224

221:                                              ; preds = %203
  %222 = load double, double* %30, align 8
  %223 = fneg double %222
  store double %223, double* %30, align 8
  br label %224

224:                                              ; preds = %221, %203
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 4
  %228 = load double, double* %227, align 8
  %229 = fneg double %228
  %230 = load double, double* %30, align 8
  %231 = fmul double %229, %230
  %232 = call double @exp(double %231) #3
  store double %232, double* %31, align 8
  %233 = load double, double* %31, align 8
  %234 = call double @CLAMP(double %233, float 0.000000e+00, float 1.000000e+00)
  store double %234, double* %31, align 8
  %235 = load double, double* %31, align 8
  %236 = fsub double 1.000000e+00, %235
  store double %236, double* %32, align 8
  %237 = load double, double* %31, align 8
  %238 = load i32*, i32** %11, align 8
  %239 = load i64, i64* %17, align 8
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = sitofp i32 %241 to double
  %243 = fmul double %237, %242
  %244 = load double, double* %32, align 8
  %245 = load double, double* %18, align 8
  %246 = fmul double %244, %245
  %247 = fadd double %243, %246
  %248 = fptosi double %247 to i32
  %249 = load i32*, i32** %11, align 8
  %250 = load i64, i64* %17, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  store i32 %248, i32* %251, align 4
  %252 = load double, double* %31, align 8
  %253 = load i32*, i32** %12, align 8
  %254 = load i64, i64* %17, align 8
  %255 = getelementptr inbounds i32, i32* %253, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = sitofp i32 %256 to double
  %258 = fmul double %252, %257
  %259 = load double, double* %32, align 8
  %260 = load double, double* %19, align 8
  %261 = fmul double %259, %260
  %262 = fadd double %258, %261
  %263 = fptosi double %262 to i32
  %264 = load i32*, i32** %12, align 8
  %265 = load i64, i64* %17, align 8
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  store i32 %263, i32* %266, align 4
  %267 = load double, double* %31, align 8
  %268 = load i32*, i32** %13, align 8
  %269 = load i64, i64* %17, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = sitofp i32 %271 to double
  %273 = fmul double %267, %272
  %274 = load double, double* %32, align 8
  %275 = load double, double* %20, align 8
  %276 = fmul double %274, %275
  %277 = fadd double %273, %276
  %278 = fptosi double %277 to i32
  %279 = load i32*, i32** %13, align 8
  %280 = load i64, i64* %17, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  store i32 %278, i32* %281, align 4
  br label %282

282:                                              ; preds = %224
  %283 = load i64, i64* %17, align 8
  %284 = add i64 %283, 1
  store i64 %284, i64* %17, align 8
  br label %199

285:                                              ; preds = %199
  br label %385

286:                                              ; preds = %7
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 4
  %290 = load double, double* %289, align 8
  %291 = fneg double %290
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %293, i32 0, i32 4
  %295 = load double, double* %294, align 8
  %296 = fmul double %291, %295
  store double %296, double* %33, align 8
  store i64 0, i64* %17, align 8
  br label %297

297:                                              ; preds = %378, %286
  %298 = load i64, i64* %17, align 8
  %299 = load i64, i64* %9, align 8
  %300 = icmp ult i64 %298, %299
  br i1 %300, label %301, label %381

301:                                              ; preds = %297
  %302 = load i32*, i32** %10, align 8
  %303 = load i64, i64* %17, align 8
  %304 = getelementptr inbounds i32, i32* %302, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = sitofp i32 %305 to double
  %307 = load double, double* %21, align 8
  %308 = fsub double %306, %307
  %309 = load double, double* %22, align 8
  %310 = fmul double %308, %309
  store double %310, double* %34, align 8
  %311 = load double, double* %16, align 8
  %312 = fneg double %311
  %313 = load double, double* %15, align 8
  %314 = load double, double* %34, align 8
  %315 = fadd double %313, %314
  %316 = fdiv double %312, %315
  store double %316, double* %35, align 8
  %317 = load double, double* %35, align 8
  %318 = fcmp olt double %317, 0.000000e+00
  br i1 %318, label %319, label %322

319:                                              ; preds = %301
  %320 = load double, double* %35, align 8
  %321 = fneg double %320
  store double %321, double* %35, align 8
  br label %322

322:                                              ; preds = %319, %301
  %323 = load double, double* %33, align 8
  %324 = load double, double* %35, align 8
  %325 = fmul double %323, %324
  %326 = load double, double* %35, align 8
  %327 = fmul double %325, %326
  %328 = call double @exp(double %327) #3
  store double %328, double* %36, align 8
  %329 = load double, double* %36, align 8
  %330 = call double @CLAMP(double %329, float 0.000000e+00, float 1.000000e+00)
  store double %330, double* %36, align 8
  %331 = load double, double* %36, align 8
  %332 = fsub double 1.000000e+00, %331
  store double %332, double* %37, align 8
  %333 = load double, double* %36, align 8
  %334 = load i32*, i32** %11, align 8
  %335 = load i64, i64* %17, align 8
  %336 = getelementptr inbounds i32, i32* %334, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = sitofp i32 %337 to double
  %339 = fmul double %333, %338
  %340 = load double, double* %37, align 8
  %341 = load double, double* %18, align 8
  %342 = fmul double %340, %341
  %343 = fadd double %339, %342
  %344 = fptosi double %343 to i32
  %345 = load i32*, i32** %11, align 8
  %346 = load i64, i64* %17, align 8
  %347 = getelementptr inbounds i32, i32* %345, i64 %346
  store i32 %344, i32* %347, align 4
  %348 = load double, double* %36, align 8
  %349 = load i32*, i32** %12, align 8
  %350 = load i64, i64* %17, align 8
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = sitofp i32 %352 to double
  %354 = fmul double %348, %353
  %355 = load double, double* %37, align 8
  %356 = load double, double* %19, align 8
  %357 = fmul double %355, %356
  %358 = fadd double %354, %357
  %359 = fptosi double %358 to i32
  %360 = load i32*, i32** %12, align 8
  %361 = load i64, i64* %17, align 8
  %362 = getelementptr inbounds i32, i32* %360, i64 %361
  store i32 %359, i32* %362, align 4
  %363 = load double, double* %36, align 8
  %364 = load i32*, i32** %13, align 8
  %365 = load i64, i64* %17, align 8
  %366 = getelementptr inbounds i32, i32* %364, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = sitofp i32 %367 to double
  %369 = fmul double %363, %368
  %370 = load double, double* %37, align 8
  %371 = load double, double* %20, align 8
  %372 = fmul double %370, %371
  %373 = fadd double %369, %372
  %374 = fptosi double %373 to i32
  %375 = load i32*, i32** %13, align 8
  %376 = load i64, i64* %17, align 8
  %377 = getelementptr inbounds i32, i32* %375, i64 %376
  store i32 %374, i32* %377, align 4
  br label %378

378:                                              ; preds = %322
  %379 = load i64, i64* %17, align 8
  %380 = add i64 %379, 1
  store i64 %380, i64* %17, align 8
  br label %297

381:                                              ; preds = %297
  br label %385

382:                                              ; preds = %7
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %384 = call i32 @gl_problem(%struct.TYPE_10__* %383, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %385

385:                                              ; preds = %382, %381, %285, %197
  ret void
}

declare dso_local double @CLAMP(double, float, float) #1

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

declare dso_local i32 @gl_problem(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
