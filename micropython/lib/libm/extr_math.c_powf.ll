; ModuleID = '/home/carl/AnghaBench/micropython/lib/libm/extr_math.c_powf.c'
source_filename = "/home/carl/AnghaBench/micropython/lib/libm/extr_math.c_powf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@huge = common dso_local global float 0.000000e+00, align 4
@tiny = common dso_local global float 0.000000e+00, align 4
@ivln2_h = common dso_local global float 0.000000e+00, align 4
@ivln2_l = common dso_local global float 0.000000e+00, align 4
@ivln2 = common dso_local global float 0.000000e+00, align 4
@two24 = common dso_local global float 0.000000e+00, align 4
@bp = common dso_local global float* null, align 8
@L1 = common dso_local global float 0.000000e+00, align 4
@L2 = common dso_local global float 0.000000e+00, align 4
@L3 = common dso_local global float 0.000000e+00, align 4
@L4 = common dso_local global float 0.000000e+00, align 4
@L5 = common dso_local global float 0.000000e+00, align 4
@L6 = common dso_local global float 0.000000e+00, align 4
@cp_h = common dso_local global float 0.000000e+00, align 4
@cp_l = common dso_local global float 0.000000e+00, align 4
@cp = common dso_local global float 0.000000e+00, align 4
@dp_l = common dso_local global float* null, align 8
@dp_h = common dso_local global float* null, align 8
@ovt = common dso_local global float 0.000000e+00, align 4
@lg2_h = common dso_local global float 0.000000e+00, align 4
@lg2 = common dso_local global float 0.000000e+00, align 4
@lg2_l = common dso_local global float 0.000000e+00, align 4
@P1 = common dso_local global float 0.000000e+00, align 4
@P2 = common dso_local global float 0.000000e+00, align 4
@P3 = common dso_local global float 0.000000e+00, align 4
@P4 = common dso_local global float 0.000000e+00, align 4
@P5 = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @powf(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  %37 = load i32, i32* %27, align 4
  %38 = load float, float* %4, align 4
  %39 = call i32 @GET_FLOAT_WORD(i32 %37, float %38)
  %40 = load i32, i32* %28, align 4
  %41 = load float, float* %5, align 4
  %42 = call i32 @GET_FLOAT_WORD(i32 %40, float %41)
  %43 = load i32, i32* %27, align 4
  %44 = and i32 %43, 2147483647
  store i32 %44, i32* %29, align 4
  %45 = load i32, i32* %28, align 4
  %46 = and i32 %45, 2147483647
  store i32 %46, i32* %30, align 4
  %47 = load i32, i32* %30, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %2
  store float 1.000000e+00, float* %3, align 4
  br label %744

50:                                               ; preds = %2
  %51 = load i32, i32* %27, align 4
  %52 = icmp eq i32 %51, 1065353216
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store float 1.000000e+00, float* %3, align 4
  br label %744

54:                                               ; preds = %50
  %55 = load i32, i32* %29, align 4
  %56 = icmp sgt i32 %55, 2139095040
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %30, align 4
  %59 = icmp sgt i32 %58, 2139095040
  br i1 %59, label %60, label %64

60:                                               ; preds = %57, %54
  %61 = load float, float* %4, align 4
  %62 = load float, float* %5, align 4
  %63 = fadd float %61, %62
  store float %63, float* %3, align 4
  br label %744

64:                                               ; preds = %57
  store i32 0, i32* %25, align 4
  %65 = load i32, i32* %27, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %64
  %68 = load i32, i32* %30, align 4
  %69 = icmp sge i32 %68, 1266679808
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 2, i32* %25, align 4
  br label %94

71:                                               ; preds = %67
  %72 = load i32, i32* %30, align 4
  %73 = icmp sge i32 %72, 1065353216
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load i32, i32* %30, align 4
  %76 = ashr i32 %75, 23
  %77 = sub nsw i32 %76, 127
  store i32 %77, i32* %24, align 4
  %78 = load i32, i32* %30, align 4
  %79 = load i32, i32* %24, align 4
  %80 = sub nsw i32 23, %79
  %81 = ashr i32 %78, %80
  store i32 %81, i32* %23, align 4
  %82 = load i32, i32* %23, align 4
  %83 = load i32, i32* %24, align 4
  %84 = sub nsw i32 23, %83
  %85 = shl i32 %82, %84
  %86 = load i32, i32* %30, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %74
  %89 = load i32, i32* %23, align 4
  %90 = and i32 %89, 1
  %91 = sub nsw i32 2, %90
  store i32 %91, i32* %25, align 4
  br label %92

92:                                               ; preds = %88, %74
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93, %70
  br label %95

95:                                               ; preds = %94, %64
  %96 = load i32, i32* %30, align 4
  %97 = icmp eq i32 %96, 2139095040
  br i1 %97, label %98, label %128

98:                                               ; preds = %95
  %99 = load i32, i32* %29, align 4
  %100 = icmp eq i32 %99, 1065353216
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store float 1.000000e+00, float* %3, align 4
  br label %744

102:                                              ; preds = %98
  %103 = load i32, i32* %29, align 4
  %104 = icmp sgt i32 %103, 1065353216
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* %28, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load float, float* %5, align 4
  br label %111

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110, %108
  %112 = phi float [ %109, %108 ], [ 0.000000e+00, %110 ]
  store float %112, float* %3, align 4
  br label %744

113:                                              ; preds = %102
  %114 = load i32, i32* %29, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load i32, i32* %28, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %123

120:                                              ; preds = %116
  %121 = load float, float* %5, align 4
  %122 = fneg float %121
  br label %123

123:                                              ; preds = %120, %119
  %124 = phi float [ 0.000000e+00, %119 ], [ %122, %120 ]
  store float %124, float* %3, align 4
  br label %744

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127, %95
  %129 = load i32, i32* %30, align 4
  %130 = icmp eq i32 %129, 1065353216
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load i32, i32* %28, align 4
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load float, float* %4, align 4
  br label %139

136:                                              ; preds = %131
  %137 = load float, float* %4, align 4
  %138 = fdiv float 1.000000e+00, %137
  br label %139

139:                                              ; preds = %136, %134
  %140 = phi float [ %135, %134 ], [ %138, %136 ]
  store float %140, float* %3, align 4
  br label %744

141:                                              ; preds = %128
  %142 = load i32, i32* %28, align 4
  %143 = icmp eq i32 %142, 1073741824
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load float, float* %4, align 4
  %146 = load float, float* %4, align 4
  %147 = fmul float %145, %146
  store float %147, float* %3, align 4
  br label %744

148:                                              ; preds = %141
  %149 = load i32, i32* %28, align 4
  %150 = icmp eq i32 %149, 1056964608
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load i32, i32* %27, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load float, float* %4, align 4
  %156 = call float @sqrtf(float %155) #4
  store float %156, float* %3, align 4
  br label %744

157:                                              ; preds = %151
  br label %158

158:                                              ; preds = %157, %148
  %159 = load float, float* %4, align 4
  %160 = call float @llvm.fabs.f32(float %159)
  store float %160, float* %7, align 4
  %161 = load i32, i32* %29, align 4
  %162 = icmp eq i32 %161, 2139095040
  br i1 %162, label %169, label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %29, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %29, align 4
  %168 = icmp eq i32 %167, 1065353216
  br i1 %168, label %169, label %203

169:                                              ; preds = %166, %163, %158
  %170 = load float, float* %7, align 4
  store float %170, float* %6, align 4
  %171 = load i32, i32* %28, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load float, float* %6, align 4
  %175 = fdiv float 1.000000e+00, %174
  store float %175, float* %6, align 4
  br label %176

176:                                              ; preds = %173, %169
  %177 = load i32, i32* %27, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %176
  %180 = load i32, i32* %29, align 4
  %181 = sub nsw i32 %180, 1065353216
  %182 = load i32, i32* %25, align 4
  %183 = or i32 %181, %182
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %179
  %186 = load float, float* %6, align 4
  %187 = load float, float* %6, align 4
  %188 = fsub float %186, %187
  %189 = load float, float* %6, align 4
  %190 = load float, float* %6, align 4
  %191 = fsub float %189, %190
  %192 = fdiv float %188, %191
  store float %192, float* %6, align 4
  br label %200

193:                                              ; preds = %179
  %194 = load i32, i32* %25, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load float, float* %6, align 4
  %198 = fneg float %197
  store float %198, float* %6, align 4
  br label %199

199:                                              ; preds = %196, %193
  br label %200

200:                                              ; preds = %199, %185
  br label %201

201:                                              ; preds = %200, %176
  %202 = load float, float* %6, align 4
  store float %202, float* %3, align 4
  br label %744

203:                                              ; preds = %166
  store float 1.000000e+00, float* %17, align 4
  %204 = load i32, i32* %27, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %222

206:                                              ; preds = %203
  %207 = load i32, i32* %25, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %206
  %210 = load float, float* %4, align 4
  %211 = load float, float* %4, align 4
  %212 = fsub float %210, %211
  %213 = load float, float* %4, align 4
  %214 = load float, float* %4, align 4
  %215 = fsub float %213, %214
  %216 = fdiv float %212, %215
  store float %216, float* %3, align 4
  br label %744

217:                                              ; preds = %206
  %218 = load i32, i32* %25, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  store float -1.000000e+00, float* %17, align 4
  br label %221

221:                                              ; preds = %220, %217
  br label %222

222:                                              ; preds = %221, %203
  %223 = load i32, i32* %30, align 4
  %224 = icmp sgt i32 %223, 1291845632
  br i1 %224, label %225, label %303

225:                                              ; preds = %222
  %226 = load i32, i32* %29, align 4
  %227 = icmp slt i32 %226, 1065353208
  br i1 %227, label %228, label %245

228:                                              ; preds = %225
  %229 = load i32, i32* %28, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %228
  %232 = load float, float* %17, align 4
  %233 = load float, float* @huge, align 4
  %234 = fmul float %232, %233
  %235 = load float, float* @huge, align 4
  %236 = fmul float %234, %235
  br label %243

237:                                              ; preds = %228
  %238 = load float, float* %17, align 4
  %239 = load float, float* @tiny, align 4
  %240 = fmul float %238, %239
  %241 = load float, float* @tiny, align 4
  %242 = fmul float %240, %241
  br label %243

243:                                              ; preds = %237, %231
  %244 = phi float [ %236, %231 ], [ %242, %237 ]
  store float %244, float* %3, align 4
  br label %744

245:                                              ; preds = %225
  %246 = load i32, i32* %29, align 4
  %247 = icmp sgt i32 %246, 1065353223
  br i1 %247, label %248, label %265

248:                                              ; preds = %245
  %249 = load i32, i32* %28, align 4
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = load float, float* %17, align 4
  %253 = load float, float* @huge, align 4
  %254 = fmul float %252, %253
  %255 = load float, float* @huge, align 4
  %256 = fmul float %254, %255
  br label %263

257:                                              ; preds = %248
  %258 = load float, float* %17, align 4
  %259 = load float, float* @tiny, align 4
  %260 = fmul float %258, %259
  %261 = load float, float* @tiny, align 4
  %262 = fmul float %260, %261
  br label %263

263:                                              ; preds = %257, %251
  %264 = phi float [ %256, %251 ], [ %262, %257 ]
  store float %264, float* %3, align 4
  br label %744

265:                                              ; preds = %245
  %266 = load float, float* %7, align 4
  %267 = fsub float %266, 1.000000e+00
  store float %267, float* %18, align 4
  %268 = load float, float* %18, align 4
  %269 = load float, float* %18, align 4
  %270 = fmul float %268, %269
  %271 = load float, float* %18, align 4
  %272 = load float, float* %18, align 4
  %273 = fmul float %272, 2.500000e-01
  %274 = fsub float 0x3FD5555560000000, %273
  %275 = fmul float %271, %274
  %276 = fsub float 5.000000e-01, %275
  %277 = fmul float %270, %276
  store float %277, float* %21, align 4
  %278 = load float, float* @ivln2_h, align 4
  %279 = load float, float* %18, align 4
  %280 = fmul float %278, %279
  store float %280, float* %19, align 4
  %281 = load float, float* %18, align 4
  %282 = load float, float* @ivln2_l, align 4
  %283 = fmul float %281, %282
  %284 = load float, float* %21, align 4
  %285 = load float, float* @ivln2, align 4
  %286 = fmul float %284, %285
  %287 = fsub float %283, %286
  store float %287, float* %20, align 4
  %288 = load float, float* %19, align 4
  %289 = load float, float* %20, align 4
  %290 = fadd float %288, %289
  store float %290, float* %13, align 4
  %291 = load i32, i32* %31, align 4
  %292 = load float, float* %13, align 4
  %293 = call i32 @GET_FLOAT_WORD(i32 %291, float %292)
  %294 = load float, float* %13, align 4
  %295 = load i32, i32* %31, align 4
  %296 = and i32 %295, -4096
  %297 = call i32 @SET_FLOAT_WORD(float %294, i32 %296)
  %298 = load float, float* %20, align 4
  %299 = load float, float* %13, align 4
  %300 = load float, float* %19, align 4
  %301 = fsub float %299, %300
  %302 = fsub float %298, %301
  store float %302, float* %14, align 4
  br label %528

303:                                              ; preds = %222
  store i32 0, i32* %26, align 4
  %304 = load i32, i32* %29, align 4
  %305 = icmp slt i32 %304, 8388608
  br i1 %305, label %306, label %315

306:                                              ; preds = %303
  %307 = load float, float* @two24, align 4
  %308 = load float, float* %7, align 4
  %309 = fmul float %308, %307
  store float %309, float* %7, align 4
  %310 = load i32, i32* %26, align 4
  %311 = sub nsw i32 %310, 24
  store i32 %311, i32* %26, align 4
  %312 = load i32, i32* %29, align 4
  %313 = load float, float* %7, align 4
  %314 = call i32 @GET_FLOAT_WORD(i32 %312, float %313)
  br label %315

315:                                              ; preds = %306, %303
  %316 = load i32, i32* %29, align 4
  %317 = ashr i32 %316, 23
  %318 = sub nsw i32 %317, 127
  %319 = load i32, i32* %26, align 4
  %320 = add nsw i32 %319, %318
  store i32 %320, i32* %26, align 4
  %321 = load i32, i32* %29, align 4
  %322 = and i32 %321, 8388607
  store i32 %322, i32* %23, align 4
  %323 = load i32, i32* %23, align 4
  %324 = or i32 %323, 1065353216
  store i32 %324, i32* %29, align 4
  %325 = load i32, i32* %23, align 4
  %326 = icmp sle i32 %325, 1885297
  br i1 %326, label %327, label %328

327:                                              ; preds = %315
  store i32 0, i32* %24, align 4
  br label %338

328:                                              ; preds = %315
  %329 = load i32, i32* %23, align 4
  %330 = icmp slt i32 %329, 6140887
  br i1 %330, label %331, label %332

331:                                              ; preds = %328
  store i32 1, i32* %24, align 4
  br label %337

332:                                              ; preds = %328
  store i32 0, i32* %24, align 4
  %333 = load i32, i32* %26, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %26, align 4
  %335 = load i32, i32* %29, align 4
  %336 = sub nsw i32 %335, 8388608
  store i32 %336, i32* %29, align 4
  br label %337

337:                                              ; preds = %332, %331
  br label %338

338:                                              ; preds = %337, %327
  %339 = load float, float* %7, align 4
  %340 = load i32, i32* %29, align 4
  %341 = call i32 @SET_FLOAT_WORD(float %339, i32 %340)
  %342 = load float, float* %7, align 4
  %343 = load float*, float** @bp, align 8
  %344 = load i32, i32* %24, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %343, i64 %345
  %347 = load float, float* %346, align 4
  %348 = fsub float %342, %347
  store float %348, float* %19, align 4
  %349 = load float, float* %7, align 4
  %350 = load float*, float** @bp, align 8
  %351 = load i32, i32* %24, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds float, float* %350, i64 %352
  %354 = load float, float* %353, align 4
  %355 = fadd float %349, %354
  %356 = fdiv float 1.000000e+00, %355
  store float %356, float* %20, align 4
  %357 = load float, float* %19, align 4
  %358 = load float, float* %20, align 4
  %359 = fmul float %357, %358
  store float %359, float* %16, align 4
  %360 = load float, float* %16, align 4
  store float %360, float* %33, align 4
  %361 = load i32, i32* %31, align 4
  %362 = load float, float* %33, align 4
  %363 = call i32 @GET_FLOAT_WORD(i32 %361, float %362)
  %364 = load float, float* %33, align 4
  %365 = load i32, i32* %31, align 4
  %366 = and i32 %365, -4096
  %367 = call i32 @SET_FLOAT_WORD(float %364, i32 %366)
  %368 = load i32, i32* %29, align 4
  %369 = ashr i32 %368, 1
  %370 = and i32 %369, -4096
  %371 = or i32 %370, 536870912
  store i32 %371, i32* %31, align 4
  %372 = load float, float* %35, align 4
  %373 = load i32, i32* %31, align 4
  %374 = add nsw i32 %373, 4194304
  %375 = load i32, i32* %24, align 4
  %376 = shl i32 %375, 21
  %377 = add nsw i32 %374, %376
  %378 = call i32 @SET_FLOAT_WORD(float %372, i32 %377)
  %379 = load float, float* %7, align 4
  %380 = load float, float* %35, align 4
  %381 = load float*, float** @bp, align 8
  %382 = load i32, i32* %24, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds float, float* %381, i64 %383
  %385 = load float, float* %384, align 4
  %386 = fsub float %380, %385
  %387 = fsub float %379, %386
  store float %387, float* %36, align 4
  %388 = load float, float* %20, align 4
  %389 = load float, float* %19, align 4
  %390 = load float, float* %33, align 4
  %391 = load float, float* %35, align 4
  %392 = fmul float %390, %391
  %393 = fsub float %389, %392
  %394 = load float, float* %33, align 4
  %395 = load float, float* %36, align 4
  %396 = fmul float %394, %395
  %397 = fsub float %393, %396
  %398 = fmul float %388, %397
  store float %398, float* %34, align 4
  %399 = load float, float* %16, align 4
  %400 = load float, float* %16, align 4
  %401 = fmul float %399, %400
  store float %401, float* %32, align 4
  %402 = load float, float* %32, align 4
  %403 = load float, float* %32, align 4
  %404 = fmul float %402, %403
  %405 = load float, float* @L1, align 4
  %406 = load float, float* %32, align 4
  %407 = load float, float* @L2, align 4
  %408 = load float, float* %32, align 4
  %409 = load float, float* @L3, align 4
  %410 = load float, float* %32, align 4
  %411 = load float, float* @L4, align 4
  %412 = load float, float* %32, align 4
  %413 = load float, float* @L5, align 4
  %414 = load float, float* %32, align 4
  %415 = load float, float* @L6, align 4
  %416 = fmul float %414, %415
  %417 = fadd float %413, %416
  %418 = fmul float %412, %417
  %419 = fadd float %411, %418
  %420 = fmul float %410, %419
  %421 = fadd float %409, %420
  %422 = fmul float %408, %421
  %423 = fadd float %407, %422
  %424 = fmul float %406, %423
  %425 = fadd float %405, %424
  %426 = fmul float %404, %425
  store float %426, float* %15, align 4
  %427 = load float, float* %34, align 4
  %428 = load float, float* %33, align 4
  %429 = load float, float* %16, align 4
  %430 = fadd float %428, %429
  %431 = fmul float %427, %430
  %432 = load float, float* %15, align 4
  %433 = fadd float %432, %431
  store float %433, float* %15, align 4
  %434 = load float, float* %33, align 4
  %435 = load float, float* %33, align 4
  %436 = fmul float %434, %435
  store float %436, float* %32, align 4
  %437 = load float, float* %32, align 4
  %438 = fadd float 3.000000e+00, %437
  %439 = load float, float* %15, align 4
  %440 = fadd float %438, %439
  store float %440, float* %35, align 4
  %441 = load i32, i32* %31, align 4
  %442 = load float, float* %35, align 4
  %443 = call i32 @GET_FLOAT_WORD(i32 %441, float %442)
  %444 = load float, float* %35, align 4
  %445 = load i32, i32* %31, align 4
  %446 = and i32 %445, -4096
  %447 = call i32 @SET_FLOAT_WORD(float %444, i32 %446)
  %448 = load float, float* %15, align 4
  %449 = load float, float* %35, align 4
  %450 = fsub float %449, 3.000000e+00
  %451 = load float, float* %32, align 4
  %452 = fsub float %450, %451
  %453 = fsub float %448, %452
  store float %453, float* %36, align 4
  %454 = load float, float* %33, align 4
  %455 = load float, float* %35, align 4
  %456 = fmul float %454, %455
  store float %456, float* %19, align 4
  %457 = load float, float* %34, align 4
  %458 = load float, float* %35, align 4
  %459 = fmul float %457, %458
  %460 = load float, float* %36, align 4
  %461 = load float, float* %16, align 4
  %462 = fmul float %460, %461
  %463 = fadd float %459, %462
  store float %463, float* %20, align 4
  %464 = load float, float* %19, align 4
  %465 = load float, float* %20, align 4
  %466 = fadd float %464, %465
  store float %466, float* %10, align 4
  %467 = load i32, i32* %31, align 4
  %468 = load float, float* %10, align 4
  %469 = call i32 @GET_FLOAT_WORD(i32 %467, float %468)
  %470 = load float, float* %10, align 4
  %471 = load i32, i32* %31, align 4
  %472 = and i32 %471, -4096
  %473 = call i32 @SET_FLOAT_WORD(float %470, i32 %472)
  %474 = load float, float* %20, align 4
  %475 = load float, float* %10, align 4
  %476 = load float, float* %19, align 4
  %477 = fsub float %475, %476
  %478 = fsub float %474, %477
  store float %478, float* %11, align 4
  %479 = load float, float* @cp_h, align 4
  %480 = load float, float* %10, align 4
  %481 = fmul float %479, %480
  store float %481, float* %8, align 4
  %482 = load float, float* @cp_l, align 4
  %483 = load float, float* %10, align 4
  %484 = fmul float %482, %483
  %485 = load float, float* %11, align 4
  %486 = load float, float* @cp, align 4
  %487 = fmul float %485, %486
  %488 = fadd float %484, %487
  %489 = load float*, float** @dp_l, align 8
  %490 = load i32, i32* %24, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds float, float* %489, i64 %491
  %493 = load float, float* %492, align 4
  %494 = fadd float %488, %493
  store float %494, float* %9, align 4
  %495 = load i32, i32* %26, align 4
  %496 = sitofp i32 %495 to float
  store float %496, float* %18, align 4
  %497 = load float, float* %8, align 4
  %498 = load float, float* %9, align 4
  %499 = fadd float %497, %498
  %500 = load float*, float** @dp_h, align 8
  %501 = load i32, i32* %24, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds float, float* %500, i64 %502
  %504 = load float, float* %503, align 4
  %505 = fadd float %499, %504
  %506 = load float, float* %18, align 4
  %507 = fadd float %505, %506
  store float %507, float* %13, align 4
  %508 = load i32, i32* %31, align 4
  %509 = load float, float* %13, align 4
  %510 = call i32 @GET_FLOAT_WORD(i32 %508, float %509)
  %511 = load float, float* %13, align 4
  %512 = load i32, i32* %31, align 4
  %513 = and i32 %512, -4096
  %514 = call i32 @SET_FLOAT_WORD(float %511, i32 %513)
  %515 = load float, float* %9, align 4
  %516 = load float, float* %13, align 4
  %517 = load float, float* %18, align 4
  %518 = fsub float %516, %517
  %519 = load float*, float** @dp_h, align 8
  %520 = load i32, i32* %24, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds float, float* %519, i64 %521
  %523 = load float, float* %522, align 4
  %524 = fsub float %518, %523
  %525 = load float, float* %8, align 4
  %526 = fsub float %524, %525
  %527 = fsub float %515, %526
  store float %527, float* %14, align 4
  br label %528

528:                                              ; preds = %338, %265
  %529 = load i32, i32* %31, align 4
  %530 = load float, float* %5, align 4
  %531 = call i32 @GET_FLOAT_WORD(i32 %529, float %530)
  %532 = load float, float* %12, align 4
  %533 = load i32, i32* %31, align 4
  %534 = and i32 %533, -4096
  %535 = call i32 @SET_FLOAT_WORD(float %532, i32 %534)
  %536 = load float, float* %5, align 4
  %537 = load float, float* %12, align 4
  %538 = fsub float %536, %537
  %539 = load float, float* %13, align 4
  %540 = fmul float %538, %539
  %541 = load float, float* %5, align 4
  %542 = load float, float* %14, align 4
  %543 = fmul float %541, %542
  %544 = fadd float %540, %543
  store float %544, float* %11, align 4
  %545 = load float, float* %12, align 4
  %546 = load float, float* %13, align 4
  %547 = fmul float %545, %546
  store float %547, float* %10, align 4
  %548 = load float, float* %11, align 4
  %549 = load float, float* %10, align 4
  %550 = fadd float %548, %549
  store float %550, float* %6, align 4
  %551 = load i32, i32* %23, align 4
  %552 = load float, float* %6, align 4
  %553 = call i32 @GET_FLOAT_WORD(i32 %551, float %552)
  %554 = load i32, i32* %23, align 4
  %555 = icmp sgt i32 %554, 1124073472
  br i1 %555, label %556, label %562

556:                                              ; preds = %528
  %557 = load float, float* %17, align 4
  %558 = load float, float* @huge, align 4
  %559 = fmul float %557, %558
  %560 = load float, float* @huge, align 4
  %561 = fmul float %559, %560
  store float %561, float* %3, align 4
  br label %744

562:                                              ; preds = %528
  %563 = load i32, i32* %23, align 4
  %564 = icmp eq i32 %563, 1124073472
  br i1 %564, label %565, label %580

565:                                              ; preds = %562
  %566 = load float, float* %11, align 4
  %567 = load float, float* @ovt, align 4
  %568 = fadd float %566, %567
  %569 = load float, float* %6, align 4
  %570 = load float, float* %10, align 4
  %571 = fsub float %569, %570
  %572 = fcmp ogt float %568, %571
  br i1 %572, label %573, label %579

573:                                              ; preds = %565
  %574 = load float, float* %17, align 4
  %575 = load float, float* @huge, align 4
  %576 = fmul float %574, %575
  %577 = load float, float* @huge, align 4
  %578 = fmul float %576, %577
  store float %578, float* %3, align 4
  br label %744

579:                                              ; preds = %565
  br label %608

580:                                              ; preds = %562
  %581 = load i32, i32* %23, align 4
  %582 = and i32 %581, 2147483647
  %583 = icmp sgt i32 %582, 1125515264
  br i1 %583, label %584, label %590

584:                                              ; preds = %580
  %585 = load float, float* %17, align 4
  %586 = load float, float* @tiny, align 4
  %587 = fmul float %585, %586
  %588 = load float, float* @tiny, align 4
  %589 = fmul float %587, %588
  store float %589, float* %3, align 4
  br label %744

590:                                              ; preds = %580
  %591 = load i32, i32* %23, align 4
  %592 = icmp eq i32 %591, -1021968384
  br i1 %592, label %593, label %606

593:                                              ; preds = %590
  %594 = load float, float* %11, align 4
  %595 = load float, float* %6, align 4
  %596 = load float, float* %10, align 4
  %597 = fsub float %595, %596
  %598 = fcmp ole float %594, %597
  br i1 %598, label %599, label %605

599:                                              ; preds = %593
  %600 = load float, float* %17, align 4
  %601 = load float, float* @tiny, align 4
  %602 = fmul float %600, %601
  %603 = load float, float* @tiny, align 4
  %604 = fmul float %602, %603
  store float %604, float* %3, align 4
  br label %744

605:                                              ; preds = %593
  br label %606

606:                                              ; preds = %605, %590
  br label %607

607:                                              ; preds = %606
  br label %608

608:                                              ; preds = %607, %579
  br label %609

609:                                              ; preds = %608
  %610 = load i32, i32* %23, align 4
  %611 = and i32 %610, 2147483647
  store i32 %611, i32* %22, align 4
  %612 = load i32, i32* %22, align 4
  %613 = ashr i32 %612, 23
  %614 = sub nsw i32 %613, 127
  store i32 %614, i32* %24, align 4
  store i32 0, i32* %26, align 4
  %615 = load i32, i32* %22, align 4
  %616 = icmp sgt i32 %615, 1056964608
  br i1 %616, label %617, label %649

617:                                              ; preds = %609
  %618 = load i32, i32* %23, align 4
  %619 = load i32, i32* %24, align 4
  %620 = add nsw i32 %619, 1
  %621 = ashr i32 8388608, %620
  %622 = add nsw i32 %618, %621
  store i32 %622, i32* %26, align 4
  %623 = load i32, i32* %26, align 4
  %624 = and i32 %623, 2147483647
  %625 = ashr i32 %624, 23
  %626 = sub nsw i32 %625, 127
  store i32 %626, i32* %24, align 4
  %627 = load float, float* %18, align 4
  %628 = load i32, i32* %26, align 4
  %629 = load i32, i32* %24, align 4
  %630 = ashr i32 8388607, %629
  %631 = xor i32 %630, -1
  %632 = and i32 %628, %631
  %633 = call i32 @SET_FLOAT_WORD(float %627, i32 %632)
  %634 = load i32, i32* %26, align 4
  %635 = and i32 %634, 8388607
  %636 = or i32 %635, 8388608
  %637 = load i32, i32* %24, align 4
  %638 = sub nsw i32 23, %637
  %639 = ashr i32 %636, %638
  store i32 %639, i32* %26, align 4
  %640 = load i32, i32* %23, align 4
  %641 = icmp slt i32 %640, 0
  br i1 %641, label %642, label %645

642:                                              ; preds = %617
  %643 = load i32, i32* %26, align 4
  %644 = sub nsw i32 0, %643
  store i32 %644, i32* %26, align 4
  br label %645

645:                                              ; preds = %642, %617
  %646 = load float, float* %18, align 4
  %647 = load float, float* %10, align 4
  %648 = fsub float %647, %646
  store float %648, float* %10, align 4
  br label %649

649:                                              ; preds = %645, %609
  %650 = load float, float* %11, align 4
  %651 = load float, float* %10, align 4
  %652 = fadd float %650, %651
  store float %652, float* %18, align 4
  %653 = load i32, i32* %31, align 4
  %654 = load float, float* %18, align 4
  %655 = call i32 @GET_FLOAT_WORD(i32 %653, float %654)
  %656 = load float, float* %18, align 4
  %657 = load i32, i32* %31, align 4
  %658 = and i32 %657, -32768
  %659 = call i32 @SET_FLOAT_WORD(float %656, i32 %658)
  %660 = load float, float* %18, align 4
  %661 = load float, float* @lg2_h, align 4
  %662 = fmul float %660, %661
  store float %662, float* %19, align 4
  %663 = load float, float* %11, align 4
  %664 = load float, float* %18, align 4
  %665 = load float, float* %10, align 4
  %666 = fsub float %664, %665
  %667 = fsub float %663, %666
  %668 = load float, float* @lg2, align 4
  %669 = fmul float %667, %668
  %670 = load float, float* %18, align 4
  %671 = load float, float* @lg2_l, align 4
  %672 = fmul float %670, %671
  %673 = fadd float %669, %672
  store float %673, float* %20, align 4
  %674 = load float, float* %19, align 4
  %675 = load float, float* %20, align 4
  %676 = fadd float %674, %675
  store float %676, float* %6, align 4
  %677 = load float, float* %20, align 4
  %678 = load float, float* %6, align 4
  %679 = load float, float* %19, align 4
  %680 = fsub float %678, %679
  %681 = fsub float %677, %680
  store float %681, float* %21, align 4
  %682 = load float, float* %6, align 4
  %683 = load float, float* %6, align 4
  %684 = fmul float %682, %683
  store float %684, float* %18, align 4
  %685 = load float, float* %6, align 4
  %686 = load float, float* %18, align 4
  %687 = load float, float* @P1, align 4
  %688 = load float, float* %18, align 4
  %689 = load float, float* @P2, align 4
  %690 = load float, float* %18, align 4
  %691 = load float, float* @P3, align 4
  %692 = load float, float* %18, align 4
  %693 = load float, float* @P4, align 4
  %694 = load float, float* %18, align 4
  %695 = load float, float* @P5, align 4
  %696 = fmul float %694, %695
  %697 = fadd float %693, %696
  %698 = fmul float %692, %697
  %699 = fadd float %691, %698
  %700 = fmul float %690, %699
  %701 = fadd float %689, %700
  %702 = fmul float %688, %701
  %703 = fadd float %687, %702
  %704 = fmul float %686, %703
  %705 = fsub float %685, %704
  store float %705, float* %13, align 4
  %706 = load float, float* %6, align 4
  %707 = load float, float* %13, align 4
  %708 = fmul float %706, %707
  %709 = load float, float* %13, align 4
  %710 = fsub float %709, 2.000000e+00
  %711 = fdiv float %708, %710
  %712 = load float, float* %21, align 4
  %713 = load float, float* %6, align 4
  %714 = load float, float* %21, align 4
  %715 = fmul float %713, %714
  %716 = fadd float %712, %715
  %717 = fsub float %711, %716
  store float %717, float* %15, align 4
  %718 = load float, float* %15, align 4
  %719 = load float, float* %6, align 4
  %720 = fsub float %718, %719
  %721 = fsub float 1.000000e+00, %720
  store float %721, float* %6, align 4
  %722 = load i32, i32* %23, align 4
  %723 = load float, float* %6, align 4
  %724 = call i32 @GET_FLOAT_WORD(i32 %722, float %723)
  %725 = load i32, i32* %26, align 4
  %726 = shl i32 %725, 23
  %727 = load i32, i32* %23, align 4
  %728 = add nsw i32 %727, %726
  store i32 %728, i32* %23, align 4
  %729 = load i32, i32* %23, align 4
  %730 = ashr i32 %729, 23
  %731 = icmp sle i32 %730, 0
  br i1 %731, label %732, label %736

732:                                              ; preds = %649
  %733 = load float, float* %6, align 4
  %734 = load i32, i32* %26, align 4
  %735 = call float @scalbnf(float %733, i32 %734) #4
  store float %735, float* %6, align 4
  br label %740

736:                                              ; preds = %649
  %737 = load float, float* %6, align 4
  %738 = load i32, i32* %23, align 4
  %739 = call i32 @SET_FLOAT_WORD(float %737, i32 %738)
  br label %740

740:                                              ; preds = %736, %732
  %741 = load float, float* %17, align 4
  %742 = load float, float* %6, align 4
  %743 = fmul float %741, %742
  store float %743, float* %3, align 4
  br label %744

744:                                              ; preds = %740, %599, %584, %573, %556, %263, %243, %209, %201, %154, %144, %139, %123, %111, %101, %60, %53, %49
  %745 = load float, float* %3, align 4
  ret float %745
}

declare dso_local i32 @GET_FLOAT_WORD(i32, float) #1

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

declare dso_local i32 @SET_FLOAT_WORD(float, i32) #1

; Function Attrs: nounwind
declare dso_local float @scalbnf(float, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
