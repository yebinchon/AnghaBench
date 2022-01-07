; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_clip.c_gl_userclip_polygon.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_clip.c_gl_userclip_polygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.vertex_buffer* }
%struct.TYPE_5__ = type { float**, i64* }
%struct.vertex_buffer = type { float**, i64, i32* }

@VB_SIZE = common dso_local global i32 0, align 4
@MAX_CLIP_PLANES = common dso_local global i64 0, align 8
@EYE_SPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gl_userclip_polygon(%struct.TYPE_6__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.vertex_buffer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
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
  %37 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load %struct.vertex_buffer*, %struct.vertex_buffer** %39, align 8
  store %struct.vertex_buffer* %40, %struct.vertex_buffer** %8, align 8
  %41 = load i32, i32* @VB_SIZE, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %9, align 8
  %44 = alloca i64, i64 %42, align 16
  store i64 %42, i64* %10, align 8
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* %13, align 8
  %46 = load i64*, i64** %7, align 8
  store i64* %46, i64** %11, align 8
  store i64* %44, i64** %12, align 8
  store i64 0, i64* %19, align 8
  br label %47

47:                                               ; preds = %728, %3
  %48 = load i64, i64* %19, align 8
  %49 = load i64, i64* @MAX_CLIP_PLANES, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %731

51:                                               ; preds = %47
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %19, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %727

60:                                               ; preds = %51
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load float**, float*** %63, align 8
  %65 = load i64, i64* %19, align 8
  %66 = getelementptr inbounds float*, float** %64, i64 %65
  %67 = load float*, float** %66, align 8
  %68 = getelementptr inbounds float, float* %67, i64 0
  %69 = load float, float* %68, align 4
  store float %69, float* %20, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load float**, float*** %72, align 8
  %74 = load i64, i64* %19, align 8
  %75 = getelementptr inbounds float*, float** %73, i64 %74
  %76 = load float*, float** %75, align 8
  %77 = getelementptr inbounds float, float* %76, i64 1
  %78 = load float, float* %77, align 4
  store float %78, float* %21, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load float**, float*** %81, align 8
  %83 = load i64, i64* %19, align 8
  %84 = getelementptr inbounds float*, float** %82, i64 %83
  %85 = load float*, float** %84, align 8
  %86 = getelementptr inbounds float, float* %85, i64 2
  %87 = load float, float* %86, align 4
  store float %87, float* %22, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load float**, float*** %90, align 8
  %92 = load i64, i64* %19, align 8
  %93 = getelementptr inbounds float*, float** %91, i64 %92
  %94 = load float*, float** %93, align 8
  %95 = getelementptr inbounds float, float* %94, i64 3
  %96 = load float, float* %95, align 4
  store float %96, float* %23, align 4
  %97 = load i64, i64* %13, align 8
  %98 = icmp ult i64 %97, 3
  br i1 %98, label %99, label %100

99:                                               ; preds = %60
  store i64 0, i64* %4, align 8
  store i32 1, i32* %24, align 4
  br label %741

100:                                              ; preds = %60
  %101 = load i64, i64* %13, align 8
  %102 = sub i64 %101, 1
  store i64 %102, i64* %17, align 8
  %103 = load i64*, i64** %11, align 8
  %104 = load i64, i64* %17, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %18, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %107

107:                                              ; preds = %719, %100
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %13, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %722

111:                                              ; preds = %107
  %112 = load i64*, i64** %11, align 8
  %113 = load i64, i64* %15, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %16, align 8
  %116 = load i64, i64* %16, align 8
  %117 = load float, float* %20, align 4
  %118 = load float, float* %21, align 4
  %119 = load float, float* %22, align 4
  %120 = load float, float* %23, align 4
  %121 = call i64 @INSIDE(i64 %116, float %117, float %118, float %119, float %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %416

123:                                              ; preds = %111
  %124 = load i64, i64* %18, align 8
  %125 = load float, float* %20, align 4
  %126 = load float, float* %21, align 4
  %127 = load float, float* %22, align 4
  %128 = load float, float* %23, align 4
  %129 = call i64 @INSIDE(i64 %124, float %125, float %126, float %127, float %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = load i64, i64* %16, align 8
  %133 = load i64*, i64** %12, align 8
  %134 = load i64, i64* %14, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %14, align 8
  %136 = getelementptr inbounds i64, i64* %133, i64 %134
  store i64 %132, i64* %136, align 8
  br label %415

137:                                              ; preds = %123
  %138 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %139 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %138, i32 0, i32 0
  %140 = load float**, float*** %139, align 8
  %141 = load i64, i64* %18, align 8
  %142 = getelementptr inbounds float*, float** %140, i64 %141
  %143 = load float*, float** %142, align 8
  %144 = getelementptr inbounds float, float* %143, i64 0
  %145 = load float, float* %144, align 4
  %146 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %147 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %146, i32 0, i32 0
  %148 = load float**, float*** %147, align 8
  %149 = load i64, i64* %16, align 8
  %150 = getelementptr inbounds float*, float** %148, i64 %149
  %151 = load float*, float** %150, align 8
  %152 = getelementptr inbounds float, float* %151, i64 0
  %153 = load float, float* %152, align 4
  %154 = fsub float %145, %153
  store float %154, float* %25, align 4
  %155 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %156 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %155, i32 0, i32 0
  %157 = load float**, float*** %156, align 8
  %158 = load i64, i64* %18, align 8
  %159 = getelementptr inbounds float*, float** %157, i64 %158
  %160 = load float*, float** %159, align 8
  %161 = getelementptr inbounds float, float* %160, i64 1
  %162 = load float, float* %161, align 4
  %163 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %164 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %163, i32 0, i32 0
  %165 = load float**, float*** %164, align 8
  %166 = load i64, i64* %16, align 8
  %167 = getelementptr inbounds float*, float** %165, i64 %166
  %168 = load float*, float** %167, align 8
  %169 = getelementptr inbounds float, float* %168, i64 1
  %170 = load float, float* %169, align 4
  %171 = fsub float %162, %170
  store float %171, float* %26, align 4
  %172 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %173 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %172, i32 0, i32 0
  %174 = load float**, float*** %173, align 8
  %175 = load i64, i64* %18, align 8
  %176 = getelementptr inbounds float*, float** %174, i64 %175
  %177 = load float*, float** %176, align 8
  %178 = getelementptr inbounds float, float* %177, i64 2
  %179 = load float, float* %178, align 4
  %180 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %181 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %180, i32 0, i32 0
  %182 = load float**, float*** %181, align 8
  %183 = load i64, i64* %16, align 8
  %184 = getelementptr inbounds float*, float** %182, i64 %183
  %185 = load float*, float** %184, align 8
  %186 = getelementptr inbounds float, float* %185, i64 2
  %187 = load float, float* %186, align 4
  %188 = fsub float %179, %187
  store float %188, float* %27, align 4
  %189 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %190 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %189, i32 0, i32 0
  %191 = load float**, float*** %190, align 8
  %192 = load i64, i64* %18, align 8
  %193 = getelementptr inbounds float*, float** %191, i64 %192
  %194 = load float*, float** %193, align 8
  %195 = getelementptr inbounds float, float* %194, i64 3
  %196 = load float, float* %195, align 4
  %197 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %198 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %197, i32 0, i32 0
  %199 = load float**, float*** %198, align 8
  %200 = load i64, i64* %16, align 8
  %201 = getelementptr inbounds float*, float** %199, i64 %200
  %202 = load float*, float** %201, align 8
  %203 = getelementptr inbounds float, float* %202, i64 3
  %204 = load float, float* %203, align 4
  %205 = fsub float %196, %204
  store float %205, float* %28, align 4
  %206 = load float, float* %25, align 4
  %207 = load float, float* %20, align 4
  %208 = fmul float %206, %207
  %209 = load float, float* %26, align 4
  %210 = load float, float* %21, align 4
  %211 = fmul float %209, %210
  %212 = fadd float %208, %211
  %213 = load float, float* %27, align 4
  %214 = load float, float* %22, align 4
  %215 = fmul float %213, %214
  %216 = fadd float %212, %215
  %217 = load float, float* %28, align 4
  %218 = load float, float* %23, align 4
  %219 = fmul float %217, %218
  %220 = fadd float %216, %219
  store float %220, float* %30, align 4
  %221 = load float, float* %30, align 4
  %222 = fpext float %221 to double
  %223 = fcmp oeq double %222, 0.000000e+00
  br i1 %223, label %224, label %225

224:                                              ; preds = %137
  store float 0.000000e+00, float* %29, align 4
  br label %276

225:                                              ; preds = %137
  %226 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %227 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %226, i32 0, i32 0
  %228 = load float**, float*** %227, align 8
  %229 = load i64, i64* %16, align 8
  %230 = getelementptr inbounds float*, float** %228, i64 %229
  %231 = load float*, float** %230, align 8
  %232 = getelementptr inbounds float, float* %231, i64 0
  %233 = load float, float* %232, align 4
  %234 = load float, float* %20, align 4
  %235 = fmul float %233, %234
  %236 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %237 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %236, i32 0, i32 0
  %238 = load float**, float*** %237, align 8
  %239 = load i64, i64* %16, align 8
  %240 = getelementptr inbounds float*, float** %238, i64 %239
  %241 = load float*, float** %240, align 8
  %242 = getelementptr inbounds float, float* %241, i64 1
  %243 = load float, float* %242, align 4
  %244 = load float, float* %21, align 4
  %245 = fmul float %243, %244
  %246 = fadd float %235, %245
  %247 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %248 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %247, i32 0, i32 0
  %249 = load float**, float*** %248, align 8
  %250 = load i64, i64* %16, align 8
  %251 = getelementptr inbounds float*, float** %249, i64 %250
  %252 = load float*, float** %251, align 8
  %253 = getelementptr inbounds float, float* %252, i64 2
  %254 = load float, float* %253, align 4
  %255 = load float, float* %22, align 4
  %256 = fmul float %254, %255
  %257 = fadd float %246, %256
  %258 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %259 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %258, i32 0, i32 0
  %260 = load float**, float*** %259, align 8
  %261 = load i64, i64* %16, align 8
  %262 = getelementptr inbounds float*, float** %260, i64 %261
  %263 = load float*, float** %262, align 8
  %264 = getelementptr inbounds float, float* %263, i64 3
  %265 = load float, float* %264, align 4
  %266 = load float, float* %23, align 4
  %267 = fmul float %265, %266
  %268 = fadd float %257, %267
  %269 = fneg float %268
  %270 = load float, float* %30, align 4
  %271 = fdiv float %269, %270
  store float %271, float* %29, align 4
  %272 = load float, float* %29, align 4
  %273 = fcmp ogt float %272, 1.000000e+00
  br i1 %273, label %274, label %275

274:                                              ; preds = %225
  store float 1.000000e+00, float* %29, align 4
  br label %275

275:                                              ; preds = %274, %225
  br label %276

276:                                              ; preds = %275, %224
  %277 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %278 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %277, i32 0, i32 0
  %279 = load float**, float*** %278, align 8
  %280 = load i64, i64* %16, align 8
  %281 = getelementptr inbounds float*, float** %279, i64 %280
  %282 = load float*, float** %281, align 8
  %283 = getelementptr inbounds float, float* %282, i64 0
  %284 = load float, float* %283, align 4
  %285 = load float, float* %29, align 4
  %286 = load float, float* %25, align 4
  %287 = fmul float %285, %286
  %288 = fadd float %284, %287
  %289 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %290 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %289, i32 0, i32 0
  %291 = load float**, float*** %290, align 8
  %292 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %293 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = getelementptr inbounds float*, float** %291, i64 %294
  %296 = load float*, float** %295, align 8
  %297 = getelementptr inbounds float, float* %296, i64 0
  store float %288, float* %297, align 4
  %298 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %299 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %298, i32 0, i32 0
  %300 = load float**, float*** %299, align 8
  %301 = load i64, i64* %16, align 8
  %302 = getelementptr inbounds float*, float** %300, i64 %301
  %303 = load float*, float** %302, align 8
  %304 = getelementptr inbounds float, float* %303, i64 1
  %305 = load float, float* %304, align 4
  %306 = load float, float* %29, align 4
  %307 = load float, float* %26, align 4
  %308 = fmul float %306, %307
  %309 = fadd float %305, %308
  %310 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %311 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %310, i32 0, i32 0
  %312 = load float**, float*** %311, align 8
  %313 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %314 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds float*, float** %312, i64 %315
  %317 = load float*, float** %316, align 8
  %318 = getelementptr inbounds float, float* %317, i64 1
  store float %309, float* %318, align 4
  %319 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %320 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %319, i32 0, i32 0
  %321 = load float**, float*** %320, align 8
  %322 = load i64, i64* %16, align 8
  %323 = getelementptr inbounds float*, float** %321, i64 %322
  %324 = load float*, float** %323, align 8
  %325 = getelementptr inbounds float, float* %324, i64 2
  %326 = load float, float* %325, align 4
  %327 = load float, float* %29, align 4
  %328 = load float, float* %27, align 4
  %329 = fmul float %327, %328
  %330 = fadd float %326, %329
  %331 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %332 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %331, i32 0, i32 0
  %333 = load float**, float*** %332, align 8
  %334 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %335 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = getelementptr inbounds float*, float** %333, i64 %336
  %338 = load float*, float** %337, align 8
  %339 = getelementptr inbounds float, float* %338, i64 2
  store float %330, float* %339, align 4
  %340 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %341 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %340, i32 0, i32 0
  %342 = load float**, float*** %341, align 8
  %343 = load i64, i64* %16, align 8
  %344 = getelementptr inbounds float*, float** %342, i64 %343
  %345 = load float*, float** %344, align 8
  %346 = getelementptr inbounds float, float* %345, i64 3
  %347 = load float, float* %346, align 4
  %348 = load float, float* %29, align 4
  %349 = load float, float* %28, align 4
  %350 = fmul float %348, %349
  %351 = fadd float %347, %350
  %352 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %353 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %352, i32 0, i32 0
  %354 = load float**, float*** %353, align 8
  %355 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %356 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = getelementptr inbounds float*, float** %354, i64 %357
  %359 = load float*, float** %358, align 8
  %360 = getelementptr inbounds float, float* %359, i64 3
  store float %351, float* %360, align 4
  %361 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %375

365:                                              ; preds = %276
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %367 = load i32, i32* @EYE_SPACE, align 4
  %368 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %369 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %368, i32 0, i32 1
  %370 = load i64, i64* %369, align 8
  %371 = load float, float* %29, align 4
  %372 = load i64, i64* %16, align 8
  %373 = load i64, i64* %18, align 8
  %374 = call i32 @interpolate_aux(%struct.TYPE_6__* %366, i32 %367, i64 %370, float %371, i64 %372, i64 %373)
  br label %375

375:                                              ; preds = %365, %276
  %376 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %377 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %376, i32 0, i32 2
  %378 = load i32*, i32** %377, align 8
  %379 = load i64, i64* %18, align 8
  %380 = getelementptr inbounds i32, i32* %378, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %383 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %382, i32 0, i32 2
  %384 = load i32*, i32** %383, align 8
  %385 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %386 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = getelementptr inbounds i32, i32* %384, i64 %387
  store i32 %381, i32* %388, align 4
  %389 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %390 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = load i64*, i64** %12, align 8
  %393 = load i64, i64* %14, align 8
  %394 = add i64 %393, 1
  store i64 %394, i64* %14, align 8
  %395 = getelementptr inbounds i64, i64* %392, i64 %393
  store i64 %391, i64* %395, align 8
  %396 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %397 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = add i64 %398, 1
  store i64 %399, i64* %397, align 8
  %400 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %401 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = load i32, i32* @VB_SIZE, align 4
  %404 = sext i32 %403 to i64
  %405 = icmp eq i64 %402, %404
  br i1 %405, label %406, label %409

406:                                              ; preds = %375
  %407 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %408 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %407, i32 0, i32 1
  store i64 1, i64* %408, align 8
  br label %409

409:                                              ; preds = %406, %375
  %410 = load i64, i64* %16, align 8
  %411 = load i64*, i64** %12, align 8
  %412 = load i64, i64* %14, align 8
  %413 = add i64 %412, 1
  store i64 %413, i64* %14, align 8
  %414 = getelementptr inbounds i64, i64* %411, i64 %412
  store i64 %410, i64* %414, align 8
  br label %415

415:                                              ; preds = %409, %131
  br label %698

416:                                              ; preds = %111
  %417 = load i64, i64* %18, align 8
  %418 = load float, float* %20, align 4
  %419 = load float, float* %21, align 4
  %420 = load float, float* %22, align 4
  %421 = load float, float* %23, align 4
  %422 = call i64 @INSIDE(i64 %417, float %418, float %419, float %420, float %421)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %697

424:                                              ; preds = %416
  %425 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %426 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %425, i32 0, i32 0
  %427 = load float**, float*** %426, align 8
  %428 = load i64, i64* %16, align 8
  %429 = getelementptr inbounds float*, float** %427, i64 %428
  %430 = load float*, float** %429, align 8
  %431 = getelementptr inbounds float, float* %430, i64 0
  %432 = load float, float* %431, align 4
  %433 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %434 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %433, i32 0, i32 0
  %435 = load float**, float*** %434, align 8
  %436 = load i64, i64* %18, align 8
  %437 = getelementptr inbounds float*, float** %435, i64 %436
  %438 = load float*, float** %437, align 8
  %439 = getelementptr inbounds float, float* %438, i64 0
  %440 = load float, float* %439, align 4
  %441 = fsub float %432, %440
  store float %441, float* %31, align 4
  %442 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %443 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %442, i32 0, i32 0
  %444 = load float**, float*** %443, align 8
  %445 = load i64, i64* %16, align 8
  %446 = getelementptr inbounds float*, float** %444, i64 %445
  %447 = load float*, float** %446, align 8
  %448 = getelementptr inbounds float, float* %447, i64 1
  %449 = load float, float* %448, align 4
  %450 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %451 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %450, i32 0, i32 0
  %452 = load float**, float*** %451, align 8
  %453 = load i64, i64* %18, align 8
  %454 = getelementptr inbounds float*, float** %452, i64 %453
  %455 = load float*, float** %454, align 8
  %456 = getelementptr inbounds float, float* %455, i64 1
  %457 = load float, float* %456, align 4
  %458 = fsub float %449, %457
  store float %458, float* %32, align 4
  %459 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %460 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %459, i32 0, i32 0
  %461 = load float**, float*** %460, align 8
  %462 = load i64, i64* %16, align 8
  %463 = getelementptr inbounds float*, float** %461, i64 %462
  %464 = load float*, float** %463, align 8
  %465 = getelementptr inbounds float, float* %464, i64 2
  %466 = load float, float* %465, align 4
  %467 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %468 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %467, i32 0, i32 0
  %469 = load float**, float*** %468, align 8
  %470 = load i64, i64* %18, align 8
  %471 = getelementptr inbounds float*, float** %469, i64 %470
  %472 = load float*, float** %471, align 8
  %473 = getelementptr inbounds float, float* %472, i64 2
  %474 = load float, float* %473, align 4
  %475 = fsub float %466, %474
  store float %475, float* %33, align 4
  %476 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %477 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %476, i32 0, i32 0
  %478 = load float**, float*** %477, align 8
  %479 = load i64, i64* %16, align 8
  %480 = getelementptr inbounds float*, float** %478, i64 %479
  %481 = load float*, float** %480, align 8
  %482 = getelementptr inbounds float, float* %481, i64 3
  %483 = load float, float* %482, align 4
  %484 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %485 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %484, i32 0, i32 0
  %486 = load float**, float*** %485, align 8
  %487 = load i64, i64* %18, align 8
  %488 = getelementptr inbounds float*, float** %486, i64 %487
  %489 = load float*, float** %488, align 8
  %490 = getelementptr inbounds float, float* %489, i64 3
  %491 = load float, float* %490, align 4
  %492 = fsub float %483, %491
  store float %492, float* %34, align 4
  %493 = load float, float* %31, align 4
  %494 = load float, float* %20, align 4
  %495 = fmul float %493, %494
  %496 = load float, float* %32, align 4
  %497 = load float, float* %21, align 4
  %498 = fmul float %496, %497
  %499 = fadd float %495, %498
  %500 = load float, float* %33, align 4
  %501 = load float, float* %22, align 4
  %502 = fmul float %500, %501
  %503 = fadd float %499, %502
  %504 = load float, float* %34, align 4
  %505 = load float, float* %23, align 4
  %506 = fmul float %504, %505
  %507 = fadd float %503, %506
  store float %507, float* %36, align 4
  %508 = load float, float* %36, align 4
  %509 = fpext float %508 to double
  %510 = fcmp oeq double %509, 0.000000e+00
  br i1 %510, label %511, label %512

511:                                              ; preds = %424
  store float 0.000000e+00, float* %35, align 4
  br label %563

512:                                              ; preds = %424
  %513 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %514 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %513, i32 0, i32 0
  %515 = load float**, float*** %514, align 8
  %516 = load i64, i64* %18, align 8
  %517 = getelementptr inbounds float*, float** %515, i64 %516
  %518 = load float*, float** %517, align 8
  %519 = getelementptr inbounds float, float* %518, i64 0
  %520 = load float, float* %519, align 4
  %521 = load float, float* %20, align 4
  %522 = fmul float %520, %521
  %523 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %524 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %523, i32 0, i32 0
  %525 = load float**, float*** %524, align 8
  %526 = load i64, i64* %18, align 8
  %527 = getelementptr inbounds float*, float** %525, i64 %526
  %528 = load float*, float** %527, align 8
  %529 = getelementptr inbounds float, float* %528, i64 1
  %530 = load float, float* %529, align 4
  %531 = load float, float* %21, align 4
  %532 = fmul float %530, %531
  %533 = fadd float %522, %532
  %534 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %535 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %534, i32 0, i32 0
  %536 = load float**, float*** %535, align 8
  %537 = load i64, i64* %18, align 8
  %538 = getelementptr inbounds float*, float** %536, i64 %537
  %539 = load float*, float** %538, align 8
  %540 = getelementptr inbounds float, float* %539, i64 2
  %541 = load float, float* %540, align 4
  %542 = load float, float* %22, align 4
  %543 = fmul float %541, %542
  %544 = fadd float %533, %543
  %545 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %546 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %545, i32 0, i32 0
  %547 = load float**, float*** %546, align 8
  %548 = load i64, i64* %18, align 8
  %549 = getelementptr inbounds float*, float** %547, i64 %548
  %550 = load float*, float** %549, align 8
  %551 = getelementptr inbounds float, float* %550, i64 3
  %552 = load float, float* %551, align 4
  %553 = load float, float* %23, align 4
  %554 = fmul float %552, %553
  %555 = fadd float %544, %554
  %556 = fneg float %555
  %557 = load float, float* %36, align 4
  %558 = fdiv float %556, %557
  store float %558, float* %35, align 4
  %559 = load float, float* %35, align 4
  %560 = fcmp ogt float %559, 1.000000e+00
  br i1 %560, label %561, label %562

561:                                              ; preds = %512
  store float 1.000000e+00, float* %35, align 4
  br label %562

562:                                              ; preds = %561, %512
  br label %563

563:                                              ; preds = %562, %511
  %564 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %565 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %564, i32 0, i32 0
  %566 = load float**, float*** %565, align 8
  %567 = load i64, i64* %18, align 8
  %568 = getelementptr inbounds float*, float** %566, i64 %567
  %569 = load float*, float** %568, align 8
  %570 = getelementptr inbounds float, float* %569, i64 0
  %571 = load float, float* %570, align 4
  %572 = load float, float* %35, align 4
  %573 = load float, float* %31, align 4
  %574 = fmul float %572, %573
  %575 = fadd float %571, %574
  %576 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %577 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %576, i32 0, i32 0
  %578 = load float**, float*** %577, align 8
  %579 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %580 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %579, i32 0, i32 1
  %581 = load i64, i64* %580, align 8
  %582 = getelementptr inbounds float*, float** %578, i64 %581
  %583 = load float*, float** %582, align 8
  %584 = getelementptr inbounds float, float* %583, i64 0
  store float %575, float* %584, align 4
  %585 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %586 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %585, i32 0, i32 0
  %587 = load float**, float*** %586, align 8
  %588 = load i64, i64* %18, align 8
  %589 = getelementptr inbounds float*, float** %587, i64 %588
  %590 = load float*, float** %589, align 8
  %591 = getelementptr inbounds float, float* %590, i64 1
  %592 = load float, float* %591, align 4
  %593 = load float, float* %35, align 4
  %594 = load float, float* %32, align 4
  %595 = fmul float %593, %594
  %596 = fadd float %592, %595
  %597 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %598 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %597, i32 0, i32 0
  %599 = load float**, float*** %598, align 8
  %600 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %601 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %600, i32 0, i32 1
  %602 = load i64, i64* %601, align 8
  %603 = getelementptr inbounds float*, float** %599, i64 %602
  %604 = load float*, float** %603, align 8
  %605 = getelementptr inbounds float, float* %604, i64 1
  store float %596, float* %605, align 4
  %606 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %607 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %606, i32 0, i32 0
  %608 = load float**, float*** %607, align 8
  %609 = load i64, i64* %18, align 8
  %610 = getelementptr inbounds float*, float** %608, i64 %609
  %611 = load float*, float** %610, align 8
  %612 = getelementptr inbounds float, float* %611, i64 2
  %613 = load float, float* %612, align 4
  %614 = load float, float* %35, align 4
  %615 = load float, float* %33, align 4
  %616 = fmul float %614, %615
  %617 = fadd float %613, %616
  %618 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %619 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %618, i32 0, i32 0
  %620 = load float**, float*** %619, align 8
  %621 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %622 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %621, i32 0, i32 1
  %623 = load i64, i64* %622, align 8
  %624 = getelementptr inbounds float*, float** %620, i64 %623
  %625 = load float*, float** %624, align 8
  %626 = getelementptr inbounds float, float* %625, i64 2
  store float %617, float* %626, align 4
  %627 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %628 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %627, i32 0, i32 0
  %629 = load float**, float*** %628, align 8
  %630 = load i64, i64* %18, align 8
  %631 = getelementptr inbounds float*, float** %629, i64 %630
  %632 = load float*, float** %631, align 8
  %633 = getelementptr inbounds float, float* %632, i64 3
  %634 = load float, float* %633, align 4
  %635 = load float, float* %35, align 4
  %636 = load float, float* %34, align 4
  %637 = fmul float %635, %636
  %638 = fadd float %634, %637
  %639 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %640 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %639, i32 0, i32 0
  %641 = load float**, float*** %640, align 8
  %642 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %643 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %642, i32 0, i32 1
  %644 = load i64, i64* %643, align 8
  %645 = getelementptr inbounds float*, float** %641, i64 %644
  %646 = load float*, float** %645, align 8
  %647 = getelementptr inbounds float, float* %646, i64 3
  store float %638, float* %647, align 4
  %648 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %649 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %648, i32 0, i32 0
  %650 = load i64, i64* %649, align 8
  %651 = icmp ne i64 %650, 0
  br i1 %651, label %652, label %662

652:                                              ; preds = %563
  %653 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %654 = load i32, i32* @EYE_SPACE, align 4
  %655 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %656 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %655, i32 0, i32 1
  %657 = load i64, i64* %656, align 8
  %658 = load float, float* %35, align 4
  %659 = load i64, i64* %18, align 8
  %660 = load i64, i64* %16, align 8
  %661 = call i32 @interpolate_aux(%struct.TYPE_6__* %653, i32 %654, i64 %657, float %658, i64 %659, i64 %660)
  br label %662

662:                                              ; preds = %652, %563
  %663 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %664 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %663, i32 0, i32 2
  %665 = load i32*, i32** %664, align 8
  %666 = load i64, i64* %18, align 8
  %667 = getelementptr inbounds i32, i32* %665, i64 %666
  %668 = load i32, i32* %667, align 4
  %669 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %670 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %669, i32 0, i32 2
  %671 = load i32*, i32** %670, align 8
  %672 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %673 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %672, i32 0, i32 1
  %674 = load i64, i64* %673, align 8
  %675 = getelementptr inbounds i32, i32* %671, i64 %674
  store i32 %668, i32* %675, align 4
  %676 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %677 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %676, i32 0, i32 1
  %678 = load i64, i64* %677, align 8
  %679 = load i64*, i64** %12, align 8
  %680 = load i64, i64* %14, align 8
  %681 = add i64 %680, 1
  store i64 %681, i64* %14, align 8
  %682 = getelementptr inbounds i64, i64* %679, i64 %680
  store i64 %678, i64* %682, align 8
  %683 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %684 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %683, i32 0, i32 1
  %685 = load i64, i64* %684, align 8
  %686 = add i64 %685, 1
  store i64 %686, i64* %684, align 8
  %687 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %688 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %687, i32 0, i32 1
  %689 = load i64, i64* %688, align 8
  %690 = load i32, i32* @VB_SIZE, align 4
  %691 = sext i32 %690 to i64
  %692 = icmp eq i64 %689, %691
  br i1 %692, label %693, label %696

693:                                              ; preds = %662
  %694 = load %struct.vertex_buffer*, %struct.vertex_buffer** %8, align 8
  %695 = getelementptr inbounds %struct.vertex_buffer, %struct.vertex_buffer* %694, i32 0, i32 1
  store i64 1, i64* %695, align 8
  br label %696

696:                                              ; preds = %693, %662
  br label %697

697:                                              ; preds = %696, %416
  br label %698

698:                                              ; preds = %697, %415
  %699 = load i64, i64* %15, align 8
  store i64 %699, i64* %17, align 8
  %700 = load i64, i64* %16, align 8
  store i64 %700, i64* %18, align 8
  %701 = load i64, i64* %14, align 8
  %702 = load i32, i32* @VB_SIZE, align 4
  %703 = sub nsw i32 %702, 1
  %704 = sext i32 %703 to i64
  %705 = icmp uge i64 %701, %704
  br i1 %705, label %706, label %718

706:                                              ; preds = %698
  %707 = load i64*, i64** %12, align 8
  %708 = icmp ne i64* %707, %44
  br i1 %708, label %709, label %714

709:                                              ; preds = %706
  %710 = load i64*, i64** %7, align 8
  %711 = load i64, i64* %14, align 8
  %712 = mul i64 %711, 8
  %713 = call i32 @MEMCPY(i64* %710, i64* %44, i64 %712)
  br label %714

714:                                              ; preds = %709, %706
  %715 = load i32, i32* @VB_SIZE, align 4
  %716 = sub nsw i32 %715, 1
  %717 = sext i32 %716 to i64
  store i64 %717, i64* %4, align 8
  store i32 1, i32* %24, align 4
  br label %741

718:                                              ; preds = %698
  br label %719

719:                                              ; preds = %718
  %720 = load i64, i64* %15, align 8
  %721 = add i64 %720, 1
  store i64 %721, i64* %15, align 8
  br label %107

722:                                              ; preds = %107
  %723 = load i64*, i64** %11, align 8
  store i64* %723, i64** %37, align 8
  %724 = load i64*, i64** %12, align 8
  store i64* %724, i64** %11, align 8
  %725 = load i64*, i64** %37, align 8
  store i64* %725, i64** %12, align 8
  %726 = load i64, i64* %14, align 8
  store i64 %726, i64* %13, align 8
  br label %727

727:                                              ; preds = %722, %51
  br label %728

728:                                              ; preds = %727
  %729 = load i64, i64* %19, align 8
  %730 = add i64 %729, 1
  store i64 %730, i64* %19, align 8
  br label %47

731:                                              ; preds = %47
  %732 = load i64*, i64** %12, align 8
  %733 = icmp ne i64* %732, %44
  br i1 %733, label %734, label %739

734:                                              ; preds = %731
  %735 = load i64*, i64** %7, align 8
  %736 = load i64, i64* %14, align 8
  %737 = mul i64 %736, 8
  %738 = call i32 @MEMCPY(i64* %735, i64* %44, i64 %737)
  br label %739

739:                                              ; preds = %734, %731
  %740 = load i64, i64* %14, align 8
  store i64 %740, i64* %4, align 8
  store i32 1, i32* %24, align 4
  br label %741

741:                                              ; preds = %739, %714, %99
  %742 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %742)
  %743 = load i64, i64* %4, align 8
  ret i64 %743
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @INSIDE(i64, float, float, float, float) #2

declare dso_local i32 @interpolate_aux(%struct.TYPE_6__*, i32, i64, float, i64, i64) #2

declare dso_local i32 @MEMCPY(i64*, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
