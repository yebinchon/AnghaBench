; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_sgemv_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_sgemv_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sgemv_.i__ = internal global i32 0, align 4
@sgemv_.j = internal global i32 0, align 4
@sgemv_.ix = internal global i32 0, align 4
@sgemv_.iy = internal global i32 0, align 4
@sgemv_.jx = internal global i32 0, align 4
@sgemv_.jy = internal global i32 0, align 4
@sgemv_.kx = internal global i32 0, align 4
@sgemv_.ky = internal global i32 0, align 4
@sgemv_.info = internal global i32 0, align 4
@sgemv_.temp = internal global float 0.000000e+00, align 4
@sgemv_.lenx = internal global i32 0, align 4
@sgemv_.leny = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"SGEMV \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgemv_(i8* %0, i32* %1, i32* %2, float* %3, float* %4, i32* %5, float* %6, i32* %7, float* %8, float* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store float* %3, float** %16, align 8
  store float* %4, float** %17, align 8
  store i32* %5, i32** %18, align 8
  store float* %6, float** %19, align 8
  store i32* %7, i32** %20, align 8
  store float* %8, float** %21, align 8
  store float* %9, float** %22, align 8
  store i32* %10, i32** %23, align 8
  %28 = load i32*, i32** %18, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %24, align 4
  %30 = load i32, i32* %24, align 4
  %31 = add nsw i32 1, %30
  store i32 %31, i32* %25, align 4
  %32 = load i32, i32* %25, align 4
  %33 = load float*, float** %17, align 8
  %34 = sext i32 %32 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds float, float* %33, i64 %35
  store float* %36, float** %17, align 8
  %37 = load float*, float** %19, align 8
  %38 = getelementptr inbounds float, float* %37, i32 -1
  store float* %38, float** %19, align 8
  %39 = load float*, float** %22, align 8
  %40 = getelementptr inbounds float, float* %39, i32 -1
  store float* %40, float** %22, align 8
  store i32 0, i32* @sgemv_.info, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = call i8* @lsame_(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i8* %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %11
  %45 = load i8*, i8** %13, align 8
  %46 = call i8* @lsame_(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp ne i8* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %13, align 8
  %50 = call i8* @lsame_(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 1, i32* @sgemv_.info, align 4
  br label %86

53:                                               ; preds = %48, %44, %11
  %54 = load i32*, i32** %14, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 2, i32* @sgemv_.info, align 4
  br label %85

58:                                               ; preds = %53
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 3, i32* @sgemv_.info, align 4
  br label %84

63:                                               ; preds = %58
  %64 = load i32*, i32** %18, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @max(i32 1, i32 %67)
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 6, i32* @sgemv_.info, align 4
  br label %83

71:                                               ; preds = %63
  %72 = load i32*, i32** %20, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 8, i32* @sgemv_.info, align 4
  br label %82

76:                                               ; preds = %71
  %77 = load i32*, i32** %23, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 11, i32* @sgemv_.info, align 4
  br label %81

81:                                               ; preds = %80, %76
  br label %82

82:                                               ; preds = %81, %75
  br label %83

83:                                               ; preds = %82, %70
  br label %84

84:                                               ; preds = %83, %62
  br label %85

85:                                               ; preds = %84, %57
  br label %86

86:                                               ; preds = %85, %52
  %87 = load i32, i32* @sgemv_.info, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* @sgemv_.info)
  store i32 0, i32* %12, align 4
  br label %510

91:                                               ; preds = %86
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %107, label %95

95:                                               ; preds = %91
  %96 = load i32*, i32** %15, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %95
  %100 = load float*, float** %16, align 8
  %101 = load float, float* %100, align 4
  %102 = fcmp oeq float %101, 0.000000e+00
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load float*, float** %21, align 8
  %105 = load float, float* %104, align 4
  %106 = fcmp oeq float %105, 1.000000e+00
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %95, %91
  store i32 0, i32* %12, align 4
  br label %510

108:                                              ; preds = %103, %99
  %109 = load i8*, i8** %13, align 8
  %110 = call i8* @lsame_(i8* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32*, i32** %15, align 8
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* @sgemv_.lenx, align 4
  %115 = load i32*, i32** %14, align 8
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* @sgemv_.leny, align 4
  br label %122

117:                                              ; preds = %108
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* @sgemv_.lenx, align 4
  %120 = load i32*, i32** %15, align 8
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* @sgemv_.leny, align 4
  br label %122

122:                                              ; preds = %117, %112
  %123 = load i32*, i32** %20, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store i32 1, i32* @sgemv_.kx, align 4
  br label %134

127:                                              ; preds = %122
  %128 = load i32, i32* @sgemv_.lenx, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32*, i32** %20, align 8
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %129, %131
  %133 = sub nsw i32 1, %132
  store i32 %133, i32* @sgemv_.kx, align 4
  br label %134

134:                                              ; preds = %127, %126
  %135 = load i32*, i32** %23, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 1, i32* @sgemv_.ky, align 4
  br label %146

139:                                              ; preds = %134
  %140 = load i32, i32* @sgemv_.leny, align 4
  %141 = sub nsw i32 %140, 1
  %142 = load i32*, i32** %23, align 8
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %141, %143
  %145 = sub nsw i32 1, %144
  store i32 %145, i32* @sgemv_.ky, align 4
  br label %146

146:                                              ; preds = %139, %138
  %147 = load float*, float** %21, align 8
  %148 = load float, float* %147, align 4
  %149 = fcmp une float %148, 1.000000e+00
  br i1 %149, label %150, label %250

150:                                              ; preds = %146
  %151 = load i32*, i32** %23, align 8
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %197

154:                                              ; preds = %150
  %155 = load float*, float** %21, align 8
  %156 = load float, float* %155, align 4
  %157 = fcmp oeq float %156, 0.000000e+00
  br i1 %157, label %158, label %173

158:                                              ; preds = %154
  %159 = load i32, i32* @sgemv_.leny, align 4
  store i32 %159, i32* %26, align 4
  store i32 1, i32* @sgemv_.i__, align 4
  br label %160

160:                                              ; preds = %169, %158
  %161 = load i32, i32* @sgemv_.i__, align 4
  %162 = load i32, i32* %26, align 4
  %163 = icmp sle i32 %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %160
  %165 = load float*, float** %22, align 8
  %166 = load i32, i32* @sgemv_.i__, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %165, i64 %167
  store float 0.000000e+00, float* %168, align 4
  br label %169

169:                                              ; preds = %164
  %170 = load i32, i32* @sgemv_.i__, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* @sgemv_.i__, align 4
  br label %160

172:                                              ; preds = %160
  br label %196

173:                                              ; preds = %154
  %174 = load i32, i32* @sgemv_.leny, align 4
  store i32 %174, i32* %26, align 4
  store i32 1, i32* @sgemv_.i__, align 4
  br label %175

175:                                              ; preds = %192, %173
  %176 = load i32, i32* @sgemv_.i__, align 4
  %177 = load i32, i32* %26, align 4
  %178 = icmp sle i32 %176, %177
  br i1 %178, label %179, label %195

179:                                              ; preds = %175
  %180 = load float*, float** %21, align 8
  %181 = load float, float* %180, align 4
  %182 = load float*, float** %22, align 8
  %183 = load i32, i32* @sgemv_.i__, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %182, i64 %184
  %186 = load float, float* %185, align 4
  %187 = fmul float %181, %186
  %188 = load float*, float** %22, align 8
  %189 = load i32, i32* @sgemv_.i__, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %188, i64 %190
  store float %187, float* %191, align 4
  br label %192

192:                                              ; preds = %179
  %193 = load i32, i32* @sgemv_.i__, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* @sgemv_.i__, align 4
  br label %175

195:                                              ; preds = %175
  br label %196

196:                                              ; preds = %195, %172
  br label %249

197:                                              ; preds = %150
  %198 = load i32, i32* @sgemv_.ky, align 4
  store i32 %198, i32* @sgemv_.iy, align 4
  %199 = load float*, float** %21, align 8
  %200 = load float, float* %199, align 4
  %201 = fcmp oeq float %200, 0.000000e+00
  br i1 %201, label %202, label %221

202:                                              ; preds = %197
  %203 = load i32, i32* @sgemv_.leny, align 4
  store i32 %203, i32* %26, align 4
  store i32 1, i32* @sgemv_.i__, align 4
  br label %204

204:                                              ; preds = %217, %202
  %205 = load i32, i32* @sgemv_.i__, align 4
  %206 = load i32, i32* %26, align 4
  %207 = icmp sle i32 %205, %206
  br i1 %207, label %208, label %220

208:                                              ; preds = %204
  %209 = load float*, float** %22, align 8
  %210 = load i32, i32* @sgemv_.iy, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %209, i64 %211
  store float 0.000000e+00, float* %212, align 4
  %213 = load i32*, i32** %23, align 8
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @sgemv_.iy, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* @sgemv_.iy, align 4
  br label %217

217:                                              ; preds = %208
  %218 = load i32, i32* @sgemv_.i__, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* @sgemv_.i__, align 4
  br label %204

220:                                              ; preds = %204
  br label %248

221:                                              ; preds = %197
  %222 = load i32, i32* @sgemv_.leny, align 4
  store i32 %222, i32* %26, align 4
  store i32 1, i32* @sgemv_.i__, align 4
  br label %223

223:                                              ; preds = %244, %221
  %224 = load i32, i32* @sgemv_.i__, align 4
  %225 = load i32, i32* %26, align 4
  %226 = icmp sle i32 %224, %225
  br i1 %226, label %227, label %247

227:                                              ; preds = %223
  %228 = load float*, float** %21, align 8
  %229 = load float, float* %228, align 4
  %230 = load float*, float** %22, align 8
  %231 = load i32, i32* @sgemv_.iy, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float, float* %230, i64 %232
  %234 = load float, float* %233, align 4
  %235 = fmul float %229, %234
  %236 = load float*, float** %22, align 8
  %237 = load i32, i32* @sgemv_.iy, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %236, i64 %238
  store float %235, float* %239, align 4
  %240 = load i32*, i32** %23, align 8
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @sgemv_.iy, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* @sgemv_.iy, align 4
  br label %244

244:                                              ; preds = %227
  %245 = load i32, i32* @sgemv_.i__, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* @sgemv_.i__, align 4
  br label %223

247:                                              ; preds = %223
  br label %248

248:                                              ; preds = %247, %220
  br label %249

249:                                              ; preds = %248, %196
  br label %250

250:                                              ; preds = %249, %146
  %251 = load float*, float** %16, align 8
  %252 = load float, float* %251, align 4
  %253 = fcmp oeq float %252, 0.000000e+00
  br i1 %253, label %254, label %255

254:                                              ; preds = %250
  store i32 0, i32* %12, align 4
  br label %510

255:                                              ; preds = %250
  %256 = load i8*, i8** %13, align 8
  %257 = call i8* @lsame_(i8* %256, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %390

259:                                              ; preds = %255
  %260 = load i32, i32* @sgemv_.kx, align 4
  store i32 %260, i32* @sgemv_.jx, align 4
  %261 = load i32*, i32** %23, align 8
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %324

264:                                              ; preds = %259
  %265 = load i32*, i32** %15, align 8
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %26, align 4
  store i32 1, i32* @sgemv_.j, align 4
  br label %267

267:                                              ; preds = %320, %264
  %268 = load i32, i32* @sgemv_.j, align 4
  %269 = load i32, i32* %26, align 4
  %270 = icmp sle i32 %268, %269
  br i1 %270, label %271, label %323

271:                                              ; preds = %267
  %272 = load float*, float** %19, align 8
  %273 = load i32, i32* @sgemv_.jx, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float, float* %272, i64 %274
  %276 = load float, float* %275, align 4
  %277 = fcmp une float %276, 0.000000e+00
  br i1 %277, label %278, label %315

278:                                              ; preds = %271
  %279 = load float*, float** %16, align 8
  %280 = load float, float* %279, align 4
  %281 = load float*, float** %19, align 8
  %282 = load i32, i32* @sgemv_.jx, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %281, i64 %283
  %285 = load float, float* %284, align 4
  %286 = fmul float %280, %285
  store float %286, float* @sgemv_.temp, align 4
  %287 = load i32*, i32** %14, align 8
  %288 = load i32, i32* %287, align 4
  store i32 %288, i32* %27, align 4
  store i32 1, i32* @sgemv_.i__, align 4
  br label %289

289:                                              ; preds = %311, %278
  %290 = load i32, i32* @sgemv_.i__, align 4
  %291 = load i32, i32* %27, align 4
  %292 = icmp sle i32 %290, %291
  br i1 %292, label %293, label %314

293:                                              ; preds = %289
  %294 = load float, float* @sgemv_.temp, align 4
  %295 = load float*, float** %17, align 8
  %296 = load i32, i32* @sgemv_.i__, align 4
  %297 = load i32, i32* @sgemv_.j, align 4
  %298 = load i32, i32* %24, align 4
  %299 = mul nsw i32 %297, %298
  %300 = add nsw i32 %296, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds float, float* %295, i64 %301
  %303 = load float, float* %302, align 4
  %304 = fmul float %294, %303
  %305 = load float*, float** %22, align 8
  %306 = load i32, i32* @sgemv_.i__, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds float, float* %305, i64 %307
  %309 = load float, float* %308, align 4
  %310 = fadd float %309, %304
  store float %310, float* %308, align 4
  br label %311

311:                                              ; preds = %293
  %312 = load i32, i32* @sgemv_.i__, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* @sgemv_.i__, align 4
  br label %289

314:                                              ; preds = %289
  br label %315

315:                                              ; preds = %314, %271
  %316 = load i32*, i32** %20, align 8
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @sgemv_.jx, align 4
  %319 = add nsw i32 %318, %317
  store i32 %319, i32* @sgemv_.jx, align 4
  br label %320

320:                                              ; preds = %315
  %321 = load i32, i32* @sgemv_.j, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* @sgemv_.j, align 4
  br label %267

323:                                              ; preds = %267
  br label %389

324:                                              ; preds = %259
  %325 = load i32*, i32** %15, align 8
  %326 = load i32, i32* %325, align 4
  store i32 %326, i32* %26, align 4
  store i32 1, i32* @sgemv_.j, align 4
  br label %327

327:                                              ; preds = %385, %324
  %328 = load i32, i32* @sgemv_.j, align 4
  %329 = load i32, i32* %26, align 4
  %330 = icmp sle i32 %328, %329
  br i1 %330, label %331, label %388

331:                                              ; preds = %327
  %332 = load float*, float** %19, align 8
  %333 = load i32, i32* @sgemv_.jx, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds float, float* %332, i64 %334
  %336 = load float, float* %335, align 4
  %337 = fcmp une float %336, 0.000000e+00
  br i1 %337, label %338, label %380

338:                                              ; preds = %331
  %339 = load float*, float** %16, align 8
  %340 = load float, float* %339, align 4
  %341 = load float*, float** %19, align 8
  %342 = load i32, i32* @sgemv_.jx, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds float, float* %341, i64 %343
  %345 = load float, float* %344, align 4
  %346 = fmul float %340, %345
  store float %346, float* @sgemv_.temp, align 4
  %347 = load i32, i32* @sgemv_.ky, align 4
  store i32 %347, i32* @sgemv_.iy, align 4
  %348 = load i32*, i32** %14, align 8
  %349 = load i32, i32* %348, align 4
  store i32 %349, i32* %27, align 4
  store i32 1, i32* @sgemv_.i__, align 4
  br label %350

350:                                              ; preds = %376, %338
  %351 = load i32, i32* @sgemv_.i__, align 4
  %352 = load i32, i32* %27, align 4
  %353 = icmp sle i32 %351, %352
  br i1 %353, label %354, label %379

354:                                              ; preds = %350
  %355 = load float, float* @sgemv_.temp, align 4
  %356 = load float*, float** %17, align 8
  %357 = load i32, i32* @sgemv_.i__, align 4
  %358 = load i32, i32* @sgemv_.j, align 4
  %359 = load i32, i32* %24, align 4
  %360 = mul nsw i32 %358, %359
  %361 = add nsw i32 %357, %360
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds float, float* %356, i64 %362
  %364 = load float, float* %363, align 4
  %365 = fmul float %355, %364
  %366 = load float*, float** %22, align 8
  %367 = load i32, i32* @sgemv_.iy, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds float, float* %366, i64 %368
  %370 = load float, float* %369, align 4
  %371 = fadd float %370, %365
  store float %371, float* %369, align 4
  %372 = load i32*, i32** %23, align 8
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* @sgemv_.iy, align 4
  %375 = add nsw i32 %374, %373
  store i32 %375, i32* @sgemv_.iy, align 4
  br label %376

376:                                              ; preds = %354
  %377 = load i32, i32* @sgemv_.i__, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* @sgemv_.i__, align 4
  br label %350

379:                                              ; preds = %350
  br label %380

380:                                              ; preds = %379, %331
  %381 = load i32*, i32** %20, align 8
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @sgemv_.jx, align 4
  %384 = add nsw i32 %383, %382
  store i32 %384, i32* @sgemv_.jx, align 4
  br label %385

385:                                              ; preds = %380
  %386 = load i32, i32* @sgemv_.j, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* @sgemv_.j, align 4
  br label %327

388:                                              ; preds = %327
  br label %389

389:                                              ; preds = %388, %323
  br label %509

390:                                              ; preds = %255
  %391 = load i32, i32* @sgemv_.ky, align 4
  store i32 %391, i32* @sgemv_.jy, align 4
  %392 = load i32*, i32** %20, align 8
  %393 = load i32, i32* %392, align 4
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %395, label %449

395:                                              ; preds = %390
  %396 = load i32*, i32** %15, align 8
  %397 = load i32, i32* %396, align 4
  store i32 %397, i32* %26, align 4
  store i32 1, i32* @sgemv_.j, align 4
  br label %398

398:                                              ; preds = %445, %395
  %399 = load i32, i32* @sgemv_.j, align 4
  %400 = load i32, i32* %26, align 4
  %401 = icmp sle i32 %399, %400
  br i1 %401, label %402, label %448

402:                                              ; preds = %398
  store float 0.000000e+00, float* @sgemv_.temp, align 4
  %403 = load i32*, i32** %14, align 8
  %404 = load i32, i32* %403, align 4
  store i32 %404, i32* %27, align 4
  store i32 1, i32* @sgemv_.i__, align 4
  br label %405

405:                                              ; preds = %427, %402
  %406 = load i32, i32* @sgemv_.i__, align 4
  %407 = load i32, i32* %27, align 4
  %408 = icmp sle i32 %406, %407
  br i1 %408, label %409, label %430

409:                                              ; preds = %405
  %410 = load float*, float** %17, align 8
  %411 = load i32, i32* @sgemv_.i__, align 4
  %412 = load i32, i32* @sgemv_.j, align 4
  %413 = load i32, i32* %24, align 4
  %414 = mul nsw i32 %412, %413
  %415 = add nsw i32 %411, %414
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds float, float* %410, i64 %416
  %418 = load float, float* %417, align 4
  %419 = load float*, float** %19, align 8
  %420 = load i32, i32* @sgemv_.i__, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds float, float* %419, i64 %421
  %423 = load float, float* %422, align 4
  %424 = fmul float %418, %423
  %425 = load float, float* @sgemv_.temp, align 4
  %426 = fadd float %425, %424
  store float %426, float* @sgemv_.temp, align 4
  br label %427

427:                                              ; preds = %409
  %428 = load i32, i32* @sgemv_.i__, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* @sgemv_.i__, align 4
  br label %405

430:                                              ; preds = %405
  %431 = load float*, float** %16, align 8
  %432 = load float, float* %431, align 4
  %433 = load float, float* @sgemv_.temp, align 4
  %434 = fmul float %432, %433
  %435 = load float*, float** %22, align 8
  %436 = load i32, i32* @sgemv_.jy, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds float, float* %435, i64 %437
  %439 = load float, float* %438, align 4
  %440 = fadd float %439, %434
  store float %440, float* %438, align 4
  %441 = load i32*, i32** %23, align 8
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @sgemv_.jy, align 4
  %444 = add nsw i32 %443, %442
  store i32 %444, i32* @sgemv_.jy, align 4
  br label %445

445:                                              ; preds = %430
  %446 = load i32, i32* @sgemv_.j, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* @sgemv_.j, align 4
  br label %398

448:                                              ; preds = %398
  br label %508

449:                                              ; preds = %390
  %450 = load i32*, i32** %15, align 8
  %451 = load i32, i32* %450, align 4
  store i32 %451, i32* %26, align 4
  store i32 1, i32* @sgemv_.j, align 4
  br label %452

452:                                              ; preds = %504, %449
  %453 = load i32, i32* @sgemv_.j, align 4
  %454 = load i32, i32* %26, align 4
  %455 = icmp sle i32 %453, %454
  br i1 %455, label %456, label %507

456:                                              ; preds = %452
  store float 0.000000e+00, float* @sgemv_.temp, align 4
  %457 = load i32, i32* @sgemv_.kx, align 4
  store i32 %457, i32* @sgemv_.ix, align 4
  %458 = load i32*, i32** %14, align 8
  %459 = load i32, i32* %458, align 4
  store i32 %459, i32* %27, align 4
  store i32 1, i32* @sgemv_.i__, align 4
  br label %460

460:                                              ; preds = %486, %456
  %461 = load i32, i32* @sgemv_.i__, align 4
  %462 = load i32, i32* %27, align 4
  %463 = icmp sle i32 %461, %462
  br i1 %463, label %464, label %489

464:                                              ; preds = %460
  %465 = load float*, float** %17, align 8
  %466 = load i32, i32* @sgemv_.i__, align 4
  %467 = load i32, i32* @sgemv_.j, align 4
  %468 = load i32, i32* %24, align 4
  %469 = mul nsw i32 %467, %468
  %470 = add nsw i32 %466, %469
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds float, float* %465, i64 %471
  %473 = load float, float* %472, align 4
  %474 = load float*, float** %19, align 8
  %475 = load i32, i32* @sgemv_.ix, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds float, float* %474, i64 %476
  %478 = load float, float* %477, align 4
  %479 = fmul float %473, %478
  %480 = load float, float* @sgemv_.temp, align 4
  %481 = fadd float %480, %479
  store float %481, float* @sgemv_.temp, align 4
  %482 = load i32*, i32** %20, align 8
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @sgemv_.ix, align 4
  %485 = add nsw i32 %484, %483
  store i32 %485, i32* @sgemv_.ix, align 4
  br label %486

486:                                              ; preds = %464
  %487 = load i32, i32* @sgemv_.i__, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* @sgemv_.i__, align 4
  br label %460

489:                                              ; preds = %460
  %490 = load float*, float** %16, align 8
  %491 = load float, float* %490, align 4
  %492 = load float, float* @sgemv_.temp, align 4
  %493 = fmul float %491, %492
  %494 = load float*, float** %22, align 8
  %495 = load i32, i32* @sgemv_.jy, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds float, float* %494, i64 %496
  %498 = load float, float* %497, align 4
  %499 = fadd float %498, %493
  store float %499, float* %497, align 4
  %500 = load i32*, i32** %23, align 8
  %501 = load i32, i32* %500, align 4
  %502 = load i32, i32* @sgemv_.jy, align 4
  %503 = add nsw i32 %502, %501
  store i32 %503, i32* @sgemv_.jy, align 4
  br label %504

504:                                              ; preds = %489
  %505 = load i32, i32* @sgemv_.j, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* @sgemv_.j, align 4
  br label %452

507:                                              ; preds = %452
  br label %508

508:                                              ; preds = %507, %448
  br label %509

509:                                              ; preds = %508, %389
  store i32 0, i32* %12, align 4
  br label %510

510:                                              ; preds = %509, %254, %107, %89
  %511 = load i32, i32* %12, align 4
  ret i32 %511
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
