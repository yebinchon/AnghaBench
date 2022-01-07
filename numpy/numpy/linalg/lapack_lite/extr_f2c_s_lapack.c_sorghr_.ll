; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sorghr_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sorghr_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sorghr_.i__ = internal global i32 0, align 4
@sorghr_.j = internal global i32 0, align 4
@sorghr_.nb = internal global i32 0, align 4
@sorghr_.nh = internal global i32 0, align 4
@sorghr_.iinfo = internal global i32 0, align 4
@sorghr_.lwkopt = internal global i32 0, align 4
@sorghr_.lquery = internal global i32 0, align 4
@c__1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"SORGQR\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@c_n1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"SORGHR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sorghr_(i32* %0, i32* %1, i32* %2, float* %3, i32* %4, float* %5, float* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store float* %3, float** %14, align 8
  store i32* %4, i32** %15, align 8
  store float* %5, float** %16, align 8
  store float* %6, float** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %20, align 4
  %26 = load i32, i32* %20, align 4
  %27 = add nsw i32 1, %26
  store i32 %27, i32* %21, align 4
  %28 = load i32, i32* %21, align 4
  %29 = load float*, float** %14, align 8
  %30 = sext i32 %28 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds float, float* %29, i64 %31
  store float* %32, float** %14, align 8
  %33 = load float*, float** %16, align 8
  %34 = getelementptr inbounds float, float* %33, i32 -1
  store float* %34, float** %16, align 8
  %35 = load float*, float** %17, align 8
  %36 = getelementptr inbounds float, float* %35, i32 -1
  store float* %36, float** %17, align 8
  %37 = load i32*, i32** %19, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %39, %41
  store i32 %42, i32* @sorghr_.nh, align 4
  %43 = load i32*, i32** %18, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, -1
  %46 = zext i1 %45 to i32
  store i32 %46, i32* @sorghr_.lquery, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %9
  %51 = load i32*, i32** %19, align 8
  store i32 -1, i32* %51, align 4
  br label %106

52:                                               ; preds = %9
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %63, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @max(i32 1, i32 %60)
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56, %52
  %64 = load i32*, i32** %19, align 8
  store i32 -2, i32* %64, align 4
  br label %105

65:                                               ; preds = %56
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @min(i32 %69, i32 %71)
  %73 = icmp slt i32 %67, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %65
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74, %65
  %81 = load i32*, i32** %19, align 8
  store i32 -3, i32* %81, align 4
  br label %104

82:                                               ; preds = %74
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @max(i32 1, i32 %86)
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32*, i32** %19, align 8
  store i32 -5, i32* %90, align 4
  br label %103

91:                                               ; preds = %82
  %92 = load i32*, i32** %18, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @sorghr_.nh, align 4
  %95 = call i32 @max(i32 1, i32 %94)
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load i32, i32* @sorghr_.lquery, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = load i32*, i32** %19, align 8
  store i32 -8, i32* %101, align 4
  br label %102

102:                                              ; preds = %100, %97, %91
  br label %103

103:                                              ; preds = %102, %89
  br label %104

104:                                              ; preds = %103, %80
  br label %105

105:                                              ; preds = %104, %63
  br label %106

106:                                              ; preds = %105, %50
  %107 = load i32*, i32** %19, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* @sorghr_.nh, i32* @sorghr_.nh, i32* @sorghr_.nh, i32* @c_n1, i32 6, i32 1)
  store i32 %111, i32* @sorghr_.nb, align 4
  %112 = load i32, i32* @sorghr_.nh, align 4
  %113 = call i32 @max(i32 1, i32 %112)
  %114 = load i32, i32* @sorghr_.nb, align 4
  %115 = mul nsw i32 %113, %114
  store i32 %115, i32* @sorghr_.lwkopt, align 4
  %116 = load i32, i32* @sorghr_.lwkopt, align 4
  %117 = sitofp i32 %116 to float
  %118 = load float*, float** %17, align 8
  %119 = getelementptr inbounds float, float* %118, i64 1
  store float %117, float* %119, align 4
  br label %120

120:                                              ; preds = %110, %106
  %121 = load i32*, i32** %19, align 8
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32*, i32** %19, align 8
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %22, align 4
  %128 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %22)
  store i32 0, i32* %10, align 4
  br label %337

129:                                              ; preds = %120
  %130 = load i32, i32* @sorghr_.lquery, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 0, i32* %10, align 4
  br label %337

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %133
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load float*, float** %17, align 8
  %140 = getelementptr inbounds float, float* %139, i64 1
  store float 1.000000e+00, float* %140, align 4
  store i32 0, i32* %10, align 4
  br label %337

141:                                              ; preds = %134
  %142 = load i32*, i32** %12, align 8
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %22, align 4
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* @sorghr_.j, align 4
  br label %147

147:                                              ; preds = %224, %141
  %148 = load i32, i32* @sorghr_.j, align 4
  %149 = load i32, i32* %22, align 4
  %150 = icmp sge i32 %148, %149
  br i1 %150, label %151, label %227

151:                                              ; preds = %147
  %152 = load i32, i32* @sorghr_.j, align 4
  %153 = sub nsw i32 %152, 1
  store i32 %153, i32* %23, align 4
  store i32 1, i32* @sorghr_.i__, align 4
  br label %154

154:                                              ; preds = %167, %151
  %155 = load i32, i32* @sorghr_.i__, align 4
  %156 = load i32, i32* %23, align 4
  %157 = icmp sle i32 %155, %156
  br i1 %157, label %158, label %170

158:                                              ; preds = %154
  %159 = load float*, float** %14, align 8
  %160 = load i32, i32* @sorghr_.i__, align 4
  %161 = load i32, i32* @sorghr_.j, align 4
  %162 = load i32, i32* %20, align 4
  %163 = mul nsw i32 %161, %162
  %164 = add nsw i32 %160, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %159, i64 %165
  store float 0.000000e+00, float* %166, align 4
  br label %167

167:                                              ; preds = %158
  %168 = load i32, i32* @sorghr_.i__, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* @sorghr_.i__, align 4
  br label %154

170:                                              ; preds = %154
  %171 = load i32*, i32** %13, align 8
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %23, align 4
  %173 = load i32, i32* @sorghr_.j, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* @sorghr_.i__, align 4
  br label %175

175:                                              ; preds = %198, %170
  %176 = load i32, i32* @sorghr_.i__, align 4
  %177 = load i32, i32* %23, align 4
  %178 = icmp sle i32 %176, %177
  br i1 %178, label %179, label %201

179:                                              ; preds = %175
  %180 = load float*, float** %14, align 8
  %181 = load i32, i32* @sorghr_.i__, align 4
  %182 = load i32, i32* @sorghr_.j, align 4
  %183 = sub nsw i32 %182, 1
  %184 = load i32, i32* %20, align 4
  %185 = mul nsw i32 %183, %184
  %186 = add nsw i32 %181, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %180, i64 %187
  %189 = load float, float* %188, align 4
  %190 = load float*, float** %14, align 8
  %191 = load i32, i32* @sorghr_.i__, align 4
  %192 = load i32, i32* @sorghr_.j, align 4
  %193 = load i32, i32* %20, align 4
  %194 = mul nsw i32 %192, %193
  %195 = add nsw i32 %191, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %190, i64 %196
  store float %189, float* %197, align 4
  br label %198

198:                                              ; preds = %179
  %199 = load i32, i32* @sorghr_.i__, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* @sorghr_.i__, align 4
  br label %175

201:                                              ; preds = %175
  %202 = load i32*, i32** %11, align 8
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %23, align 4
  %204 = load i32*, i32** %13, align 8
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* @sorghr_.i__, align 4
  br label %207

207:                                              ; preds = %220, %201
  %208 = load i32, i32* @sorghr_.i__, align 4
  %209 = load i32, i32* %23, align 4
  %210 = icmp sle i32 %208, %209
  br i1 %210, label %211, label %223

211:                                              ; preds = %207
  %212 = load float*, float** %14, align 8
  %213 = load i32, i32* @sorghr_.i__, align 4
  %214 = load i32, i32* @sorghr_.j, align 4
  %215 = load i32, i32* %20, align 4
  %216 = mul nsw i32 %214, %215
  %217 = add nsw i32 %213, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %212, i64 %218
  store float 0.000000e+00, float* %219, align 4
  br label %220

220:                                              ; preds = %211
  %221 = load i32, i32* @sorghr_.i__, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* @sorghr_.i__, align 4
  br label %207

223:                                              ; preds = %207
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* @sorghr_.j, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* @sorghr_.j, align 4
  br label %147

227:                                              ; preds = %147
  %228 = load i32*, i32** %12, align 8
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %22, align 4
  store i32 1, i32* @sorghr_.j, align 4
  br label %230

230:                                              ; preds = %262, %227
  %231 = load i32, i32* @sorghr_.j, align 4
  %232 = load i32, i32* %22, align 4
  %233 = icmp sle i32 %231, %232
  br i1 %233, label %234, label %265

234:                                              ; preds = %230
  %235 = load i32*, i32** %11, align 8
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %23, align 4
  store i32 1, i32* @sorghr_.i__, align 4
  br label %237

237:                                              ; preds = %250, %234
  %238 = load i32, i32* @sorghr_.i__, align 4
  %239 = load i32, i32* %23, align 4
  %240 = icmp sle i32 %238, %239
  br i1 %240, label %241, label %253

241:                                              ; preds = %237
  %242 = load float*, float** %14, align 8
  %243 = load i32, i32* @sorghr_.i__, align 4
  %244 = load i32, i32* @sorghr_.j, align 4
  %245 = load i32, i32* %20, align 4
  %246 = mul nsw i32 %244, %245
  %247 = add nsw i32 %243, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds float, float* %242, i64 %248
  store float 0.000000e+00, float* %249, align 4
  br label %250

250:                                              ; preds = %241
  %251 = load i32, i32* @sorghr_.i__, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* @sorghr_.i__, align 4
  br label %237

253:                                              ; preds = %237
  %254 = load float*, float** %14, align 8
  %255 = load i32, i32* @sorghr_.j, align 4
  %256 = load i32, i32* @sorghr_.j, align 4
  %257 = load i32, i32* %20, align 4
  %258 = mul nsw i32 %256, %257
  %259 = add nsw i32 %255, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds float, float* %254, i64 %260
  store float 1.000000e+00, float* %261, align 4
  br label %262

262:                                              ; preds = %253
  %263 = load i32, i32* @sorghr_.j, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* @sorghr_.j, align 4
  br label %230

265:                                              ; preds = %230
  %266 = load i32*, i32** %11, align 8
  %267 = load i32, i32* %266, align 4
  store i32 %267, i32* %22, align 4
  %268 = load i32*, i32** %13, align 8
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* @sorghr_.j, align 4
  br label %271

271:                                              ; preds = %303, %265
  %272 = load i32, i32* @sorghr_.j, align 4
  %273 = load i32, i32* %22, align 4
  %274 = icmp sle i32 %272, %273
  br i1 %274, label %275, label %306

275:                                              ; preds = %271
  %276 = load i32*, i32** %11, align 8
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %23, align 4
  store i32 1, i32* @sorghr_.i__, align 4
  br label %278

278:                                              ; preds = %291, %275
  %279 = load i32, i32* @sorghr_.i__, align 4
  %280 = load i32, i32* %23, align 4
  %281 = icmp sle i32 %279, %280
  br i1 %281, label %282, label %294

282:                                              ; preds = %278
  %283 = load float*, float** %14, align 8
  %284 = load i32, i32* @sorghr_.i__, align 4
  %285 = load i32, i32* @sorghr_.j, align 4
  %286 = load i32, i32* %20, align 4
  %287 = mul nsw i32 %285, %286
  %288 = add nsw i32 %284, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds float, float* %283, i64 %289
  store float 0.000000e+00, float* %290, align 4
  br label %291

291:                                              ; preds = %282
  %292 = load i32, i32* @sorghr_.i__, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* @sorghr_.i__, align 4
  br label %278

294:                                              ; preds = %278
  %295 = load float*, float** %14, align 8
  %296 = load i32, i32* @sorghr_.j, align 4
  %297 = load i32, i32* @sorghr_.j, align 4
  %298 = load i32, i32* %20, align 4
  %299 = mul nsw i32 %297, %298
  %300 = add nsw i32 %296, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds float, float* %295, i64 %301
  store float 1.000000e+00, float* %302, align 4
  br label %303

303:                                              ; preds = %294
  %304 = load i32, i32* @sorghr_.j, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* @sorghr_.j, align 4
  br label %271

306:                                              ; preds = %271
  %307 = load i32, i32* @sorghr_.nh, align 4
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %309, label %332

309:                                              ; preds = %306
  %310 = load float*, float** %14, align 8
  %311 = load i32*, i32** %12, align 8
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %312, 1
  %314 = load i32*, i32** %12, align 8
  %315 = load i32, i32* %314, align 4
  %316 = add nsw i32 %315, 1
  %317 = load i32, i32* %20, align 4
  %318 = mul nsw i32 %316, %317
  %319 = add nsw i32 %313, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds float, float* %310, i64 %320
  %322 = load i32*, i32** %15, align 8
  %323 = load float*, float** %16, align 8
  %324 = load i32*, i32** %12, align 8
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds float, float* %323, i64 %326
  %328 = load float*, float** %17, align 8
  %329 = getelementptr inbounds float, float* %328, i64 1
  %330 = load i32*, i32** %18, align 8
  %331 = call i32 @sorgqr_(i32* @sorghr_.nh, i32* @sorghr_.nh, i32* @sorghr_.nh, float* %321, i32* %322, float* %327, float* %329, i32* %330, i32* @sorghr_.iinfo)
  br label %332

332:                                              ; preds = %309, %306
  %333 = load i32, i32* @sorghr_.lwkopt, align 4
  %334 = sitofp i32 %333 to float
  %335 = load float*, float** %17, align 8
  %336 = getelementptr inbounds float, float* %335, i64 1
  store float %334, float* %336, align 4
  store i32 0, i32* %10, align 4
  br label %337

337:                                              ; preds = %332, %138, %132, %124
  %338 = load i32, i32* %10, align 4
  ret i32 %338
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @sorgqr_(i32*, i32*, i32*, float*, i32*, float*, float*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
