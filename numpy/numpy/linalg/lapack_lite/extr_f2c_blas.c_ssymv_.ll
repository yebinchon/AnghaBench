; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_ssymv_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_ssymv_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ssymv_.i__ = internal global i32 0, align 4
@ssymv_.j = internal global i32 0, align 4
@ssymv_.ix = internal global i32 0, align 4
@ssymv_.iy = internal global i32 0, align 4
@ssymv_.jx = internal global i32 0, align 4
@ssymv_.jy = internal global i32 0, align 4
@ssymv_.kx = internal global i32 0, align 4
@ssymv_.ky = internal global i32 0, align 4
@ssymv_.info = internal global i32 0, align 4
@ssymv_.temp1 = internal global float 0.000000e+00, align 4
@ssymv_.temp2 = internal global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SSYMV \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssymv_(i8* %0, i32* %1, float* %2, float* %3, i32* %4, float* %5, i32* %6, float* %7, float* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i32* %1, i32** %13, align 8
  store float* %2, float** %14, align 8
  store float* %3, float** %15, align 8
  store i32* %4, i32** %16, align 8
  store float* %5, float** %17, align 8
  store i32* %6, i32** %18, align 8
  store float* %7, float** %19, align 8
  store float* %8, float** %20, align 8
  store i32* %9, i32** %21, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %22, align 4
  %28 = load i32, i32* %22, align 4
  %29 = add nsw i32 1, %28
  store i32 %29, i32* %23, align 4
  %30 = load i32, i32* %23, align 4
  %31 = load float*, float** %15, align 8
  %32 = sext i32 %30 to i64
  %33 = sub i64 0, %32
  %34 = getelementptr inbounds float, float* %31, i64 %33
  store float* %34, float** %15, align 8
  %35 = load float*, float** %17, align 8
  %36 = getelementptr inbounds float, float* %35, i32 -1
  store float* %36, float** %17, align 8
  %37 = load float*, float** %20, align 8
  %38 = getelementptr inbounds float, float* %37, i32 -1
  store float* %38, float** %20, align 8
  store i32 0, i32* @ssymv_.info, align 4
  %39 = load i8*, i8** %12, align 8
  %40 = call i8* @lsame_(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %10
  %43 = load i8*, i8** %12, align 8
  %44 = call i8* @lsame_(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  store i32 1, i32* @ssymv_.info, align 4
  br label %74

47:                                               ; preds = %42, %10
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 2, i32* @ssymv_.info, align 4
  br label %73

52:                                               ; preds = %47
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %13, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @max(i32 1, i32 %56)
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 5, i32* @ssymv_.info, align 4
  br label %72

60:                                               ; preds = %52
  %61 = load i32*, i32** %18, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 7, i32* @ssymv_.info, align 4
  br label %71

65:                                               ; preds = %60
  %66 = load i32*, i32** %21, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 10, i32* @ssymv_.info, align 4
  br label %70

70:                                               ; preds = %69, %65
  br label %71

71:                                               ; preds = %70, %64
  br label %72

72:                                               ; preds = %71, %59
  br label %73

73:                                               ; preds = %72, %51
  br label %74

74:                                               ; preds = %73, %46
  %75 = load i32, i32* @ssymv_.info, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* @ssymv_.info)
  store i32 0, i32* %11, align 4
  br label %664

79:                                               ; preds = %74
  %80 = load i32*, i32** %13, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load float*, float** %14, align 8
  %85 = load float, float* %84, align 4
  %86 = fcmp oeq float %85, 0.000000e+00
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load float*, float** %19, align 8
  %89 = load float, float* %88, align 4
  %90 = fcmp oeq float %89, 1.000000e+00
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %79
  store i32 0, i32* %11, align 4
  br label %664

92:                                               ; preds = %87, %83
  %93 = load i32*, i32** %18, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 1, i32* @ssymv_.kx, align 4
  br label %105

97:                                               ; preds = %92
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  %101 = load i32*, i32** %18, align 8
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %100, %102
  %104 = sub nsw i32 1, %103
  store i32 %104, i32* @ssymv_.kx, align 4
  br label %105

105:                                              ; preds = %97, %96
  %106 = load i32*, i32** %21, align 8
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 1, i32* @ssymv_.ky, align 4
  br label %118

110:                                              ; preds = %105
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  %114 = load i32*, i32** %21, align 8
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %113, %115
  %117 = sub nsw i32 1, %116
  store i32 %117, i32* @ssymv_.ky, align 4
  br label %118

118:                                              ; preds = %110, %109
  %119 = load float*, float** %19, align 8
  %120 = load float, float* %119, align 4
  %121 = fcmp une float %120, 1.000000e+00
  br i1 %121, label %122, label %226

122:                                              ; preds = %118
  %123 = load i32*, i32** %21, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %171

126:                                              ; preds = %122
  %127 = load float*, float** %19, align 8
  %128 = load float, float* %127, align 4
  %129 = fcmp oeq float %128, 0.000000e+00
  br i1 %129, label %130, label %146

130:                                              ; preds = %126
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %24, align 4
  store i32 1, i32* @ssymv_.i__, align 4
  br label %133

133:                                              ; preds = %142, %130
  %134 = load i32, i32* @ssymv_.i__, align 4
  %135 = load i32, i32* %24, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load float*, float** %20, align 8
  %139 = load i32, i32* @ssymv_.i__, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float, float* %138, i64 %140
  store float 0.000000e+00, float* %141, align 4
  br label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @ssymv_.i__, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* @ssymv_.i__, align 4
  br label %133

145:                                              ; preds = %133
  br label %170

146:                                              ; preds = %126
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %24, align 4
  store i32 1, i32* @ssymv_.i__, align 4
  br label %149

149:                                              ; preds = %166, %146
  %150 = load i32, i32* @ssymv_.i__, align 4
  %151 = load i32, i32* %24, align 4
  %152 = icmp sle i32 %150, %151
  br i1 %152, label %153, label %169

153:                                              ; preds = %149
  %154 = load float*, float** %19, align 8
  %155 = load float, float* %154, align 4
  %156 = load float*, float** %20, align 8
  %157 = load i32, i32* @ssymv_.i__, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %156, i64 %158
  %160 = load float, float* %159, align 4
  %161 = fmul float %155, %160
  %162 = load float*, float** %20, align 8
  %163 = load i32, i32* @ssymv_.i__, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %162, i64 %164
  store float %161, float* %165, align 4
  br label %166

166:                                              ; preds = %153
  %167 = load i32, i32* @ssymv_.i__, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* @ssymv_.i__, align 4
  br label %149

169:                                              ; preds = %149
  br label %170

170:                                              ; preds = %169, %145
  br label %225

171:                                              ; preds = %122
  %172 = load i32, i32* @ssymv_.ky, align 4
  store i32 %172, i32* @ssymv_.iy, align 4
  %173 = load float*, float** %19, align 8
  %174 = load float, float* %173, align 4
  %175 = fcmp oeq float %174, 0.000000e+00
  br i1 %175, label %176, label %196

176:                                              ; preds = %171
  %177 = load i32*, i32** %13, align 8
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %24, align 4
  store i32 1, i32* @ssymv_.i__, align 4
  br label %179

179:                                              ; preds = %192, %176
  %180 = load i32, i32* @ssymv_.i__, align 4
  %181 = load i32, i32* %24, align 4
  %182 = icmp sle i32 %180, %181
  br i1 %182, label %183, label %195

183:                                              ; preds = %179
  %184 = load float*, float** %20, align 8
  %185 = load i32, i32* @ssymv_.iy, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %184, i64 %186
  store float 0.000000e+00, float* %187, align 4
  %188 = load i32*, i32** %21, align 8
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @ssymv_.iy, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* @ssymv_.iy, align 4
  br label %192

192:                                              ; preds = %183
  %193 = load i32, i32* @ssymv_.i__, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* @ssymv_.i__, align 4
  br label %179

195:                                              ; preds = %179
  br label %224

196:                                              ; preds = %171
  %197 = load i32*, i32** %13, align 8
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %24, align 4
  store i32 1, i32* @ssymv_.i__, align 4
  br label %199

199:                                              ; preds = %220, %196
  %200 = load i32, i32* @ssymv_.i__, align 4
  %201 = load i32, i32* %24, align 4
  %202 = icmp sle i32 %200, %201
  br i1 %202, label %203, label %223

203:                                              ; preds = %199
  %204 = load float*, float** %19, align 8
  %205 = load float, float* %204, align 4
  %206 = load float*, float** %20, align 8
  %207 = load i32, i32* @ssymv_.iy, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  %210 = load float, float* %209, align 4
  %211 = fmul float %205, %210
  %212 = load float*, float** %20, align 8
  %213 = load i32, i32* @ssymv_.iy, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %212, i64 %214
  store float %211, float* %215, align 4
  %216 = load i32*, i32** %21, align 8
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @ssymv_.iy, align 4
  %219 = add nsw i32 %218, %217
  store i32 %219, i32* @ssymv_.iy, align 4
  br label %220

220:                                              ; preds = %203
  %221 = load i32, i32* @ssymv_.i__, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* @ssymv_.i__, align 4
  br label %199

223:                                              ; preds = %199
  br label %224

224:                                              ; preds = %223, %195
  br label %225

225:                                              ; preds = %224, %170
  br label %226

226:                                              ; preds = %225, %118
  %227 = load float*, float** %14, align 8
  %228 = load float, float* %227, align 4
  %229 = fcmp oeq float %228, 0.000000e+00
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  store i32 0, i32* %11, align 4
  br label %664

231:                                              ; preds = %226
  %232 = load i8*, i8** %12, align 8
  %233 = call i8* @lsame_(i8* %232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %446

235:                                              ; preds = %231
  %236 = load i32*, i32** %18, align 8
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %334

239:                                              ; preds = %235
  %240 = load i32*, i32** %21, align 8
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %334

243:                                              ; preds = %239
  %244 = load i32*, i32** %13, align 8
  %245 = load i32, i32* %244, align 4
  store i32 %245, i32* %24, align 4
  store i32 1, i32* @ssymv_.j, align 4
  br label %246

246:                                              ; preds = %330, %243
  %247 = load i32, i32* @ssymv_.j, align 4
  %248 = load i32, i32* %24, align 4
  %249 = icmp sle i32 %247, %248
  br i1 %249, label %250, label %333

250:                                              ; preds = %246
  %251 = load float*, float** %14, align 8
  %252 = load float, float* %251, align 4
  %253 = load float*, float** %17, align 8
  %254 = load i32, i32* @ssymv_.j, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %253, i64 %255
  %257 = load float, float* %256, align 4
  %258 = fmul float %252, %257
  store float %258, float* @ssymv_.temp1, align 4
  store float 0.000000e+00, float* @ssymv_.temp2, align 4
  %259 = load i32, i32* @ssymv_.j, align 4
  %260 = sub nsw i32 %259, 1
  store i32 %260, i32* %25, align 4
  store i32 1, i32* @ssymv_.i__, align 4
  br label %261

261:                                              ; preds = %300, %250
  %262 = load i32, i32* @ssymv_.i__, align 4
  %263 = load i32, i32* %25, align 4
  %264 = icmp sle i32 %262, %263
  br i1 %264, label %265, label %303

265:                                              ; preds = %261
  %266 = load float, float* @ssymv_.temp1, align 4
  %267 = load float*, float** %15, align 8
  %268 = load i32, i32* @ssymv_.i__, align 4
  %269 = load i32, i32* @ssymv_.j, align 4
  %270 = load i32, i32* %22, align 4
  %271 = mul nsw i32 %269, %270
  %272 = add nsw i32 %268, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %267, i64 %273
  %275 = load float, float* %274, align 4
  %276 = fmul float %266, %275
  %277 = load float*, float** %20, align 8
  %278 = load i32, i32* @ssymv_.i__, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %277, i64 %279
  %281 = load float, float* %280, align 4
  %282 = fadd float %281, %276
  store float %282, float* %280, align 4
  %283 = load float*, float** %15, align 8
  %284 = load i32, i32* @ssymv_.i__, align 4
  %285 = load i32, i32* @ssymv_.j, align 4
  %286 = load i32, i32* %22, align 4
  %287 = mul nsw i32 %285, %286
  %288 = add nsw i32 %284, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds float, float* %283, i64 %289
  %291 = load float, float* %290, align 4
  %292 = load float*, float** %17, align 8
  %293 = load i32, i32* @ssymv_.i__, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %292, i64 %294
  %296 = load float, float* %295, align 4
  %297 = fmul float %291, %296
  %298 = load float, float* @ssymv_.temp2, align 4
  %299 = fadd float %298, %297
  store float %299, float* @ssymv_.temp2, align 4
  br label %300

300:                                              ; preds = %265
  %301 = load i32, i32* @ssymv_.i__, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* @ssymv_.i__, align 4
  br label %261

303:                                              ; preds = %261
  %304 = load float*, float** %20, align 8
  %305 = load i32, i32* @ssymv_.j, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds float, float* %304, i64 %306
  %308 = load float, float* %307, align 4
  %309 = load float, float* @ssymv_.temp1, align 4
  %310 = load float*, float** %15, align 8
  %311 = load i32, i32* @ssymv_.j, align 4
  %312 = load i32, i32* @ssymv_.j, align 4
  %313 = load i32, i32* %22, align 4
  %314 = mul nsw i32 %312, %313
  %315 = add nsw i32 %311, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float, float* %310, i64 %316
  %318 = load float, float* %317, align 4
  %319 = fmul float %309, %318
  %320 = fadd float %308, %319
  %321 = load float*, float** %14, align 8
  %322 = load float, float* %321, align 4
  %323 = load float, float* @ssymv_.temp2, align 4
  %324 = fmul float %322, %323
  %325 = fadd float %320, %324
  %326 = load float*, float** %20, align 8
  %327 = load i32, i32* @ssymv_.j, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds float, float* %326, i64 %328
  store float %325, float* %329, align 4
  br label %330

330:                                              ; preds = %303
  %331 = load i32, i32* @ssymv_.j, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* @ssymv_.j, align 4
  br label %246

333:                                              ; preds = %246
  br label %445

334:                                              ; preds = %239, %235
  %335 = load i32, i32* @ssymv_.kx, align 4
  store i32 %335, i32* @ssymv_.jx, align 4
  %336 = load i32, i32* @ssymv_.ky, align 4
  store i32 %336, i32* @ssymv_.jy, align 4
  %337 = load i32*, i32** %13, align 8
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* %24, align 4
  store i32 1, i32* @ssymv_.j, align 4
  br label %339

339:                                              ; preds = %441, %334
  %340 = load i32, i32* @ssymv_.j, align 4
  %341 = load i32, i32* %24, align 4
  %342 = icmp sle i32 %340, %341
  br i1 %342, label %343, label %444

343:                                              ; preds = %339
  %344 = load float*, float** %14, align 8
  %345 = load float, float* %344, align 4
  %346 = load float*, float** %17, align 8
  %347 = load i32, i32* @ssymv_.jx, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds float, float* %346, i64 %348
  %350 = load float, float* %349, align 4
  %351 = fmul float %345, %350
  store float %351, float* @ssymv_.temp1, align 4
  store float 0.000000e+00, float* @ssymv_.temp2, align 4
  %352 = load i32, i32* @ssymv_.kx, align 4
  store i32 %352, i32* @ssymv_.ix, align 4
  %353 = load i32, i32* @ssymv_.ky, align 4
  store i32 %353, i32* @ssymv_.iy, align 4
  %354 = load i32, i32* @ssymv_.j, align 4
  %355 = sub nsw i32 %354, 1
  store i32 %355, i32* %25, align 4
  store i32 1, i32* @ssymv_.i__, align 4
  br label %356

356:                                              ; preds = %403, %343
  %357 = load i32, i32* @ssymv_.i__, align 4
  %358 = load i32, i32* %25, align 4
  %359 = icmp sle i32 %357, %358
  br i1 %359, label %360, label %406

360:                                              ; preds = %356
  %361 = load float, float* @ssymv_.temp1, align 4
  %362 = load float*, float** %15, align 8
  %363 = load i32, i32* @ssymv_.i__, align 4
  %364 = load i32, i32* @ssymv_.j, align 4
  %365 = load i32, i32* %22, align 4
  %366 = mul nsw i32 %364, %365
  %367 = add nsw i32 %363, %366
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds float, float* %362, i64 %368
  %370 = load float, float* %369, align 4
  %371 = fmul float %361, %370
  %372 = load float*, float** %20, align 8
  %373 = load i32, i32* @ssymv_.iy, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds float, float* %372, i64 %374
  %376 = load float, float* %375, align 4
  %377 = fadd float %376, %371
  store float %377, float* %375, align 4
  %378 = load float*, float** %15, align 8
  %379 = load i32, i32* @ssymv_.i__, align 4
  %380 = load i32, i32* @ssymv_.j, align 4
  %381 = load i32, i32* %22, align 4
  %382 = mul nsw i32 %380, %381
  %383 = add nsw i32 %379, %382
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds float, float* %378, i64 %384
  %386 = load float, float* %385, align 4
  %387 = load float*, float** %17, align 8
  %388 = load i32, i32* @ssymv_.ix, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds float, float* %387, i64 %389
  %391 = load float, float* %390, align 4
  %392 = fmul float %386, %391
  %393 = load float, float* @ssymv_.temp2, align 4
  %394 = fadd float %393, %392
  store float %394, float* @ssymv_.temp2, align 4
  %395 = load i32*, i32** %18, align 8
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* @ssymv_.ix, align 4
  %398 = add nsw i32 %397, %396
  store i32 %398, i32* @ssymv_.ix, align 4
  %399 = load i32*, i32** %21, align 8
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* @ssymv_.iy, align 4
  %402 = add nsw i32 %401, %400
  store i32 %402, i32* @ssymv_.iy, align 4
  br label %403

403:                                              ; preds = %360
  %404 = load i32, i32* @ssymv_.i__, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* @ssymv_.i__, align 4
  br label %356

406:                                              ; preds = %356
  %407 = load float*, float** %20, align 8
  %408 = load i32, i32* @ssymv_.jy, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds float, float* %407, i64 %409
  %411 = load float, float* %410, align 4
  %412 = load float, float* @ssymv_.temp1, align 4
  %413 = load float*, float** %15, align 8
  %414 = load i32, i32* @ssymv_.j, align 4
  %415 = load i32, i32* @ssymv_.j, align 4
  %416 = load i32, i32* %22, align 4
  %417 = mul nsw i32 %415, %416
  %418 = add nsw i32 %414, %417
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds float, float* %413, i64 %419
  %421 = load float, float* %420, align 4
  %422 = fmul float %412, %421
  %423 = fadd float %411, %422
  %424 = load float*, float** %14, align 8
  %425 = load float, float* %424, align 4
  %426 = load float, float* @ssymv_.temp2, align 4
  %427 = fmul float %425, %426
  %428 = fadd float %423, %427
  %429 = load float*, float** %20, align 8
  %430 = load i32, i32* @ssymv_.jy, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds float, float* %429, i64 %431
  store float %428, float* %432, align 4
  %433 = load i32*, i32** %18, align 8
  %434 = load i32, i32* %433, align 4
  %435 = load i32, i32* @ssymv_.jx, align 4
  %436 = add nsw i32 %435, %434
  store i32 %436, i32* @ssymv_.jx, align 4
  %437 = load i32*, i32** %21, align 8
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* @ssymv_.jy, align 4
  %440 = add nsw i32 %439, %438
  store i32 %440, i32* @ssymv_.jy, align 4
  br label %441

441:                                              ; preds = %406
  %442 = load i32, i32* @ssymv_.j, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* @ssymv_.j, align 4
  br label %339

444:                                              ; preds = %339
  br label %445

445:                                              ; preds = %444, %333
  br label %663

446:                                              ; preds = %231
  %447 = load i32*, i32** %18, align 8
  %448 = load i32, i32* %447, align 4
  %449 = icmp eq i32 %448, 1
  br i1 %449, label %450, label %548

450:                                              ; preds = %446
  %451 = load i32*, i32** %21, align 8
  %452 = load i32, i32* %451, align 4
  %453 = icmp eq i32 %452, 1
  br i1 %453, label %454, label %548

454:                                              ; preds = %450
  %455 = load i32*, i32** %13, align 8
  %456 = load i32, i32* %455, align 4
  store i32 %456, i32* %24, align 4
  store i32 1, i32* @ssymv_.j, align 4
  br label %457

457:                                              ; preds = %544, %454
  %458 = load i32, i32* @ssymv_.j, align 4
  %459 = load i32, i32* %24, align 4
  %460 = icmp sle i32 %458, %459
  br i1 %460, label %461, label %547

461:                                              ; preds = %457
  %462 = load float*, float** %14, align 8
  %463 = load float, float* %462, align 4
  %464 = load float*, float** %17, align 8
  %465 = load i32, i32* @ssymv_.j, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds float, float* %464, i64 %466
  %468 = load float, float* %467, align 4
  %469 = fmul float %463, %468
  store float %469, float* @ssymv_.temp1, align 4
  store float 0.000000e+00, float* @ssymv_.temp2, align 4
  %470 = load float, float* @ssymv_.temp1, align 4
  %471 = load float*, float** %15, align 8
  %472 = load i32, i32* @ssymv_.j, align 4
  %473 = load i32, i32* @ssymv_.j, align 4
  %474 = load i32, i32* %22, align 4
  %475 = mul nsw i32 %473, %474
  %476 = add nsw i32 %472, %475
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds float, float* %471, i64 %477
  %479 = load float, float* %478, align 4
  %480 = fmul float %470, %479
  %481 = load float*, float** %20, align 8
  %482 = load i32, i32* @ssymv_.j, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds float, float* %481, i64 %483
  %485 = load float, float* %484, align 4
  %486 = fadd float %485, %480
  store float %486, float* %484, align 4
  %487 = load i32*, i32** %13, align 8
  %488 = load i32, i32* %487, align 4
  store i32 %488, i32* %25, align 4
  %489 = load i32, i32* @ssymv_.j, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* @ssymv_.i__, align 4
  br label %491

491:                                              ; preds = %530, %461
  %492 = load i32, i32* @ssymv_.i__, align 4
  %493 = load i32, i32* %25, align 4
  %494 = icmp sle i32 %492, %493
  br i1 %494, label %495, label %533

495:                                              ; preds = %491
  %496 = load float, float* @ssymv_.temp1, align 4
  %497 = load float*, float** %15, align 8
  %498 = load i32, i32* @ssymv_.i__, align 4
  %499 = load i32, i32* @ssymv_.j, align 4
  %500 = load i32, i32* %22, align 4
  %501 = mul nsw i32 %499, %500
  %502 = add nsw i32 %498, %501
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds float, float* %497, i64 %503
  %505 = load float, float* %504, align 4
  %506 = fmul float %496, %505
  %507 = load float*, float** %20, align 8
  %508 = load i32, i32* @ssymv_.i__, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds float, float* %507, i64 %509
  %511 = load float, float* %510, align 4
  %512 = fadd float %511, %506
  store float %512, float* %510, align 4
  %513 = load float*, float** %15, align 8
  %514 = load i32, i32* @ssymv_.i__, align 4
  %515 = load i32, i32* @ssymv_.j, align 4
  %516 = load i32, i32* %22, align 4
  %517 = mul nsw i32 %515, %516
  %518 = add nsw i32 %514, %517
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds float, float* %513, i64 %519
  %521 = load float, float* %520, align 4
  %522 = load float*, float** %17, align 8
  %523 = load i32, i32* @ssymv_.i__, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds float, float* %522, i64 %524
  %526 = load float, float* %525, align 4
  %527 = fmul float %521, %526
  %528 = load float, float* @ssymv_.temp2, align 4
  %529 = fadd float %528, %527
  store float %529, float* @ssymv_.temp2, align 4
  br label %530

530:                                              ; preds = %495
  %531 = load i32, i32* @ssymv_.i__, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* @ssymv_.i__, align 4
  br label %491

533:                                              ; preds = %491
  %534 = load float*, float** %14, align 8
  %535 = load float, float* %534, align 4
  %536 = load float, float* @ssymv_.temp2, align 4
  %537 = fmul float %535, %536
  %538 = load float*, float** %20, align 8
  %539 = load i32, i32* @ssymv_.j, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds float, float* %538, i64 %540
  %542 = load float, float* %541, align 4
  %543 = fadd float %542, %537
  store float %543, float* %541, align 4
  br label %544

544:                                              ; preds = %533
  %545 = load i32, i32* @ssymv_.j, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* @ssymv_.j, align 4
  br label %457

547:                                              ; preds = %457
  br label %662

548:                                              ; preds = %450, %446
  %549 = load i32, i32* @ssymv_.kx, align 4
  store i32 %549, i32* @ssymv_.jx, align 4
  %550 = load i32, i32* @ssymv_.ky, align 4
  store i32 %550, i32* @ssymv_.jy, align 4
  %551 = load i32*, i32** %13, align 8
  %552 = load i32, i32* %551, align 4
  store i32 %552, i32* %24, align 4
  store i32 1, i32* @ssymv_.j, align 4
  br label %553

553:                                              ; preds = %658, %548
  %554 = load i32, i32* @ssymv_.j, align 4
  %555 = load i32, i32* %24, align 4
  %556 = icmp sle i32 %554, %555
  br i1 %556, label %557, label %661

557:                                              ; preds = %553
  %558 = load float*, float** %14, align 8
  %559 = load float, float* %558, align 4
  %560 = load float*, float** %17, align 8
  %561 = load i32, i32* @ssymv_.jx, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds float, float* %560, i64 %562
  %564 = load float, float* %563, align 4
  %565 = fmul float %559, %564
  store float %565, float* @ssymv_.temp1, align 4
  store float 0.000000e+00, float* @ssymv_.temp2, align 4
  %566 = load float, float* @ssymv_.temp1, align 4
  %567 = load float*, float** %15, align 8
  %568 = load i32, i32* @ssymv_.j, align 4
  %569 = load i32, i32* @ssymv_.j, align 4
  %570 = load i32, i32* %22, align 4
  %571 = mul nsw i32 %569, %570
  %572 = add nsw i32 %568, %571
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds float, float* %567, i64 %573
  %575 = load float, float* %574, align 4
  %576 = fmul float %566, %575
  %577 = load float*, float** %20, align 8
  %578 = load i32, i32* @ssymv_.jy, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds float, float* %577, i64 %579
  %581 = load float, float* %580, align 4
  %582 = fadd float %581, %576
  store float %582, float* %580, align 4
  %583 = load i32, i32* @ssymv_.jx, align 4
  store i32 %583, i32* @ssymv_.ix, align 4
  %584 = load i32, i32* @ssymv_.jy, align 4
  store i32 %584, i32* @ssymv_.iy, align 4
  %585 = load i32*, i32** %13, align 8
  %586 = load i32, i32* %585, align 4
  store i32 %586, i32* %25, align 4
  %587 = load i32, i32* @ssymv_.j, align 4
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* @ssymv_.i__, align 4
  br label %589

589:                                              ; preds = %636, %557
  %590 = load i32, i32* @ssymv_.i__, align 4
  %591 = load i32, i32* %25, align 4
  %592 = icmp sle i32 %590, %591
  br i1 %592, label %593, label %639

593:                                              ; preds = %589
  %594 = load i32*, i32** %18, align 8
  %595 = load i32, i32* %594, align 4
  %596 = load i32, i32* @ssymv_.ix, align 4
  %597 = add nsw i32 %596, %595
  store i32 %597, i32* @ssymv_.ix, align 4
  %598 = load i32*, i32** %21, align 8
  %599 = load i32, i32* %598, align 4
  %600 = load i32, i32* @ssymv_.iy, align 4
  %601 = add nsw i32 %600, %599
  store i32 %601, i32* @ssymv_.iy, align 4
  %602 = load float, float* @ssymv_.temp1, align 4
  %603 = load float*, float** %15, align 8
  %604 = load i32, i32* @ssymv_.i__, align 4
  %605 = load i32, i32* @ssymv_.j, align 4
  %606 = load i32, i32* %22, align 4
  %607 = mul nsw i32 %605, %606
  %608 = add nsw i32 %604, %607
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds float, float* %603, i64 %609
  %611 = load float, float* %610, align 4
  %612 = fmul float %602, %611
  %613 = load float*, float** %20, align 8
  %614 = load i32, i32* @ssymv_.iy, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds float, float* %613, i64 %615
  %617 = load float, float* %616, align 4
  %618 = fadd float %617, %612
  store float %618, float* %616, align 4
  %619 = load float*, float** %15, align 8
  %620 = load i32, i32* @ssymv_.i__, align 4
  %621 = load i32, i32* @ssymv_.j, align 4
  %622 = load i32, i32* %22, align 4
  %623 = mul nsw i32 %621, %622
  %624 = add nsw i32 %620, %623
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds float, float* %619, i64 %625
  %627 = load float, float* %626, align 4
  %628 = load float*, float** %17, align 8
  %629 = load i32, i32* @ssymv_.ix, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds float, float* %628, i64 %630
  %632 = load float, float* %631, align 4
  %633 = fmul float %627, %632
  %634 = load float, float* @ssymv_.temp2, align 4
  %635 = fadd float %634, %633
  store float %635, float* @ssymv_.temp2, align 4
  br label %636

636:                                              ; preds = %593
  %637 = load i32, i32* @ssymv_.i__, align 4
  %638 = add nsw i32 %637, 1
  store i32 %638, i32* @ssymv_.i__, align 4
  br label %589

639:                                              ; preds = %589
  %640 = load float*, float** %14, align 8
  %641 = load float, float* %640, align 4
  %642 = load float, float* @ssymv_.temp2, align 4
  %643 = fmul float %641, %642
  %644 = load float*, float** %20, align 8
  %645 = load i32, i32* @ssymv_.jy, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds float, float* %644, i64 %646
  %648 = load float, float* %647, align 4
  %649 = fadd float %648, %643
  store float %649, float* %647, align 4
  %650 = load i32*, i32** %18, align 8
  %651 = load i32, i32* %650, align 4
  %652 = load i32, i32* @ssymv_.jx, align 4
  %653 = add nsw i32 %652, %651
  store i32 %653, i32* @ssymv_.jx, align 4
  %654 = load i32*, i32** %21, align 8
  %655 = load i32, i32* %654, align 4
  %656 = load i32, i32* @ssymv_.jy, align 4
  %657 = add nsw i32 %656, %655
  store i32 %657, i32* @ssymv_.jy, align 4
  br label %658

658:                                              ; preds = %639
  %659 = load i32, i32* @ssymv_.j, align 4
  %660 = add nsw i32 %659, 1
  store i32 %660, i32* @ssymv_.j, align 4
  br label %553

661:                                              ; preds = %553
  br label %662

662:                                              ; preds = %661, %547
  br label %663

663:                                              ; preds = %662, %445
  store i32 0, i32* %11, align 4
  br label %664

664:                                              ; preds = %663, %230, %91, %77
  %665 = load i32, i32* %11, align 4
  ret i32 %665
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
