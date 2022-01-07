; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_clip.c_gl_userclip_line.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_clip.c_gl_userclip_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.vertex_buffer* }
%struct.TYPE_5__ = type { double**, i64* }
%struct.vertex_buffer = type { double**, i64 }

@MAX_CLIP_PLANES = common dso_local global i64 0, align 8
@EYE_SPACE = common dso_local global i32 0, align 4
@VB_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gl_userclip_line(%struct.TYPE_6__* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.vertex_buffer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
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
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load %struct.vertex_buffer*, %struct.vertex_buffer** %29, align 8
  store %struct.vertex_buffer* %30, %struct.vertex_buffer** %8, align 8
  %31 = load i64*, i64** %6, align 8
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %622, %3
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @MAX_CLIP_PLANES, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %625

39:                                               ; preds = %35
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %621

48:                                               ; preds = %39
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load double**, double*** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds double*, double** %52, i64 %53
  %55 = load double*, double** %54, align 8
  %56 = getelementptr inbounds double, double* %55, i64 0
  %57 = load double, double* %56, align 8
  store double %57, double* %12, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load double**, double*** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds double*, double** %61, i64 %62
  %64 = load double*, double** %63, align 8
  %65 = getelementptr inbounds double, double* %64, i64 1
  %66 = load double, double* %65, align 8
  store double %66, double* %13, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load double**, double*** %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = getelementptr inbounds double*, double** %70, i64 %71
  %73 = load double*, double** %72, align 8
  %74 = getelementptr inbounds double, double* %73, i64 2
  %75 = load double, double* %74, align 8
  store double %75, double* %14, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load double**, double*** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds double*, double** %79, i64 %80
  %82 = load double*, double** %81, align 8
  %83 = getelementptr inbounds double, double* %82, i64 3
  %84 = load double, double* %83, align 8
  store double %84, double* %15, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load double, double* %12, align 8
  %87 = load double, double* %13, align 8
  %88 = load double, double* %14, align 8
  %89 = load double, double* %15, align 8
  %90 = call i64 @OUTSIDE(i64 %85, double %86, double %87, double %88, double %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %356

92:                                               ; preds = %48
  %93 = load i64, i64* %11, align 8
  %94 = load double, double* %12, align 8
  %95 = load double, double* %13, align 8
  %96 = load double, double* %14, align 8
  %97 = load double, double* %15, align 8
  %98 = call i64 @OUTSIDE(i64 %93, double %94, double %95, double %96, double %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i64 0, i64* %4, align 8
  br label %630

101:                                              ; preds = %92
  %102 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %103 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %102, i32 0, i32 0
  %104 = load double**, double*** %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = getelementptr inbounds double*, double** %104, i64 %105
  %107 = load double*, double** %106, align 8
  %108 = getelementptr inbounds double, double* %107, i64 0
  %109 = load double, double* %108, align 8
  %110 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %111 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %110, i32 0, i32 0
  %112 = load double**, double*** %111, align 8
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr inbounds double*, double** %112, i64 %113
  %115 = load double*, double** %114, align 8
  %116 = getelementptr inbounds double, double* %115, i64 0
  %117 = load double, double* %116, align 8
  %118 = fsub double %109, %117
  store double %118, double* %16, align 8
  %119 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %120 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %119, i32 0, i32 0
  %121 = load double**, double*** %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds double*, double** %121, i64 %122
  %124 = load double*, double** %123, align 8
  %125 = getelementptr inbounds double, double* %124, i64 1
  %126 = load double, double* %125, align 8
  %127 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %128 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %127, i32 0, i32 0
  %129 = load double**, double*** %128, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds double*, double** %129, i64 %130
  %132 = load double*, double** %131, align 8
  %133 = getelementptr inbounds double, double* %132, i64 1
  %134 = load double, double* %133, align 8
  %135 = fsub double %126, %134
  store double %135, double* %17, align 8
  %136 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %137 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %136, i32 0, i32 0
  %138 = load double**, double*** %137, align 8
  %139 = load i64, i64* %10, align 8
  %140 = getelementptr inbounds double*, double** %138, i64 %139
  %141 = load double*, double** %140, align 8
  %142 = getelementptr inbounds double, double* %141, i64 2
  %143 = load double, double* %142, align 8
  %144 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %145 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %144, i32 0, i32 0
  %146 = load double**, double*** %145, align 8
  %147 = load i64, i64* %11, align 8
  %148 = getelementptr inbounds double*, double** %146, i64 %147
  %149 = load double*, double** %148, align 8
  %150 = getelementptr inbounds double, double* %149, i64 2
  %151 = load double, double* %150, align 8
  %152 = fsub double %143, %151
  store double %152, double* %18, align 8
  %153 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %154 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %153, i32 0, i32 0
  %155 = load double**, double*** %154, align 8
  %156 = load i64, i64* %10, align 8
  %157 = getelementptr inbounds double*, double** %155, i64 %156
  %158 = load double*, double** %157, align 8
  %159 = getelementptr inbounds double, double* %158, i64 3
  %160 = load double, double* %159, align 8
  %161 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %162 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %161, i32 0, i32 0
  %163 = load double**, double*** %162, align 8
  %164 = load i64, i64* %11, align 8
  %165 = getelementptr inbounds double*, double** %163, i64 %164
  %166 = load double*, double** %165, align 8
  %167 = getelementptr inbounds double, double* %166, i64 3
  %168 = load double, double* %167, align 8
  %169 = fsub double %160, %168
  store double %169, double* %19, align 8
  %170 = load double, double* %16, align 8
  %171 = load double, double* %12, align 8
  %172 = fmul double %170, %171
  %173 = load double, double* %17, align 8
  %174 = load double, double* %13, align 8
  %175 = fmul double %173, %174
  %176 = fadd double %172, %175
  %177 = load double, double* %18, align 8
  %178 = load double, double* %14, align 8
  %179 = fmul double %177, %178
  %180 = fadd double %176, %179
  %181 = load double, double* %19, align 8
  %182 = load double, double* %15, align 8
  %183 = fmul double %181, %182
  %184 = fadd double %180, %183
  store double %184, double* %21, align 8
  %185 = load double, double* %21, align 8
  %186 = fcmp oeq double %185, 0.000000e+00
  br i1 %186, label %187, label %188

187:                                              ; preds = %101
  store double 0.000000e+00, double* %20, align 8
  br label %239

188:                                              ; preds = %101
  %189 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %190 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %189, i32 0, i32 0
  %191 = load double**, double*** %190, align 8
  %192 = load i64, i64* %11, align 8
  %193 = getelementptr inbounds double*, double** %191, i64 %192
  %194 = load double*, double** %193, align 8
  %195 = getelementptr inbounds double, double* %194, i64 0
  %196 = load double, double* %195, align 8
  %197 = load double, double* %12, align 8
  %198 = fmul double %196, %197
  %199 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %200 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %199, i32 0, i32 0
  %201 = load double**, double*** %200, align 8
  %202 = load i64, i64* %11, align 8
  %203 = getelementptr inbounds double*, double** %201, i64 %202
  %204 = load double*, double** %203, align 8
  %205 = getelementptr inbounds double, double* %204, i64 1
  %206 = load double, double* %205, align 8
  %207 = load double, double* %13, align 8
  %208 = fmul double %206, %207
  %209 = fadd double %198, %208
  %210 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %211 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %210, i32 0, i32 0
  %212 = load double**, double*** %211, align 8
  %213 = load i64, i64* %11, align 8
  %214 = getelementptr inbounds double*, double** %212, i64 %213
  %215 = load double*, double** %214, align 8
  %216 = getelementptr inbounds double, double* %215, i64 2
  %217 = load double, double* %216, align 8
  %218 = load double, double* %14, align 8
  %219 = fmul double %217, %218
  %220 = fadd double %209, %219
  %221 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %222 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %221, i32 0, i32 0
  %223 = load double**, double*** %222, align 8
  %224 = load i64, i64* %11, align 8
  %225 = getelementptr inbounds double*, double** %223, i64 %224
  %226 = load double*, double** %225, align 8
  %227 = getelementptr inbounds double, double* %226, i64 3
  %228 = load double, double* %227, align 8
  %229 = load double, double* %15, align 8
  %230 = fmul double %228, %229
  %231 = fadd double %220, %230
  %232 = fneg double %231
  %233 = load double, double* %21, align 8
  %234 = fdiv double %232, %233
  store double %234, double* %20, align 8
  %235 = load double, double* %20, align 8
  %236 = fcmp ogt double %235, 1.000000e+00
  br i1 %236, label %237, label %238

237:                                              ; preds = %188
  store double 1.000000e+00, double* %20, align 8
  br label %238

238:                                              ; preds = %237, %188
  br label %239

239:                                              ; preds = %238, %187
  %240 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %241 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %240, i32 0, i32 0
  %242 = load double**, double*** %241, align 8
  %243 = load i64, i64* %11, align 8
  %244 = getelementptr inbounds double*, double** %242, i64 %243
  %245 = load double*, double** %244, align 8
  %246 = getelementptr inbounds double, double* %245, i64 0
  %247 = load double, double* %246, align 8
  %248 = load double, double* %20, align 8
  %249 = load double, double* %16, align 8
  %250 = fmul double %248, %249
  %251 = fadd double %247, %250
  %252 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %253 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %252, i32 0, i32 0
  %254 = load double**, double*** %253, align 8
  %255 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %256 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds double*, double** %254, i64 %257
  %259 = load double*, double** %258, align 8
  %260 = getelementptr inbounds double, double* %259, i64 0
  store double %251, double* %260, align 8
  %261 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %262 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %261, i32 0, i32 0
  %263 = load double**, double*** %262, align 8
  %264 = load i64, i64* %11, align 8
  %265 = getelementptr inbounds double*, double** %263, i64 %264
  %266 = load double*, double** %265, align 8
  %267 = getelementptr inbounds double, double* %266, i64 1
  %268 = load double, double* %267, align 8
  %269 = load double, double* %20, align 8
  %270 = load double, double* %17, align 8
  %271 = fmul double %269, %270
  %272 = fadd double %268, %271
  %273 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %274 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %273, i32 0, i32 0
  %275 = load double**, double*** %274, align 8
  %276 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %277 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = getelementptr inbounds double*, double** %275, i64 %278
  %280 = load double*, double** %279, align 8
  %281 = getelementptr inbounds double, double* %280, i64 1
  store double %272, double* %281, align 8
  %282 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %283 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %282, i32 0, i32 0
  %284 = load double**, double*** %283, align 8
  %285 = load i64, i64* %11, align 8
  %286 = getelementptr inbounds double*, double** %284, i64 %285
  %287 = load double*, double** %286, align 8
  %288 = getelementptr inbounds double, double* %287, i64 2
  %289 = load double, double* %288, align 8
  %290 = load double, double* %20, align 8
  %291 = load double, double* %18, align 8
  %292 = fmul double %290, %291
  %293 = fadd double %289, %292
  %294 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %295 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %294, i32 0, i32 0
  %296 = load double**, double*** %295, align 8
  %297 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %298 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = getelementptr inbounds double*, double** %296, i64 %299
  %301 = load double*, double** %300, align 8
  %302 = getelementptr inbounds double, double* %301, i64 2
  store double %293, double* %302, align 8
  %303 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %304 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %303, i32 0, i32 0
  %305 = load double**, double*** %304, align 8
  %306 = load i64, i64* %11, align 8
  %307 = getelementptr inbounds double*, double** %305, i64 %306
  %308 = load double*, double** %307, align 8
  %309 = getelementptr inbounds double, double* %308, i64 3
  %310 = load double, double* %309, align 8
  %311 = load double, double* %20, align 8
  %312 = load double, double* %19, align 8
  %313 = fmul double %311, %312
  %314 = fadd double %310, %313
  %315 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %316 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %315, i32 0, i32 0
  %317 = load double**, double*** %316, align 8
  %318 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %319 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = getelementptr inbounds double*, double** %317, i64 %320
  %322 = load double*, double** %321, align 8
  %323 = getelementptr inbounds double, double* %322, i64 3
  store double %314, double* %323, align 8
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %338

328:                                              ; preds = %239
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %330 = load i32, i32* @EYE_SPACE, align 4
  %331 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %332 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load double, double* %20, align 8
  %335 = load i64, i64* %11, align 8
  %336 = load i64, i64* %10, align 8
  %337 = call i32 @interpolate_aux(%struct.TYPE_6__* %329, i32 %330, i64 %333, double %334, i64 %335, i64 %336)
  br label %338

338:                                              ; preds = %328, %239
  %339 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %340 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  store i64 %341, i64* %10, align 8
  %342 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %343 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = add i64 %344, 1
  store i64 %345, i64* %343, align 8
  %346 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %347 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @VB_SIZE, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %354

351:                                              ; preds = %338
  %352 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %353 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %352, i32 0, i32 1
  store i64 1, i64* %353, align 8
  br label %354

354:                                              ; preds = %351, %338
  br label %355

355:                                              ; preds = %354
  br label %620

356:                                              ; preds = %48
  %357 = load i64, i64* %11, align 8
  %358 = load double, double* %12, align 8
  %359 = load double, double* %13, align 8
  %360 = load double, double* %14, align 8
  %361 = load double, double* %15, align 8
  %362 = call i64 @OUTSIDE(i64 %357, double %358, double %359, double %360, double %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %618

364:                                              ; preds = %356
  %365 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %366 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %365, i32 0, i32 0
  %367 = load double**, double*** %366, align 8
  %368 = load i64, i64* %11, align 8
  %369 = getelementptr inbounds double*, double** %367, i64 %368
  %370 = load double*, double** %369, align 8
  %371 = getelementptr inbounds double, double* %370, i64 0
  %372 = load double, double* %371, align 8
  %373 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %374 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %373, i32 0, i32 0
  %375 = load double**, double*** %374, align 8
  %376 = load i64, i64* %10, align 8
  %377 = getelementptr inbounds double*, double** %375, i64 %376
  %378 = load double*, double** %377, align 8
  %379 = getelementptr inbounds double, double* %378, i64 0
  %380 = load double, double* %379, align 8
  %381 = fsub double %372, %380
  store double %381, double* %22, align 8
  %382 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %383 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %382, i32 0, i32 0
  %384 = load double**, double*** %383, align 8
  %385 = load i64, i64* %11, align 8
  %386 = getelementptr inbounds double*, double** %384, i64 %385
  %387 = load double*, double** %386, align 8
  %388 = getelementptr inbounds double, double* %387, i64 1
  %389 = load double, double* %388, align 8
  %390 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %391 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %390, i32 0, i32 0
  %392 = load double**, double*** %391, align 8
  %393 = load i64, i64* %10, align 8
  %394 = getelementptr inbounds double*, double** %392, i64 %393
  %395 = load double*, double** %394, align 8
  %396 = getelementptr inbounds double, double* %395, i64 1
  %397 = load double, double* %396, align 8
  %398 = fsub double %389, %397
  store double %398, double* %23, align 8
  %399 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %400 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %399, i32 0, i32 0
  %401 = load double**, double*** %400, align 8
  %402 = load i64, i64* %11, align 8
  %403 = getelementptr inbounds double*, double** %401, i64 %402
  %404 = load double*, double** %403, align 8
  %405 = getelementptr inbounds double, double* %404, i64 2
  %406 = load double, double* %405, align 8
  %407 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %408 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %407, i32 0, i32 0
  %409 = load double**, double*** %408, align 8
  %410 = load i64, i64* %10, align 8
  %411 = getelementptr inbounds double*, double** %409, i64 %410
  %412 = load double*, double** %411, align 8
  %413 = getelementptr inbounds double, double* %412, i64 2
  %414 = load double, double* %413, align 8
  %415 = fsub double %406, %414
  store double %415, double* %24, align 8
  %416 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %417 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %416, i32 0, i32 0
  %418 = load double**, double*** %417, align 8
  %419 = load i64, i64* %11, align 8
  %420 = getelementptr inbounds double*, double** %418, i64 %419
  %421 = load double*, double** %420, align 8
  %422 = getelementptr inbounds double, double* %421, i64 3
  %423 = load double, double* %422, align 8
  %424 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %425 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %424, i32 0, i32 0
  %426 = load double**, double*** %425, align 8
  %427 = load i64, i64* %10, align 8
  %428 = getelementptr inbounds double*, double** %426, i64 %427
  %429 = load double*, double** %428, align 8
  %430 = getelementptr inbounds double, double* %429, i64 3
  %431 = load double, double* %430, align 8
  %432 = fsub double %423, %431
  store double %432, double* %25, align 8
  %433 = load double, double* %22, align 8
  %434 = load double, double* %12, align 8
  %435 = fmul double %433, %434
  %436 = load double, double* %23, align 8
  %437 = load double, double* %13, align 8
  %438 = fmul double %436, %437
  %439 = fadd double %435, %438
  %440 = load double, double* %24, align 8
  %441 = load double, double* %14, align 8
  %442 = fmul double %440, %441
  %443 = fadd double %439, %442
  %444 = load double, double* %25, align 8
  %445 = load double, double* %15, align 8
  %446 = fmul double %444, %445
  %447 = fadd double %443, %446
  store double %447, double* %27, align 8
  %448 = load double, double* %27, align 8
  %449 = fcmp oeq double %448, 0.000000e+00
  br i1 %449, label %450, label %451

450:                                              ; preds = %364
  store double 0.000000e+00, double* %26, align 8
  br label %502

451:                                              ; preds = %364
  %452 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %453 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %452, i32 0, i32 0
  %454 = load double**, double*** %453, align 8
  %455 = load i64, i64* %10, align 8
  %456 = getelementptr inbounds double*, double** %454, i64 %455
  %457 = load double*, double** %456, align 8
  %458 = getelementptr inbounds double, double* %457, i64 0
  %459 = load double, double* %458, align 8
  %460 = load double, double* %12, align 8
  %461 = fmul double %459, %460
  %462 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %463 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %462, i32 0, i32 0
  %464 = load double**, double*** %463, align 8
  %465 = load i64, i64* %10, align 8
  %466 = getelementptr inbounds double*, double** %464, i64 %465
  %467 = load double*, double** %466, align 8
  %468 = getelementptr inbounds double, double* %467, i64 1
  %469 = load double, double* %468, align 8
  %470 = load double, double* %13, align 8
  %471 = fmul double %469, %470
  %472 = fadd double %461, %471
  %473 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %474 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %473, i32 0, i32 0
  %475 = load double**, double*** %474, align 8
  %476 = load i64, i64* %10, align 8
  %477 = getelementptr inbounds double*, double** %475, i64 %476
  %478 = load double*, double** %477, align 8
  %479 = getelementptr inbounds double, double* %478, i64 2
  %480 = load double, double* %479, align 8
  %481 = load double, double* %14, align 8
  %482 = fmul double %480, %481
  %483 = fadd double %472, %482
  %484 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %485 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %484, i32 0, i32 0
  %486 = load double**, double*** %485, align 8
  %487 = load i64, i64* %10, align 8
  %488 = getelementptr inbounds double*, double** %486, i64 %487
  %489 = load double*, double** %488, align 8
  %490 = getelementptr inbounds double, double* %489, i64 3
  %491 = load double, double* %490, align 8
  %492 = load double, double* %15, align 8
  %493 = fmul double %491, %492
  %494 = fadd double %483, %493
  %495 = fneg double %494
  %496 = load double, double* %27, align 8
  %497 = fdiv double %495, %496
  store double %497, double* %26, align 8
  %498 = load double, double* %26, align 8
  %499 = fcmp ogt double %498, 1.000000e+00
  br i1 %499, label %500, label %501

500:                                              ; preds = %451
  store double 1.000000e+00, double* %26, align 8
  br label %501

501:                                              ; preds = %500, %451
  br label %502

502:                                              ; preds = %501, %450
  %503 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %504 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %503, i32 0, i32 0
  %505 = load double**, double*** %504, align 8
  %506 = load i64, i64* %10, align 8
  %507 = getelementptr inbounds double*, double** %505, i64 %506
  %508 = load double*, double** %507, align 8
  %509 = getelementptr inbounds double, double* %508, i64 0
  %510 = load double, double* %509, align 8
  %511 = load double, double* %26, align 8
  %512 = load double, double* %22, align 8
  %513 = fmul double %511, %512
  %514 = fadd double %510, %513
  %515 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %516 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %515, i32 0, i32 0
  %517 = load double**, double*** %516, align 8
  %518 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %519 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %518, i32 0, i32 1
  %520 = load i64, i64* %519, align 8
  %521 = getelementptr inbounds double*, double** %517, i64 %520
  %522 = load double*, double** %521, align 8
  %523 = getelementptr inbounds double, double* %522, i64 0
  store double %514, double* %523, align 8
  %524 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %525 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %524, i32 0, i32 0
  %526 = load double**, double*** %525, align 8
  %527 = load i64, i64* %10, align 8
  %528 = getelementptr inbounds double*, double** %526, i64 %527
  %529 = load double*, double** %528, align 8
  %530 = getelementptr inbounds double, double* %529, i64 1
  %531 = load double, double* %530, align 8
  %532 = load double, double* %26, align 8
  %533 = load double, double* %23, align 8
  %534 = fmul double %532, %533
  %535 = fadd double %531, %534
  %536 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %537 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %536, i32 0, i32 0
  %538 = load double**, double*** %537, align 8
  %539 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %540 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %539, i32 0, i32 1
  %541 = load i64, i64* %540, align 8
  %542 = getelementptr inbounds double*, double** %538, i64 %541
  %543 = load double*, double** %542, align 8
  %544 = getelementptr inbounds double, double* %543, i64 1
  store double %535, double* %544, align 8
  %545 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %546 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %545, i32 0, i32 0
  %547 = load double**, double*** %546, align 8
  %548 = load i64, i64* %10, align 8
  %549 = getelementptr inbounds double*, double** %547, i64 %548
  %550 = load double*, double** %549, align 8
  %551 = getelementptr inbounds double, double* %550, i64 2
  %552 = load double, double* %551, align 8
  %553 = load double, double* %26, align 8
  %554 = load double, double* %24, align 8
  %555 = fmul double %553, %554
  %556 = fadd double %552, %555
  %557 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %558 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %557, i32 0, i32 0
  %559 = load double**, double*** %558, align 8
  %560 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %561 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %560, i32 0, i32 1
  %562 = load i64, i64* %561, align 8
  %563 = getelementptr inbounds double*, double** %559, i64 %562
  %564 = load double*, double** %563, align 8
  %565 = getelementptr inbounds double, double* %564, i64 2
  store double %556, double* %565, align 8
  %566 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %567 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %566, i32 0, i32 0
  %568 = load double**, double*** %567, align 8
  %569 = load i64, i64* %10, align 8
  %570 = getelementptr inbounds double*, double** %568, i64 %569
  %571 = load double*, double** %570, align 8
  %572 = getelementptr inbounds double, double* %571, i64 3
  %573 = load double, double* %572, align 8
  %574 = load double, double* %26, align 8
  %575 = load double, double* %25, align 8
  %576 = fmul double %574, %575
  %577 = fadd double %573, %576
  %578 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %579 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %578, i32 0, i32 0
  %580 = load double**, double*** %579, align 8
  %581 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %582 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %581, i32 0, i32 1
  %583 = load i64, i64* %582, align 8
  %584 = getelementptr inbounds double*, double** %580, i64 %583
  %585 = load double*, double** %584, align 8
  %586 = getelementptr inbounds double, double* %585, i64 3
  store double %577, double* %586, align 8
  %587 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %588 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %587, i32 0, i32 0
  %589 = load i64, i64* %588, align 8
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %591, label %601

591:                                              ; preds = %502
  %592 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %593 = load i32, i32* @EYE_SPACE, align 4
  %594 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %595 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %594, i32 0, i32 1
  %596 = load i64, i64* %595, align 8
  %597 = load double, double* %26, align 8
  %598 = load i64, i64* %10, align 8
  %599 = load i64, i64* %11, align 8
  %600 = call i32 @interpolate_aux(%struct.TYPE_6__* %592, i32 %593, i64 %596, double %597, i64 %598, i64 %599)
  br label %601

601:                                              ; preds = %591, %502
  %602 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %603 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %602, i32 0, i32 1
  %604 = load i64, i64* %603, align 8
  store i64 %604, i64* %11, align 8
  %605 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %606 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %605, i32 0, i32 1
  %607 = load i64, i64* %606, align 8
  %608 = add i64 %607, 1
  store i64 %608, i64* %606, align 8
  %609 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %610 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %609, i32 0, i32 1
  %611 = load i64, i64* %610, align 8
  %612 = load i64, i64* @VB_SIZE, align 8
  %613 = icmp eq i64 %611, %612
  br i1 %613, label %614, label %617

614:                                              ; preds = %601
  %615 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %616 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %615, i32 0, i32 1
  store i64 1, i64* %616, align 8
  br label %617

617:                                              ; preds = %614, %601
  br label %619

618:                                              ; preds = %356
  br label %619

619:                                              ; preds = %618, %617
  br label %620

620:                                              ; preds = %619, %355
  br label %621

621:                                              ; preds = %620, %39
  br label %622

622:                                              ; preds = %621
  %623 = load i64, i64* %9, align 8
  %624 = add i64 %623, 1
  store i64 %624, i64* %9, align 8
  br label %35

625:                                              ; preds = %35
  %626 = load i64, i64* %10, align 8
  %627 = load i64*, i64** %6, align 8
  store i64 %626, i64* %627, align 8
  %628 = load i64, i64* %11, align 8
  %629 = load i64*, i64** %7, align 8
  store i64 %628, i64* %629, align 8
  store i64 1, i64* %4, align 8
  br label %630

630:                                              ; preds = %625, %100
  %631 = load i64, i64* %4, align 8
  ret i64 %631
}

declare dso_local i64 @OUTSIDE(i64, double, double, double, double) #1

declare dso_local i32 @interpolate_aux(%struct.TYPE_6__*, i32, i64, double, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
