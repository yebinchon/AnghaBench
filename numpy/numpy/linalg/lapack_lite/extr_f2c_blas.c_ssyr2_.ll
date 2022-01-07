; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_ssyr2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_ssyr2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ssyr2_.i__ = internal global i32 0, align 4
@ssyr2_.j = internal global i32 0, align 4
@ssyr2_.ix = internal global i32 0, align 4
@ssyr2_.iy = internal global i32 0, align 4
@ssyr2_.jx = internal global i32 0, align 4
@ssyr2_.jy = internal global i32 0, align 4
@ssyr2_.kx = internal global i32 0, align 4
@ssyr2_.ky = internal global i32 0, align 4
@ssyr2_.info = internal global i32 0, align 4
@ssyr2_.temp1 = internal global float 0.000000e+00, align 4
@ssyr2_.temp2 = internal global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SSYR2 \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssyr2_(i8* %0, i32* %1, float* %2, float* %3, i32* %4, float* %5, i32* %6, float* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store float* %2, float** %13, align 8
  store float* %3, float** %14, align 8
  store i32* %4, i32** %15, align 8
  store float* %5, float** %16, align 8
  store i32* %6, i32** %17, align 8
  store float* %7, float** %18, align 8
  store i32* %8, i32** %19, align 8
  %24 = load float*, float** %14, align 8
  %25 = getelementptr inbounds float, float* %24, i32 -1
  store float* %25, float** %14, align 8
  %26 = load float*, float** %16, align 8
  %27 = getelementptr inbounds float, float* %26, i32 -1
  store float* %27, float** %16, align 8
  %28 = load i32*, i32** %19, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %20, align 4
  %30 = load i32, i32* %20, align 4
  %31 = add nsw i32 1, %30
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %21, align 4
  %33 = load float*, float** %18, align 8
  %34 = sext i32 %32 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds float, float* %33, i64 %35
  store float* %36, float** %18, align 8
  store i32 0, i32* @ssyr2_.info, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = call i8* @lsame_(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i8* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %9
  %41 = load i8*, i8** %11, align 8
  %42 = call i8* @lsame_(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 1, i32* @ssyr2_.info, align 4
  br label %72

45:                                               ; preds = %40, %9
  %46 = load i32*, i32** %12, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 2, i32* @ssyr2_.info, align 4
  br label %71

50:                                               ; preds = %45
  %51 = load i32*, i32** %15, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 5, i32* @ssyr2_.info, align 4
  br label %70

55:                                               ; preds = %50
  %56 = load i32*, i32** %17, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 7, i32* @ssyr2_.info, align 4
  br label %69

60:                                               ; preds = %55
  %61 = load i32*, i32** %19, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @max(i32 1, i32 %64)
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 9, i32* @ssyr2_.info, align 4
  br label %68

68:                                               ; preds = %67, %60
  br label %69

69:                                               ; preds = %68, %59
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %49
  br label %72

72:                                               ; preds = %71, %44
  %73 = load i32, i32* @ssyr2_.info, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* @ssyr2_.info)
  store i32 0, i32* %10, align 4
  br label %530

77:                                               ; preds = %72
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load float*, float** %13, align 8
  %83 = load float, float* %82, align 4
  %84 = fcmp oeq float %83, 0.000000e+00
  br i1 %84, label %85, label %86

85:                                               ; preds = %81, %77
  store i32 0, i32* %10, align 4
  br label %530

86:                                               ; preds = %81
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32*, i32** %17, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 1
  br i1 %93, label %94, label %123

94:                                               ; preds = %90, %86
  %95 = load i32*, i32** %15, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 1, i32* @ssyr2_.kx, align 4
  br label %107

99:                                               ; preds = %94
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 1
  %103 = load i32*, i32** %15, align 8
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %102, %104
  %106 = sub nsw i32 1, %105
  store i32 %106, i32* @ssyr2_.kx, align 4
  br label %107

107:                                              ; preds = %99, %98
  %108 = load i32*, i32** %17, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 1, i32* @ssyr2_.ky, align 4
  br label %120

112:                                              ; preds = %107
  %113 = load i32*, i32** %12, align 8
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  %116 = load i32*, i32** %17, align 8
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %115, %117
  %119 = sub nsw i32 1, %118
  store i32 %119, i32* @ssyr2_.ky, align 4
  br label %120

120:                                              ; preds = %112, %111
  %121 = load i32, i32* @ssyr2_.kx, align 4
  store i32 %121, i32* @ssyr2_.jx, align 4
  %122 = load i32, i32* @ssyr2_.ky, align 4
  store i32 %122, i32* @ssyr2_.jy, align 4
  br label %123

123:                                              ; preds = %120, %90
  %124 = load i8*, i8** %11, align 8
  %125 = call i8* @lsame_(i8* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %326

127:                                              ; preds = %123
  %128 = load i32*, i32** %15, align 8
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %221

131:                                              ; preds = %127
  %132 = load i32*, i32** %17, align 8
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %221

135:                                              ; preds = %131
  %136 = load i32*, i32** %12, align 8
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %22, align 4
  store i32 1, i32* @ssyr2_.j, align 4
  br label %138

138:                                              ; preds = %217, %135
  %139 = load i32, i32* @ssyr2_.j, align 4
  %140 = load i32, i32* %22, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %220

142:                                              ; preds = %138
  %143 = load float*, float** %14, align 8
  %144 = load i32, i32* @ssyr2_.j, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds float, float* %143, i64 %145
  %147 = load float, float* %146, align 4
  %148 = fcmp une float %147, 0.000000e+00
  br i1 %148, label %156, label %149

149:                                              ; preds = %142
  %150 = load float*, float** %16, align 8
  %151 = load i32, i32* @ssyr2_.j, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %150, i64 %152
  %154 = load float, float* %153, align 4
  %155 = fcmp une float %154, 0.000000e+00
  br i1 %155, label %156, label %216

156:                                              ; preds = %149, %142
  %157 = load float*, float** %13, align 8
  %158 = load float, float* %157, align 4
  %159 = load float*, float** %16, align 8
  %160 = load i32, i32* @ssyr2_.j, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %159, i64 %161
  %163 = load float, float* %162, align 4
  %164 = fmul float %158, %163
  store float %164, float* @ssyr2_.temp1, align 4
  %165 = load float*, float** %13, align 8
  %166 = load float, float* %165, align 4
  %167 = load float*, float** %14, align 8
  %168 = load i32, i32* @ssyr2_.j, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds float, float* %167, i64 %169
  %171 = load float, float* %170, align 4
  %172 = fmul float %166, %171
  store float %172, float* @ssyr2_.temp2, align 4
  %173 = load i32, i32* @ssyr2_.j, align 4
  store i32 %173, i32* %23, align 4
  store i32 1, i32* @ssyr2_.i__, align 4
  br label %174

174:                                              ; preds = %212, %156
  %175 = load i32, i32* @ssyr2_.i__, align 4
  %176 = load i32, i32* %23, align 4
  %177 = icmp sle i32 %175, %176
  br i1 %177, label %178, label %215

178:                                              ; preds = %174
  %179 = load float*, float** %18, align 8
  %180 = load i32, i32* @ssyr2_.i__, align 4
  %181 = load i32, i32* @ssyr2_.j, align 4
  %182 = load i32, i32* %20, align 4
  %183 = mul nsw i32 %181, %182
  %184 = add nsw i32 %180, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %179, i64 %185
  %187 = load float, float* %186, align 4
  %188 = load float*, float** %14, align 8
  %189 = load i32, i32* @ssyr2_.i__, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %188, i64 %190
  %192 = load float, float* %191, align 4
  %193 = load float, float* @ssyr2_.temp1, align 4
  %194 = fmul float %192, %193
  %195 = fadd float %187, %194
  %196 = load float*, float** %16, align 8
  %197 = load i32, i32* @ssyr2_.i__, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  %200 = load float, float* %199, align 4
  %201 = load float, float* @ssyr2_.temp2, align 4
  %202 = fmul float %200, %201
  %203 = fadd float %195, %202
  %204 = load float*, float** %18, align 8
  %205 = load i32, i32* @ssyr2_.i__, align 4
  %206 = load i32, i32* @ssyr2_.j, align 4
  %207 = load i32, i32* %20, align 4
  %208 = mul nsw i32 %206, %207
  %209 = add nsw i32 %205, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %204, i64 %210
  store float %203, float* %211, align 4
  br label %212

212:                                              ; preds = %178
  %213 = load i32, i32* @ssyr2_.i__, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* @ssyr2_.i__, align 4
  br label %174

215:                                              ; preds = %174
  br label %216

216:                                              ; preds = %215, %149
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* @ssyr2_.j, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* @ssyr2_.j, align 4
  br label %138

220:                                              ; preds = %138
  br label %325

221:                                              ; preds = %131, %127
  %222 = load i32*, i32** %12, align 8
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %22, align 4
  store i32 1, i32* @ssyr2_.j, align 4
  br label %224

224:                                              ; preds = %321, %221
  %225 = load i32, i32* @ssyr2_.j, align 4
  %226 = load i32, i32* %22, align 4
  %227 = icmp sle i32 %225, %226
  br i1 %227, label %228, label %324

228:                                              ; preds = %224
  %229 = load float*, float** %14, align 8
  %230 = load i32, i32* @ssyr2_.jx, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds float, float* %229, i64 %231
  %233 = load float, float* %232, align 4
  %234 = fcmp une float %233, 0.000000e+00
  br i1 %234, label %242, label %235

235:                                              ; preds = %228
  %236 = load float*, float** %16, align 8
  %237 = load i32, i32* @ssyr2_.jy, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %236, i64 %238
  %240 = load float, float* %239, align 4
  %241 = fcmp une float %240, 0.000000e+00
  br i1 %241, label %242, label %312

242:                                              ; preds = %235, %228
  %243 = load float*, float** %13, align 8
  %244 = load float, float* %243, align 4
  %245 = load float*, float** %16, align 8
  %246 = load i32, i32* @ssyr2_.jy, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %245, i64 %247
  %249 = load float, float* %248, align 4
  %250 = fmul float %244, %249
  store float %250, float* @ssyr2_.temp1, align 4
  %251 = load float*, float** %13, align 8
  %252 = load float, float* %251, align 4
  %253 = load float*, float** %14, align 8
  %254 = load i32, i32* @ssyr2_.jx, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %253, i64 %255
  %257 = load float, float* %256, align 4
  %258 = fmul float %252, %257
  store float %258, float* @ssyr2_.temp2, align 4
  %259 = load i32, i32* @ssyr2_.kx, align 4
  store i32 %259, i32* @ssyr2_.ix, align 4
  %260 = load i32, i32* @ssyr2_.ky, align 4
  store i32 %260, i32* @ssyr2_.iy, align 4
  %261 = load i32, i32* @ssyr2_.j, align 4
  store i32 %261, i32* %23, align 4
  store i32 1, i32* @ssyr2_.i__, align 4
  br label %262

262:                                              ; preds = %308, %242
  %263 = load i32, i32* @ssyr2_.i__, align 4
  %264 = load i32, i32* %23, align 4
  %265 = icmp sle i32 %263, %264
  br i1 %265, label %266, label %311

266:                                              ; preds = %262
  %267 = load float*, float** %18, align 8
  %268 = load i32, i32* @ssyr2_.i__, align 4
  %269 = load i32, i32* @ssyr2_.j, align 4
  %270 = load i32, i32* %20, align 4
  %271 = mul nsw i32 %269, %270
  %272 = add nsw i32 %268, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %267, i64 %273
  %275 = load float, float* %274, align 4
  %276 = load float*, float** %14, align 8
  %277 = load i32, i32* @ssyr2_.ix, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, float* %276, i64 %278
  %280 = load float, float* %279, align 4
  %281 = load float, float* @ssyr2_.temp1, align 4
  %282 = fmul float %280, %281
  %283 = fadd float %275, %282
  %284 = load float*, float** %16, align 8
  %285 = load i32, i32* @ssyr2_.iy, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %284, i64 %286
  %288 = load float, float* %287, align 4
  %289 = load float, float* @ssyr2_.temp2, align 4
  %290 = fmul float %288, %289
  %291 = fadd float %283, %290
  %292 = load float*, float** %18, align 8
  %293 = load i32, i32* @ssyr2_.i__, align 4
  %294 = load i32, i32* @ssyr2_.j, align 4
  %295 = load i32, i32* %20, align 4
  %296 = mul nsw i32 %294, %295
  %297 = add nsw i32 %293, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, float* %292, i64 %298
  store float %291, float* %299, align 4
  %300 = load i32*, i32** %15, align 8
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @ssyr2_.ix, align 4
  %303 = add nsw i32 %302, %301
  store i32 %303, i32* @ssyr2_.ix, align 4
  %304 = load i32*, i32** %17, align 8
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @ssyr2_.iy, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* @ssyr2_.iy, align 4
  br label %308

308:                                              ; preds = %266
  %309 = load i32, i32* @ssyr2_.i__, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* @ssyr2_.i__, align 4
  br label %262

311:                                              ; preds = %262
  br label %312

312:                                              ; preds = %311, %235
  %313 = load i32*, i32** %15, align 8
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @ssyr2_.jx, align 4
  %316 = add nsw i32 %315, %314
  store i32 %316, i32* @ssyr2_.jx, align 4
  %317 = load i32*, i32** %17, align 8
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @ssyr2_.jy, align 4
  %320 = add nsw i32 %319, %318
  store i32 %320, i32* @ssyr2_.jy, align 4
  br label %321

321:                                              ; preds = %312
  %322 = load i32, i32* @ssyr2_.j, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* @ssyr2_.j, align 4
  br label %224

324:                                              ; preds = %224
  br label %325

325:                                              ; preds = %324, %220
  br label %529

326:                                              ; preds = %123
  %327 = load i32*, i32** %15, align 8
  %328 = load i32, i32* %327, align 4
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %330, label %422

330:                                              ; preds = %326
  %331 = load i32*, i32** %17, align 8
  %332 = load i32, i32* %331, align 4
  %333 = icmp eq i32 %332, 1
  br i1 %333, label %334, label %422

334:                                              ; preds = %330
  %335 = load i32*, i32** %12, align 8
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %22, align 4
  store i32 1, i32* @ssyr2_.j, align 4
  br label %337

337:                                              ; preds = %418, %334
  %338 = load i32, i32* @ssyr2_.j, align 4
  %339 = load i32, i32* %22, align 4
  %340 = icmp sle i32 %338, %339
  br i1 %340, label %341, label %421

341:                                              ; preds = %337
  %342 = load float*, float** %14, align 8
  %343 = load i32, i32* @ssyr2_.j, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds float, float* %342, i64 %344
  %346 = load float, float* %345, align 4
  %347 = fcmp une float %346, 0.000000e+00
  br i1 %347, label %355, label %348

348:                                              ; preds = %341
  %349 = load float*, float** %16, align 8
  %350 = load i32, i32* @ssyr2_.j, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds float, float* %349, i64 %351
  %353 = load float, float* %352, align 4
  %354 = fcmp une float %353, 0.000000e+00
  br i1 %354, label %355, label %417

355:                                              ; preds = %348, %341
  %356 = load float*, float** %13, align 8
  %357 = load float, float* %356, align 4
  %358 = load float*, float** %16, align 8
  %359 = load i32, i32* @ssyr2_.j, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds float, float* %358, i64 %360
  %362 = load float, float* %361, align 4
  %363 = fmul float %357, %362
  store float %363, float* @ssyr2_.temp1, align 4
  %364 = load float*, float** %13, align 8
  %365 = load float, float* %364, align 4
  %366 = load float*, float** %14, align 8
  %367 = load i32, i32* @ssyr2_.j, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds float, float* %366, i64 %368
  %370 = load float, float* %369, align 4
  %371 = fmul float %365, %370
  store float %371, float* @ssyr2_.temp2, align 4
  %372 = load i32*, i32** %12, align 8
  %373 = load i32, i32* %372, align 4
  store i32 %373, i32* %23, align 4
  %374 = load i32, i32* @ssyr2_.j, align 4
  store i32 %374, i32* @ssyr2_.i__, align 4
  br label %375

375:                                              ; preds = %413, %355
  %376 = load i32, i32* @ssyr2_.i__, align 4
  %377 = load i32, i32* %23, align 4
  %378 = icmp sle i32 %376, %377
  br i1 %378, label %379, label %416

379:                                              ; preds = %375
  %380 = load float*, float** %18, align 8
  %381 = load i32, i32* @ssyr2_.i__, align 4
  %382 = load i32, i32* @ssyr2_.j, align 4
  %383 = load i32, i32* %20, align 4
  %384 = mul nsw i32 %382, %383
  %385 = add nsw i32 %381, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds float, float* %380, i64 %386
  %388 = load float, float* %387, align 4
  %389 = load float*, float** %14, align 8
  %390 = load i32, i32* @ssyr2_.i__, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds float, float* %389, i64 %391
  %393 = load float, float* %392, align 4
  %394 = load float, float* @ssyr2_.temp1, align 4
  %395 = fmul float %393, %394
  %396 = fadd float %388, %395
  %397 = load float*, float** %16, align 8
  %398 = load i32, i32* @ssyr2_.i__, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds float, float* %397, i64 %399
  %401 = load float, float* %400, align 4
  %402 = load float, float* @ssyr2_.temp2, align 4
  %403 = fmul float %401, %402
  %404 = fadd float %396, %403
  %405 = load float*, float** %18, align 8
  %406 = load i32, i32* @ssyr2_.i__, align 4
  %407 = load i32, i32* @ssyr2_.j, align 4
  %408 = load i32, i32* %20, align 4
  %409 = mul nsw i32 %407, %408
  %410 = add nsw i32 %406, %409
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds float, float* %405, i64 %411
  store float %404, float* %412, align 4
  br label %413

413:                                              ; preds = %379
  %414 = load i32, i32* @ssyr2_.i__, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* @ssyr2_.i__, align 4
  br label %375

416:                                              ; preds = %375
  br label %417

417:                                              ; preds = %416, %348
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* @ssyr2_.j, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* @ssyr2_.j, align 4
  br label %337

421:                                              ; preds = %337
  br label %528

422:                                              ; preds = %330, %326
  %423 = load i32*, i32** %12, align 8
  %424 = load i32, i32* %423, align 4
  store i32 %424, i32* %22, align 4
  store i32 1, i32* @ssyr2_.j, align 4
  br label %425

425:                                              ; preds = %524, %422
  %426 = load i32, i32* @ssyr2_.j, align 4
  %427 = load i32, i32* %22, align 4
  %428 = icmp sle i32 %426, %427
  br i1 %428, label %429, label %527

429:                                              ; preds = %425
  %430 = load float*, float** %14, align 8
  %431 = load i32, i32* @ssyr2_.jx, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds float, float* %430, i64 %432
  %434 = load float, float* %433, align 4
  %435 = fcmp une float %434, 0.000000e+00
  br i1 %435, label %443, label %436

436:                                              ; preds = %429
  %437 = load float*, float** %16, align 8
  %438 = load i32, i32* @ssyr2_.jy, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds float, float* %437, i64 %439
  %441 = load float, float* %440, align 4
  %442 = fcmp une float %441, 0.000000e+00
  br i1 %442, label %443, label %515

443:                                              ; preds = %436, %429
  %444 = load float*, float** %13, align 8
  %445 = load float, float* %444, align 4
  %446 = load float*, float** %16, align 8
  %447 = load i32, i32* @ssyr2_.jy, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds float, float* %446, i64 %448
  %450 = load float, float* %449, align 4
  %451 = fmul float %445, %450
  store float %451, float* @ssyr2_.temp1, align 4
  %452 = load float*, float** %13, align 8
  %453 = load float, float* %452, align 4
  %454 = load float*, float** %14, align 8
  %455 = load i32, i32* @ssyr2_.jx, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds float, float* %454, i64 %456
  %458 = load float, float* %457, align 4
  %459 = fmul float %453, %458
  store float %459, float* @ssyr2_.temp2, align 4
  %460 = load i32, i32* @ssyr2_.jx, align 4
  store i32 %460, i32* @ssyr2_.ix, align 4
  %461 = load i32, i32* @ssyr2_.jy, align 4
  store i32 %461, i32* @ssyr2_.iy, align 4
  %462 = load i32*, i32** %12, align 8
  %463 = load i32, i32* %462, align 4
  store i32 %463, i32* %23, align 4
  %464 = load i32, i32* @ssyr2_.j, align 4
  store i32 %464, i32* @ssyr2_.i__, align 4
  br label %465

465:                                              ; preds = %511, %443
  %466 = load i32, i32* @ssyr2_.i__, align 4
  %467 = load i32, i32* %23, align 4
  %468 = icmp sle i32 %466, %467
  br i1 %468, label %469, label %514

469:                                              ; preds = %465
  %470 = load float*, float** %18, align 8
  %471 = load i32, i32* @ssyr2_.i__, align 4
  %472 = load i32, i32* @ssyr2_.j, align 4
  %473 = load i32, i32* %20, align 4
  %474 = mul nsw i32 %472, %473
  %475 = add nsw i32 %471, %474
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds float, float* %470, i64 %476
  %478 = load float, float* %477, align 4
  %479 = load float*, float** %14, align 8
  %480 = load i32, i32* @ssyr2_.ix, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds float, float* %479, i64 %481
  %483 = load float, float* %482, align 4
  %484 = load float, float* @ssyr2_.temp1, align 4
  %485 = fmul float %483, %484
  %486 = fadd float %478, %485
  %487 = load float*, float** %16, align 8
  %488 = load i32, i32* @ssyr2_.iy, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds float, float* %487, i64 %489
  %491 = load float, float* %490, align 4
  %492 = load float, float* @ssyr2_.temp2, align 4
  %493 = fmul float %491, %492
  %494 = fadd float %486, %493
  %495 = load float*, float** %18, align 8
  %496 = load i32, i32* @ssyr2_.i__, align 4
  %497 = load i32, i32* @ssyr2_.j, align 4
  %498 = load i32, i32* %20, align 4
  %499 = mul nsw i32 %497, %498
  %500 = add nsw i32 %496, %499
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds float, float* %495, i64 %501
  store float %494, float* %502, align 4
  %503 = load i32*, i32** %15, align 8
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* @ssyr2_.ix, align 4
  %506 = add nsw i32 %505, %504
  store i32 %506, i32* @ssyr2_.ix, align 4
  %507 = load i32*, i32** %17, align 8
  %508 = load i32, i32* %507, align 4
  %509 = load i32, i32* @ssyr2_.iy, align 4
  %510 = add nsw i32 %509, %508
  store i32 %510, i32* @ssyr2_.iy, align 4
  br label %511

511:                                              ; preds = %469
  %512 = load i32, i32* @ssyr2_.i__, align 4
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* @ssyr2_.i__, align 4
  br label %465

514:                                              ; preds = %465
  br label %515

515:                                              ; preds = %514, %436
  %516 = load i32*, i32** %15, align 8
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* @ssyr2_.jx, align 4
  %519 = add nsw i32 %518, %517
  store i32 %519, i32* @ssyr2_.jx, align 4
  %520 = load i32*, i32** %17, align 8
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* @ssyr2_.jy, align 4
  %523 = add nsw i32 %522, %521
  store i32 %523, i32* @ssyr2_.jy, align 4
  br label %524

524:                                              ; preds = %515
  %525 = load i32, i32* @ssyr2_.j, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* @ssyr2_.j, align 4
  br label %425

527:                                              ; preds = %425
  br label %528

528:                                              ; preds = %527, %421
  br label %529

529:                                              ; preds = %528, %325
  store i32 0, i32* %10, align 4
  br label %530

530:                                              ; preds = %529, %85, %75
  %531 = load i32, i32* %10, align 4
  ret i32 %531
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
