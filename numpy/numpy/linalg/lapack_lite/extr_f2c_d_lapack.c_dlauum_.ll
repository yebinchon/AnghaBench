; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlauum_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_d_lapack.c_dlauum_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dlauum_.i__ = internal global i32 0, align 4
@dlauum_.ib = internal global i32 0, align 4
@dlauum_.nb = internal global i32 0, align 4
@dlauum_.upper = internal global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DLAUUM\00", align 1
@c__1 = common dso_local global i32 0, align 4
@c_n1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@c_b15 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlauum_(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = add nsw i32 1, %20
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = sext i32 %22 to i64
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %11, align 8
  store i32 0, i32* %27, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @lsame_(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %29, i64* @dlauum_.upper, align 8
  %30 = load i64, i64* @dlauum_.upper, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %5
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @lsame_(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32*, i32** %11, align 8
  store i32 -1, i32* %37, align 4
  br label %55

38:                                               ; preds = %32, %5
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32*, i32** %11, align 8
  store i32 -2, i32* %43, align 4
  br label %54

44:                                               ; preds = %38
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @max(i32 1, i32 %48)
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32*, i32** %11, align 8
  store i32 -4, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %44
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %14, align 4
  %63 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %14)
  store i32 0, i32* %6, align 4
  br label %374

64:                                               ; preds = %55
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %374

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %70, i32* %71, i32* @c_n1, i32* @c_n1, i32* @c_n1, i32 6, i32 1)
  store i32 %72, i32* @dlauum_.nb, align 4
  %73 = load i32, i32* @dlauum_.nb, align 4
  %74 = icmp sle i32 %73, 1
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @dlauum_.nb, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %76, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %75, %69
  %81 = load i8*, i8** %7, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32*, i32** %10, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @dlauu2_(i8* %81, i32* %82, i32* %86, i32* %87, i32* %88)
  br label %373

90:                                               ; preds = %75
  %91 = load i64, i64* @dlauum_.upper, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %234

93:                                               ; preds = %90
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* @dlauum_.nb, align 4
  store i32 %96, i32* %15, align 4
  store i32 1, i32* @dlauum_.i__, align 4
  br label %97

97:                                               ; preds = %229, %93
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* @dlauum_.i__, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp sge i32 %101, %102
  %104 = zext i1 %103 to i32
  br label %110

105:                                              ; preds = %97
  %106 = load i32, i32* @dlauum_.i__, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp sle i32 %106, %107
  %109 = zext i1 %108 to i32
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i32 [ %104, %100 ], [ %109, %105 ]
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %233

113:                                              ; preds = %110
  %114 = load i32, i32* @dlauum_.nb, align 4
  store i32 %114, i32* %16, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @dlauum_.i__, align 4
  %118 = sub nsw i32 %116, %117
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @min(i32 %120, i32 %121)
  store i32 %122, i32* @dlauum_.ib, align 4
  %123 = load i32, i32* @dlauum_.i__, align 4
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %16, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* @dlauum_.i__, align 4
  %127 = load i32, i32* @dlauum_.i__, align 4
  %128 = load i32, i32* %12, align 4
  %129 = mul nsw i32 %127, %128
  %130 = add nsw i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %125, i64 %131
  %133 = load i32*, i32** %10, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* @dlauum_.i__, align 4
  %136 = load i32, i32* %12, align 4
  %137 = mul nsw i32 %135, %136
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %134, i64 %139
  %141 = load i32*, i32** %10, align 8
  %142 = call i32 @dtrmm_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %16, i32* @dlauum_.ib, i32* @c_b15, i32* %132, i32* %133, i32* %140, i32* %141)
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* @dlauum_.i__, align 4
  %145 = load i32, i32* @dlauum_.i__, align 4
  %146 = load i32, i32* %12, align 4
  %147 = mul nsw i32 %145, %146
  %148 = add nsw i32 %144, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %143, i64 %149
  %151 = load i32*, i32** %10, align 8
  %152 = load i32*, i32** %11, align 8
  %153 = call i32 @dlauu2_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* @dlauum_.ib, i32* %150, i32* %151, i32* %152)
  %154 = load i32, i32* @dlauum_.i__, align 4
  %155 = load i32, i32* @dlauum_.ib, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* %157, align 4
  %159 = icmp sle i32 %156, %158
  br i1 %159, label %160, label %228

160:                                              ; preds = %113
  %161 = load i32, i32* @dlauum_.i__, align 4
  %162 = sub nsw i32 %161, 1
  store i32 %162, i32* %16, align 4
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @dlauum_.i__, align 4
  %166 = sub nsw i32 %164, %165
  %167 = load i32, i32* @dlauum_.ib, align 4
  %168 = sub nsw i32 %166, %167
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %17, align 4
  %170 = load i32*, i32** %9, align 8
  %171 = load i32, i32* @dlauum_.i__, align 4
  %172 = load i32, i32* @dlauum_.ib, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* %12, align 4
  %175 = mul nsw i32 %173, %174
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %170, i64 %177
  %179 = load i32*, i32** %10, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* @dlauum_.i__, align 4
  %182 = load i32, i32* @dlauum_.i__, align 4
  %183 = load i32, i32* @dlauum_.ib, align 4
  %184 = add nsw i32 %182, %183
  %185 = load i32, i32* %12, align 4
  %186 = mul nsw i32 %184, %185
  %187 = add nsw i32 %181, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %180, i64 %188
  %190 = load i32*, i32** %10, align 8
  %191 = load i32*, i32** %9, align 8
  %192 = load i32, i32* @dlauum_.i__, align 4
  %193 = load i32, i32* %12, align 4
  %194 = mul nsw i32 %192, %193
  %195 = add nsw i32 %194, 1
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %191, i64 %196
  %198 = load i32*, i32** %10, align 8
  %199 = call i32 @dgemm_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %16, i32* @dlauum_.ib, i32* %17, i32* @c_b15, i32* %178, i32* %179, i32* %189, i32* %190, i32* @c_b15, i32* %197, i32* %198)
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @dlauum_.i__, align 4
  %203 = sub nsw i32 %201, %202
  %204 = load i32, i32* @dlauum_.ib, align 4
  %205 = sub nsw i32 %203, %204
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %16, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* @dlauum_.i__, align 4
  %209 = load i32, i32* @dlauum_.i__, align 4
  %210 = load i32, i32* @dlauum_.ib, align 4
  %211 = add nsw i32 %209, %210
  %212 = load i32, i32* %12, align 4
  %213 = mul nsw i32 %211, %212
  %214 = add nsw i32 %208, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %207, i64 %215
  %217 = load i32*, i32** %10, align 8
  %218 = load i32*, i32** %9, align 8
  %219 = load i32, i32* @dlauum_.i__, align 4
  %220 = load i32, i32* @dlauum_.i__, align 4
  %221 = load i32, i32* %12, align 4
  %222 = mul nsw i32 %220, %221
  %223 = add nsw i32 %219, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %218, i64 %224
  %226 = load i32*, i32** %10, align 8
  %227 = call i32 @dsyrk_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* @dlauum_.ib, i32* %16, i32* @c_b15, i32* %216, i32* %217, i32* @c_b15, i32* %225, i32* %226)
  br label %228

228:                                              ; preds = %160, %113
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %15, align 4
  %231 = load i32, i32* @dlauum_.i__, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* @dlauum_.i__, align 4
  br label %97

233:                                              ; preds = %110
  br label %372

234:                                              ; preds = %90
  %235 = load i32*, i32** %8, align 8
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %15, align 4
  %237 = load i32, i32* @dlauum_.nb, align 4
  store i32 %237, i32* %14, align 4
  store i32 1, i32* @dlauum_.i__, align 4
  br label %238

238:                                              ; preds = %367, %234
  %239 = load i32, i32* %14, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = load i32, i32* @dlauum_.i__, align 4
  %243 = load i32, i32* %15, align 4
  %244 = icmp sge i32 %242, %243
  %245 = zext i1 %244 to i32
  br label %251

246:                                              ; preds = %238
  %247 = load i32, i32* @dlauum_.i__, align 4
  %248 = load i32, i32* %15, align 4
  %249 = icmp sle i32 %247, %248
  %250 = zext i1 %249 to i32
  br label %251

251:                                              ; preds = %246, %241
  %252 = phi i32 [ %245, %241 ], [ %250, %246 ]
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %371

254:                                              ; preds = %251
  %255 = load i32, i32* @dlauum_.nb, align 4
  store i32 %255, i32* %16, align 4
  %256 = load i32*, i32** %8, align 8
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @dlauum_.i__, align 4
  %259 = sub nsw i32 %257, %258
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %17, align 4
  %261 = load i32, i32* %16, align 4
  %262 = load i32, i32* %17, align 4
  %263 = call i32 @min(i32 %261, i32 %262)
  store i32 %263, i32* @dlauum_.ib, align 4
  %264 = load i32, i32* @dlauum_.i__, align 4
  %265 = sub nsw i32 %264, 1
  store i32 %265, i32* %16, align 4
  %266 = load i32*, i32** %9, align 8
  %267 = load i32, i32* @dlauum_.i__, align 4
  %268 = load i32, i32* @dlauum_.i__, align 4
  %269 = load i32, i32* %12, align 4
  %270 = mul nsw i32 %268, %269
  %271 = add nsw i32 %267, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %266, i64 %272
  %274 = load i32*, i32** %10, align 8
  %275 = load i32*, i32** %9, align 8
  %276 = load i32, i32* @dlauum_.i__, align 4
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %276, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %275, i64 %279
  %281 = load i32*, i32** %10, align 8
  %282 = call i32 @dtrmm_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* @dlauum_.ib, i32* %16, i32* @c_b15, i32* %273, i32* %274, i32* %280, i32* %281)
  %283 = load i32*, i32** %9, align 8
  %284 = load i32, i32* @dlauum_.i__, align 4
  %285 = load i32, i32* @dlauum_.i__, align 4
  %286 = load i32, i32* %12, align 4
  %287 = mul nsw i32 %285, %286
  %288 = add nsw i32 %284, %287
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %283, i64 %289
  %291 = load i32*, i32** %10, align 8
  %292 = load i32*, i32** %11, align 8
  %293 = call i32 @dlauu2_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* @dlauum_.ib, i32* %290, i32* %291, i32* %292)
  %294 = load i32, i32* @dlauum_.i__, align 4
  %295 = load i32, i32* @dlauum_.ib, align 4
  %296 = add nsw i32 %294, %295
  %297 = load i32*, i32** %8, align 8
  %298 = load i32, i32* %297, align 4
  %299 = icmp sle i32 %296, %298
  br i1 %299, label %300, label %366

300:                                              ; preds = %254
  %301 = load i32, i32* @dlauum_.i__, align 4
  %302 = sub nsw i32 %301, 1
  store i32 %302, i32* %16, align 4
  %303 = load i32*, i32** %8, align 8
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @dlauum_.i__, align 4
  %306 = sub nsw i32 %304, %305
  %307 = load i32, i32* @dlauum_.ib, align 4
  %308 = sub nsw i32 %306, %307
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %17, align 4
  %310 = load i32*, i32** %9, align 8
  %311 = load i32, i32* @dlauum_.i__, align 4
  %312 = load i32, i32* @dlauum_.ib, align 4
  %313 = add nsw i32 %311, %312
  %314 = load i32, i32* @dlauum_.i__, align 4
  %315 = load i32, i32* %12, align 4
  %316 = mul nsw i32 %314, %315
  %317 = add nsw i32 %313, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %310, i64 %318
  %320 = load i32*, i32** %10, align 8
  %321 = load i32*, i32** %9, align 8
  %322 = load i32, i32* @dlauum_.i__, align 4
  %323 = load i32, i32* @dlauum_.ib, align 4
  %324 = add nsw i32 %322, %323
  %325 = load i32, i32* %12, align 4
  %326 = add nsw i32 %324, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %321, i64 %327
  %329 = load i32*, i32** %10, align 8
  %330 = load i32*, i32** %9, align 8
  %331 = load i32, i32* @dlauum_.i__, align 4
  %332 = load i32, i32* %12, align 4
  %333 = add nsw i32 %331, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %330, i64 %334
  %336 = load i32*, i32** %10, align 8
  %337 = call i32 @dgemm_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32* @dlauum_.ib, i32* %16, i32* %17, i32* @c_b15, i32* %319, i32* %320, i32* %328, i32* %329, i32* @c_b15, i32* %335, i32* %336)
  %338 = load i32*, i32** %8, align 8
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @dlauum_.i__, align 4
  %341 = sub nsw i32 %339, %340
  %342 = load i32, i32* @dlauum_.ib, align 4
  %343 = sub nsw i32 %341, %342
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %16, align 4
  %345 = load i32*, i32** %9, align 8
  %346 = load i32, i32* @dlauum_.i__, align 4
  %347 = load i32, i32* @dlauum_.ib, align 4
  %348 = add nsw i32 %346, %347
  %349 = load i32, i32* @dlauum_.i__, align 4
  %350 = load i32, i32* %12, align 4
  %351 = mul nsw i32 %349, %350
  %352 = add nsw i32 %348, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32, i32* %345, i64 %353
  %355 = load i32*, i32** %10, align 8
  %356 = load i32*, i32** %9, align 8
  %357 = load i32, i32* @dlauum_.i__, align 4
  %358 = load i32, i32* @dlauum_.i__, align 4
  %359 = load i32, i32* %12, align 4
  %360 = mul nsw i32 %358, %359
  %361 = add nsw i32 %357, %360
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %356, i64 %362
  %364 = load i32*, i32** %10, align 8
  %365 = call i32 @dsyrk_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* @dlauum_.ib, i32* %16, i32* @c_b15, i32* %354, i32* %355, i32* @c_b15, i32* %363, i32* %364)
  br label %366

366:                                              ; preds = %300, %254
  br label %367

367:                                              ; preds = %366
  %368 = load i32, i32* %14, align 4
  %369 = load i32, i32* @dlauum_.i__, align 4
  %370 = add nsw i32 %369, %368
  store i32 %370, i32* @dlauum_.i__, align 4
  br label %238

371:                                              ; preds = %251
  br label %372

372:                                              ; preds = %371, %233
  br label %373

373:                                              ; preds = %372, %80
  store i32 0, i32* %6, align 4
  br label %374

374:                                              ; preds = %373, %68, %59
  %375 = load i32, i32* %6, align 4
  ret i32 %375
}

declare dso_local i64 @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @dlauu2_(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dtrmm_(i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dgemm_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @dsyrk_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
