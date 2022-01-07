; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dgebak_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dgebak_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dgebak_.i__ = internal global i32 0, align 4
@dgebak_.k = internal global i32 0, align 4
@dgebak_.s = internal global i32 0, align 4
@dgebak_.ii = internal global i32 0, align 4
@dgebak_.leftv = internal global i8* null, align 8
@dgebak_.rightv = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"DGEBAK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dgebak_(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
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
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %25 = load i32*, i32** %17, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 -1
  store i32* %26, i32** %17, align 8
  %27 = load i32*, i32** %20, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %22, align 4
  %29 = load i32, i32* %22, align 4
  %30 = add nsw i32 1, %29
  store i32 %30, i32* %23, align 4
  %31 = load i32, i32* %23, align 4
  %32 = load i32*, i32** %19, align 8
  %33 = sext i32 %31 to i64
  %34 = sub i64 0, %33
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %19, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i8* @lsame_(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** @dgebak_.rightv, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = call i8* @lsame_(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %39, i8** @dgebak_.leftv, align 8
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
  %59 = load i8*, i8** @dgebak_.rightv, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** @dgebak_.leftv, align 8
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
  br label %229

154:                                              ; preds = %147
  %155 = load i8*, i8** %12, align 8
  %156 = call i8* @lsame_(i8* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %157 = icmp ne i8* %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i8*, i8** %12, align 8
  %160 = call i8* @lsame_(i8* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %228

162:                                              ; preds = %158, %154
  %163 = load i8*, i8** @dgebak_.rightv, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %193

165:                                              ; preds = %162
  %166 = load i32*, i32** %16, align 8
  %167 = load i32, i32* %166, align 4
  store i32 %167, i32* %24, align 4
  %168 = load i32*, i32** %15, align 8
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* @dgebak_.i__, align 4
  br label %170

170:                                              ; preds = %189, %165
  %171 = load i32, i32* @dgebak_.i__, align 4
  %172 = load i32, i32* %24, align 4
  %173 = icmp sle i32 %171, %172
  br i1 %173, label %174, label %192

174:                                              ; preds = %170
  %175 = load i32*, i32** %17, align 8
  %176 = load i32, i32* @dgebak_.i__, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* @dgebak_.s, align 4
  %180 = load i32*, i32** %18, align 8
  %181 = load i32*, i32** %19, align 8
  %182 = load i32, i32* @dgebak_.i__, align 4
  %183 = load i32, i32* %22, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %181, i64 %185
  %187 = load i32*, i32** %20, align 8
  %188 = call i32 @dscal_(i32* %180, i32* @dgebak_.s, i32* %186, i32* %187)
  br label %189

189:                                              ; preds = %174
  %190 = load i32, i32* @dgebak_.i__, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* @dgebak_.i__, align 4
  br label %170

192:                                              ; preds = %170
  br label %193

193:                                              ; preds = %192, %162
  %194 = load i8*, i8** @dgebak_.leftv, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %227

196:                                              ; preds = %193
  %197 = load i32*, i32** %16, align 8
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %24, align 4
  %199 = load i32*, i32** %15, align 8
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* @dgebak_.i__, align 4
  br label %201

201:                                              ; preds = %223, %196
  %202 = load i32, i32* @dgebak_.i__, align 4
  %203 = load i32, i32* %24, align 4
  %204 = icmp sle i32 %202, %203
  br i1 %204, label %205, label %226

205:                                              ; preds = %201
  %206 = load i32*, i32** %17, align 8
  %207 = load i32, i32* @dgebak_.i__, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = sitofp i32 %210 to double
  %212 = fdiv double 1.000000e+00, %211
  %213 = fptosi double %212 to i32
  store i32 %213, i32* @dgebak_.s, align 4
  %214 = load i32*, i32** %18, align 8
  %215 = load i32*, i32** %19, align 8
  %216 = load i32, i32* @dgebak_.i__, align 4
  %217 = load i32, i32* %22, align 4
  %218 = add nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %215, i64 %219
  %221 = load i32*, i32** %20, align 8
  %222 = call i32 @dscal_(i32* %214, i32* @dgebak_.s, i32* %220, i32* %221)
  br label %223

223:                                              ; preds = %205
  %224 = load i32, i32* @dgebak_.i__, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* @dgebak_.i__, align 4
  br label %201

226:                                              ; preds = %201
  br label %227

227:                                              ; preds = %226, %193
  br label %228

228:                                              ; preds = %227, %158
  br label %229

229:                                              ; preds = %228, %153
  %230 = load i8*, i8** %12, align 8
  %231 = call i8* @lsame_(i8* %230, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %232 = icmp ne i8* %231, null
  br i1 %232, label %237, label %233

233:                                              ; preds = %229
  %234 = load i8*, i8** %12, align 8
  %235 = call i8* @lsame_(i8* %234, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %366

237:                                              ; preds = %233, %229
  %238 = load i8*, i8** @dgebak_.rightv, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %301

240:                                              ; preds = %237
  %241 = load i32*, i32** %14, align 8
  %242 = load i32, i32* %241, align 4
  store i32 %242, i32* %24, align 4
  store i32 1, i32* @dgebak_.ii, align 4
  br label %243

243:                                              ; preds = %297, %240
  %244 = load i32, i32* @dgebak_.ii, align 4
  %245 = load i32, i32* %24, align 4
  %246 = icmp sle i32 %244, %245
  br i1 %246, label %247, label %300

247:                                              ; preds = %243
  %248 = load i32, i32* @dgebak_.ii, align 4
  store i32 %248, i32* @dgebak_.i__, align 4
  %249 = load i32, i32* @dgebak_.i__, align 4
  %250 = load i32*, i32** %15, align 8
  %251 = load i32, i32* %250, align 4
  %252 = icmp sge i32 %249, %251
  br i1 %252, label %253, label %259

253:                                              ; preds = %247
  %254 = load i32, i32* @dgebak_.i__, align 4
  %255 = load i32*, i32** %16, align 8
  %256 = load i32, i32* %255, align 4
  %257 = icmp sle i32 %254, %256
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  br label %296

259:                                              ; preds = %253, %247
  %260 = load i32, i32* @dgebak_.i__, align 4
  %261 = load i32*, i32** %15, align 8
  %262 = load i32, i32* %261, align 4
  %263 = icmp slt i32 %260, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %259
  %265 = load i32*, i32** %15, align 8
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @dgebak_.ii, align 4
  %268 = sub nsw i32 %266, %267
  store i32 %268, i32* @dgebak_.i__, align 4
  br label %269

269:                                              ; preds = %264, %259
  %270 = load i32*, i32** %17, align 8
  %271 = load i32, i32* @dgebak_.i__, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* @dgebak_.k, align 4
  %275 = load i32, i32* @dgebak_.k, align 4
  %276 = load i32, i32* @dgebak_.i__, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %269
  br label %296

279:                                              ; preds = %269
  %280 = load i32*, i32** %18, align 8
  %281 = load i32*, i32** %19, align 8
  %282 = load i32, i32* @dgebak_.i__, align 4
  %283 = load i32, i32* %22, align 4
  %284 = add nsw i32 %282, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %281, i64 %285
  %287 = load i32*, i32** %20, align 8
  %288 = load i32*, i32** %19, align 8
  %289 = load i32, i32* @dgebak_.k, align 4
  %290 = load i32, i32* %22, align 4
  %291 = add nsw i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %288, i64 %292
  %294 = load i32*, i32** %20, align 8
  %295 = call i32 @dswap_(i32* %280, i32* %286, i32* %287, i32* %293, i32* %294)
  br label %296

296:                                              ; preds = %279, %278, %258
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* @dgebak_.ii, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* @dgebak_.ii, align 4
  br label %243

300:                                              ; preds = %243
  br label %301

301:                                              ; preds = %300, %237
  %302 = load i8*, i8** @dgebak_.leftv, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %365

304:                                              ; preds = %301
  %305 = load i32*, i32** %14, align 8
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %24, align 4
  store i32 1, i32* @dgebak_.ii, align 4
  br label %307

307:                                              ; preds = %361, %304
  %308 = load i32, i32* @dgebak_.ii, align 4
  %309 = load i32, i32* %24, align 4
  %310 = icmp sle i32 %308, %309
  br i1 %310, label %311, label %364

311:                                              ; preds = %307
  %312 = load i32, i32* @dgebak_.ii, align 4
  store i32 %312, i32* @dgebak_.i__, align 4
  %313 = load i32, i32* @dgebak_.i__, align 4
  %314 = load i32*, i32** %15, align 8
  %315 = load i32, i32* %314, align 4
  %316 = icmp sge i32 %313, %315
  br i1 %316, label %317, label %323

317:                                              ; preds = %311
  %318 = load i32, i32* @dgebak_.i__, align 4
  %319 = load i32*, i32** %16, align 8
  %320 = load i32, i32* %319, align 4
  %321 = icmp sle i32 %318, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %317
  br label %360

323:                                              ; preds = %317, %311
  %324 = load i32, i32* @dgebak_.i__, align 4
  %325 = load i32*, i32** %15, align 8
  %326 = load i32, i32* %325, align 4
  %327 = icmp slt i32 %324, %326
  br i1 %327, label %328, label %333

328:                                              ; preds = %323
  %329 = load i32*, i32** %15, align 8
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @dgebak_.ii, align 4
  %332 = sub nsw i32 %330, %331
  store i32 %332, i32* @dgebak_.i__, align 4
  br label %333

333:                                              ; preds = %328, %323
  %334 = load i32*, i32** %17, align 8
  %335 = load i32, i32* @dgebak_.i__, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  store i32 %338, i32* @dgebak_.k, align 4
  %339 = load i32, i32* @dgebak_.k, align 4
  %340 = load i32, i32* @dgebak_.i__, align 4
  %341 = icmp eq i32 %339, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %333
  br label %360

343:                                              ; preds = %333
  %344 = load i32*, i32** %18, align 8
  %345 = load i32*, i32** %19, align 8
  %346 = load i32, i32* @dgebak_.i__, align 4
  %347 = load i32, i32* %22, align 4
  %348 = add nsw i32 %346, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %345, i64 %349
  %351 = load i32*, i32** %20, align 8
  %352 = load i32*, i32** %19, align 8
  %353 = load i32, i32* @dgebak_.k, align 4
  %354 = load i32, i32* %22, align 4
  %355 = add nsw i32 %353, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %352, i64 %356
  %358 = load i32*, i32** %20, align 8
  %359 = call i32 @dswap_(i32* %344, i32* %350, i32* %351, i32* %357, i32* %358)
  br label %360

360:                                              ; preds = %343, %342, %322
  br label %361

361:                                              ; preds = %360
  %362 = load i32, i32* @dgebak_.ii, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* @dgebak_.ii, align 4
  br label %307

364:                                              ; preds = %307
  br label %365

365:                                              ; preds = %364, %301
  br label %366

366:                                              ; preds = %365, %233
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

declare dso_local i32 @dscal_(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dswap_(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
