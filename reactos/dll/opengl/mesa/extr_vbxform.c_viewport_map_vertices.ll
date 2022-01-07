; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_viewport_map_vertices.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/mesa/extr_vbxform.c_viewport_map_vertices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { float, float, float, float, float, float }

@MATRIX_ORTHO = common dso_local global i64 0, align 8
@MATRIX_IDENTITY = common dso_local global i64 0, align 8
@MATRIX_GENERAL = common dso_local global i64 0, align 8
@VERTEX4_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"(%3.1f, %3.1f, %3.1f, %3.1f) --> (%3.1f, %3.1f, %3.1f)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64, [4 x float]*, i64*, [3 x float]*)* @viewport_map_vertices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @viewport_map_vertices(%struct.TYPE_7__* %0, i64 %1, [4 x float]* %2, i64* %3, [3 x float]* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [4 x float]*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca [3 x float]*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca float, align 4
  %21 = alloca i64, align 8
  %22 = alloca float, align 4
  %23 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i64 %1, i64* %7, align 8
  store [4 x float]* %2, [4 x float]** %8, align 8
  store i64* %3, i64** %9, align 8
  store [3 x float]* %4, [3 x float]** %10, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 8
  store float %27, float* %11, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load float, float* %30, align 4
  store float %31, float* %12, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load float, float* %34, align 8
  store float %35, float* %13, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load float, float* %38, align 4
  store float %39, float* %14, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load float, float* %42, align 8
  store float %43, float* %15, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  %47 = load float, float* %46, align 4
  store float %47, float* %16, align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MATRIX_ORTHO, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %5
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MATRIX_IDENTITY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %183

59:                                               ; preds = %53, %5
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MATRIX_GENERAL, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %183

65:                                               ; preds = %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @VERTEX4_BIT, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %183

74:                                               ; preds = %65
  %75 = load i64*, i64** %9, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %133

77:                                               ; preds = %74
  store i64 0, i64* %17, align 8
  br label %78

78:                                               ; preds = %129, %77
  %79 = load i64, i64* %17, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %132

82:                                               ; preds = %78
  %83 = load i64*, i64** %9, align 8
  %84 = load i64, i64* %17, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %128

88:                                               ; preds = %82
  %89 = load [4 x float]*, [4 x float]** %8, align 8
  %90 = load i64, i64* %17, align 8
  %91 = getelementptr inbounds [4 x float], [4 x float]* %89, i64 %90
  %92 = getelementptr inbounds [4 x float], [4 x float]* %91, i64 0, i64 0
  %93 = load float, float* %92, align 4
  %94 = load float, float* %11, align 4
  %95 = fmul float %93, %94
  %96 = load float, float* %12, align 4
  %97 = fadd float %95, %96
  %98 = load [3 x float]*, [3 x float]** %10, align 8
  %99 = load i64, i64* %17, align 8
  %100 = getelementptr inbounds [3 x float], [3 x float]* %98, i64 %99
  %101 = getelementptr inbounds [3 x float], [3 x float]* %100, i64 0, i64 0
  store float %97, float* %101, align 4
  %102 = load [4 x float]*, [4 x float]** %8, align 8
  %103 = load i64, i64* %17, align 8
  %104 = getelementptr inbounds [4 x float], [4 x float]* %102, i64 %103
  %105 = getelementptr inbounds [4 x float], [4 x float]* %104, i64 0, i64 1
  %106 = load float, float* %105, align 4
  %107 = load float, float* %13, align 4
  %108 = fmul float %106, %107
  %109 = load float, float* %14, align 4
  %110 = fadd float %108, %109
  %111 = load [3 x float]*, [3 x float]** %10, align 8
  %112 = load i64, i64* %17, align 8
  %113 = getelementptr inbounds [3 x float], [3 x float]* %111, i64 %112
  %114 = getelementptr inbounds [3 x float], [3 x float]* %113, i64 0, i64 1
  store float %110, float* %114, align 4
  %115 = load [4 x float]*, [4 x float]** %8, align 8
  %116 = load i64, i64* %17, align 8
  %117 = getelementptr inbounds [4 x float], [4 x float]* %115, i64 %116
  %118 = getelementptr inbounds [4 x float], [4 x float]* %117, i64 0, i64 2
  %119 = load float, float* %118, align 4
  %120 = load float, float* %15, align 4
  %121 = fmul float %119, %120
  %122 = load float, float* %16, align 4
  %123 = fadd float %121, %122
  %124 = load [3 x float]*, [3 x float]** %10, align 8
  %125 = load i64, i64* %17, align 8
  %126 = getelementptr inbounds [3 x float], [3 x float]* %124, i64 %125
  %127 = getelementptr inbounds [3 x float], [3 x float]* %126, i64 0, i64 2
  store float %123, float* %127, align 4
  br label %128

128:                                              ; preds = %88, %82
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %17, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %17, align 8
  br label %78

132:                                              ; preds = %78
  br label %182

133:                                              ; preds = %74
  store i64 0, i64* %18, align 8
  br label %134

134:                                              ; preds = %178, %133
  %135 = load i64, i64* %18, align 8
  %136 = load i64, i64* %7, align 8
  %137 = icmp ult i64 %135, %136
  br i1 %137, label %138, label %181

138:                                              ; preds = %134
  %139 = load [4 x float]*, [4 x float]** %8, align 8
  %140 = load i64, i64* %18, align 8
  %141 = getelementptr inbounds [4 x float], [4 x float]* %139, i64 %140
  %142 = getelementptr inbounds [4 x float], [4 x float]* %141, i64 0, i64 0
  %143 = load float, float* %142, align 4
  %144 = load float, float* %11, align 4
  %145 = fmul float %143, %144
  %146 = load float, float* %12, align 4
  %147 = fadd float %145, %146
  %148 = load [3 x float]*, [3 x float]** %10, align 8
  %149 = load i64, i64* %18, align 8
  %150 = getelementptr inbounds [3 x float], [3 x float]* %148, i64 %149
  %151 = getelementptr inbounds [3 x float], [3 x float]* %150, i64 0, i64 0
  store float %147, float* %151, align 4
  %152 = load [4 x float]*, [4 x float]** %8, align 8
  %153 = load i64, i64* %18, align 8
  %154 = getelementptr inbounds [4 x float], [4 x float]* %152, i64 %153
  %155 = getelementptr inbounds [4 x float], [4 x float]* %154, i64 0, i64 1
  %156 = load float, float* %155, align 4
  %157 = load float, float* %13, align 4
  %158 = fmul float %156, %157
  %159 = load float, float* %14, align 4
  %160 = fadd float %158, %159
  %161 = load [3 x float]*, [3 x float]** %10, align 8
  %162 = load i64, i64* %18, align 8
  %163 = getelementptr inbounds [3 x float], [3 x float]* %161, i64 %162
  %164 = getelementptr inbounds [3 x float], [3 x float]* %163, i64 0, i64 1
  store float %160, float* %164, align 4
  %165 = load [4 x float]*, [4 x float]** %8, align 8
  %166 = load i64, i64* %18, align 8
  %167 = getelementptr inbounds [4 x float], [4 x float]* %165, i64 %166
  %168 = getelementptr inbounds [4 x float], [4 x float]* %167, i64 0, i64 2
  %169 = load float, float* %168, align 4
  %170 = load float, float* %15, align 4
  %171 = fmul float %169, %170
  %172 = load float, float* %16, align 4
  %173 = fadd float %171, %172
  %174 = load [3 x float]*, [3 x float]** %10, align 8
  %175 = load i64, i64* %18, align 8
  %176 = getelementptr inbounds [3 x float], [3 x float]* %174, i64 %175
  %177 = getelementptr inbounds [3 x float], [3 x float]* %176, i64 0, i64 2
  store float %173, float* %177, align 4
  br label %178

178:                                              ; preds = %138
  %179 = load i64, i64* %18, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %18, align 8
  br label %134

181:                                              ; preds = %134
  br label %182

182:                                              ; preds = %181, %132
  br label %358

183:                                              ; preds = %65, %59, %53
  %184 = load i64*, i64** %9, align 8
  %185 = icmp ne i64* %184, null
  br i1 %185, label %186, label %275

186:                                              ; preds = %183
  store i64 0, i64* %19, align 8
  br label %187

187:                                              ; preds = %271, %186
  %188 = load i64, i64* %19, align 8
  %189 = load i64, i64* %7, align 8
  %190 = icmp ult i64 %188, %189
  br i1 %190, label %191, label %274

191:                                              ; preds = %187
  %192 = load i64*, i64** %9, align 8
  %193 = load i64, i64* %19, align 8
  %194 = getelementptr inbounds i64, i64* %192, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %270

197:                                              ; preds = %191
  %198 = load [4 x float]*, [4 x float]** %8, align 8
  %199 = load i64, i64* %19, align 8
  %200 = getelementptr inbounds [4 x float], [4 x float]* %198, i64 %199
  %201 = getelementptr inbounds [4 x float], [4 x float]* %200, i64 0, i64 3
  %202 = load float, float* %201, align 4
  %203 = fcmp une float %202, 0.000000e+00
  br i1 %203, label %204, label %256

204:                                              ; preds = %197
  %205 = load [4 x float]*, [4 x float]** %8, align 8
  %206 = load i64, i64* %19, align 8
  %207 = getelementptr inbounds [4 x float], [4 x float]* %205, i64 %206
  %208 = getelementptr inbounds [4 x float], [4 x float]* %207, i64 0, i64 3
  %209 = load float, float* %208, align 4
  %210 = fdiv float 1.000000e+00, %209
  store float %210, float* %20, align 4
  %211 = load [4 x float]*, [4 x float]** %8, align 8
  %212 = load i64, i64* %19, align 8
  %213 = getelementptr inbounds [4 x float], [4 x float]* %211, i64 %212
  %214 = getelementptr inbounds [4 x float], [4 x float]* %213, i64 0, i64 0
  %215 = load float, float* %214, align 4
  %216 = load float, float* %20, align 4
  %217 = fmul float %215, %216
  %218 = load float, float* %11, align 4
  %219 = fmul float %217, %218
  %220 = load float, float* %12, align 4
  %221 = fadd float %219, %220
  %222 = load [3 x float]*, [3 x float]** %10, align 8
  %223 = load i64, i64* %19, align 8
  %224 = getelementptr inbounds [3 x float], [3 x float]* %222, i64 %223
  %225 = getelementptr inbounds [3 x float], [3 x float]* %224, i64 0, i64 0
  store float %221, float* %225, align 4
  %226 = load [4 x float]*, [4 x float]** %8, align 8
  %227 = load i64, i64* %19, align 8
  %228 = getelementptr inbounds [4 x float], [4 x float]* %226, i64 %227
  %229 = getelementptr inbounds [4 x float], [4 x float]* %228, i64 0, i64 1
  %230 = load float, float* %229, align 4
  %231 = load float, float* %20, align 4
  %232 = fmul float %230, %231
  %233 = load float, float* %13, align 4
  %234 = fmul float %232, %233
  %235 = load float, float* %14, align 4
  %236 = fadd float %234, %235
  %237 = load [3 x float]*, [3 x float]** %10, align 8
  %238 = load i64, i64* %19, align 8
  %239 = getelementptr inbounds [3 x float], [3 x float]* %237, i64 %238
  %240 = getelementptr inbounds [3 x float], [3 x float]* %239, i64 0, i64 1
  store float %236, float* %240, align 4
  %241 = load [4 x float]*, [4 x float]** %8, align 8
  %242 = load i64, i64* %19, align 8
  %243 = getelementptr inbounds [4 x float], [4 x float]* %241, i64 %242
  %244 = getelementptr inbounds [4 x float], [4 x float]* %243, i64 0, i64 2
  %245 = load float, float* %244, align 4
  %246 = load float, float* %20, align 4
  %247 = fmul float %245, %246
  %248 = load float, float* %15, align 4
  %249 = fmul float %247, %248
  %250 = load float, float* %16, align 4
  %251 = fadd float %249, %250
  %252 = load [3 x float]*, [3 x float]** %10, align 8
  %253 = load i64, i64* %19, align 8
  %254 = getelementptr inbounds [3 x float], [3 x float]* %252, i64 %253
  %255 = getelementptr inbounds [3 x float], [3 x float]* %254, i64 0, i64 2
  store float %251, float* %255, align 4
  br label %269

256:                                              ; preds = %197
  %257 = load [3 x float]*, [3 x float]** %10, align 8
  %258 = load i64, i64* %19, align 8
  %259 = getelementptr inbounds [3 x float], [3 x float]* %257, i64 %258
  %260 = getelementptr inbounds [3 x float], [3 x float]* %259, i64 0, i64 0
  store float 0.000000e+00, float* %260, align 4
  %261 = load [3 x float]*, [3 x float]** %10, align 8
  %262 = load i64, i64* %19, align 8
  %263 = getelementptr inbounds [3 x float], [3 x float]* %261, i64 %262
  %264 = getelementptr inbounds [3 x float], [3 x float]* %263, i64 0, i64 1
  store float 0.000000e+00, float* %264, align 4
  %265 = load [3 x float]*, [3 x float]** %10, align 8
  %266 = load i64, i64* %19, align 8
  %267 = getelementptr inbounds [3 x float], [3 x float]* %265, i64 %266
  %268 = getelementptr inbounds [3 x float], [3 x float]* %267, i64 0, i64 2
  store float 0.000000e+00, float* %268, align 4
  br label %269

269:                                              ; preds = %256, %204
  br label %270

270:                                              ; preds = %269, %191
  br label %271

271:                                              ; preds = %270
  %272 = load i64, i64* %19, align 8
  %273 = add i64 %272, 1
  store i64 %273, i64* %19, align 8
  br label %187

274:                                              ; preds = %187
  br label %357

275:                                              ; preds = %183
  store i64 0, i64* %21, align 8
  br label %276

276:                                              ; preds = %353, %275
  %277 = load i64, i64* %21, align 8
  %278 = load i64, i64* %7, align 8
  %279 = icmp ult i64 %277, %278
  br i1 %279, label %280, label %356

280:                                              ; preds = %276
  %281 = load [4 x float]*, [4 x float]** %8, align 8
  %282 = load i64, i64* %21, align 8
  %283 = getelementptr inbounds [4 x float], [4 x float]* %281, i64 %282
  %284 = getelementptr inbounds [4 x float], [4 x float]* %283, i64 0, i64 3
  %285 = load float, float* %284, align 4
  %286 = fcmp une float %285, 0.000000e+00
  br i1 %286, label %287, label %339

287:                                              ; preds = %280
  %288 = load [4 x float]*, [4 x float]** %8, align 8
  %289 = load i64, i64* %21, align 8
  %290 = getelementptr inbounds [4 x float], [4 x float]* %288, i64 %289
  %291 = getelementptr inbounds [4 x float], [4 x float]* %290, i64 0, i64 3
  %292 = load float, float* %291, align 4
  %293 = fdiv float 1.000000e+00, %292
  store float %293, float* %22, align 4
  %294 = load [4 x float]*, [4 x float]** %8, align 8
  %295 = load i64, i64* %21, align 8
  %296 = getelementptr inbounds [4 x float], [4 x float]* %294, i64 %295
  %297 = getelementptr inbounds [4 x float], [4 x float]* %296, i64 0, i64 0
  %298 = load float, float* %297, align 4
  %299 = load float, float* %22, align 4
  %300 = fmul float %298, %299
  %301 = load float, float* %11, align 4
  %302 = fmul float %300, %301
  %303 = load float, float* %12, align 4
  %304 = fadd float %302, %303
  %305 = load [3 x float]*, [3 x float]** %10, align 8
  %306 = load i64, i64* %21, align 8
  %307 = getelementptr inbounds [3 x float], [3 x float]* %305, i64 %306
  %308 = getelementptr inbounds [3 x float], [3 x float]* %307, i64 0, i64 0
  store float %304, float* %308, align 4
  %309 = load [4 x float]*, [4 x float]** %8, align 8
  %310 = load i64, i64* %21, align 8
  %311 = getelementptr inbounds [4 x float], [4 x float]* %309, i64 %310
  %312 = getelementptr inbounds [4 x float], [4 x float]* %311, i64 0, i64 1
  %313 = load float, float* %312, align 4
  %314 = load float, float* %22, align 4
  %315 = fmul float %313, %314
  %316 = load float, float* %13, align 4
  %317 = fmul float %315, %316
  %318 = load float, float* %14, align 4
  %319 = fadd float %317, %318
  %320 = load [3 x float]*, [3 x float]** %10, align 8
  %321 = load i64, i64* %21, align 8
  %322 = getelementptr inbounds [3 x float], [3 x float]* %320, i64 %321
  %323 = getelementptr inbounds [3 x float], [3 x float]* %322, i64 0, i64 1
  store float %319, float* %323, align 4
  %324 = load [4 x float]*, [4 x float]** %8, align 8
  %325 = load i64, i64* %21, align 8
  %326 = getelementptr inbounds [4 x float], [4 x float]* %324, i64 %325
  %327 = getelementptr inbounds [4 x float], [4 x float]* %326, i64 0, i64 2
  %328 = load float, float* %327, align 4
  %329 = load float, float* %22, align 4
  %330 = fmul float %328, %329
  %331 = load float, float* %15, align 4
  %332 = fmul float %330, %331
  %333 = load float, float* %16, align 4
  %334 = fadd float %332, %333
  %335 = load [3 x float]*, [3 x float]** %10, align 8
  %336 = load i64, i64* %21, align 8
  %337 = getelementptr inbounds [3 x float], [3 x float]* %335, i64 %336
  %338 = getelementptr inbounds [3 x float], [3 x float]* %337, i64 0, i64 2
  store float %334, float* %338, align 4
  br label %352

339:                                              ; preds = %280
  %340 = load [3 x float]*, [3 x float]** %10, align 8
  %341 = load i64, i64* %21, align 8
  %342 = getelementptr inbounds [3 x float], [3 x float]* %340, i64 %341
  %343 = getelementptr inbounds [3 x float], [3 x float]* %342, i64 0, i64 0
  store float 0.000000e+00, float* %343, align 4
  %344 = load [3 x float]*, [3 x float]** %10, align 8
  %345 = load i64, i64* %21, align 8
  %346 = getelementptr inbounds [3 x float], [3 x float]* %344, i64 %345
  %347 = getelementptr inbounds [3 x float], [3 x float]* %346, i64 0, i64 1
  store float 0.000000e+00, float* %347, align 4
  %348 = load [3 x float]*, [3 x float]** %10, align 8
  %349 = load i64, i64* %21, align 8
  %350 = getelementptr inbounds [3 x float], [3 x float]* %348, i64 %349
  %351 = getelementptr inbounds [3 x float], [3 x float]* %350, i64 0, i64 2
  store float 0.000000e+00, float* %351, align 4
  br label %352

352:                                              ; preds = %339, %287
  br label %353

353:                                              ; preds = %352
  %354 = load i64, i64* %21, align 8
  %355 = add i64 %354, 1
  store i64 %355, i64* %21, align 8
  br label %276

356:                                              ; preds = %276
  br label %357

357:                                              ; preds = %356, %274
  br label %358

358:                                              ; preds = %357, %182
  store i64 0, i64* %23, align 8
  br label %359

359:                                              ; preds = %400, %358
  %360 = load i64, i64* %23, align 8
  %361 = load i64, i64* %7, align 8
  %362 = icmp ult i64 %360, %361
  br i1 %362, label %363, label %403

363:                                              ; preds = %359
  %364 = load [4 x float]*, [4 x float]** %8, align 8
  %365 = load i64, i64* %23, align 8
  %366 = getelementptr inbounds [4 x float], [4 x float]* %364, i64 %365
  %367 = getelementptr inbounds [4 x float], [4 x float]* %366, i64 0, i64 0
  %368 = load float, float* %367, align 4
  %369 = load [4 x float]*, [4 x float]** %8, align 8
  %370 = load i64, i64* %23, align 8
  %371 = getelementptr inbounds [4 x float], [4 x float]* %369, i64 %370
  %372 = getelementptr inbounds [4 x float], [4 x float]* %371, i64 0, i64 1
  %373 = load float, float* %372, align 4
  %374 = load [4 x float]*, [4 x float]** %8, align 8
  %375 = load i64, i64* %23, align 8
  %376 = getelementptr inbounds [4 x float], [4 x float]* %374, i64 %375
  %377 = getelementptr inbounds [4 x float], [4 x float]* %376, i64 0, i64 2
  %378 = load float, float* %377, align 4
  %379 = load [4 x float]*, [4 x float]** %8, align 8
  %380 = load i64, i64* %23, align 8
  %381 = getelementptr inbounds [4 x float], [4 x float]* %379, i64 %380
  %382 = getelementptr inbounds [4 x float], [4 x float]* %381, i64 0, i64 3
  %383 = load float, float* %382, align 4
  %384 = load [3 x float]*, [3 x float]** %10, align 8
  %385 = load i64, i64* %23, align 8
  %386 = getelementptr inbounds [3 x float], [3 x float]* %384, i64 %385
  %387 = getelementptr inbounds [3 x float], [3 x float]* %386, i64 0, i64 0
  %388 = load float, float* %387, align 4
  %389 = load [3 x float]*, [3 x float]** %10, align 8
  %390 = load i64, i64* %23, align 8
  %391 = getelementptr inbounds [3 x float], [3 x float]* %389, i64 %390
  %392 = getelementptr inbounds [3 x float], [3 x float]* %391, i64 0, i64 1
  %393 = load float, float* %392, align 4
  %394 = load [3 x float]*, [3 x float]** %10, align 8
  %395 = load i64, i64* %23, align 8
  %396 = getelementptr inbounds [3 x float], [3 x float]* %394, i64 %395
  %397 = getelementptr inbounds [3 x float], [3 x float]* %396, i64 0, i64 2
  %398 = load float, float* %397, align 4
  %399 = call i32 @TRACE(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), float %368, float %373, float %378, float %383, float %388, float %393, float %398)
  br label %400

400:                                              ; preds = %363
  %401 = load i64, i64* %23, align 8
  %402 = add i64 %401, 1
  store i64 %402, i64* %23, align 8
  br label %359

403:                                              ; preds = %359
  ret void
}

declare dso_local i32 @TRACE(i8*, float, float, float, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
