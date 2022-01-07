; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlarft_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlarft_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlarft_.i__ = internal global i32 0, align 4
@dlarft_.j = internal global i32 0, align 4
@dlarft_.prevlastv = internal global i32 0, align 4
@dlarft_.vii = internal global i32 0, align 4
@dlarft_.lastv = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@c__1 = common dso_local global i32 0, align 4
@c_b29 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlarft_(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %22, align 4
  %30 = load i32, i32* %22, align 4
  %31 = add nsw i32 1, %30
  store i32 %31, i32* %23, align 4
  %32 = load i32, i32* %23, align 4
  %33 = load i32*, i32** %15, align 8
  %34 = sext i32 %32 to i64
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %15, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 -1
  store i32* %38, i32** %17, align 8
  %39 = load i32*, i32** %19, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = add nsw i32 1, %41
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %21, align 4
  %44 = load i32*, i32** %18, align 8
  %45 = sext i32 %43 to i64
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %18, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %9
  store i32 0, i32* %10, align 4
  br label %644

52:                                               ; preds = %9
  %53 = load i8*, i8** %11, align 8
  %54 = call i8* @lsame_(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %302

56:                                               ; preds = %52
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* @dlarft_.prevlastv, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %24, align 4
  store i32 1, i32* @dlarft_.i__, align 4
  br label %61

61:                                               ; preds = %298, %56
  %62 = load i32, i32* @dlarft_.i__, align 4
  %63 = load i32, i32* %24, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %301

65:                                               ; preds = %61
  %66 = load i32, i32* @dlarft_.i__, align 4
  %67 = load i32, i32* @dlarft_.prevlastv, align 4
  %68 = call i32 @max(i32 %66, i32 %67)
  store i32 %68, i32* @dlarft_.prevlastv, align 4
  %69 = load i32*, i32** %17, align 8
  %70 = load i32, i32* @dlarft_.i__, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sitofp i32 %73 to double
  %75 = fcmp oeq double %74, 0.000000e+00
  br i1 %75, label %76, label %95

76:                                               ; preds = %65
  %77 = load i32, i32* @dlarft_.i__, align 4
  store i32 %77, i32* %25, align 4
  store i32 1, i32* @dlarft_.j, align 4
  br label %78

78:                                               ; preds = %91, %76
  %79 = load i32, i32* @dlarft_.j, align 4
  %80 = load i32, i32* %25, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load i32*, i32** %18, align 8
  %84 = load i32, i32* @dlarft_.j, align 4
  %85 = load i32, i32* @dlarft_.i__, align 4
  %86 = load i32, i32* %20, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %83, i64 %89
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* @dlarft_.j, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @dlarft_.j, align 4
  br label %78

94:                                               ; preds = %78
  br label %297

95:                                               ; preds = %65
  %96 = load i32*, i32** %15, align 8
  %97 = load i32, i32* @dlarft_.i__, align 4
  %98 = load i32, i32* @dlarft_.i__, align 4
  %99 = load i32, i32* %22, align 4
  %100 = mul nsw i32 %98, %99
  %101 = add nsw i32 %97, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %96, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* @dlarft_.vii, align 4
  %105 = load i32*, i32** %15, align 8
  %106 = load i32, i32* @dlarft_.i__, align 4
  %107 = load i32, i32* @dlarft_.i__, align 4
  %108 = load i32, i32* %22, align 4
  %109 = mul nsw i32 %107, %108
  %110 = add nsw i32 %106, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %105, i64 %111
  store i32 1, i32* %112, align 4
  %113 = load i8*, i8** %12, align 8
  %114 = call i8* @lsame_(i8* %113, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %182

116:                                              ; preds = %95
  %117 = load i32, i32* @dlarft_.i__, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %25, align 4
  %119 = load i32*, i32** %13, align 8
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* @dlarft_.lastv, align 4
  br label %121

121:                                              ; preds = %139, %116
  %122 = load i32, i32* @dlarft_.lastv, align 4
  %123 = load i32, i32* %25, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %142

125:                                              ; preds = %121
  %126 = load i32*, i32** %15, align 8
  %127 = load i32, i32* @dlarft_.lastv, align 4
  %128 = load i32, i32* @dlarft_.i__, align 4
  %129 = load i32, i32* %22, align 4
  %130 = mul nsw i32 %128, %129
  %131 = add nsw i32 %127, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %126, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sitofp i32 %134 to double
  %136 = fcmp une double %135, 0.000000e+00
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  br label %143

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* @dlarft_.lastv, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* @dlarft_.lastv, align 4
  br label %121

142:                                              ; preds = %121
  br label %143

143:                                              ; preds = %142, %137
  %144 = load i32, i32* @dlarft_.lastv, align 4
  %145 = load i32, i32* @dlarft_.prevlastv, align 4
  %146 = call i32 @min(i32 %144, i32 %145)
  store i32 %146, i32* @dlarft_.j, align 4
  %147 = load i32, i32* @dlarft_.j, align 4
  %148 = load i32, i32* @dlarft_.i__, align 4
  %149 = sub nsw i32 %147, %148
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %25, align 4
  %151 = load i32, i32* @dlarft_.i__, align 4
  %152 = sub nsw i32 %151, 1
  store i32 %152, i32* %26, align 4
  %153 = load i32*, i32** %17, align 8
  %154 = load i32, i32* @dlarft_.i__, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %27, align 4
  %159 = load i32*, i32** %15, align 8
  %160 = load i32, i32* @dlarft_.i__, align 4
  %161 = load i32, i32* %22, align 4
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %159, i64 %163
  %165 = load i32*, i32** %16, align 8
  %166 = load i32*, i32** %15, align 8
  %167 = load i32, i32* @dlarft_.i__, align 4
  %168 = load i32, i32* @dlarft_.i__, align 4
  %169 = load i32, i32* %22, align 4
  %170 = mul nsw i32 %168, %169
  %171 = add nsw i32 %167, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %166, i64 %172
  %174 = load i32*, i32** %18, align 8
  %175 = load i32, i32* @dlarft_.i__, align 4
  %176 = load i32, i32* %20, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %174, i64 %179
  %181 = call i32 @dgemv_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %25, i32* %26, i32* %27, i32* %164, i32* %165, i32* %173, i32* @c__1, i32* @c_b29, i32* %180, i32* @c__1)
  br label %250

182:                                              ; preds = %95
  %183 = load i32, i32* @dlarft_.i__, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %25, align 4
  %185 = load i32*, i32** %13, align 8
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* @dlarft_.lastv, align 4
  br label %187

187:                                              ; preds = %205, %182
  %188 = load i32, i32* @dlarft_.lastv, align 4
  %189 = load i32, i32* %25, align 4
  %190 = icmp sge i32 %188, %189
  br i1 %190, label %191, label %208

191:                                              ; preds = %187
  %192 = load i32*, i32** %15, align 8
  %193 = load i32, i32* @dlarft_.i__, align 4
  %194 = load i32, i32* @dlarft_.lastv, align 4
  %195 = load i32, i32* %22, align 4
  %196 = mul nsw i32 %194, %195
  %197 = add nsw i32 %193, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %192, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = sitofp i32 %200 to double
  %202 = fcmp une double %201, 0.000000e+00
  br i1 %202, label %203, label %204

203:                                              ; preds = %191
  br label %209

204:                                              ; preds = %191
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* @dlarft_.lastv, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* @dlarft_.lastv, align 4
  br label %187

208:                                              ; preds = %187
  br label %209

209:                                              ; preds = %208, %203
  %210 = load i32, i32* @dlarft_.lastv, align 4
  %211 = load i32, i32* @dlarft_.prevlastv, align 4
  %212 = call i32 @min(i32 %210, i32 %211)
  store i32 %212, i32* @dlarft_.j, align 4
  %213 = load i32, i32* @dlarft_.i__, align 4
  %214 = sub nsw i32 %213, 1
  store i32 %214, i32* %25, align 4
  %215 = load i32, i32* @dlarft_.j, align 4
  %216 = load i32, i32* @dlarft_.i__, align 4
  %217 = sub nsw i32 %215, %216
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %26, align 4
  %219 = load i32*, i32** %17, align 8
  %220 = load i32, i32* @dlarft_.i__, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %27, align 4
  %225 = load i32*, i32** %15, align 8
  %226 = load i32, i32* @dlarft_.i__, align 4
  %227 = load i32, i32* %22, align 4
  %228 = mul nsw i32 %226, %227
  %229 = add nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %225, i64 %230
  %232 = load i32*, i32** %16, align 8
  %233 = load i32*, i32** %15, align 8
  %234 = load i32, i32* @dlarft_.i__, align 4
  %235 = load i32, i32* @dlarft_.i__, align 4
  %236 = load i32, i32* %22, align 4
  %237 = mul nsw i32 %235, %236
  %238 = add nsw i32 %234, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %233, i64 %239
  %241 = load i32*, i32** %16, align 8
  %242 = load i32*, i32** %18, align 8
  %243 = load i32, i32* @dlarft_.i__, align 4
  %244 = load i32, i32* %20, align 4
  %245 = mul nsw i32 %243, %244
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %242, i64 %247
  %249 = call i32 @dgemv_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %25, i32* %26, i32* %27, i32* %231, i32* %232, i32* %240, i32* %241, i32* @c_b29, i32* %248, i32* @c__1)
  br label %250

250:                                              ; preds = %209, %143
  %251 = load i32, i32* @dlarft_.vii, align 4
  %252 = load i32*, i32** %15, align 8
  %253 = load i32, i32* @dlarft_.i__, align 4
  %254 = load i32, i32* @dlarft_.i__, align 4
  %255 = load i32, i32* %22, align 4
  %256 = mul nsw i32 %254, %255
  %257 = add nsw i32 %253, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %252, i64 %258
  store i32 %251, i32* %259, align 4
  %260 = load i32, i32* @dlarft_.i__, align 4
  %261 = sub nsw i32 %260, 1
  store i32 %261, i32* %25, align 4
  %262 = load i32*, i32** %18, align 8
  %263 = load i32, i32* %21, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32*, i32** %19, align 8
  %267 = load i32*, i32** %18, align 8
  %268 = load i32, i32* @dlarft_.i__, align 4
  %269 = load i32, i32* %20, align 4
  %270 = mul nsw i32 %268, %269
  %271 = add nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %267, i64 %272
  %274 = call i32 @dtrmv_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %25, i32* %265, i32* %266, i32* %273, i32* @c__1)
  %275 = load i32*, i32** %17, align 8
  %276 = load i32, i32* @dlarft_.i__, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** %18, align 8
  %281 = load i32, i32* @dlarft_.i__, align 4
  %282 = load i32, i32* @dlarft_.i__, align 4
  %283 = load i32, i32* %20, align 4
  %284 = mul nsw i32 %282, %283
  %285 = add nsw i32 %281, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %280, i64 %286
  store i32 %279, i32* %287, align 4
  %288 = load i32, i32* @dlarft_.i__, align 4
  %289 = icmp sgt i32 %288, 1
  br i1 %289, label %290, label %294

290:                                              ; preds = %250
  %291 = load i32, i32* @dlarft_.prevlastv, align 4
  %292 = load i32, i32* @dlarft_.lastv, align 4
  %293 = call i32 @max(i32 %291, i32 %292)
  store i32 %293, i32* @dlarft_.prevlastv, align 4
  br label %296

294:                                              ; preds = %250
  %295 = load i32, i32* @dlarft_.lastv, align 4
  store i32 %295, i32* @dlarft_.prevlastv, align 4
  br label %296

296:                                              ; preds = %294, %290
  br label %297

297:                                              ; preds = %296, %94
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* @dlarft_.i__, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* @dlarft_.i__, align 4
  br label %61

301:                                              ; preds = %61
  br label %643

302:                                              ; preds = %52
  store i32 1, i32* @dlarft_.prevlastv, align 4
  %303 = load i32*, i32** %14, align 8
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* @dlarft_.i__, align 4
  br label %305

305:                                              ; preds = %639, %302
  %306 = load i32, i32* @dlarft_.i__, align 4
  %307 = icmp sge i32 %306, 1
  br i1 %307, label %308, label %642

308:                                              ; preds = %305
  %309 = load i32*, i32** %17, align 8
  %310 = load i32, i32* @dlarft_.i__, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = sitofp i32 %313 to double
  %315 = fcmp oeq double %314, 0.000000e+00
  br i1 %315, label %316, label %337

316:                                              ; preds = %308
  %317 = load i32*, i32** %14, align 8
  %318 = load i32, i32* %317, align 4
  store i32 %318, i32* %24, align 4
  %319 = load i32, i32* @dlarft_.i__, align 4
  store i32 %319, i32* @dlarft_.j, align 4
  br label %320

320:                                              ; preds = %333, %316
  %321 = load i32, i32* @dlarft_.j, align 4
  %322 = load i32, i32* %24, align 4
  %323 = icmp sle i32 %321, %322
  br i1 %323, label %324, label %336

324:                                              ; preds = %320
  %325 = load i32*, i32** %18, align 8
  %326 = load i32, i32* @dlarft_.j, align 4
  %327 = load i32, i32* @dlarft_.i__, align 4
  %328 = load i32, i32* %20, align 4
  %329 = mul nsw i32 %327, %328
  %330 = add nsw i32 %326, %329
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %325, i64 %331
  store i32 0, i32* %332, align 4
  br label %333

333:                                              ; preds = %324
  %334 = load i32, i32* @dlarft_.j, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* @dlarft_.j, align 4
  br label %320

336:                                              ; preds = %320
  br label %638

337:                                              ; preds = %308
  %338 = load i32, i32* @dlarft_.i__, align 4
  %339 = load i32*, i32** %14, align 8
  %340 = load i32, i32* %339, align 4
  %341 = icmp slt i32 %338, %340
  br i1 %341, label %342, label %624

342:                                              ; preds = %337
  %343 = load i8*, i8** %12, align 8
  %344 = call i8* @lsame_(i8* %343, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %345 = icmp ne i8* %344, null
  br i1 %345, label %346, label %467

346:                                              ; preds = %342
  %347 = load i32*, i32** %15, align 8
  %348 = load i32*, i32** %13, align 8
  %349 = load i32, i32* %348, align 4
  %350 = load i32*, i32** %14, align 8
  %351 = load i32, i32* %350, align 4
  %352 = sub nsw i32 %349, %351
  %353 = load i32, i32* @dlarft_.i__, align 4
  %354 = add nsw i32 %352, %353
  %355 = load i32, i32* @dlarft_.i__, align 4
  %356 = load i32, i32* %22, align 4
  %357 = mul nsw i32 %355, %356
  %358 = add nsw i32 %354, %357
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %347, i64 %359
  %361 = load i32, i32* %360, align 4
  store i32 %361, i32* @dlarft_.vii, align 4
  %362 = load i32*, i32** %15, align 8
  %363 = load i32*, i32** %13, align 8
  %364 = load i32, i32* %363, align 4
  %365 = load i32*, i32** %14, align 8
  %366 = load i32, i32* %365, align 4
  %367 = sub nsw i32 %364, %366
  %368 = load i32, i32* @dlarft_.i__, align 4
  %369 = add nsw i32 %367, %368
  %370 = load i32, i32* @dlarft_.i__, align 4
  %371 = load i32, i32* %22, align 4
  %372 = mul nsw i32 %370, %371
  %373 = add nsw i32 %369, %372
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %362, i64 %374
  store i32 1, i32* %375, align 4
  %376 = load i32, i32* @dlarft_.i__, align 4
  %377 = sub nsw i32 %376, 1
  store i32 %377, i32* %24, align 4
  store i32 1, i32* @dlarft_.lastv, align 4
  br label %378

378:                                              ; preds = %396, %346
  %379 = load i32, i32* @dlarft_.lastv, align 4
  %380 = load i32, i32* %24, align 4
  %381 = icmp sle i32 %379, %380
  br i1 %381, label %382, label %399

382:                                              ; preds = %378
  %383 = load i32*, i32** %15, align 8
  %384 = load i32, i32* @dlarft_.lastv, align 4
  %385 = load i32, i32* @dlarft_.i__, align 4
  %386 = load i32, i32* %22, align 4
  %387 = mul nsw i32 %385, %386
  %388 = add nsw i32 %384, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %383, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = sitofp i32 %391 to double
  %393 = fcmp une double %392, 0.000000e+00
  br i1 %393, label %394, label %395

394:                                              ; preds = %382
  br label %400

395:                                              ; preds = %382
  br label %396

396:                                              ; preds = %395
  %397 = load i32, i32* @dlarft_.lastv, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* @dlarft_.lastv, align 4
  br label %378

399:                                              ; preds = %378
  br label %400

400:                                              ; preds = %399, %394
  %401 = load i32, i32* @dlarft_.lastv, align 4
  %402 = load i32, i32* @dlarft_.prevlastv, align 4
  %403 = call i32 @max(i32 %401, i32 %402)
  store i32 %403, i32* @dlarft_.j, align 4
  %404 = load i32*, i32** %13, align 8
  %405 = load i32, i32* %404, align 4
  %406 = load i32*, i32** %14, align 8
  %407 = load i32, i32* %406, align 4
  %408 = sub nsw i32 %405, %407
  %409 = load i32, i32* @dlarft_.i__, align 4
  %410 = add nsw i32 %408, %409
  %411 = load i32, i32* @dlarft_.j, align 4
  %412 = sub nsw i32 %410, %411
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %24, align 4
  %414 = load i32*, i32** %14, align 8
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @dlarft_.i__, align 4
  %417 = sub nsw i32 %415, %416
  store i32 %417, i32* %25, align 4
  %418 = load i32*, i32** %17, align 8
  %419 = load i32, i32* @dlarft_.i__, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = sub nsw i32 0, %422
  store i32 %423, i32* %27, align 4
  %424 = load i32*, i32** %15, align 8
  %425 = load i32, i32* @dlarft_.j, align 4
  %426 = load i32, i32* @dlarft_.i__, align 4
  %427 = add nsw i32 %426, 1
  %428 = load i32, i32* %22, align 4
  %429 = mul nsw i32 %427, %428
  %430 = add nsw i32 %425, %429
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i32, i32* %424, i64 %431
  %433 = load i32*, i32** %16, align 8
  %434 = load i32*, i32** %15, align 8
  %435 = load i32, i32* @dlarft_.j, align 4
  %436 = load i32, i32* @dlarft_.i__, align 4
  %437 = load i32, i32* %22, align 4
  %438 = mul nsw i32 %436, %437
  %439 = add nsw i32 %435, %438
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %434, i64 %440
  %442 = load i32*, i32** %18, align 8
  %443 = load i32, i32* @dlarft_.i__, align 4
  %444 = add nsw i32 %443, 1
  %445 = load i32, i32* @dlarft_.i__, align 4
  %446 = load i32, i32* %20, align 4
  %447 = mul nsw i32 %445, %446
  %448 = add nsw i32 %444, %447
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %442, i64 %449
  %451 = call i32 @dgemv_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %24, i32* %25, i32* %27, i32* %432, i32* %433, i32* %441, i32* @c__1, i32* @c_b29, i32* %450, i32* @c__1)
  %452 = load i32, i32* @dlarft_.vii, align 4
  %453 = load i32*, i32** %15, align 8
  %454 = load i32*, i32** %13, align 8
  %455 = load i32, i32* %454, align 4
  %456 = load i32*, i32** %14, align 8
  %457 = load i32, i32* %456, align 4
  %458 = sub nsw i32 %455, %457
  %459 = load i32, i32* @dlarft_.i__, align 4
  %460 = add nsw i32 %458, %459
  %461 = load i32, i32* @dlarft_.i__, align 4
  %462 = load i32, i32* %22, align 4
  %463 = mul nsw i32 %461, %462
  %464 = add nsw i32 %460, %463
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %453, i64 %465
  store i32 %452, i32* %466, align 4
  br label %589

467:                                              ; preds = %342
  %468 = load i32*, i32** %15, align 8
  %469 = load i32, i32* @dlarft_.i__, align 4
  %470 = load i32*, i32** %13, align 8
  %471 = load i32, i32* %470, align 4
  %472 = load i32*, i32** %14, align 8
  %473 = load i32, i32* %472, align 4
  %474 = sub nsw i32 %471, %473
  %475 = load i32, i32* @dlarft_.i__, align 4
  %476 = add nsw i32 %474, %475
  %477 = load i32, i32* %22, align 4
  %478 = mul nsw i32 %476, %477
  %479 = add nsw i32 %469, %478
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %468, i64 %480
  %482 = load i32, i32* %481, align 4
  store i32 %482, i32* @dlarft_.vii, align 4
  %483 = load i32*, i32** %15, align 8
  %484 = load i32, i32* @dlarft_.i__, align 4
  %485 = load i32*, i32** %13, align 8
  %486 = load i32, i32* %485, align 4
  %487 = load i32*, i32** %14, align 8
  %488 = load i32, i32* %487, align 4
  %489 = sub nsw i32 %486, %488
  %490 = load i32, i32* @dlarft_.i__, align 4
  %491 = add nsw i32 %489, %490
  %492 = load i32, i32* %22, align 4
  %493 = mul nsw i32 %491, %492
  %494 = add nsw i32 %484, %493
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %483, i64 %495
  store i32 1, i32* %496, align 4
  %497 = load i32, i32* @dlarft_.i__, align 4
  %498 = sub nsw i32 %497, 1
  store i32 %498, i32* %24, align 4
  store i32 1, i32* @dlarft_.lastv, align 4
  br label %499

499:                                              ; preds = %517, %467
  %500 = load i32, i32* @dlarft_.lastv, align 4
  %501 = load i32, i32* %24, align 4
  %502 = icmp sle i32 %500, %501
  br i1 %502, label %503, label %520

503:                                              ; preds = %499
  %504 = load i32*, i32** %15, align 8
  %505 = load i32, i32* @dlarft_.i__, align 4
  %506 = load i32, i32* @dlarft_.lastv, align 4
  %507 = load i32, i32* %22, align 4
  %508 = mul nsw i32 %506, %507
  %509 = add nsw i32 %505, %508
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, i32* %504, i64 %510
  %512 = load i32, i32* %511, align 4
  %513 = sitofp i32 %512 to double
  %514 = fcmp une double %513, 0.000000e+00
  br i1 %514, label %515, label %516

515:                                              ; preds = %503
  br label %521

516:                                              ; preds = %503
  br label %517

517:                                              ; preds = %516
  %518 = load i32, i32* @dlarft_.lastv, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* @dlarft_.lastv, align 4
  br label %499

520:                                              ; preds = %499
  br label %521

521:                                              ; preds = %520, %515
  %522 = load i32, i32* @dlarft_.lastv, align 4
  %523 = load i32, i32* @dlarft_.prevlastv, align 4
  %524 = call i32 @max(i32 %522, i32 %523)
  store i32 %524, i32* @dlarft_.j, align 4
  %525 = load i32*, i32** %14, align 8
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* @dlarft_.i__, align 4
  %528 = sub nsw i32 %526, %527
  store i32 %528, i32* %24, align 4
  %529 = load i32*, i32** %13, align 8
  %530 = load i32, i32* %529, align 4
  %531 = load i32*, i32** %14, align 8
  %532 = load i32, i32* %531, align 4
  %533 = sub nsw i32 %530, %532
  %534 = load i32, i32* @dlarft_.i__, align 4
  %535 = add nsw i32 %533, %534
  %536 = load i32, i32* @dlarft_.j, align 4
  %537 = sub nsw i32 %535, %536
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %25, align 4
  %539 = load i32*, i32** %17, align 8
  %540 = load i32, i32* @dlarft_.i__, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32, i32* %539, i64 %541
  %543 = load i32, i32* %542, align 4
  %544 = sub nsw i32 0, %543
  store i32 %544, i32* %27, align 4
  %545 = load i32*, i32** %15, align 8
  %546 = load i32, i32* @dlarft_.i__, align 4
  %547 = add nsw i32 %546, 1
  %548 = load i32, i32* @dlarft_.j, align 4
  %549 = load i32, i32* %22, align 4
  %550 = mul nsw i32 %548, %549
  %551 = add nsw i32 %547, %550
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i32, i32* %545, i64 %552
  %554 = load i32*, i32** %16, align 8
  %555 = load i32*, i32** %15, align 8
  %556 = load i32, i32* @dlarft_.i__, align 4
  %557 = load i32, i32* @dlarft_.j, align 4
  %558 = load i32, i32* %22, align 4
  %559 = mul nsw i32 %557, %558
  %560 = add nsw i32 %556, %559
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %555, i64 %561
  %563 = load i32*, i32** %16, align 8
  %564 = load i32*, i32** %18, align 8
  %565 = load i32, i32* @dlarft_.i__, align 4
  %566 = add nsw i32 %565, 1
  %567 = load i32, i32* @dlarft_.i__, align 4
  %568 = load i32, i32* %20, align 4
  %569 = mul nsw i32 %567, %568
  %570 = add nsw i32 %566, %569
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i32, i32* %564, i64 %571
  %573 = call i32 @dgemv_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* %24, i32* %25, i32* %27, i32* %553, i32* %554, i32* %562, i32* %563, i32* @c_b29, i32* %572, i32* @c__1)
  %574 = load i32, i32* @dlarft_.vii, align 4
  %575 = load i32*, i32** %15, align 8
  %576 = load i32, i32* @dlarft_.i__, align 4
  %577 = load i32*, i32** %13, align 8
  %578 = load i32, i32* %577, align 4
  %579 = load i32*, i32** %14, align 8
  %580 = load i32, i32* %579, align 4
  %581 = sub nsw i32 %578, %580
  %582 = load i32, i32* @dlarft_.i__, align 4
  %583 = add nsw i32 %581, %582
  %584 = load i32, i32* %22, align 4
  %585 = mul nsw i32 %583, %584
  %586 = add nsw i32 %576, %585
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i32, i32* %575, i64 %587
  store i32 %574, i32* %588, align 4
  br label %589

589:                                              ; preds = %521, %400
  %590 = load i32*, i32** %14, align 8
  %591 = load i32, i32* %590, align 4
  %592 = load i32, i32* @dlarft_.i__, align 4
  %593 = sub nsw i32 %591, %592
  store i32 %593, i32* %24, align 4
  %594 = load i32*, i32** %18, align 8
  %595 = load i32, i32* @dlarft_.i__, align 4
  %596 = add nsw i32 %595, 1
  %597 = load i32, i32* @dlarft_.i__, align 4
  %598 = add nsw i32 %597, 1
  %599 = load i32, i32* %20, align 4
  %600 = mul nsw i32 %598, %599
  %601 = add nsw i32 %596, %600
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i32, i32* %594, i64 %602
  %604 = load i32*, i32** %19, align 8
  %605 = load i32*, i32** %18, align 8
  %606 = load i32, i32* @dlarft_.i__, align 4
  %607 = add nsw i32 %606, 1
  %608 = load i32, i32* @dlarft_.i__, align 4
  %609 = load i32, i32* %20, align 4
  %610 = mul nsw i32 %608, %609
  %611 = add nsw i32 %607, %610
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i32, i32* %605, i64 %612
  %614 = call i32 @dtrmv_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %24, i32* %603, i32* %604, i32* %613, i32* @c__1)
  %615 = load i32, i32* @dlarft_.i__, align 4
  %616 = icmp sgt i32 %615, 1
  br i1 %616, label %617, label %621

617:                                              ; preds = %589
  %618 = load i32, i32* @dlarft_.prevlastv, align 4
  %619 = load i32, i32* @dlarft_.lastv, align 4
  %620 = call i32 @min(i32 %618, i32 %619)
  store i32 %620, i32* @dlarft_.prevlastv, align 4
  br label %623

621:                                              ; preds = %589
  %622 = load i32, i32* @dlarft_.lastv, align 4
  store i32 %622, i32* @dlarft_.prevlastv, align 4
  br label %623

623:                                              ; preds = %621, %617
  br label %624

624:                                              ; preds = %623, %337
  %625 = load i32*, i32** %17, align 8
  %626 = load i32, i32* @dlarft_.i__, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds i32, i32* %625, i64 %627
  %629 = load i32, i32* %628, align 4
  %630 = load i32*, i32** %18, align 8
  %631 = load i32, i32* @dlarft_.i__, align 4
  %632 = load i32, i32* @dlarft_.i__, align 4
  %633 = load i32, i32* %20, align 4
  %634 = mul nsw i32 %632, %633
  %635 = add nsw i32 %631, %634
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds i32, i32* %630, i64 %636
  store i32 %629, i32* %637, align 4
  br label %638

638:                                              ; preds = %624, %336
  br label %639

639:                                              ; preds = %638
  %640 = load i32, i32* @dlarft_.i__, align 4
  %641 = add nsw i32 %640, -1
  store i32 %641, i32* @dlarft_.i__, align 4
  br label %305

642:                                              ; preds = %305
  br label %643

643:                                              ; preds = %642, %301
  store i32 0, i32* %10, align 4
  br label %644

644:                                              ; preds = %643, %51
  %645 = load i32, i32* %10, align 4
  ret i32 %645
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dgemv_(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dtrmv_(i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
