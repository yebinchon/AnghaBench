; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_strmv_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_strmv_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strmv_.i__ = internal global i32 0, align 4
@strmv_.j = internal global i32 0, align 4
@strmv_.ix = internal global i32 0, align 4
@strmv_.jx = internal global i32 0, align 4
@strmv_.kx = internal global i32 0, align 4
@strmv_.info = internal global i32 0, align 4
@strmv_.temp = internal global float 0.000000e+00, align 4
@strmv_.nounit = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"STRMV \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strmv_(i8* %0, i8* %1, i8* %2, i32* %3, float* %4, i32* %5, float* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store float* %4, float** %14, align 8
  store i32* %5, i32** %15, align 8
  store float* %6, float** %16, align 8
  store i32* %7, i32** %17, align 8
  %22 = load i32*, i32** %15, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %18, align 4
  %25 = add nsw i32 1, %24
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %19, align 4
  %27 = load float*, float** %14, align 8
  %28 = sext i32 %26 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds float, float* %27, i64 %29
  store float* %30, float** %14, align 8
  %31 = load float*, float** %16, align 8
  %32 = getelementptr inbounds float, float* %31, i32 -1
  store float* %32, float** %16, align 8
  store i32 0, i32* @strmv_.info, align 4
  %33 = load i8*, i8** %10, align 8
  %34 = call i8* @lsame_(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i8* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %8
  %37 = load i8*, i8** %10, align 8
  %38 = call i8* @lsame_(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 1, i32* @strmv_.info, align 4
  br label %86

41:                                               ; preds = %36, %8
  %42 = load i8*, i8** %11, align 8
  %43 = call i8* @lsame_(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i8* %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %11, align 8
  %47 = call i8* @lsame_(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i8* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %11, align 8
  %51 = call i8* @lsame_(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 2, i32* @strmv_.info, align 4
  br label %85

54:                                               ; preds = %49, %45, %41
  %55 = load i8*, i8** %12, align 8
  %56 = call i8* @lsame_(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i8* %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** %12, align 8
  %60 = call i8* @lsame_(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i8* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  store i32 3, i32* @strmv_.info, align 4
  br label %84

63:                                               ; preds = %58, %54
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 4, i32* @strmv_.info, align 4
  br label %83

68:                                               ; preds = %63
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @max(i32 1, i32 %72)
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 6, i32* @strmv_.info, align 4
  br label %82

76:                                               ; preds = %68
  %77 = load i32*, i32** %17, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 8, i32* @strmv_.info, align 4
  br label %81

81:                                               ; preds = %80, %76
  br label %82

82:                                               ; preds = %81, %75
  br label %83

83:                                               ; preds = %82, %67
  br label %84

84:                                               ; preds = %83, %62
  br label %85

85:                                               ; preds = %84, %53
  br label %86

86:                                               ; preds = %85, %40
  %87 = load i32, i32* @strmv_.info, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* @strmv_.info)
  store i32 0, i32* %9, align 4
  br label %756

91:                                               ; preds = %86
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 0, i32* %9, align 4
  br label %756

96:                                               ; preds = %91
  %97 = load i8*, i8** %12, align 8
  %98 = call i8* @lsame_(i8* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %98, i8** @strmv_.nounit, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = load i32*, i32** %13, align 8
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 1
  %106 = load i32*, i32** %17, align 8
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %105, %107
  %109 = sub nsw i32 1, %108
  store i32 %109, i32* @strmv_.kx, align 4
  br label %116

110:                                              ; preds = %96
  %111 = load i32*, i32** %17, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i32 1, i32* @strmv_.kx, align 4
  br label %115

115:                                              ; preds = %114, %110
  br label %116

116:                                              ; preds = %115, %102
  %117 = load i8*, i8** %11, align 8
  %118 = call i8* @lsame_(i8* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %453

120:                                              ; preds = %116
  %121 = load i8*, i8** %10, align 8
  %122 = call i8* @lsame_(i8* %121, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %283

124:                                              ; preds = %120
  %125 = load i32*, i32** %17, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %200

128:                                              ; preds = %124
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %20, align 4
  store i32 1, i32* @strmv_.j, align 4
  br label %131

131:                                              ; preds = %196, %128
  %132 = load i32, i32* @strmv_.j, align 4
  %133 = load i32, i32* %20, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %199

135:                                              ; preds = %131
  %136 = load float*, float** %16, align 8
  %137 = load i32, i32* @strmv_.j, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float, float* %136, i64 %138
  %140 = load float, float* %139, align 4
  %141 = fcmp une float %140, 0.000000e+00
  br i1 %141, label %142, label %195

142:                                              ; preds = %135
  %143 = load float*, float** %16, align 8
  %144 = load i32, i32* @strmv_.j, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %143, i64 %145
  %147 = load float, float* %146, align 4
  store float %147, float* @strmv_.temp, align 4
  %148 = load i32, i32* @strmv_.j, align 4
  %149 = sub nsw i32 %148, 1
  store i32 %149, i32* %21, align 4
  store i32 1, i32* @strmv_.i__, align 4
  br label %150

150:                                              ; preds = %172, %142
  %151 = load i32, i32* @strmv_.i__, align 4
  %152 = load i32, i32* %21, align 4
  %153 = icmp sle i32 %151, %152
  br i1 %153, label %154, label %175

154:                                              ; preds = %150
  %155 = load float, float* @strmv_.temp, align 4
  %156 = load float*, float** %14, align 8
  %157 = load i32, i32* @strmv_.i__, align 4
  %158 = load i32, i32* @strmv_.j, align 4
  %159 = load i32, i32* %18, align 4
  %160 = mul nsw i32 %158, %159
  %161 = add nsw i32 %157, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %156, i64 %162
  %164 = load float, float* %163, align 4
  %165 = fmul float %155, %164
  %166 = load float*, float** %16, align 8
  %167 = load i32, i32* @strmv_.i__, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float, float* %166, i64 %168
  %170 = load float, float* %169, align 4
  %171 = fadd float %170, %165
  store float %171, float* %169, align 4
  br label %172

172:                                              ; preds = %154
  %173 = load i32, i32* @strmv_.i__, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* @strmv_.i__, align 4
  br label %150

175:                                              ; preds = %150
  %176 = load i8*, i8** @strmv_.nounit, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %194

178:                                              ; preds = %175
  %179 = load float*, float** %14, align 8
  %180 = load i32, i32* @strmv_.j, align 4
  %181 = load i32, i32* @strmv_.j, align 4
  %182 = load i32, i32* %18, align 4
  %183 = mul nsw i32 %181, %182
  %184 = add nsw i32 %180, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %179, i64 %185
  %187 = load float, float* %186, align 4
  %188 = load float*, float** %16, align 8
  %189 = load i32, i32* @strmv_.j, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %188, i64 %190
  %192 = load float, float* %191, align 4
  %193 = fmul float %192, %187
  store float %193, float* %191, align 4
  br label %194

194:                                              ; preds = %178, %175
  br label %195

195:                                              ; preds = %194, %135
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* @strmv_.j, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* @strmv_.j, align 4
  br label %131

199:                                              ; preds = %131
  br label %282

200:                                              ; preds = %124
  %201 = load i32, i32* @strmv_.kx, align 4
  store i32 %201, i32* @strmv_.jx, align 4
  %202 = load i32*, i32** %13, align 8
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %20, align 4
  store i32 1, i32* @strmv_.j, align 4
  br label %204

204:                                              ; preds = %278, %200
  %205 = load i32, i32* @strmv_.j, align 4
  %206 = load i32, i32* %20, align 4
  %207 = icmp sle i32 %205, %206
  br i1 %207, label %208, label %281

208:                                              ; preds = %204
  %209 = load float*, float** %16, align 8
  %210 = load i32, i32* @strmv_.jx, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %209, i64 %211
  %213 = load float, float* %212, align 4
  %214 = fcmp une float %213, 0.000000e+00
  br i1 %214, label %215, label %273

215:                                              ; preds = %208
  %216 = load float*, float** %16, align 8
  %217 = load i32, i32* @strmv_.jx, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %216, i64 %218
  %220 = load float, float* %219, align 4
  store float %220, float* @strmv_.temp, align 4
  %221 = load i32, i32* @strmv_.kx, align 4
  store i32 %221, i32* @strmv_.ix, align 4
  %222 = load i32, i32* @strmv_.j, align 4
  %223 = sub nsw i32 %222, 1
  store i32 %223, i32* %21, align 4
  store i32 1, i32* @strmv_.i__, align 4
  br label %224

224:                                              ; preds = %250, %215
  %225 = load i32, i32* @strmv_.i__, align 4
  %226 = load i32, i32* %21, align 4
  %227 = icmp sle i32 %225, %226
  br i1 %227, label %228, label %253

228:                                              ; preds = %224
  %229 = load float, float* @strmv_.temp, align 4
  %230 = load float*, float** %14, align 8
  %231 = load i32, i32* @strmv_.i__, align 4
  %232 = load i32, i32* @strmv_.j, align 4
  %233 = load i32, i32* %18, align 4
  %234 = mul nsw i32 %232, %233
  %235 = add nsw i32 %231, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %230, i64 %236
  %238 = load float, float* %237, align 4
  %239 = fmul float %229, %238
  %240 = load float*, float** %16, align 8
  %241 = load i32, i32* @strmv_.ix, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %240, i64 %242
  %244 = load float, float* %243, align 4
  %245 = fadd float %244, %239
  store float %245, float* %243, align 4
  %246 = load i32*, i32** %17, align 8
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @strmv_.ix, align 4
  %249 = add nsw i32 %248, %247
  store i32 %249, i32* @strmv_.ix, align 4
  br label %250

250:                                              ; preds = %228
  %251 = load i32, i32* @strmv_.i__, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* @strmv_.i__, align 4
  br label %224

253:                                              ; preds = %224
  %254 = load i8*, i8** @strmv_.nounit, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %256, label %272

256:                                              ; preds = %253
  %257 = load float*, float** %14, align 8
  %258 = load i32, i32* @strmv_.j, align 4
  %259 = load i32, i32* @strmv_.j, align 4
  %260 = load i32, i32* %18, align 4
  %261 = mul nsw i32 %259, %260
  %262 = add nsw i32 %258, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds float, float* %257, i64 %263
  %265 = load float, float* %264, align 4
  %266 = load float*, float** %16, align 8
  %267 = load i32, i32* @strmv_.jx, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds float, float* %266, i64 %268
  %270 = load float, float* %269, align 4
  %271 = fmul float %270, %265
  store float %271, float* %269, align 4
  br label %272

272:                                              ; preds = %256, %253
  br label %273

273:                                              ; preds = %272, %208
  %274 = load i32*, i32** %17, align 8
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @strmv_.jx, align 4
  %277 = add nsw i32 %276, %275
  store i32 %277, i32* @strmv_.jx, align 4
  br label %278

278:                                              ; preds = %273
  %279 = load i32, i32* @strmv_.j, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* @strmv_.j, align 4
  br label %204

281:                                              ; preds = %204
  br label %282

282:                                              ; preds = %281, %199
  br label %452

283:                                              ; preds = %120
  %284 = load i32*, i32** %17, align 8
  %285 = load i32, i32* %284, align 4
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %360

287:                                              ; preds = %283
  %288 = load i32*, i32** %13, align 8
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* @strmv_.j, align 4
  br label %290

290:                                              ; preds = %356, %287
  %291 = load i32, i32* @strmv_.j, align 4
  %292 = icmp sge i32 %291, 1
  br i1 %292, label %293, label %359

293:                                              ; preds = %290
  %294 = load float*, float** %16, align 8
  %295 = load i32, i32* @strmv_.j, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %294, i64 %296
  %298 = load float, float* %297, align 4
  %299 = fcmp une float %298, 0.000000e+00
  br i1 %299, label %300, label %355

300:                                              ; preds = %293
  %301 = load float*, float** %16, align 8
  %302 = load i32, i32* @strmv_.j, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %301, i64 %303
  %305 = load float, float* %304, align 4
  store float %305, float* @strmv_.temp, align 4
  %306 = load i32, i32* @strmv_.j, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %20, align 4
  %308 = load i32*, i32** %13, align 8
  %309 = load i32, i32* %308, align 4
  store i32 %309, i32* @strmv_.i__, align 4
  br label %310

310:                                              ; preds = %332, %300
  %311 = load i32, i32* @strmv_.i__, align 4
  %312 = load i32, i32* %20, align 4
  %313 = icmp sge i32 %311, %312
  br i1 %313, label %314, label %335

314:                                              ; preds = %310
  %315 = load float, float* @strmv_.temp, align 4
  %316 = load float*, float** %14, align 8
  %317 = load i32, i32* @strmv_.i__, align 4
  %318 = load i32, i32* @strmv_.j, align 4
  %319 = load i32, i32* %18, align 4
  %320 = mul nsw i32 %318, %319
  %321 = add nsw i32 %317, %320
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds float, float* %316, i64 %322
  %324 = load float, float* %323, align 4
  %325 = fmul float %315, %324
  %326 = load float*, float** %16, align 8
  %327 = load i32, i32* @strmv_.i__, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds float, float* %326, i64 %328
  %330 = load float, float* %329, align 4
  %331 = fadd float %330, %325
  store float %331, float* %329, align 4
  br label %332

332:                                              ; preds = %314
  %333 = load i32, i32* @strmv_.i__, align 4
  %334 = add nsw i32 %333, -1
  store i32 %334, i32* @strmv_.i__, align 4
  br label %310

335:                                              ; preds = %310
  %336 = load i8*, i8** @strmv_.nounit, align 8
  %337 = icmp ne i8* %336, null
  br i1 %337, label %338, label %354

338:                                              ; preds = %335
  %339 = load float*, float** %14, align 8
  %340 = load i32, i32* @strmv_.j, align 4
  %341 = load i32, i32* @strmv_.j, align 4
  %342 = load i32, i32* %18, align 4
  %343 = mul nsw i32 %341, %342
  %344 = add nsw i32 %340, %343
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds float, float* %339, i64 %345
  %347 = load float, float* %346, align 4
  %348 = load float*, float** %16, align 8
  %349 = load i32, i32* @strmv_.j, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds float, float* %348, i64 %350
  %352 = load float, float* %351, align 4
  %353 = fmul float %352, %347
  store float %353, float* %351, align 4
  br label %354

354:                                              ; preds = %338, %335
  br label %355

355:                                              ; preds = %354, %293
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* @strmv_.j, align 4
  %358 = add nsw i32 %357, -1
  store i32 %358, i32* @strmv_.j, align 4
  br label %290

359:                                              ; preds = %290
  br label %451

360:                                              ; preds = %283
  %361 = load i32*, i32** %13, align 8
  %362 = load i32, i32* %361, align 4
  %363 = sub nsw i32 %362, 1
  %364 = load i32*, i32** %17, align 8
  %365 = load i32, i32* %364, align 4
  %366 = mul nsw i32 %363, %365
  %367 = load i32, i32* @strmv_.kx, align 4
  %368 = add nsw i32 %367, %366
  store i32 %368, i32* @strmv_.kx, align 4
  %369 = load i32, i32* @strmv_.kx, align 4
  store i32 %369, i32* @strmv_.jx, align 4
  %370 = load i32*, i32** %13, align 8
  %371 = load i32, i32* %370, align 4
  store i32 %371, i32* @strmv_.j, align 4
  br label %372

372:                                              ; preds = %447, %360
  %373 = load i32, i32* @strmv_.j, align 4
  %374 = icmp sge i32 %373, 1
  br i1 %374, label %375, label %450

375:                                              ; preds = %372
  %376 = load float*, float** %16, align 8
  %377 = load i32, i32* @strmv_.jx, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds float, float* %376, i64 %378
  %380 = load float, float* %379, align 4
  %381 = fcmp une float %380, 0.000000e+00
  br i1 %381, label %382, label %442

382:                                              ; preds = %375
  %383 = load float*, float** %16, align 8
  %384 = load i32, i32* @strmv_.jx, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds float, float* %383, i64 %385
  %387 = load float, float* %386, align 4
  store float %387, float* @strmv_.temp, align 4
  %388 = load i32, i32* @strmv_.kx, align 4
  store i32 %388, i32* @strmv_.ix, align 4
  %389 = load i32, i32* @strmv_.j, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %20, align 4
  %391 = load i32*, i32** %13, align 8
  %392 = load i32, i32* %391, align 4
  store i32 %392, i32* @strmv_.i__, align 4
  br label %393

393:                                              ; preds = %419, %382
  %394 = load i32, i32* @strmv_.i__, align 4
  %395 = load i32, i32* %20, align 4
  %396 = icmp sge i32 %394, %395
  br i1 %396, label %397, label %422

397:                                              ; preds = %393
  %398 = load float, float* @strmv_.temp, align 4
  %399 = load float*, float** %14, align 8
  %400 = load i32, i32* @strmv_.i__, align 4
  %401 = load i32, i32* @strmv_.j, align 4
  %402 = load i32, i32* %18, align 4
  %403 = mul nsw i32 %401, %402
  %404 = add nsw i32 %400, %403
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds float, float* %399, i64 %405
  %407 = load float, float* %406, align 4
  %408 = fmul float %398, %407
  %409 = load float*, float** %16, align 8
  %410 = load i32, i32* @strmv_.ix, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds float, float* %409, i64 %411
  %413 = load float, float* %412, align 4
  %414 = fadd float %413, %408
  store float %414, float* %412, align 4
  %415 = load i32*, i32** %17, align 8
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* @strmv_.ix, align 4
  %418 = sub nsw i32 %417, %416
  store i32 %418, i32* @strmv_.ix, align 4
  br label %419

419:                                              ; preds = %397
  %420 = load i32, i32* @strmv_.i__, align 4
  %421 = add nsw i32 %420, -1
  store i32 %421, i32* @strmv_.i__, align 4
  br label %393

422:                                              ; preds = %393
  %423 = load i8*, i8** @strmv_.nounit, align 8
  %424 = icmp ne i8* %423, null
  br i1 %424, label %425, label %441

425:                                              ; preds = %422
  %426 = load float*, float** %14, align 8
  %427 = load i32, i32* @strmv_.j, align 4
  %428 = load i32, i32* @strmv_.j, align 4
  %429 = load i32, i32* %18, align 4
  %430 = mul nsw i32 %428, %429
  %431 = add nsw i32 %427, %430
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds float, float* %426, i64 %432
  %434 = load float, float* %433, align 4
  %435 = load float*, float** %16, align 8
  %436 = load i32, i32* @strmv_.jx, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds float, float* %435, i64 %437
  %439 = load float, float* %438, align 4
  %440 = fmul float %439, %434
  store float %440, float* %438, align 4
  br label %441

441:                                              ; preds = %425, %422
  br label %442

442:                                              ; preds = %441, %375
  %443 = load i32*, i32** %17, align 8
  %444 = load i32, i32* %443, align 4
  %445 = load i32, i32* @strmv_.jx, align 4
  %446 = sub nsw i32 %445, %444
  store i32 %446, i32* @strmv_.jx, align 4
  br label %447

447:                                              ; preds = %442
  %448 = load i32, i32* @strmv_.j, align 4
  %449 = add nsw i32 %448, -1
  store i32 %449, i32* @strmv_.j, align 4
  br label %372

450:                                              ; preds = %372
  br label %451

451:                                              ; preds = %450, %359
  br label %452

452:                                              ; preds = %451, %282
  br label %755

453:                                              ; preds = %116
  %454 = load i8*, i8** %10, align 8
  %455 = call i8* @lsame_(i8* %454, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %456 = icmp ne i8* %455, null
  br i1 %456, label %457, label %605

457:                                              ; preds = %453
  %458 = load i32*, i32** %17, align 8
  %459 = load i32, i32* %458, align 4
  %460 = icmp eq i32 %459, 1
  br i1 %460, label %461, label %524

461:                                              ; preds = %457
  %462 = load i32*, i32** %13, align 8
  %463 = load i32, i32* %462, align 4
  store i32 %463, i32* @strmv_.j, align 4
  br label %464

464:                                              ; preds = %520, %461
  %465 = load i32, i32* @strmv_.j, align 4
  %466 = icmp sge i32 %465, 1
  br i1 %466, label %467, label %523

467:                                              ; preds = %464
  %468 = load float*, float** %16, align 8
  %469 = load i32, i32* @strmv_.j, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds float, float* %468, i64 %470
  %472 = load float, float* %471, align 4
  store float %472, float* @strmv_.temp, align 4
  %473 = load i8*, i8** @strmv_.nounit, align 8
  %474 = icmp ne i8* %473, null
  br i1 %474, label %475, label %487

475:                                              ; preds = %467
  %476 = load float*, float** %14, align 8
  %477 = load i32, i32* @strmv_.j, align 4
  %478 = load i32, i32* @strmv_.j, align 4
  %479 = load i32, i32* %18, align 4
  %480 = mul nsw i32 %478, %479
  %481 = add nsw i32 %477, %480
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds float, float* %476, i64 %482
  %484 = load float, float* %483, align 4
  %485 = load float, float* @strmv_.temp, align 4
  %486 = fmul float %485, %484
  store float %486, float* @strmv_.temp, align 4
  br label %487

487:                                              ; preds = %475, %467
  %488 = load i32, i32* @strmv_.j, align 4
  %489 = sub nsw i32 %488, 1
  store i32 %489, i32* @strmv_.i__, align 4
  br label %490

490:                                              ; preds = %511, %487
  %491 = load i32, i32* @strmv_.i__, align 4
  %492 = icmp sge i32 %491, 1
  br i1 %492, label %493, label %514

493:                                              ; preds = %490
  %494 = load float*, float** %14, align 8
  %495 = load i32, i32* @strmv_.i__, align 4
  %496 = load i32, i32* @strmv_.j, align 4
  %497 = load i32, i32* %18, align 4
  %498 = mul nsw i32 %496, %497
  %499 = add nsw i32 %495, %498
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds float, float* %494, i64 %500
  %502 = load float, float* %501, align 4
  %503 = load float*, float** %16, align 8
  %504 = load i32, i32* @strmv_.i__, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds float, float* %503, i64 %505
  %507 = load float, float* %506, align 4
  %508 = fmul float %502, %507
  %509 = load float, float* @strmv_.temp, align 4
  %510 = fadd float %509, %508
  store float %510, float* @strmv_.temp, align 4
  br label %511

511:                                              ; preds = %493
  %512 = load i32, i32* @strmv_.i__, align 4
  %513 = add nsw i32 %512, -1
  store i32 %513, i32* @strmv_.i__, align 4
  br label %490

514:                                              ; preds = %490
  %515 = load float, float* @strmv_.temp, align 4
  %516 = load float*, float** %16, align 8
  %517 = load i32, i32* @strmv_.j, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds float, float* %516, i64 %518
  store float %515, float* %519, align 4
  br label %520

520:                                              ; preds = %514
  %521 = load i32, i32* @strmv_.j, align 4
  %522 = add nsw i32 %521, -1
  store i32 %522, i32* @strmv_.j, align 4
  br label %464

523:                                              ; preds = %464
  br label %604

524:                                              ; preds = %457
  %525 = load i32, i32* @strmv_.kx, align 4
  %526 = load i32*, i32** %13, align 8
  %527 = load i32, i32* %526, align 4
  %528 = sub nsw i32 %527, 1
  %529 = load i32*, i32** %17, align 8
  %530 = load i32, i32* %529, align 4
  %531 = mul nsw i32 %528, %530
  %532 = add nsw i32 %525, %531
  store i32 %532, i32* @strmv_.jx, align 4
  %533 = load i32*, i32** %13, align 8
  %534 = load i32, i32* %533, align 4
  store i32 %534, i32* @strmv_.j, align 4
  br label %535

535:                                              ; preds = %600, %524
  %536 = load i32, i32* @strmv_.j, align 4
  %537 = icmp sge i32 %536, 1
  br i1 %537, label %538, label %603

538:                                              ; preds = %535
  %539 = load float*, float** %16, align 8
  %540 = load i32, i32* @strmv_.jx, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds float, float* %539, i64 %541
  %543 = load float, float* %542, align 4
  store float %543, float* @strmv_.temp, align 4
  %544 = load i32, i32* @strmv_.jx, align 4
  store i32 %544, i32* @strmv_.ix, align 4
  %545 = load i8*, i8** @strmv_.nounit, align 8
  %546 = icmp ne i8* %545, null
  br i1 %546, label %547, label %559

547:                                              ; preds = %538
  %548 = load float*, float** %14, align 8
  %549 = load i32, i32* @strmv_.j, align 4
  %550 = load i32, i32* @strmv_.j, align 4
  %551 = load i32, i32* %18, align 4
  %552 = mul nsw i32 %550, %551
  %553 = add nsw i32 %549, %552
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds float, float* %548, i64 %554
  %556 = load float, float* %555, align 4
  %557 = load float, float* @strmv_.temp, align 4
  %558 = fmul float %557, %556
  store float %558, float* @strmv_.temp, align 4
  br label %559

559:                                              ; preds = %547, %538
  %560 = load i32, i32* @strmv_.j, align 4
  %561 = sub nsw i32 %560, 1
  store i32 %561, i32* @strmv_.i__, align 4
  br label %562

562:                                              ; preds = %587, %559
  %563 = load i32, i32* @strmv_.i__, align 4
  %564 = icmp sge i32 %563, 1
  br i1 %564, label %565, label %590

565:                                              ; preds = %562
  %566 = load i32*, i32** %17, align 8
  %567 = load i32, i32* %566, align 4
  %568 = load i32, i32* @strmv_.ix, align 4
  %569 = sub nsw i32 %568, %567
  store i32 %569, i32* @strmv_.ix, align 4
  %570 = load float*, float** %14, align 8
  %571 = load i32, i32* @strmv_.i__, align 4
  %572 = load i32, i32* @strmv_.j, align 4
  %573 = load i32, i32* %18, align 4
  %574 = mul nsw i32 %572, %573
  %575 = add nsw i32 %571, %574
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds float, float* %570, i64 %576
  %578 = load float, float* %577, align 4
  %579 = load float*, float** %16, align 8
  %580 = load i32, i32* @strmv_.ix, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds float, float* %579, i64 %581
  %583 = load float, float* %582, align 4
  %584 = fmul float %578, %583
  %585 = load float, float* @strmv_.temp, align 4
  %586 = fadd float %585, %584
  store float %586, float* @strmv_.temp, align 4
  br label %587

587:                                              ; preds = %565
  %588 = load i32, i32* @strmv_.i__, align 4
  %589 = add nsw i32 %588, -1
  store i32 %589, i32* @strmv_.i__, align 4
  br label %562

590:                                              ; preds = %562
  %591 = load float, float* @strmv_.temp, align 4
  %592 = load float*, float** %16, align 8
  %593 = load i32, i32* @strmv_.jx, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds float, float* %592, i64 %594
  store float %591, float* %595, align 4
  %596 = load i32*, i32** %17, align 8
  %597 = load i32, i32* %596, align 4
  %598 = load i32, i32* @strmv_.jx, align 4
  %599 = sub nsw i32 %598, %597
  store i32 %599, i32* @strmv_.jx, align 4
  br label %600

600:                                              ; preds = %590
  %601 = load i32, i32* @strmv_.j, align 4
  %602 = add nsw i32 %601, -1
  store i32 %602, i32* @strmv_.j, align 4
  br label %535

603:                                              ; preds = %535
  br label %604

604:                                              ; preds = %603, %523
  br label %754

605:                                              ; preds = %453
  %606 = load i32*, i32** %17, align 8
  %607 = load i32, i32* %606, align 4
  %608 = icmp eq i32 %607, 1
  br i1 %608, label %609, label %676

609:                                              ; preds = %605
  %610 = load i32*, i32** %13, align 8
  %611 = load i32, i32* %610, align 4
  store i32 %611, i32* %20, align 4
  store i32 1, i32* @strmv_.j, align 4
  br label %612

612:                                              ; preds = %672, %609
  %613 = load i32, i32* @strmv_.j, align 4
  %614 = load i32, i32* %20, align 4
  %615 = icmp sle i32 %613, %614
  br i1 %615, label %616, label %675

616:                                              ; preds = %612
  %617 = load float*, float** %16, align 8
  %618 = load i32, i32* @strmv_.j, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds float, float* %617, i64 %619
  %621 = load float, float* %620, align 4
  store float %621, float* @strmv_.temp, align 4
  %622 = load i8*, i8** @strmv_.nounit, align 8
  %623 = icmp ne i8* %622, null
  br i1 %623, label %624, label %636

624:                                              ; preds = %616
  %625 = load float*, float** %14, align 8
  %626 = load i32, i32* @strmv_.j, align 4
  %627 = load i32, i32* @strmv_.j, align 4
  %628 = load i32, i32* %18, align 4
  %629 = mul nsw i32 %627, %628
  %630 = add nsw i32 %626, %629
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds float, float* %625, i64 %631
  %633 = load float, float* %632, align 4
  %634 = load float, float* @strmv_.temp, align 4
  %635 = fmul float %634, %633
  store float %635, float* @strmv_.temp, align 4
  br label %636

636:                                              ; preds = %624, %616
  %637 = load i32*, i32** %13, align 8
  %638 = load i32, i32* %637, align 4
  store i32 %638, i32* %21, align 4
  %639 = load i32, i32* @strmv_.j, align 4
  %640 = add nsw i32 %639, 1
  store i32 %640, i32* @strmv_.i__, align 4
  br label %641

641:                                              ; preds = %663, %636
  %642 = load i32, i32* @strmv_.i__, align 4
  %643 = load i32, i32* %21, align 4
  %644 = icmp sle i32 %642, %643
  br i1 %644, label %645, label %666

645:                                              ; preds = %641
  %646 = load float*, float** %14, align 8
  %647 = load i32, i32* @strmv_.i__, align 4
  %648 = load i32, i32* @strmv_.j, align 4
  %649 = load i32, i32* %18, align 4
  %650 = mul nsw i32 %648, %649
  %651 = add nsw i32 %647, %650
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds float, float* %646, i64 %652
  %654 = load float, float* %653, align 4
  %655 = load float*, float** %16, align 8
  %656 = load i32, i32* @strmv_.i__, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds float, float* %655, i64 %657
  %659 = load float, float* %658, align 4
  %660 = fmul float %654, %659
  %661 = load float, float* @strmv_.temp, align 4
  %662 = fadd float %661, %660
  store float %662, float* @strmv_.temp, align 4
  br label %663

663:                                              ; preds = %645
  %664 = load i32, i32* @strmv_.i__, align 4
  %665 = add nsw i32 %664, 1
  store i32 %665, i32* @strmv_.i__, align 4
  br label %641

666:                                              ; preds = %641
  %667 = load float, float* @strmv_.temp, align 4
  %668 = load float*, float** %16, align 8
  %669 = load i32, i32* @strmv_.j, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds float, float* %668, i64 %670
  store float %667, float* %671, align 4
  br label %672

672:                                              ; preds = %666
  %673 = load i32, i32* @strmv_.j, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* @strmv_.j, align 4
  br label %612

675:                                              ; preds = %612
  br label %753

676:                                              ; preds = %605
  %677 = load i32, i32* @strmv_.kx, align 4
  store i32 %677, i32* @strmv_.jx, align 4
  %678 = load i32*, i32** %13, align 8
  %679 = load i32, i32* %678, align 4
  store i32 %679, i32* %20, align 4
  store i32 1, i32* @strmv_.j, align 4
  br label %680

680:                                              ; preds = %749, %676
  %681 = load i32, i32* @strmv_.j, align 4
  %682 = load i32, i32* %20, align 4
  %683 = icmp sle i32 %681, %682
  br i1 %683, label %684, label %752

684:                                              ; preds = %680
  %685 = load float*, float** %16, align 8
  %686 = load i32, i32* @strmv_.jx, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds float, float* %685, i64 %687
  %689 = load float, float* %688, align 4
  store float %689, float* @strmv_.temp, align 4
  %690 = load i32, i32* @strmv_.jx, align 4
  store i32 %690, i32* @strmv_.ix, align 4
  %691 = load i8*, i8** @strmv_.nounit, align 8
  %692 = icmp ne i8* %691, null
  br i1 %692, label %693, label %705

693:                                              ; preds = %684
  %694 = load float*, float** %14, align 8
  %695 = load i32, i32* @strmv_.j, align 4
  %696 = load i32, i32* @strmv_.j, align 4
  %697 = load i32, i32* %18, align 4
  %698 = mul nsw i32 %696, %697
  %699 = add nsw i32 %695, %698
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds float, float* %694, i64 %700
  %702 = load float, float* %701, align 4
  %703 = load float, float* @strmv_.temp, align 4
  %704 = fmul float %703, %702
  store float %704, float* @strmv_.temp, align 4
  br label %705

705:                                              ; preds = %693, %684
  %706 = load i32*, i32** %13, align 8
  %707 = load i32, i32* %706, align 4
  store i32 %707, i32* %21, align 4
  %708 = load i32, i32* @strmv_.j, align 4
  %709 = add nsw i32 %708, 1
  store i32 %709, i32* @strmv_.i__, align 4
  br label %710

710:                                              ; preds = %736, %705
  %711 = load i32, i32* @strmv_.i__, align 4
  %712 = load i32, i32* %21, align 4
  %713 = icmp sle i32 %711, %712
  br i1 %713, label %714, label %739

714:                                              ; preds = %710
  %715 = load i32*, i32** %17, align 8
  %716 = load i32, i32* %715, align 4
  %717 = load i32, i32* @strmv_.ix, align 4
  %718 = add nsw i32 %717, %716
  store i32 %718, i32* @strmv_.ix, align 4
  %719 = load float*, float** %14, align 8
  %720 = load i32, i32* @strmv_.i__, align 4
  %721 = load i32, i32* @strmv_.j, align 4
  %722 = load i32, i32* %18, align 4
  %723 = mul nsw i32 %721, %722
  %724 = add nsw i32 %720, %723
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds float, float* %719, i64 %725
  %727 = load float, float* %726, align 4
  %728 = load float*, float** %16, align 8
  %729 = load i32, i32* @strmv_.ix, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds float, float* %728, i64 %730
  %732 = load float, float* %731, align 4
  %733 = fmul float %727, %732
  %734 = load float, float* @strmv_.temp, align 4
  %735 = fadd float %734, %733
  store float %735, float* @strmv_.temp, align 4
  br label %736

736:                                              ; preds = %714
  %737 = load i32, i32* @strmv_.i__, align 4
  %738 = add nsw i32 %737, 1
  store i32 %738, i32* @strmv_.i__, align 4
  br label %710

739:                                              ; preds = %710
  %740 = load float, float* @strmv_.temp, align 4
  %741 = load float*, float** %16, align 8
  %742 = load i32, i32* @strmv_.jx, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds float, float* %741, i64 %743
  store float %740, float* %744, align 4
  %745 = load i32*, i32** %17, align 8
  %746 = load i32, i32* %745, align 4
  %747 = load i32, i32* @strmv_.jx, align 4
  %748 = add nsw i32 %747, %746
  store i32 %748, i32* @strmv_.jx, align 4
  br label %749

749:                                              ; preds = %739
  %750 = load i32, i32* @strmv_.j, align 4
  %751 = add nsw i32 %750, 1
  store i32 %751, i32* @strmv_.j, align 4
  br label %680

752:                                              ; preds = %680
  br label %753

753:                                              ; preds = %752, %675
  br label %754

754:                                              ; preds = %753, %604
  br label %755

755:                                              ; preds = %754, %452
  store i32 0, i32* %9, align 4
  br label %756

756:                                              ; preds = %755, %95, %89
  %757 = load i32, i32* %9, align 4
  ret i32 %757
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
