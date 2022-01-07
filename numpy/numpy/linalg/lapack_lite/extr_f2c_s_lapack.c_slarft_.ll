; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slarft_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_slarft_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slarft_.i__ = internal global i32 0, align 4
@slarft_.j = internal global i32 0, align 4
@slarft_.prevlastv = internal global i32 0, align 4
@slarft_.vii = internal global float 0.000000e+00, align 4
@slarft_.lastv = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@c__1 = common dso_local global i32 0, align 4
@c_b29 = common dso_local global float 0.000000e+00, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @slarft_(i8* %0, i8* %1, i32* %2, i32* %3, float* %4, i32* %5, float* %6, float* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store float* %4, float** %15, align 8
  store i32* %5, i32** %16, align 8
  store float* %6, float** %17, align 8
  store float* %7, float** %18, align 8
  store i32* %8, i32** %19, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %22, align 4
  %30 = load i32, i32* %22, align 4
  %31 = add nsw i32 1, %30
  store i32 %31, i32* %23, align 4
  %32 = load i32, i32* %23, align 4
  %33 = load float*, float** %15, align 8
  %34 = sext i32 %32 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds float, float* %33, i64 %35
  store float* %36, float** %15, align 8
  %37 = load float*, float** %17, align 8
  %38 = getelementptr inbounds float, float* %37, i32 -1
  store float* %38, float** %17, align 8
  %39 = load i32*, i32** %19, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = add nsw i32 1, %41
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %21, align 4
  %44 = load float*, float** %18, align 8
  %45 = sext i32 %43 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds float, float* %44, i64 %46
  store float* %47, float** %18, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %638

52:                                               ; preds = %9
  %53 = load i8*, i8** %11, align 8
  %54 = call i8* @lsame_(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %299

56:                                               ; preds = %52
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* @slarft_.prevlastv, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %24, align 4
  store i32 1, i32* @slarft_.i__, align 4
  br label %61

61:                                               ; preds = %295, %56
  %62 = load i32, i32* @slarft_.i__, align 4
  %63 = load i32, i32* %24, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %298

65:                                               ; preds = %61
  %66 = load i32, i32* @slarft_.i__, align 4
  %67 = load i32, i32* @slarft_.prevlastv, align 4
  %68 = call i32 @max(i32 %66, i32 %67)
  store i32 %68, i32* @slarft_.prevlastv, align 4
  %69 = load float*, float** %17, align 8
  %70 = load i32, i32* @slarft_.i__, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %69, i64 %71
  %73 = load float, float* %72, align 4
  %74 = fcmp oeq float %73, 0.000000e+00
  br i1 %74, label %75, label %94

75:                                               ; preds = %65
  %76 = load i32, i32* @slarft_.i__, align 4
  store i32 %76, i32* %25, align 4
  store i32 1, i32* @slarft_.j, align 4
  br label %77

77:                                               ; preds = %90, %75
  %78 = load i32, i32* @slarft_.j, align 4
  %79 = load i32, i32* %25, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load float*, float** %18, align 8
  %83 = load i32, i32* @slarft_.j, align 4
  %84 = load i32, i32* @slarft_.i__, align 4
  %85 = load i32, i32* %20, align 4
  %86 = mul nsw i32 %84, %85
  %87 = add nsw i32 %83, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %82, i64 %88
  store float 0.000000e+00, float* %89, align 4
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* @slarft_.j, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @slarft_.j, align 4
  br label %77

93:                                               ; preds = %77
  br label %294

94:                                               ; preds = %65
  %95 = load float*, float** %15, align 8
  %96 = load i32, i32* @slarft_.i__, align 4
  %97 = load i32, i32* @slarft_.i__, align 4
  %98 = load i32, i32* %22, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %96, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %95, i64 %101
  %103 = load float, float* %102, align 4
  store float %103, float* @slarft_.vii, align 4
  %104 = load float*, float** %15, align 8
  %105 = load i32, i32* @slarft_.i__, align 4
  %106 = load i32, i32* @slarft_.i__, align 4
  %107 = load i32, i32* %22, align 4
  %108 = mul nsw i32 %106, %107
  %109 = add nsw i32 %105, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds float, float* %104, i64 %110
  store float 1.000000e+00, float* %111, align 4
  %112 = load i8*, i8** %12, align 8
  %113 = call i8* @lsame_(i8* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %180

115:                                              ; preds = %94
  %116 = load i32, i32* @slarft_.i__, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %25, align 4
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* @slarft_.lastv, align 4
  br label %120

120:                                              ; preds = %137, %115
  %121 = load i32, i32* @slarft_.lastv, align 4
  %122 = load i32, i32* %25, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = load float*, float** %15, align 8
  %126 = load i32, i32* @slarft_.lastv, align 4
  %127 = load i32, i32* @slarft_.i__, align 4
  %128 = load i32, i32* %22, align 4
  %129 = mul nsw i32 %127, %128
  %130 = add nsw i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %125, i64 %131
  %133 = load float, float* %132, align 4
  %134 = fcmp une float %133, 0.000000e+00
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  br label %141

136:                                              ; preds = %124
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* @slarft_.lastv, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* @slarft_.lastv, align 4
  br label %120

140:                                              ; preds = %120
  br label %141

141:                                              ; preds = %140, %135
  %142 = load i32, i32* @slarft_.lastv, align 4
  %143 = load i32, i32* @slarft_.prevlastv, align 4
  %144 = call i32 @min(i32 %142, i32 %143)
  store i32 %144, i32* @slarft_.j, align 4
  %145 = load i32, i32* @slarft_.j, align 4
  %146 = load i32, i32* @slarft_.i__, align 4
  %147 = sub nsw i32 %145, %146
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %25, align 4
  %149 = load i32, i32* @slarft_.i__, align 4
  %150 = sub nsw i32 %149, 1
  store i32 %150, i32* %26, align 4
  %151 = load float*, float** %17, align 8
  %152 = load i32, i32* @slarft_.i__, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %151, i64 %153
  %155 = load float, float* %154, align 4
  %156 = fneg float %155
  store float %156, float* %27, align 4
  %157 = load float*, float** %15, align 8
  %158 = load i32, i32* @slarft_.i__, align 4
  %159 = load i32, i32* %22, align 4
  %160 = add nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %157, i64 %161
  %163 = load i32*, i32** %16, align 8
  %164 = load float*, float** %15, align 8
  %165 = load i32, i32* @slarft_.i__, align 4
  %166 = load i32, i32* @slarft_.i__, align 4
  %167 = load i32, i32* %22, align 4
  %168 = mul nsw i32 %166, %167
  %169 = add nsw i32 %165, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %164, i64 %170
  %172 = load float*, float** %18, align 8
  %173 = load i32, i32* @slarft_.i__, align 4
  %174 = load i32, i32* %20, align 4
  %175 = mul nsw i32 %173, %174
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %172, i64 %177
  %179 = call i32 @sgemv_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %25, i32* %26, float* %27, float* %162, i32* %163, float* %171, i32* @c__1, float* @c_b29, float* %178, i32* @c__1)
  br label %247

180:                                              ; preds = %94
  %181 = load i32, i32* @slarft_.i__, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %25, align 4
  %183 = load i32*, i32** %13, align 8
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* @slarft_.lastv, align 4
  br label %185

185:                                              ; preds = %202, %180
  %186 = load i32, i32* @slarft_.lastv, align 4
  %187 = load i32, i32* %25, align 4
  %188 = icmp sge i32 %186, %187
  br i1 %188, label %189, label %205

189:                                              ; preds = %185
  %190 = load float*, float** %15, align 8
  %191 = load i32, i32* @slarft_.i__, align 4
  %192 = load i32, i32* @slarft_.lastv, align 4
  %193 = load i32, i32* %22, align 4
  %194 = mul nsw i32 %192, %193
  %195 = add nsw i32 %191, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds float, float* %190, i64 %196
  %198 = load float, float* %197, align 4
  %199 = fcmp une float %198, 0.000000e+00
  br i1 %199, label %200, label %201

200:                                              ; preds = %189
  br label %206

201:                                              ; preds = %189
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* @slarft_.lastv, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* @slarft_.lastv, align 4
  br label %185

205:                                              ; preds = %185
  br label %206

206:                                              ; preds = %205, %200
  %207 = load i32, i32* @slarft_.lastv, align 4
  %208 = load i32, i32* @slarft_.prevlastv, align 4
  %209 = call i32 @min(i32 %207, i32 %208)
  store i32 %209, i32* @slarft_.j, align 4
  %210 = load i32, i32* @slarft_.i__, align 4
  %211 = sub nsw i32 %210, 1
  store i32 %211, i32* %25, align 4
  %212 = load i32, i32* @slarft_.j, align 4
  %213 = load i32, i32* @slarft_.i__, align 4
  %214 = sub nsw i32 %212, %213
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %26, align 4
  %216 = load float*, float** %17, align 8
  %217 = load i32, i32* @slarft_.i__, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float, float* %216, i64 %218
  %220 = load float, float* %219, align 4
  %221 = fneg float %220
  store float %221, float* %27, align 4
  %222 = load float*, float** %15, align 8
  %223 = load i32, i32* @slarft_.i__, align 4
  %224 = load i32, i32* %22, align 4
  %225 = mul nsw i32 %223, %224
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %222, i64 %227
  %229 = load i32*, i32** %16, align 8
  %230 = load float*, float** %15, align 8
  %231 = load i32, i32* @slarft_.i__, align 4
  %232 = load i32, i32* @slarft_.i__, align 4
  %233 = load i32, i32* %22, align 4
  %234 = mul nsw i32 %232, %233
  %235 = add nsw i32 %231, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %230, i64 %236
  %238 = load i32*, i32** %16, align 8
  %239 = load float*, float** %18, align 8
  %240 = load i32, i32* @slarft_.i__, align 4
  %241 = load i32, i32* %20, align 4
  %242 = mul nsw i32 %240, %241
  %243 = add nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds float, float* %239, i64 %244
  %246 = call i32 @sgemv_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %25, i32* %26, float* %27, float* %228, i32* %229, float* %237, i32* %238, float* @c_b29, float* %245, i32* @c__1)
  br label %247

247:                                              ; preds = %206, %141
  %248 = load float, float* @slarft_.vii, align 4
  %249 = load float*, float** %15, align 8
  %250 = load i32, i32* @slarft_.i__, align 4
  %251 = load i32, i32* @slarft_.i__, align 4
  %252 = load i32, i32* %22, align 4
  %253 = mul nsw i32 %251, %252
  %254 = add nsw i32 %250, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %249, i64 %255
  store float %248, float* %256, align 4
  %257 = load i32, i32* @slarft_.i__, align 4
  %258 = sub nsw i32 %257, 1
  store i32 %258, i32* %25, align 4
  %259 = load float*, float** %18, align 8
  %260 = load i32, i32* %21, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %259, i64 %261
  %263 = load i32*, i32** %19, align 8
  %264 = load float*, float** %18, align 8
  %265 = load i32, i32* @slarft_.i__, align 4
  %266 = load i32, i32* %20, align 4
  %267 = mul nsw i32 %265, %266
  %268 = add nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds float, float* %264, i64 %269
  %271 = call i32 @strmv_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %25, float* %262, i32* %263, float* %270, i32* @c__1)
  %272 = load float*, float** %17, align 8
  %273 = load i32, i32* @slarft_.i__, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float, float* %272, i64 %274
  %276 = load float, float* %275, align 4
  %277 = load float*, float** %18, align 8
  %278 = load i32, i32* @slarft_.i__, align 4
  %279 = load i32, i32* @slarft_.i__, align 4
  %280 = load i32, i32* %20, align 4
  %281 = mul nsw i32 %279, %280
  %282 = add nsw i32 %278, %281
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %277, i64 %283
  store float %276, float* %284, align 4
  %285 = load i32, i32* @slarft_.i__, align 4
  %286 = icmp sgt i32 %285, 1
  br i1 %286, label %287, label %291

287:                                              ; preds = %247
  %288 = load i32, i32* @slarft_.prevlastv, align 4
  %289 = load i32, i32* @slarft_.lastv, align 4
  %290 = call i32 @max(i32 %288, i32 %289)
  store i32 %290, i32* @slarft_.prevlastv, align 4
  br label %293

291:                                              ; preds = %247
  %292 = load i32, i32* @slarft_.lastv, align 4
  store i32 %292, i32* @slarft_.prevlastv, align 4
  br label %293

293:                                              ; preds = %291, %287
  br label %294

294:                                              ; preds = %293, %93
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* @slarft_.i__, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* @slarft_.i__, align 4
  br label %61

298:                                              ; preds = %61
  br label %637

299:                                              ; preds = %52
  store i32 1, i32* @slarft_.prevlastv, align 4
  %300 = load i32*, i32** %14, align 8
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* @slarft_.i__, align 4
  br label %302

302:                                              ; preds = %633, %299
  %303 = load i32, i32* @slarft_.i__, align 4
  %304 = icmp sge i32 %303, 1
  br i1 %304, label %305, label %636

305:                                              ; preds = %302
  %306 = load float*, float** %17, align 8
  %307 = load i32, i32* @slarft_.i__, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %306, i64 %308
  %310 = load float, float* %309, align 4
  %311 = fcmp oeq float %310, 0.000000e+00
  br i1 %311, label %312, label %333

312:                                              ; preds = %305
  %313 = load i32*, i32** %14, align 8
  %314 = load i32, i32* %313, align 4
  store i32 %314, i32* %24, align 4
  %315 = load i32, i32* @slarft_.i__, align 4
  store i32 %315, i32* @slarft_.j, align 4
  br label %316

316:                                              ; preds = %329, %312
  %317 = load i32, i32* @slarft_.j, align 4
  %318 = load i32, i32* %24, align 4
  %319 = icmp sle i32 %317, %318
  br i1 %319, label %320, label %332

320:                                              ; preds = %316
  %321 = load float*, float** %18, align 8
  %322 = load i32, i32* @slarft_.j, align 4
  %323 = load i32, i32* @slarft_.i__, align 4
  %324 = load i32, i32* %20, align 4
  %325 = mul nsw i32 %323, %324
  %326 = add nsw i32 %322, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds float, float* %321, i64 %327
  store float 0.000000e+00, float* %328, align 4
  br label %329

329:                                              ; preds = %320
  %330 = load i32, i32* @slarft_.j, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* @slarft_.j, align 4
  br label %316

332:                                              ; preds = %316
  br label %632

333:                                              ; preds = %305
  %334 = load i32, i32* @slarft_.i__, align 4
  %335 = load i32*, i32** %14, align 8
  %336 = load i32, i32* %335, align 4
  %337 = icmp slt i32 %334, %336
  br i1 %337, label %338, label %618

338:                                              ; preds = %333
  %339 = load i8*, i8** %12, align 8
  %340 = call i8* @lsame_(i8* %339, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %341 = icmp ne i8* %340, null
  br i1 %341, label %342, label %462

342:                                              ; preds = %338
  %343 = load float*, float** %15, align 8
  %344 = load i32*, i32** %13, align 8
  %345 = load i32, i32* %344, align 4
  %346 = load i32*, i32** %14, align 8
  %347 = load i32, i32* %346, align 4
  %348 = sub nsw i32 %345, %347
  %349 = load i32, i32* @slarft_.i__, align 4
  %350 = add nsw i32 %348, %349
  %351 = load i32, i32* @slarft_.i__, align 4
  %352 = load i32, i32* %22, align 4
  %353 = mul nsw i32 %351, %352
  %354 = add nsw i32 %350, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds float, float* %343, i64 %355
  %357 = load float, float* %356, align 4
  store float %357, float* @slarft_.vii, align 4
  %358 = load float*, float** %15, align 8
  %359 = load i32*, i32** %13, align 8
  %360 = load i32, i32* %359, align 4
  %361 = load i32*, i32** %14, align 8
  %362 = load i32, i32* %361, align 4
  %363 = sub nsw i32 %360, %362
  %364 = load i32, i32* @slarft_.i__, align 4
  %365 = add nsw i32 %363, %364
  %366 = load i32, i32* @slarft_.i__, align 4
  %367 = load i32, i32* %22, align 4
  %368 = mul nsw i32 %366, %367
  %369 = add nsw i32 %365, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds float, float* %358, i64 %370
  store float 1.000000e+00, float* %371, align 4
  %372 = load i32, i32* @slarft_.i__, align 4
  %373 = sub nsw i32 %372, 1
  store i32 %373, i32* %24, align 4
  store i32 1, i32* @slarft_.lastv, align 4
  br label %374

374:                                              ; preds = %391, %342
  %375 = load i32, i32* @slarft_.lastv, align 4
  %376 = load i32, i32* %24, align 4
  %377 = icmp sle i32 %375, %376
  br i1 %377, label %378, label %394

378:                                              ; preds = %374
  %379 = load float*, float** %15, align 8
  %380 = load i32, i32* @slarft_.lastv, align 4
  %381 = load i32, i32* @slarft_.i__, align 4
  %382 = load i32, i32* %22, align 4
  %383 = mul nsw i32 %381, %382
  %384 = add nsw i32 %380, %383
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds float, float* %379, i64 %385
  %387 = load float, float* %386, align 4
  %388 = fcmp une float %387, 0.000000e+00
  br i1 %388, label %389, label %390

389:                                              ; preds = %378
  br label %395

390:                                              ; preds = %378
  br label %391

391:                                              ; preds = %390
  %392 = load i32, i32* @slarft_.lastv, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* @slarft_.lastv, align 4
  br label %374

394:                                              ; preds = %374
  br label %395

395:                                              ; preds = %394, %389
  %396 = load i32, i32* @slarft_.lastv, align 4
  %397 = load i32, i32* @slarft_.prevlastv, align 4
  %398 = call i32 @max(i32 %396, i32 %397)
  store i32 %398, i32* @slarft_.j, align 4
  %399 = load i32*, i32** %13, align 8
  %400 = load i32, i32* %399, align 4
  %401 = load i32*, i32** %14, align 8
  %402 = load i32, i32* %401, align 4
  %403 = sub nsw i32 %400, %402
  %404 = load i32, i32* @slarft_.i__, align 4
  %405 = add nsw i32 %403, %404
  %406 = load i32, i32* @slarft_.j, align 4
  %407 = sub nsw i32 %405, %406
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %24, align 4
  %409 = load i32*, i32** %14, align 8
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* @slarft_.i__, align 4
  %412 = sub nsw i32 %410, %411
  store i32 %412, i32* %25, align 4
  %413 = load float*, float** %17, align 8
  %414 = load i32, i32* @slarft_.i__, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds float, float* %413, i64 %415
  %417 = load float, float* %416, align 4
  %418 = fneg float %417
  store float %418, float* %27, align 4
  %419 = load float*, float** %15, align 8
  %420 = load i32, i32* @slarft_.j, align 4
  %421 = load i32, i32* @slarft_.i__, align 4
  %422 = add nsw i32 %421, 1
  %423 = load i32, i32* %22, align 4
  %424 = mul nsw i32 %422, %423
  %425 = add nsw i32 %420, %424
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds float, float* %419, i64 %426
  %428 = load i32*, i32** %16, align 8
  %429 = load float*, float** %15, align 8
  %430 = load i32, i32* @slarft_.j, align 4
  %431 = load i32, i32* @slarft_.i__, align 4
  %432 = load i32, i32* %22, align 4
  %433 = mul nsw i32 %431, %432
  %434 = add nsw i32 %430, %433
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds float, float* %429, i64 %435
  %437 = load float*, float** %18, align 8
  %438 = load i32, i32* @slarft_.i__, align 4
  %439 = add nsw i32 %438, 1
  %440 = load i32, i32* @slarft_.i__, align 4
  %441 = load i32, i32* %20, align 4
  %442 = mul nsw i32 %440, %441
  %443 = add nsw i32 %439, %442
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds float, float* %437, i64 %444
  %446 = call i32 @sgemv_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %24, i32* %25, float* %27, float* %427, i32* %428, float* %436, i32* @c__1, float* @c_b29, float* %445, i32* @c__1)
  %447 = load float, float* @slarft_.vii, align 4
  %448 = load float*, float** %15, align 8
  %449 = load i32*, i32** %13, align 8
  %450 = load i32, i32* %449, align 4
  %451 = load i32*, i32** %14, align 8
  %452 = load i32, i32* %451, align 4
  %453 = sub nsw i32 %450, %452
  %454 = load i32, i32* @slarft_.i__, align 4
  %455 = add nsw i32 %453, %454
  %456 = load i32, i32* @slarft_.i__, align 4
  %457 = load i32, i32* %22, align 4
  %458 = mul nsw i32 %456, %457
  %459 = add nsw i32 %455, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds float, float* %448, i64 %460
  store float %447, float* %461, align 4
  br label %583

462:                                              ; preds = %338
  %463 = load float*, float** %15, align 8
  %464 = load i32, i32* @slarft_.i__, align 4
  %465 = load i32*, i32** %13, align 8
  %466 = load i32, i32* %465, align 4
  %467 = load i32*, i32** %14, align 8
  %468 = load i32, i32* %467, align 4
  %469 = sub nsw i32 %466, %468
  %470 = load i32, i32* @slarft_.i__, align 4
  %471 = add nsw i32 %469, %470
  %472 = load i32, i32* %22, align 4
  %473 = mul nsw i32 %471, %472
  %474 = add nsw i32 %464, %473
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds float, float* %463, i64 %475
  %477 = load float, float* %476, align 4
  store float %477, float* @slarft_.vii, align 4
  %478 = load float*, float** %15, align 8
  %479 = load i32, i32* @slarft_.i__, align 4
  %480 = load i32*, i32** %13, align 8
  %481 = load i32, i32* %480, align 4
  %482 = load i32*, i32** %14, align 8
  %483 = load i32, i32* %482, align 4
  %484 = sub nsw i32 %481, %483
  %485 = load i32, i32* @slarft_.i__, align 4
  %486 = add nsw i32 %484, %485
  %487 = load i32, i32* %22, align 4
  %488 = mul nsw i32 %486, %487
  %489 = add nsw i32 %479, %488
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds float, float* %478, i64 %490
  store float 1.000000e+00, float* %491, align 4
  %492 = load i32, i32* @slarft_.i__, align 4
  %493 = sub nsw i32 %492, 1
  store i32 %493, i32* %24, align 4
  store i32 1, i32* @slarft_.lastv, align 4
  br label %494

494:                                              ; preds = %511, %462
  %495 = load i32, i32* @slarft_.lastv, align 4
  %496 = load i32, i32* %24, align 4
  %497 = icmp sle i32 %495, %496
  br i1 %497, label %498, label %514

498:                                              ; preds = %494
  %499 = load float*, float** %15, align 8
  %500 = load i32, i32* @slarft_.i__, align 4
  %501 = load i32, i32* @slarft_.lastv, align 4
  %502 = load i32, i32* %22, align 4
  %503 = mul nsw i32 %501, %502
  %504 = add nsw i32 %500, %503
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds float, float* %499, i64 %505
  %507 = load float, float* %506, align 4
  %508 = fcmp une float %507, 0.000000e+00
  br i1 %508, label %509, label %510

509:                                              ; preds = %498
  br label %515

510:                                              ; preds = %498
  br label %511

511:                                              ; preds = %510
  %512 = load i32, i32* @slarft_.lastv, align 4
  %513 = add nsw i32 %512, 1
  store i32 %513, i32* @slarft_.lastv, align 4
  br label %494

514:                                              ; preds = %494
  br label %515

515:                                              ; preds = %514, %509
  %516 = load i32, i32* @slarft_.lastv, align 4
  %517 = load i32, i32* @slarft_.prevlastv, align 4
  %518 = call i32 @max(i32 %516, i32 %517)
  store i32 %518, i32* @slarft_.j, align 4
  %519 = load i32*, i32** %14, align 8
  %520 = load i32, i32* %519, align 4
  %521 = load i32, i32* @slarft_.i__, align 4
  %522 = sub nsw i32 %520, %521
  store i32 %522, i32* %24, align 4
  %523 = load i32*, i32** %13, align 8
  %524 = load i32, i32* %523, align 4
  %525 = load i32*, i32** %14, align 8
  %526 = load i32, i32* %525, align 4
  %527 = sub nsw i32 %524, %526
  %528 = load i32, i32* @slarft_.i__, align 4
  %529 = add nsw i32 %527, %528
  %530 = load i32, i32* @slarft_.j, align 4
  %531 = sub nsw i32 %529, %530
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %25, align 4
  %533 = load float*, float** %17, align 8
  %534 = load i32, i32* @slarft_.i__, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds float, float* %533, i64 %535
  %537 = load float, float* %536, align 4
  %538 = fneg float %537
  store float %538, float* %27, align 4
  %539 = load float*, float** %15, align 8
  %540 = load i32, i32* @slarft_.i__, align 4
  %541 = add nsw i32 %540, 1
  %542 = load i32, i32* @slarft_.j, align 4
  %543 = load i32, i32* %22, align 4
  %544 = mul nsw i32 %542, %543
  %545 = add nsw i32 %541, %544
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds float, float* %539, i64 %546
  %548 = load i32*, i32** %16, align 8
  %549 = load float*, float** %15, align 8
  %550 = load i32, i32* @slarft_.i__, align 4
  %551 = load i32, i32* @slarft_.j, align 4
  %552 = load i32, i32* %22, align 4
  %553 = mul nsw i32 %551, %552
  %554 = add nsw i32 %550, %553
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds float, float* %549, i64 %555
  %557 = load i32*, i32** %16, align 8
  %558 = load float*, float** %18, align 8
  %559 = load i32, i32* @slarft_.i__, align 4
  %560 = add nsw i32 %559, 1
  %561 = load i32, i32* @slarft_.i__, align 4
  %562 = load i32, i32* %20, align 4
  %563 = mul nsw i32 %561, %562
  %564 = add nsw i32 %560, %563
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds float, float* %558, i64 %565
  %567 = call i32 @sgemv_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %24, i32* %25, float* %27, float* %547, i32* %548, float* %556, i32* %557, float* @c_b29, float* %566, i32* @c__1)
  %568 = load float, float* @slarft_.vii, align 4
  %569 = load float*, float** %15, align 8
  %570 = load i32, i32* @slarft_.i__, align 4
  %571 = load i32*, i32** %13, align 8
  %572 = load i32, i32* %571, align 4
  %573 = load i32*, i32** %14, align 8
  %574 = load i32, i32* %573, align 4
  %575 = sub nsw i32 %572, %574
  %576 = load i32, i32* @slarft_.i__, align 4
  %577 = add nsw i32 %575, %576
  %578 = load i32, i32* %22, align 4
  %579 = mul nsw i32 %577, %578
  %580 = add nsw i32 %570, %579
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds float, float* %569, i64 %581
  store float %568, float* %582, align 4
  br label %583

583:                                              ; preds = %515, %395
  %584 = load i32*, i32** %14, align 8
  %585 = load i32, i32* %584, align 4
  %586 = load i32, i32* @slarft_.i__, align 4
  %587 = sub nsw i32 %585, %586
  store i32 %587, i32* %24, align 4
  %588 = load float*, float** %18, align 8
  %589 = load i32, i32* @slarft_.i__, align 4
  %590 = add nsw i32 %589, 1
  %591 = load i32, i32* @slarft_.i__, align 4
  %592 = add nsw i32 %591, 1
  %593 = load i32, i32* %20, align 4
  %594 = mul nsw i32 %592, %593
  %595 = add nsw i32 %590, %594
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds float, float* %588, i64 %596
  %598 = load i32*, i32** %19, align 8
  %599 = load float*, float** %18, align 8
  %600 = load i32, i32* @slarft_.i__, align 4
  %601 = add nsw i32 %600, 1
  %602 = load i32, i32* @slarft_.i__, align 4
  %603 = load i32, i32* %20, align 4
  %604 = mul nsw i32 %602, %603
  %605 = add nsw i32 %601, %604
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds float, float* %599, i64 %606
  %608 = call i32 @strmv_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %24, float* %597, i32* %598, float* %607, i32* @c__1)
  %609 = load i32, i32* @slarft_.i__, align 4
  %610 = icmp sgt i32 %609, 1
  br i1 %610, label %611, label %615

611:                                              ; preds = %583
  %612 = load i32, i32* @slarft_.prevlastv, align 4
  %613 = load i32, i32* @slarft_.lastv, align 4
  %614 = call i32 @min(i32 %612, i32 %613)
  store i32 %614, i32* @slarft_.prevlastv, align 4
  br label %617

615:                                              ; preds = %583
  %616 = load i32, i32* @slarft_.lastv, align 4
  store i32 %616, i32* @slarft_.prevlastv, align 4
  br label %617

617:                                              ; preds = %615, %611
  br label %618

618:                                              ; preds = %617, %333
  %619 = load float*, float** %17, align 8
  %620 = load i32, i32* @slarft_.i__, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds float, float* %619, i64 %621
  %623 = load float, float* %622, align 4
  %624 = load float*, float** %18, align 8
  %625 = load i32, i32* @slarft_.i__, align 4
  %626 = load i32, i32* @slarft_.i__, align 4
  %627 = load i32, i32* %20, align 4
  %628 = mul nsw i32 %626, %627
  %629 = add nsw i32 %625, %628
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds float, float* %624, i64 %630
  store float %623, float* %631, align 4
  br label %632

632:                                              ; preds = %618, %332
  br label %633

633:                                              ; preds = %632
  %634 = load i32, i32* @slarft_.i__, align 4
  %635 = add nsw i32 %634, -1
  store i32 %635, i32* @slarft_.i__, align 4
  br label %302

636:                                              ; preds = %302
  br label %637

637:                                              ; preds = %636, %298
  store i32 0, i32* %10, align 4
  br label %638

638:                                              ; preds = %637, %51
  %639 = load i32, i32* %10, align 4
  ret i32 %639
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sgemv_(i8*, i32*, i32*, float*, float*, i32*, float*, i32*, float*, float*, i32*) #1

declare dso_local i32 @strmv_(i8*, i8*, i8*, i32*, float*, i32*, float*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
