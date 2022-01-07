; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgebak_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_sgebak_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sgebak_.i__ = internal global i32 0, align 4
@sgebak_.k = internal global i32 0, align 4
@sgebak_.s = internal global float 0.000000e+00, align 4
@sgebak_.ii = internal global i32 0, align 4
@sgebak_.leftv = internal global i8* null, align 8
@sgebak_.rightv = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"SGEBAK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgebak_(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, float* %5, i32* %6, float* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store float* %5, float** %17, align 8
  store i32* %6, i32** %18, align 8
  store float* %7, float** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %25 = load float*, float** %17, align 8
  %26 = getelementptr inbounds float, float* %25, i32 -1
  store float* %26, float** %17, align 8
  %27 = load i32*, i32** %20, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %22, align 4
  %29 = load i32, i32* %22, align 4
  %30 = add nsw i32 1, %29
  store i32 %30, i32* %23, align 4
  %31 = load i32, i32* %23, align 4
  %32 = load float*, float** %19, align 8
  %33 = sext i32 %31 to i64
  %34 = sub i64 0, %33
  %35 = getelementptr inbounds float, float* %32, i64 %34
  store float* %35, float** %19, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i8* @lsame_(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** @sgebak_.rightv, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = call i8* @lsame_(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %39, i8** @sgebak_.leftv, align 8
  %40 = load i32*, i32** %21, align 8
  store i32 0, i32* %40, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = call i8* @lsame_(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %43 = icmp ne i8* %42, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %10
  %45 = load i8*, i8** %12, align 8
  %46 = call i8* @lsame_(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i8* %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %12, align 8
  %50 = call i8* @lsame_(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %51 = icmp ne i8* %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %12, align 8
  %54 = call i8* @lsame_(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %55 = icmp ne i8* %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %21, align 8
  store i32 -1, i32* %57, align 4
  br label %123

58:                                               ; preds = %52, %48, %44, %10
  %59 = load i8*, i8** @sgebak_.rightv, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** @sgebak_.leftv, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i32*, i32** %21, align 8
  store i32 -2, i32* %65, align 4
  br label %122

66:                                               ; preds = %61, %58
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32*, i32** %21, align 8
  store i32 -3, i32* %71, align 4
  br label %121

72:                                               ; preds = %66
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 1
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @max(i32 1, i32 %80)
  %82 = icmp sgt i32 %78, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76, %72
  %84 = load i32*, i32** %21, align 8
  store i32 -4, i32* %84, align 4
  br label %120

85:                                               ; preds = %76
  %86 = load i32*, i32** %16, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %14, align 8
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @min(i32 %89, i32 %91)
  %93 = icmp slt i32 %87, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %85
  %95 = load i32*, i32** %16, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %96, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94, %85
  %101 = load i32*, i32** %21, align 8
  store i32 -5, i32* %101, align 4
  br label %119

102:                                              ; preds = %94
  %103 = load i32*, i32** %18, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32*, i32** %21, align 8
  store i32 -7, i32* %107, align 4
  br label %118

108:                                              ; preds = %102
  %109 = load i32*, i32** %20, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @max(i32 1, i32 %112)
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load i32*, i32** %21, align 8
  store i32 -9, i32* %116, align 4
  br label %117

117:                                              ; preds = %115, %108
  br label %118

118:                                              ; preds = %117, %106
  br label %119

119:                                              ; preds = %118, %100
  br label %120

120:                                              ; preds = %119, %83
  br label %121

121:                                              ; preds = %120, %70
  br label %122

122:                                              ; preds = %121, %64
  br label %123

123:                                              ; preds = %122, %56
  %124 = load i32*, i32** %21, align 8
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i32*, i32** %21, align 8
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %24, align 4
  %131 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* %24)
  store i32 0, i32* %11, align 4
  br label %367

132:                                              ; preds = %123
  %133 = load i32*, i32** %14, align 8
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  store i32 0, i32* %11, align 4
  br label %367

137:                                              ; preds = %132
  %138 = load i32*, i32** %18, align 8
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  store i32 0, i32* %11, align 4
  br label %367

142:                                              ; preds = %137
  %143 = load i8*, i8** %12, align 8
  %144 = call i8* @lsame_(i8* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 0, i32* %11, align 4
  br label %367

147:                                              ; preds = %142
  %148 = load i32*, i32** %15, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %16, align 8
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %149, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %227

154:                                              ; preds = %147
  %155 = load i8*, i8** %12, align 8
  %156 = call i8* @lsame_(i8* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %157 = icmp ne i8* %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i8*, i8** %12, align 8
  %160 = call i8* @lsame_(i8* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %226

162:                                              ; preds = %158, %154
  %163 = load i8*, i8** @sgebak_.rightv, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %193

165:                                              ; preds = %162
  %166 = load i32*, i32** %16, align 8
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %24, align 4
  %168 = load i32*, i32** %15, align 8
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* @sgebak_.i__, align 4
  br label %170

170:                                              ; preds = %189, %165
  %171 = load i32, i32* @sgebak_.i__, align 4
  %172 = load i32, i32* %24, align 4
  %173 = icmp sle i32 %171, %172
  br i1 %173, label %174, label %192

174:                                              ; preds = %170
  %175 = load float*, float** %17, align 8
  %176 = load i32, i32* @sgebak_.i__, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %175, i64 %177
  %179 = load float, float* %178, align 4
  store float %179, float* @sgebak_.s, align 4
  %180 = load i32*, i32** %18, align 8
  %181 = load float*, float** %19, align 8
  %182 = load i32, i32* @sgebak_.i__, align 4
  %183 = load i32, i32* %22, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, float* %181, i64 %185
  %187 = load i32*, i32** %20, align 8
  %188 = call i32 @sscal_(i32* %180, float* @sgebak_.s, float* %186, i32* %187)
  br label %189

189:                                              ; preds = %174
  %190 = load i32, i32* @sgebak_.i__, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* @sgebak_.i__, align 4
  br label %170

192:                                              ; preds = %170
  br label %193

193:                                              ; preds = %192, %162
  %194 = load i8*, i8** @sgebak_.leftv, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %225

196:                                              ; preds = %193
  %197 = load i32*, i32** %16, align 8
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %24, align 4
  %199 = load i32*, i32** %15, align 8
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* @sgebak_.i__, align 4
  br label %201

201:                                              ; preds = %221, %196
  %202 = load i32, i32* @sgebak_.i__, align 4
  %203 = load i32, i32* %24, align 4
  %204 = icmp sle i32 %202, %203
  br i1 %204, label %205, label %224

205:                                              ; preds = %201
  %206 = load float*, float** %17, align 8
  %207 = load i32, i32* @sgebak_.i__, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  %210 = load float, float* %209, align 4
  %211 = fdiv float 1.000000e+00, %210
  store float %211, float* @sgebak_.s, align 4
  %212 = load i32*, i32** %18, align 8
  %213 = load float*, float** %19, align 8
  %214 = load i32, i32* @sgebak_.i__, align 4
  %215 = load i32, i32* %22, align 4
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %213, i64 %217
  %219 = load i32*, i32** %20, align 8
  %220 = call i32 @sscal_(i32* %212, float* @sgebak_.s, float* %218, i32* %219)
  br label %221

221:                                              ; preds = %205
  %222 = load i32, i32* @sgebak_.i__, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* @sgebak_.i__, align 4
  br label %201

224:                                              ; preds = %201
  br label %225

225:                                              ; preds = %224, %193
  br label %226

226:                                              ; preds = %225, %158
  br label %227

227:                                              ; preds = %226, %153
  %228 = load i8*, i8** %12, align 8
  %229 = call i8* @lsame_(i8* %228, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %230 = icmp ne i8* %229, null
  br i1 %230, label %235, label %231

231:                                              ; preds = %227
  %232 = load i8*, i8** %12, align 8
  %233 = call i8* @lsame_(i8* %232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %366

235:                                              ; preds = %231, %227
  %236 = load i8*, i8** @sgebak_.rightv, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %300

238:                                              ; preds = %235
  %239 = load i32*, i32** %14, align 8
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %24, align 4
  store i32 1, i32* @sgebak_.ii, align 4
  br label %241

241:                                              ; preds = %296, %238
  %242 = load i32, i32* @sgebak_.ii, align 4
  %243 = load i32, i32* %24, align 4
  %244 = icmp sle i32 %242, %243
  br i1 %244, label %245, label %299

245:                                              ; preds = %241
  %246 = load i32, i32* @sgebak_.ii, align 4
  store i32 %246, i32* @sgebak_.i__, align 4
  %247 = load i32, i32* @sgebak_.i__, align 4
  %248 = load i32*, i32** %15, align 8
  %249 = load i32, i32* %248, align 4
  %250 = icmp sge i32 %247, %249
  br i1 %250, label %251, label %257

251:                                              ; preds = %245
  %252 = load i32, i32* @sgebak_.i__, align 4
  %253 = load i32*, i32** %16, align 8
  %254 = load i32, i32* %253, align 4
  %255 = icmp sle i32 %252, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %251
  br label %295

257:                                              ; preds = %251, %245
  %258 = load i32, i32* @sgebak_.i__, align 4
  %259 = load i32*, i32** %15, align 8
  %260 = load i32, i32* %259, align 4
  %261 = icmp slt i32 %258, %260
  br i1 %261, label %262, label %267

262:                                              ; preds = %257
  %263 = load i32*, i32** %15, align 8
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @sgebak_.ii, align 4
  %266 = sub nsw i32 %264, %265
  store i32 %266, i32* @sgebak_.i__, align 4
  br label %267

267:                                              ; preds = %262, %257
  %268 = load float*, float** %17, align 8
  %269 = load i32, i32* @sgebak_.i__, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %268, i64 %270
  %272 = load float, float* %271, align 4
  %273 = fptosi float %272 to i32
  store i32 %273, i32* @sgebak_.k, align 4
  %274 = load i32, i32* @sgebak_.k, align 4
  %275 = load i32, i32* @sgebak_.i__, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %267
  br label %295

278:                                              ; preds = %267
  %279 = load i32*, i32** %18, align 8
  %280 = load float*, float** %19, align 8
  %281 = load i32, i32* @sgebak_.i__, align 4
  %282 = load i32, i32* %22, align 4
  %283 = add nsw i32 %281, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %280, i64 %284
  %286 = load i32*, i32** %20, align 8
  %287 = load float*, float** %19, align 8
  %288 = load i32, i32* @sgebak_.k, align 4
  %289 = load i32, i32* %22, align 4
  %290 = add nsw i32 %288, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %287, i64 %291
  %293 = load i32*, i32** %20, align 8
  %294 = call i32 @sswap_(i32* %279, float* %285, i32* %286, float* %292, i32* %293)
  br label %295

295:                                              ; preds = %278, %277, %256
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* @sgebak_.ii, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* @sgebak_.ii, align 4
  br label %241

299:                                              ; preds = %241
  br label %300

300:                                              ; preds = %299, %235
  %301 = load i8*, i8** @sgebak_.leftv, align 8
  %302 = icmp ne i8* %301, null
  br i1 %302, label %303, label %365

303:                                              ; preds = %300
  %304 = load i32*, i32** %14, align 8
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %24, align 4
  store i32 1, i32* @sgebak_.ii, align 4
  br label %306

306:                                              ; preds = %361, %303
  %307 = load i32, i32* @sgebak_.ii, align 4
  %308 = load i32, i32* %24, align 4
  %309 = icmp sle i32 %307, %308
  br i1 %309, label %310, label %364

310:                                              ; preds = %306
  %311 = load i32, i32* @sgebak_.ii, align 4
  store i32 %311, i32* @sgebak_.i__, align 4
  %312 = load i32, i32* @sgebak_.i__, align 4
  %313 = load i32*, i32** %15, align 8
  %314 = load i32, i32* %313, align 4
  %315 = icmp sge i32 %312, %314
  br i1 %315, label %316, label %322

316:                                              ; preds = %310
  %317 = load i32, i32* @sgebak_.i__, align 4
  %318 = load i32*, i32** %16, align 8
  %319 = load i32, i32* %318, align 4
  %320 = icmp sle i32 %317, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  br label %360

322:                                              ; preds = %316, %310
  %323 = load i32, i32* @sgebak_.i__, align 4
  %324 = load i32*, i32** %15, align 8
  %325 = load i32, i32* %324, align 4
  %326 = icmp slt i32 %323, %325
  br i1 %326, label %327, label %332

327:                                              ; preds = %322
  %328 = load i32*, i32** %15, align 8
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @sgebak_.ii, align 4
  %331 = sub nsw i32 %329, %330
  store i32 %331, i32* @sgebak_.i__, align 4
  br label %332

332:                                              ; preds = %327, %322
  %333 = load float*, float** %17, align 8
  %334 = load i32, i32* @sgebak_.i__, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds float, float* %333, i64 %335
  %337 = load float, float* %336, align 4
  %338 = fptosi float %337 to i32
  store i32 %338, i32* @sgebak_.k, align 4
  %339 = load i32, i32* @sgebak_.k, align 4
  %340 = load i32, i32* @sgebak_.i__, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %332
  br label %360

343:                                              ; preds = %332
  %344 = load i32*, i32** %18, align 8
  %345 = load float*, float** %19, align 8
  %346 = load i32, i32* @sgebak_.i__, align 4
  %347 = load i32, i32* %22, align 4
  %348 = add nsw i32 %346, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds float, float* %345, i64 %349
  %351 = load i32*, i32** %20, align 8
  %352 = load float*, float** %19, align 8
  %353 = load i32, i32* @sgebak_.k, align 4
  %354 = load i32, i32* %22, align 4
  %355 = add nsw i32 %353, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds float, float* %352, i64 %356
  %358 = load i32*, i32** %20, align 8
  %359 = call i32 @sswap_(i32* %344, float* %350, i32* %351, float* %357, i32* %358)
  br label %360

360:                                              ; preds = %343, %342, %321
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* @sgebak_.ii, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* @sgebak_.ii, align 4
  br label %306

364:                                              ; preds = %306
  br label %365

365:                                              ; preds = %364, %300
  br label %366

366:                                              ; preds = %365, %231
  store i32 0, i32* %11, align 4
  br label %367

367:                                              ; preds = %366, %146, %141, %136, %127
  %368 = load i32, i32* %11, align 4
  ret i32 %368
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @sscal_(i32*, float*, float*, i32*) #1

declare dso_local i32 @sswap_(i32*, float*, i32*, float*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
