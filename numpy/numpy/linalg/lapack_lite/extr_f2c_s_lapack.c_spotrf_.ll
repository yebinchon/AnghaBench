; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_spotrf_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_s_lapack.c_spotrf_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spotrf_.j = internal global i32 0, align 4
@spotrf_.jb = internal global i32 0, align 4
@spotrf_.nb = internal global i32 0, align 4
@spotrf_.upper = internal global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"SPOTRF\00", align 1
@c__1 = common dso_local global i32 0, align 4
@c_n1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@c_b151 = common dso_local global i32 0, align 4
@c_b15 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Non-unit\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Right\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spotrf_(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
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
  store i64 %29, i64* @spotrf_.upper, align 8
  %30 = load i64, i64* @spotrf_.upper, align 8
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
  br label %392

64:                                               ; preds = %55
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %392

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @ilaenv_(i32* @c__1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %70, i32* %71, i32* @c_n1, i32* @c_n1, i32* @c_n1, i32 6, i32 1)
  store i32 %72, i32* @spotrf_.nb, align 4
  %73 = load i32, i32* @spotrf_.nb, align 4
  %74 = icmp sle i32 %73, 1
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* @spotrf_.nb, align 4
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
  %89 = call i32 @spotf2_(i8* %81, i32* %82, i32* %86, i32* %87, i32* %88)
  br label %383

90:                                               ; preds = %75
  %91 = load i64, i64* @spotrf_.upper, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %239

93:                                               ; preds = %90
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* @spotrf_.nb, align 4
  store i32 %96, i32* %15, align 4
  store i32 1, i32* @spotrf_.j, align 4
  br label %97

97:                                               ; preds = %234, %93
  %98 = load i32, i32* %15, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* @spotrf_.j, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp sge i32 %101, %102
  %104 = zext i1 %103 to i32
  br label %110

105:                                              ; preds = %97
  %106 = load i32, i32* @spotrf_.j, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp sle i32 %106, %107
  %109 = zext i1 %108 to i32
  br label %110

110:                                              ; preds = %105, %100
  %111 = phi i32 [ %104, %100 ], [ %109, %105 ]
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %238

113:                                              ; preds = %110
  %114 = load i32, i32* @spotrf_.nb, align 4
  store i32 %114, i32* %16, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @spotrf_.j, align 4
  %118 = sub nsw i32 %116, %117
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @min(i32 %120, i32 %121)
  store i32 %122, i32* @spotrf_.jb, align 4
  %123 = load i32, i32* @spotrf_.j, align 4
  %124 = sub nsw i32 %123, 1
  store i32 %124, i32* %16, align 4
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* @spotrf_.j, align 4
  %127 = load i32, i32* %12, align 4
  %128 = mul nsw i32 %126, %127
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %125, i64 %130
  %132 = load i32*, i32** %10, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* @spotrf_.j, align 4
  %135 = load i32, i32* @spotrf_.j, align 4
  %136 = load i32, i32* %12, align 4
  %137 = mul nsw i32 %135, %136
  %138 = add nsw i32 %134, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %133, i64 %139
  %141 = load i32*, i32** %10, align 8
  %142 = call i32 @ssyrk_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* @spotrf_.jb, i32* %16, i32* @c_b151, i32* %131, i32* %132, i32* @c_b15, i32* %140, i32* %141)
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* @spotrf_.j, align 4
  %145 = load i32, i32* @spotrf_.j, align 4
  %146 = load i32, i32* %12, align 4
  %147 = mul nsw i32 %145, %146
  %148 = add nsw i32 %144, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %143, i64 %149
  %151 = load i32*, i32** %10, align 8
  %152 = load i32*, i32** %11, align 8
  %153 = call i32 @spotf2_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* @spotrf_.jb, i32* %150, i32* %151, i32* %152)
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %113
  br label %384

158:                                              ; preds = %113
  %159 = load i32, i32* @spotrf_.j, align 4
  %160 = load i32, i32* @spotrf_.jb, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32*, i32** %8, align 8
  %163 = load i32, i32* %162, align 4
  %164 = icmp sle i32 %161, %163
  br i1 %164, label %165, label %233

165:                                              ; preds = %158
  %166 = load i32*, i32** %8, align 8
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @spotrf_.j, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load i32, i32* @spotrf_.jb, align 4
  %171 = sub nsw i32 %169, %170
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* @spotrf_.j, align 4
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %17, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* @spotrf_.j, align 4
  %177 = load i32, i32* %12, align 4
  %178 = mul nsw i32 %176, %177
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %175, i64 %180
  %182 = load i32*, i32** %10, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = load i32, i32* @spotrf_.j, align 4
  %185 = load i32, i32* @spotrf_.jb, align 4
  %186 = add nsw i32 %184, %185
  %187 = load i32, i32* %12, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %183, i64 %190
  %192 = load i32*, i32** %10, align 8
  %193 = load i32*, i32** %9, align 8
  %194 = load i32, i32* @spotrf_.j, align 4
  %195 = load i32, i32* @spotrf_.j, align 4
  %196 = load i32, i32* @spotrf_.jb, align 4
  %197 = add nsw i32 %195, %196
  %198 = load i32, i32* %12, align 4
  %199 = mul nsw i32 %197, %198
  %200 = add nsw i32 %194, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %193, i64 %201
  %203 = load i32*, i32** %10, align 8
  %204 = call i32 @sgemm_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* @spotrf_.jb, i32* %16, i32* %17, i32* @c_b151, i32* %181, i32* %182, i32* %191, i32* %192, i32* @c_b15, i32* %202, i32* %203)
  %205 = load i32*, i32** %8, align 8
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @spotrf_.j, align 4
  %208 = sub nsw i32 %206, %207
  %209 = load i32, i32* @spotrf_.jb, align 4
  %210 = sub nsw i32 %208, %209
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %16, align 4
  %212 = load i32*, i32** %9, align 8
  %213 = load i32, i32* @spotrf_.j, align 4
  %214 = load i32, i32* @spotrf_.j, align 4
  %215 = load i32, i32* %12, align 4
  %216 = mul nsw i32 %214, %215
  %217 = add nsw i32 %213, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %212, i64 %218
  %220 = load i32*, i32** %10, align 8
  %221 = load i32*, i32** %9, align 8
  %222 = load i32, i32* @spotrf_.j, align 4
  %223 = load i32, i32* @spotrf_.j, align 4
  %224 = load i32, i32* @spotrf_.jb, align 4
  %225 = add nsw i32 %223, %224
  %226 = load i32, i32* %12, align 4
  %227 = mul nsw i32 %225, %226
  %228 = add nsw i32 %222, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %221, i64 %229
  %231 = load i32*, i32** %10, align 8
  %232 = call i32 @strsm_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* @spotrf_.jb, i32* %16, i32* @c_b15, i32* %219, i32* %220, i32* %230, i32* %231)
  br label %233

233:                                              ; preds = %165, %158
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %15, align 4
  %236 = load i32, i32* @spotrf_.j, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* @spotrf_.j, align 4
  br label %97

238:                                              ; preds = %110
  br label %382

239:                                              ; preds = %90
  %240 = load i32*, i32** %8, align 8
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %15, align 4
  %242 = load i32, i32* @spotrf_.nb, align 4
  store i32 %242, i32* %14, align 4
  store i32 1, i32* @spotrf_.j, align 4
  br label %243

243:                                              ; preds = %377, %239
  %244 = load i32, i32* %14, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  %247 = load i32, i32* @spotrf_.j, align 4
  %248 = load i32, i32* %15, align 4
  %249 = icmp sge i32 %247, %248
  %250 = zext i1 %249 to i32
  br label %256

251:                                              ; preds = %243
  %252 = load i32, i32* @spotrf_.j, align 4
  %253 = load i32, i32* %15, align 4
  %254 = icmp sle i32 %252, %253
  %255 = zext i1 %254 to i32
  br label %256

256:                                              ; preds = %251, %246
  %257 = phi i32 [ %250, %246 ], [ %255, %251 ]
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %381

259:                                              ; preds = %256
  %260 = load i32, i32* @spotrf_.nb, align 4
  store i32 %260, i32* %16, align 4
  %261 = load i32*, i32** %8, align 8
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @spotrf_.j, align 4
  %264 = sub nsw i32 %262, %263
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %17, align 4
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* %17, align 4
  %268 = call i32 @min(i32 %266, i32 %267)
  store i32 %268, i32* @spotrf_.jb, align 4
  %269 = load i32, i32* @spotrf_.j, align 4
  %270 = sub nsw i32 %269, 1
  store i32 %270, i32* %16, align 4
  %271 = load i32*, i32** %9, align 8
  %272 = load i32, i32* @spotrf_.j, align 4
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %272, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %271, i64 %275
  %277 = load i32*, i32** %10, align 8
  %278 = load i32*, i32** %9, align 8
  %279 = load i32, i32* @spotrf_.j, align 4
  %280 = load i32, i32* @spotrf_.j, align 4
  %281 = load i32, i32* %12, align 4
  %282 = mul nsw i32 %280, %281
  %283 = add nsw i32 %279, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %278, i64 %284
  %286 = load i32*, i32** %10, align 8
  %287 = call i32 @ssyrk_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32* @spotrf_.jb, i32* %16, i32* @c_b151, i32* %276, i32* %277, i32* @c_b15, i32* %285, i32* %286)
  %288 = load i32*, i32** %9, align 8
  %289 = load i32, i32* @spotrf_.j, align 4
  %290 = load i32, i32* @spotrf_.j, align 4
  %291 = load i32, i32* %12, align 4
  %292 = mul nsw i32 %290, %291
  %293 = add nsw i32 %289, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %288, i64 %294
  %296 = load i32*, i32** %10, align 8
  %297 = load i32*, i32** %11, align 8
  %298 = call i32 @spotf2_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* @spotrf_.jb, i32* %295, i32* %296, i32* %297)
  %299 = load i32*, i32** %11, align 8
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %259
  br label %384

303:                                              ; preds = %259
  %304 = load i32, i32* @spotrf_.j, align 4
  %305 = load i32, i32* @spotrf_.jb, align 4
  %306 = add nsw i32 %304, %305
  %307 = load i32*, i32** %8, align 8
  %308 = load i32, i32* %307, align 4
  %309 = icmp sle i32 %306, %308
  br i1 %309, label %310, label %376

310:                                              ; preds = %303
  %311 = load i32*, i32** %8, align 8
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @spotrf_.j, align 4
  %314 = sub nsw i32 %312, %313
  %315 = load i32, i32* @spotrf_.jb, align 4
  %316 = sub nsw i32 %314, %315
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %16, align 4
  %318 = load i32, i32* @spotrf_.j, align 4
  %319 = sub nsw i32 %318, 1
  store i32 %319, i32* %17, align 4
  %320 = load i32*, i32** %9, align 8
  %321 = load i32, i32* @spotrf_.j, align 4
  %322 = load i32, i32* @spotrf_.jb, align 4
  %323 = add nsw i32 %321, %322
  %324 = load i32, i32* %12, align 4
  %325 = add nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %320, i64 %326
  %328 = load i32*, i32** %10, align 8
  %329 = load i32*, i32** %9, align 8
  %330 = load i32, i32* @spotrf_.j, align 4
  %331 = load i32, i32* %12, align 4
  %332 = add nsw i32 %330, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %329, i64 %333
  %335 = load i32*, i32** %10, align 8
  %336 = load i32*, i32** %9, align 8
  %337 = load i32, i32* @spotrf_.j, align 4
  %338 = load i32, i32* @spotrf_.jb, align 4
  %339 = add nsw i32 %337, %338
  %340 = load i32, i32* @spotrf_.j, align 4
  %341 = load i32, i32* %12, align 4
  %342 = mul nsw i32 %340, %341
  %343 = add nsw i32 %339, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %336, i64 %344
  %346 = load i32*, i32** %10, align 8
  %347 = call i32 @sgemm_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %16, i32* @spotrf_.jb, i32* %17, i32* @c_b151, i32* %327, i32* %328, i32* %334, i32* %335, i32* @c_b15, i32* %345, i32* %346)
  %348 = load i32*, i32** %8, align 8
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @spotrf_.j, align 4
  %351 = sub nsw i32 %349, %350
  %352 = load i32, i32* @spotrf_.jb, align 4
  %353 = sub nsw i32 %351, %352
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %16, align 4
  %355 = load i32*, i32** %9, align 8
  %356 = load i32, i32* @spotrf_.j, align 4
  %357 = load i32, i32* @spotrf_.j, align 4
  %358 = load i32, i32* %12, align 4
  %359 = mul nsw i32 %357, %358
  %360 = add nsw i32 %356, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %355, i64 %361
  %363 = load i32*, i32** %10, align 8
  %364 = load i32*, i32** %9, align 8
  %365 = load i32, i32* @spotrf_.j, align 4
  %366 = load i32, i32* @spotrf_.jb, align 4
  %367 = add nsw i32 %365, %366
  %368 = load i32, i32* @spotrf_.j, align 4
  %369 = load i32, i32* %12, align 4
  %370 = mul nsw i32 %368, %369
  %371 = add nsw i32 %367, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %364, i64 %372
  %374 = load i32*, i32** %10, align 8
  %375 = call i32 @strsm_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %16, i32* @spotrf_.jb, i32* @c_b15, i32* %362, i32* %363, i32* %373, i32* %374)
  br label %376

376:                                              ; preds = %310, %303
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %14, align 4
  %379 = load i32, i32* @spotrf_.j, align 4
  %380 = add nsw i32 %379, %378
  store i32 %380, i32* @spotrf_.j, align 4
  br label %243

381:                                              ; preds = %256
  br label %382

382:                                              ; preds = %381, %238
  br label %383

383:                                              ; preds = %382, %80
  br label %391

384:                                              ; preds = %302, %157
  %385 = load i32*, i32** %11, align 8
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* @spotrf_.j, align 4
  %388 = add nsw i32 %386, %387
  %389 = sub nsw i32 %388, 1
  %390 = load i32*, i32** %11, align 8
  store i32 %389, i32* %390, align 4
  br label %391

391:                                              ; preds = %384, %383
  store i32 0, i32* %6, align 4
  br label %392

392:                                              ; preds = %391, %68, %59
  %393 = load i32, i32* %6, align 4
  ret i32 %393
}

declare dso_local i64 @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @ilaenv_(i32*, i8*, i8*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @spotf2_(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ssyrk_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @sgemm_(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @strsm_(i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
