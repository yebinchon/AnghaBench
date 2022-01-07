; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_dgemv_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_dgemv_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dgemv_.i__ = internal global i32 0, align 4
@dgemv_.j = internal global i32 0, align 4
@dgemv_.ix = internal global i32 0, align 4
@dgemv_.iy = internal global i32 0, align 4
@dgemv_.jx = internal global i32 0, align 4
@dgemv_.jy = internal global i32 0, align 4
@dgemv_.kx = internal global i32 0, align 4
@dgemv_.ky = internal global i32 0, align 4
@dgemv_.info = internal global i32 0, align 4
@dgemv_.temp = internal global i32 0, align 4
@dgemv_.lenx = internal global i32 0, align 4
@dgemv_.leny = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"DGEMV \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dgemv_(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %28 = load i32*, i32** %18, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %24, align 4
  %30 = load i32, i32* %24, align 4
  %31 = add nsw i32 1, %30
  store i32 %31, i32* %25, align 4
  %32 = load i32, i32* %25, align 4
  %33 = load i32*, i32** %17, align 8
  %34 = sext i32 %32 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %17, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 -1
  store i32* %38, i32** %19, align 8
  %39 = load i32*, i32** %22, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 -1
  store i32* %40, i32** %22, align 8
  store i32 0, i32* @dgemv_.info, align 4
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
  store i32 1, i32* @dgemv_.info, align 4
  br label %86

53:                                               ; preds = %48, %44, %11
  %54 = load i32*, i32** %14, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 2, i32* @dgemv_.info, align 4
  br label %85

58:                                               ; preds = %53
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 3, i32* @dgemv_.info, align 4
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
  store i32 6, i32* @dgemv_.info, align 4
  br label %83

71:                                               ; preds = %63
  %72 = load i32*, i32** %20, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 8, i32* @dgemv_.info, align 4
  br label %82

76:                                               ; preds = %71
  %77 = load i32*, i32** %23, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 11, i32* @dgemv_.info, align 4
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
  %87 = load i32, i32* @dgemv_.info, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* @dgemv_.info)
  store i32 0, i32* %12, align 4
  br label %518

91:                                               ; preds = %86
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %91
  %96 = load i32*, i32** %15, align 8
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %95
  %100 = load i32*, i32** %16, align 8
  %101 = load i32, i32* %100, align 4
  %102 = sitofp i32 %101 to double
  %103 = fcmp oeq double %102, 0.000000e+00
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i32*, i32** %21, align 8
  %106 = load i32, i32* %105, align 4
  %107 = sitofp i32 %106 to double
  %108 = fcmp oeq double %107, 1.000000e+00
  br i1 %108, label %109, label %110

109:                                              ; preds = %104, %95, %91
  store i32 0, i32* %12, align 4
  br label %518

110:                                              ; preds = %104, %99
  %111 = load i8*, i8** %13, align 8
  %112 = call i8* @lsame_(i8* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load i32*, i32** %15, align 8
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* @dgemv_.lenx, align 4
  %117 = load i32*, i32** %14, align 8
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* @dgemv_.leny, align 4
  br label %124

119:                                              ; preds = %110
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* @dgemv_.lenx, align 4
  %122 = load i32*, i32** %15, align 8
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* @dgemv_.leny, align 4
  br label %124

124:                                              ; preds = %119, %114
  %125 = load i32*, i32** %20, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 1, i32* @dgemv_.kx, align 4
  br label %136

129:                                              ; preds = %124
  %130 = load i32, i32* @dgemv_.lenx, align 4
  %131 = sub nsw i32 %130, 1
  %132 = load i32*, i32** %20, align 8
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %131, %133
  %135 = sub nsw i32 1, %134
  store i32 %135, i32* @dgemv_.kx, align 4
  br label %136

136:                                              ; preds = %129, %128
  %137 = load i32*, i32** %23, align 8
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 1, i32* @dgemv_.ky, align 4
  br label %148

141:                                              ; preds = %136
  %142 = load i32, i32* @dgemv_.leny, align 4
  %143 = sub nsw i32 %142, 1
  %144 = load i32*, i32** %23, align 8
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %143, %145
  %147 = sub nsw i32 1, %146
  store i32 %147, i32* @dgemv_.ky, align 4
  br label %148

148:                                              ; preds = %141, %140
  %149 = load i32*, i32** %21, align 8
  %150 = load i32, i32* %149, align 4
  %151 = sitofp i32 %150 to double
  %152 = fcmp une double %151, 1.000000e+00
  br i1 %152, label %153, label %255

153:                                              ; preds = %148
  %154 = load i32*, i32** %23, align 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %201

157:                                              ; preds = %153
  %158 = load i32*, i32** %21, align 8
  %159 = load i32, i32* %158, align 4
  %160 = sitofp i32 %159 to double
  %161 = fcmp oeq double %160, 0.000000e+00
  br i1 %161, label %162, label %177

162:                                              ; preds = %157
  %163 = load i32, i32* @dgemv_.leny, align 4
  store i32 %163, i32* %26, align 4
  store i32 1, i32* @dgemv_.i__, align 4
  br label %164

164:                                              ; preds = %173, %162
  %165 = load i32, i32* @dgemv_.i__, align 4
  %166 = load i32, i32* %26, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %164
  %169 = load i32*, i32** %22, align 8
  %170 = load i32, i32* @dgemv_.i__, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 0, i32* %172, align 4
  br label %173

173:                                              ; preds = %168
  %174 = load i32, i32* @dgemv_.i__, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* @dgemv_.i__, align 4
  br label %164

176:                                              ; preds = %164
  br label %200

177:                                              ; preds = %157
  %178 = load i32, i32* @dgemv_.leny, align 4
  store i32 %178, i32* %26, align 4
  store i32 1, i32* @dgemv_.i__, align 4
  br label %179

179:                                              ; preds = %196, %177
  %180 = load i32, i32* @dgemv_.i__, align 4
  %181 = load i32, i32* %26, align 4
  %182 = icmp sle i32 %180, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %179
  %184 = load i32*, i32** %21, align 8
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %22, align 8
  %187 = load i32, i32* @dgemv_.i__, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = mul nsw i32 %185, %190
  %192 = load i32*, i32** %22, align 8
  %193 = load i32, i32* @dgemv_.i__, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %191, i32* %195, align 4
  br label %196

196:                                              ; preds = %183
  %197 = load i32, i32* @dgemv_.i__, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* @dgemv_.i__, align 4
  br label %179

199:                                              ; preds = %179
  br label %200

200:                                              ; preds = %199, %176
  br label %254

201:                                              ; preds = %153
  %202 = load i32, i32* @dgemv_.ky, align 4
  store i32 %202, i32* @dgemv_.iy, align 4
  %203 = load i32*, i32** %21, align 8
  %204 = load i32, i32* %203, align 4
  %205 = sitofp i32 %204 to double
  %206 = fcmp oeq double %205, 0.000000e+00
  br i1 %206, label %207, label %226

207:                                              ; preds = %201
  %208 = load i32, i32* @dgemv_.leny, align 4
  store i32 %208, i32* %26, align 4
  store i32 1, i32* @dgemv_.i__, align 4
  br label %209

209:                                              ; preds = %222, %207
  %210 = load i32, i32* @dgemv_.i__, align 4
  %211 = load i32, i32* %26, align 4
  %212 = icmp sle i32 %210, %211
  br i1 %212, label %213, label %225

213:                                              ; preds = %209
  %214 = load i32*, i32** %22, align 8
  %215 = load i32, i32* @dgemv_.iy, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  store i32 0, i32* %217, align 4
  %218 = load i32*, i32** %23, align 8
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @dgemv_.iy, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* @dgemv_.iy, align 4
  br label %222

222:                                              ; preds = %213
  %223 = load i32, i32* @dgemv_.i__, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* @dgemv_.i__, align 4
  br label %209

225:                                              ; preds = %209
  br label %253

226:                                              ; preds = %201
  %227 = load i32, i32* @dgemv_.leny, align 4
  store i32 %227, i32* %26, align 4
  store i32 1, i32* @dgemv_.i__, align 4
  br label %228

228:                                              ; preds = %249, %226
  %229 = load i32, i32* @dgemv_.i__, align 4
  %230 = load i32, i32* %26, align 4
  %231 = icmp sle i32 %229, %230
  br i1 %231, label %232, label %252

232:                                              ; preds = %228
  %233 = load i32*, i32** %21, align 8
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %22, align 8
  %236 = load i32, i32* @dgemv_.iy, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = mul nsw i32 %234, %239
  %241 = load i32*, i32** %22, align 8
  %242 = load i32, i32* @dgemv_.iy, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  store i32 %240, i32* %244, align 4
  %245 = load i32*, i32** %23, align 8
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @dgemv_.iy, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* @dgemv_.iy, align 4
  br label %249

249:                                              ; preds = %232
  %250 = load i32, i32* @dgemv_.i__, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* @dgemv_.i__, align 4
  br label %228

252:                                              ; preds = %228
  br label %253

253:                                              ; preds = %252, %225
  br label %254

254:                                              ; preds = %253, %200
  br label %255

255:                                              ; preds = %254, %148
  %256 = load i32*, i32** %16, align 8
  %257 = load i32, i32* %256, align 4
  %258 = sitofp i32 %257 to double
  %259 = fcmp oeq double %258, 0.000000e+00
  br i1 %259, label %260, label %261

260:                                              ; preds = %255
  store i32 0, i32* %12, align 4
  br label %518

261:                                              ; preds = %255
  %262 = load i8*, i8** %13, align 8
  %263 = call i8* @lsame_(i8* %262, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %398

265:                                              ; preds = %261
  %266 = load i32, i32* @dgemv_.kx, align 4
  store i32 %266, i32* @dgemv_.jx, align 4
  %267 = load i32*, i32** %23, align 8
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %331

270:                                              ; preds = %265
  %271 = load i32*, i32** %15, align 8
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %26, align 4
  store i32 1, i32* @dgemv_.j, align 4
  br label %273

273:                                              ; preds = %327, %270
  %274 = load i32, i32* @dgemv_.j, align 4
  %275 = load i32, i32* %26, align 4
  %276 = icmp sle i32 %274, %275
  br i1 %276, label %277, label %330

277:                                              ; preds = %273
  %278 = load i32*, i32** %19, align 8
  %279 = load i32, i32* @dgemv_.jx, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = sitofp i32 %282 to double
  %284 = fcmp une double %283, 0.000000e+00
  br i1 %284, label %285, label %322

285:                                              ; preds = %277
  %286 = load i32*, i32** %16, align 8
  %287 = load i32, i32* %286, align 4
  %288 = load i32*, i32** %19, align 8
  %289 = load i32, i32* @dgemv_.jx, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = mul nsw i32 %287, %292
  store i32 %293, i32* @dgemv_.temp, align 4
  %294 = load i32*, i32** %14, align 8
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %27, align 4
  store i32 1, i32* @dgemv_.i__, align 4
  br label %296

296:                                              ; preds = %318, %285
  %297 = load i32, i32* @dgemv_.i__, align 4
  %298 = load i32, i32* %27, align 4
  %299 = icmp sle i32 %297, %298
  br i1 %299, label %300, label %321

300:                                              ; preds = %296
  %301 = load i32, i32* @dgemv_.temp, align 4
  %302 = load i32*, i32** %17, align 8
  %303 = load i32, i32* @dgemv_.i__, align 4
  %304 = load i32, i32* @dgemv_.j, align 4
  %305 = load i32, i32* %24, align 4
  %306 = mul nsw i32 %304, %305
  %307 = add nsw i32 %303, %306
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %302, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = mul nsw i32 %301, %310
  %312 = load i32*, i32** %22, align 8
  %313 = load i32, i32* @dgemv_.i__, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, %311
  store i32 %317, i32* %315, align 4
  br label %318

318:                                              ; preds = %300
  %319 = load i32, i32* @dgemv_.i__, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* @dgemv_.i__, align 4
  br label %296

321:                                              ; preds = %296
  br label %322

322:                                              ; preds = %321, %277
  %323 = load i32*, i32** %20, align 8
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @dgemv_.jx, align 4
  %326 = add nsw i32 %325, %324
  store i32 %326, i32* @dgemv_.jx, align 4
  br label %327

327:                                              ; preds = %322
  %328 = load i32, i32* @dgemv_.j, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* @dgemv_.j, align 4
  br label %273

330:                                              ; preds = %273
  br label %397

331:                                              ; preds = %265
  %332 = load i32*, i32** %15, align 8
  %333 = load i32, i32* %332, align 4
  store i32 %333, i32* %26, align 4
  store i32 1, i32* @dgemv_.j, align 4
  br label %334

334:                                              ; preds = %393, %331
  %335 = load i32, i32* @dgemv_.j, align 4
  %336 = load i32, i32* %26, align 4
  %337 = icmp sle i32 %335, %336
  br i1 %337, label %338, label %396

338:                                              ; preds = %334
  %339 = load i32*, i32** %19, align 8
  %340 = load i32, i32* @dgemv_.jx, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = sitofp i32 %343 to double
  %345 = fcmp une double %344, 0.000000e+00
  br i1 %345, label %346, label %388

346:                                              ; preds = %338
  %347 = load i32*, i32** %16, align 8
  %348 = load i32, i32* %347, align 4
  %349 = load i32*, i32** %19, align 8
  %350 = load i32, i32* @dgemv_.jx, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = mul nsw i32 %348, %353
  store i32 %354, i32* @dgemv_.temp, align 4
  %355 = load i32, i32* @dgemv_.ky, align 4
  store i32 %355, i32* @dgemv_.iy, align 4
  %356 = load i32*, i32** %14, align 8
  %357 = load i32, i32* %356, align 4
  store i32 %357, i32* %27, align 4
  store i32 1, i32* @dgemv_.i__, align 4
  br label %358

358:                                              ; preds = %384, %346
  %359 = load i32, i32* @dgemv_.i__, align 4
  %360 = load i32, i32* %27, align 4
  %361 = icmp sle i32 %359, %360
  br i1 %361, label %362, label %387

362:                                              ; preds = %358
  %363 = load i32, i32* @dgemv_.temp, align 4
  %364 = load i32*, i32** %17, align 8
  %365 = load i32, i32* @dgemv_.i__, align 4
  %366 = load i32, i32* @dgemv_.j, align 4
  %367 = load i32, i32* %24, align 4
  %368 = mul nsw i32 %366, %367
  %369 = add nsw i32 %365, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %364, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = mul nsw i32 %363, %372
  %374 = load i32*, i32** %22, align 8
  %375 = load i32, i32* @dgemv_.iy, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = add nsw i32 %378, %373
  store i32 %379, i32* %377, align 4
  %380 = load i32*, i32** %23, align 8
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @dgemv_.iy, align 4
  %383 = add nsw i32 %382, %381
  store i32 %383, i32* @dgemv_.iy, align 4
  br label %384

384:                                              ; preds = %362
  %385 = load i32, i32* @dgemv_.i__, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* @dgemv_.i__, align 4
  br label %358

387:                                              ; preds = %358
  br label %388

388:                                              ; preds = %387, %338
  %389 = load i32*, i32** %20, align 8
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* @dgemv_.jx, align 4
  %392 = add nsw i32 %391, %390
  store i32 %392, i32* @dgemv_.jx, align 4
  br label %393

393:                                              ; preds = %388
  %394 = load i32, i32* @dgemv_.j, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* @dgemv_.j, align 4
  br label %334

396:                                              ; preds = %334
  br label %397

397:                                              ; preds = %396, %330
  br label %517

398:                                              ; preds = %261
  %399 = load i32, i32* @dgemv_.ky, align 4
  store i32 %399, i32* @dgemv_.jy, align 4
  %400 = load i32*, i32** %20, align 8
  %401 = load i32, i32* %400, align 4
  %402 = icmp eq i32 %401, 1
  br i1 %402, label %403, label %457

403:                                              ; preds = %398
  %404 = load i32*, i32** %15, align 8
  %405 = load i32, i32* %404, align 4
  store i32 %405, i32* %26, align 4
  store i32 1, i32* @dgemv_.j, align 4
  br label %406

406:                                              ; preds = %453, %403
  %407 = load i32, i32* @dgemv_.j, align 4
  %408 = load i32, i32* %26, align 4
  %409 = icmp sle i32 %407, %408
  br i1 %409, label %410, label %456

410:                                              ; preds = %406
  store i32 0, i32* @dgemv_.temp, align 4
  %411 = load i32*, i32** %14, align 8
  %412 = load i32, i32* %411, align 4
  store i32 %412, i32* %27, align 4
  store i32 1, i32* @dgemv_.i__, align 4
  br label %413

413:                                              ; preds = %435, %410
  %414 = load i32, i32* @dgemv_.i__, align 4
  %415 = load i32, i32* %27, align 4
  %416 = icmp sle i32 %414, %415
  br i1 %416, label %417, label %438

417:                                              ; preds = %413
  %418 = load i32*, i32** %17, align 8
  %419 = load i32, i32* @dgemv_.i__, align 4
  %420 = load i32, i32* @dgemv_.j, align 4
  %421 = load i32, i32* %24, align 4
  %422 = mul nsw i32 %420, %421
  %423 = add nsw i32 %419, %422
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %418, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = load i32*, i32** %19, align 8
  %428 = load i32, i32* @dgemv_.i__, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = mul nsw i32 %426, %431
  %433 = load i32, i32* @dgemv_.temp, align 4
  %434 = add nsw i32 %433, %432
  store i32 %434, i32* @dgemv_.temp, align 4
  br label %435

435:                                              ; preds = %417
  %436 = load i32, i32* @dgemv_.i__, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* @dgemv_.i__, align 4
  br label %413

438:                                              ; preds = %413
  %439 = load i32*, i32** %16, align 8
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* @dgemv_.temp, align 4
  %442 = mul nsw i32 %440, %441
  %443 = load i32*, i32** %22, align 8
  %444 = load i32, i32* @dgemv_.jy, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = add nsw i32 %447, %442
  store i32 %448, i32* %446, align 4
  %449 = load i32*, i32** %23, align 8
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* @dgemv_.jy, align 4
  %452 = add nsw i32 %451, %450
  store i32 %452, i32* @dgemv_.jy, align 4
  br label %453

453:                                              ; preds = %438
  %454 = load i32, i32* @dgemv_.j, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* @dgemv_.j, align 4
  br label %406

456:                                              ; preds = %406
  br label %516

457:                                              ; preds = %398
  %458 = load i32*, i32** %15, align 8
  %459 = load i32, i32* %458, align 4
  store i32 %459, i32* %26, align 4
  store i32 1, i32* @dgemv_.j, align 4
  br label %460

460:                                              ; preds = %512, %457
  %461 = load i32, i32* @dgemv_.j, align 4
  %462 = load i32, i32* %26, align 4
  %463 = icmp sle i32 %461, %462
  br i1 %463, label %464, label %515

464:                                              ; preds = %460
  store i32 0, i32* @dgemv_.temp, align 4
  %465 = load i32, i32* @dgemv_.kx, align 4
  store i32 %465, i32* @dgemv_.ix, align 4
  %466 = load i32*, i32** %14, align 8
  %467 = load i32, i32* %466, align 4
  store i32 %467, i32* %27, align 4
  store i32 1, i32* @dgemv_.i__, align 4
  br label %468

468:                                              ; preds = %494, %464
  %469 = load i32, i32* @dgemv_.i__, align 4
  %470 = load i32, i32* %27, align 4
  %471 = icmp sle i32 %469, %470
  br i1 %471, label %472, label %497

472:                                              ; preds = %468
  %473 = load i32*, i32** %17, align 8
  %474 = load i32, i32* @dgemv_.i__, align 4
  %475 = load i32, i32* @dgemv_.j, align 4
  %476 = load i32, i32* %24, align 4
  %477 = mul nsw i32 %475, %476
  %478 = add nsw i32 %474, %477
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %473, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = load i32*, i32** %19, align 8
  %483 = load i32, i32* @dgemv_.ix, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = mul nsw i32 %481, %486
  %488 = load i32, i32* @dgemv_.temp, align 4
  %489 = add nsw i32 %488, %487
  store i32 %489, i32* @dgemv_.temp, align 4
  %490 = load i32*, i32** %20, align 8
  %491 = load i32, i32* %490, align 4
  %492 = load i32, i32* @dgemv_.ix, align 4
  %493 = add nsw i32 %492, %491
  store i32 %493, i32* @dgemv_.ix, align 4
  br label %494

494:                                              ; preds = %472
  %495 = load i32, i32* @dgemv_.i__, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* @dgemv_.i__, align 4
  br label %468

497:                                              ; preds = %468
  %498 = load i32*, i32** %16, align 8
  %499 = load i32, i32* %498, align 4
  %500 = load i32, i32* @dgemv_.temp, align 4
  %501 = mul nsw i32 %499, %500
  %502 = load i32*, i32** %22, align 8
  %503 = load i32, i32* @dgemv_.jy, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %502, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = add nsw i32 %506, %501
  store i32 %507, i32* %505, align 4
  %508 = load i32*, i32** %23, align 8
  %509 = load i32, i32* %508, align 4
  %510 = load i32, i32* @dgemv_.jy, align 4
  %511 = add nsw i32 %510, %509
  store i32 %511, i32* @dgemv_.jy, align 4
  br label %512

512:                                              ; preds = %497
  %513 = load i32, i32* @dgemv_.j, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* @dgemv_.j, align 4
  br label %460

515:                                              ; preds = %460
  br label %516

516:                                              ; preds = %515, %456
  br label %517

517:                                              ; preds = %516, %397
  store i32 0, i32* %12, align 4
  br label %518

518:                                              ; preds = %517, %260, %109, %89
  %519 = load i32, i32* %12, align 4
  ret i32 %519
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
