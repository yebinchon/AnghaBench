; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_cpotf2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_cpotf2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, float }

@cpotf2_.j = internal global i32 0, align 4
@cpotf2_.ajj = internal global float 0.000000e+00, align 4
@cpotf2_.upper = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CPOTF2\00", align 1
@c__1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@c_b57 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpotf2_(i8* %0, i32* %1, %struct.TYPE_5__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca %struct.TYPE_5__, align 4
  %19 = alloca %struct.TYPE_5__, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 1, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = sext i32 %24 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %27
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %9, align 8
  %29 = load i32*, i32** %11, align 8
  store i32 0, i32* %29, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @lsame_(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** @cpotf2_.upper, align 8
  %32 = load i8*, i8** @cpotf2_.upper, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %5
  %35 = load i8*, i8** %7, align 8
  %36 = call i8* @lsame_(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i8* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %11, align 8
  store i32 -1, i32* %39, align 4
  br label %57

40:                                               ; preds = %34, %5
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32*, i32** %11, align 8
  store i32 -2, i32* %45, align 4
  br label %56

46:                                               ; preds = %40
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @max(i32 1, i32 %50)
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32*, i32** %11, align 8
  store i32 -4, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %46
  br label %56

56:                                               ; preds = %55, %44
  br label %57

57:                                               ; preds = %56, %38
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %14, align 4
  %65 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %14)
  store i32 0, i32* %6, align 4
  br label %416

66:                                               ; preds = %57
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %416

71:                                               ; preds = %66
  %72 = load i8*, i8** @cpotf2_.upper, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %244

74:                                               ; preds = %71
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %14, align 4
  store i32 1, i32* @cpotf2_.j, align 4
  br label %77

77:                                               ; preds = %240, %74
  %78 = load i32, i32* @cpotf2_.j, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %243

81:                                               ; preds = %77
  %82 = load i32, i32* @cpotf2_.j, align 4
  %83 = load i32, i32* @cpotf2_.j, align 4
  %84 = load i32, i32* %12, align 4
  %85 = mul nsw i32 %83, %84
  %86 = add nsw i32 %82, %85
  store i32 %86, i32* %15, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load float, float* %91, align 4
  store float %92, float* %17, align 4
  %93 = load i32, i32* @cpotf2_.j, align 4
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %96 = load i32, i32* @cpotf2_.j, align 4
  %97 = load i32, i32* %12, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i64 %100
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %103 = load i32, i32* @cpotf2_.j, align 4
  %104 = load i32, i32* %12, align 4
  %105 = mul nsw i32 %103, %104
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %107
  %109 = call i32 @cdotc_(%struct.TYPE_5__* %19, i32* %16, %struct.TYPE_5__* %101, i32* @c__1, %struct.TYPE_5__* %108, i32* @c__1)
  %110 = load float, float* %17, align 4
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %112 = load float, float* %111, align 4
  %113 = fsub float %110, %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store float %113, float* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %116 = load float, float* %115, align 4
  %117 = fneg float %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store float %117, float* %118, align 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %120 = load float, float* %119, align 4
  store float %120, float* @cpotf2_.ajj, align 4
  %121 = load float, float* @cpotf2_.ajj, align 4
  %122 = fcmp ole float %121, 0.000000e+00
  br i1 %122, label %126, label %123

123:                                              ; preds = %81
  %124 = call i8* @sisnan_(float* @cpotf2_.ajj)
  %125 = icmp ne i8* %124, null
  br i1 %125, label %126, label %143

126:                                              ; preds = %123, %81
  %127 = load i32, i32* @cpotf2_.j, align 4
  %128 = load i32, i32* @cpotf2_.j, align 4
  %129 = load i32, i32* %12, align 4
  %130 = mul nsw i32 %128, %129
  %131 = add nsw i32 %127, %130
  store i32 %131, i32* %15, align 4
  %132 = load float, float* @cpotf2_.ajj, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store float %132, float* %137, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  store float 0.000000e+00, float* %142, align 4
  br label %412

143:                                              ; preds = %123
  %144 = load float, float* @cpotf2_.ajj, align 4
  %145 = call float @sqrt(float %144)
  store float %145, float* @cpotf2_.ajj, align 4
  %146 = load i32, i32* @cpotf2_.j, align 4
  %147 = load i32, i32* @cpotf2_.j, align 4
  %148 = load i32, i32* %12, align 4
  %149 = mul nsw i32 %147, %148
  %150 = add nsw i32 %146, %149
  store i32 %150, i32* %15, align 4
  %151 = load float, float* @cpotf2_.ajj, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  store float %151, float* %156, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  store float 0.000000e+00, float* %161, align 4
  %162 = load i32, i32* @cpotf2_.j, align 4
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %239

166:                                              ; preds = %143
  %167 = load i32, i32* @cpotf2_.j, align 4
  %168 = sub nsw i32 %167, 1
  store i32 %168, i32* %15, align 4
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %170 = load i32, i32* @cpotf2_.j, align 4
  %171 = load i32, i32* %12, align 4
  %172 = mul nsw i32 %170, %171
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 %174
  %176 = call i32 @clacgv_(i32* %15, %struct.TYPE_5__* %175, i32* @c__1)
  %177 = load i32, i32* @cpotf2_.j, align 4
  %178 = sub nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @cpotf2_.j, align 4
  %182 = sub nsw i32 %180, %181
  store i32 %182, i32* %16, align 4
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store float -1.000000e+00, float* %183, align 4
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store float -0.000000e+00, float* %184, align 4
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %186 = load i32, i32* @cpotf2_.j, align 4
  %187 = add nsw i32 %186, 1
  %188 = load i32, i32* %12, align 4
  %189 = mul nsw i32 %187, %188
  %190 = add nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i64 %191
  %193 = load i32*, i32** %10, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %195 = load i32, i32* @cpotf2_.j, align 4
  %196 = load i32, i32* %12, align 4
  %197 = mul nsw i32 %195, %196
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i64 %199
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %202 = load i32, i32* @cpotf2_.j, align 4
  %203 = load i32, i32* @cpotf2_.j, align 4
  %204 = add nsw i32 %203, 1
  %205 = load i32, i32* %12, align 4
  %206 = mul nsw i32 %204, %205
  %207 = add nsw i32 %202, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i64 %208
  %210 = load i32*, i32** %10, align 8
  %211 = call i32 @cgemv_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %15, i32* %16, %struct.TYPE_5__* %18, %struct.TYPE_5__* %192, i32* %193, %struct.TYPE_5__* %200, i32* @c__1, %struct.TYPE_5__* @c_b57, %struct.TYPE_5__* %209, i32* %210)
  %212 = load i32, i32* @cpotf2_.j, align 4
  %213 = sub nsw i32 %212, 1
  store i32 %213, i32* %15, align 4
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %215 = load i32, i32* @cpotf2_.j, align 4
  %216 = load i32, i32* %12, align 4
  %217 = mul nsw i32 %215, %216
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i64 %219
  %221 = call i32 @clacgv_(i32* %15, %struct.TYPE_5__* %220, i32* @c__1)
  %222 = load i32*, i32** %8, align 8
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @cpotf2_.j, align 4
  %225 = sub nsw i32 %223, %224
  store i32 %225, i32* %15, align 4
  %226 = load float, float* @cpotf2_.ajj, align 4
  %227 = fdiv float 1.000000e+00, %226
  store float %227, float* %17, align 4
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %229 = load i32, i32* @cpotf2_.j, align 4
  %230 = load i32, i32* @cpotf2_.j, align 4
  %231 = add nsw i32 %230, 1
  %232 = load i32, i32* %12, align 4
  %233 = mul nsw i32 %231, %232
  %234 = add nsw i32 %229, %233
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i64 %235
  %237 = load i32*, i32** %10, align 8
  %238 = call i32 @csscal_(i32* %15, float* %17, %struct.TYPE_5__* %236, i32* %237)
  br label %239

239:                                              ; preds = %166, %143
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* @cpotf2_.j, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* @cpotf2_.j, align 4
  br label %77

243:                                              ; preds = %77
  br label %411

244:                                              ; preds = %71
  %245 = load i32*, i32** %8, align 8
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %14, align 4
  store i32 1, i32* @cpotf2_.j, align 4
  br label %247

247:                                              ; preds = %407, %244
  %248 = load i32, i32* @cpotf2_.j, align 4
  %249 = load i32, i32* %14, align 4
  %250 = icmp sle i32 %248, %249
  br i1 %250, label %251, label %410

251:                                              ; preds = %247
  %252 = load i32, i32* @cpotf2_.j, align 4
  %253 = load i32, i32* @cpotf2_.j, align 4
  %254 = load i32, i32* %12, align 4
  %255 = mul nsw i32 %253, %254
  %256 = add nsw i32 %252, %255
  store i32 %256, i32* %15, align 4
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %258 = load i32, i32* %15, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  %262 = load float, float* %261, align 4
  store float %262, float* %17, align 4
  %263 = load i32, i32* @cpotf2_.j, align 4
  %264 = sub nsw i32 %263, 1
  store i32 %264, i32* %16, align 4
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %266 = load i32, i32* @cpotf2_.j, align 4
  %267 = load i32, i32* %12, align 4
  %268 = add nsw i32 %266, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i64 %269
  %271 = load i32*, i32** %10, align 8
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %273 = load i32, i32* @cpotf2_.j, align 4
  %274 = load i32, i32* %12, align 4
  %275 = add nsw i32 %273, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i64 %276
  %278 = load i32*, i32** %10, align 8
  %279 = call i32 @cdotc_(%struct.TYPE_5__* %19, i32* %16, %struct.TYPE_5__* %270, i32* %271, %struct.TYPE_5__* %277, i32* %278)
  %280 = load float, float* %17, align 4
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %282 = load float, float* %281, align 4
  %283 = fsub float %280, %282
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store float %283, float* %284, align 4
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %286 = load float, float* %285, align 4
  %287 = fneg float %286
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store float %287, float* %288, align 4
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %290 = load float, float* %289, align 4
  store float %290, float* @cpotf2_.ajj, align 4
  %291 = load float, float* @cpotf2_.ajj, align 4
  %292 = fcmp ole float %291, 0.000000e+00
  br i1 %292, label %296, label %293

293:                                              ; preds = %251
  %294 = call i8* @sisnan_(float* @cpotf2_.ajj)
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %313

296:                                              ; preds = %293, %251
  %297 = load i32, i32* @cpotf2_.j, align 4
  %298 = load i32, i32* @cpotf2_.j, align 4
  %299 = load i32, i32* %12, align 4
  %300 = mul nsw i32 %298, %299
  %301 = add nsw i32 %297, %300
  store i32 %301, i32* %15, align 4
  %302 = load float, float* @cpotf2_.ajj, align 4
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %304 = load i32, i32* %15, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 0
  store float %302, float* %307, align 4
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %309 = load i32, i32* %15, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 1
  store float 0.000000e+00, float* %312, align 4
  br label %412

313:                                              ; preds = %293
  %314 = load float, float* @cpotf2_.ajj, align 4
  %315 = call float @sqrt(float %314)
  store float %315, float* @cpotf2_.ajj, align 4
  %316 = load i32, i32* @cpotf2_.j, align 4
  %317 = load i32, i32* @cpotf2_.j, align 4
  %318 = load i32, i32* %12, align 4
  %319 = mul nsw i32 %317, %318
  %320 = add nsw i32 %316, %319
  store i32 %320, i32* %15, align 4
  %321 = load float, float* @cpotf2_.ajj, align 4
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %323 = load i32, i32* %15, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 0
  store float %321, float* %326, align 4
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %328 = load i32, i32* %15, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 1
  store float 0.000000e+00, float* %331, align 4
  %332 = load i32, i32* @cpotf2_.j, align 4
  %333 = load i32*, i32** %8, align 8
  %334 = load i32, i32* %333, align 4
  %335 = icmp slt i32 %332, %334
  br i1 %335, label %336, label %406

336:                                              ; preds = %313
  %337 = load i32, i32* @cpotf2_.j, align 4
  %338 = sub nsw i32 %337, 1
  store i32 %338, i32* %15, align 4
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %340 = load i32, i32* @cpotf2_.j, align 4
  %341 = load i32, i32* %12, align 4
  %342 = add nsw i32 %340, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i64 %343
  %345 = load i32*, i32** %10, align 8
  %346 = call i32 @clacgv_(i32* %15, %struct.TYPE_5__* %344, i32* %345)
  %347 = load i32*, i32** %8, align 8
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @cpotf2_.j, align 4
  %350 = sub nsw i32 %348, %349
  store i32 %350, i32* %15, align 4
  %351 = load i32, i32* @cpotf2_.j, align 4
  %352 = sub nsw i32 %351, 1
  store i32 %352, i32* %16, align 4
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store float -1.000000e+00, float* %353, align 4
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store float -0.000000e+00, float* %354, align 4
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %356 = load i32, i32* @cpotf2_.j, align 4
  %357 = add nsw i32 %356, 1
  %358 = load i32, i32* %12, align 4
  %359 = add nsw i32 %357, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i64 %360
  %362 = load i32*, i32** %10, align 8
  %363 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %364 = load i32, i32* @cpotf2_.j, align 4
  %365 = load i32, i32* %12, align 4
  %366 = add nsw i32 %364, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i64 %367
  %369 = load i32*, i32** %10, align 8
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %371 = load i32, i32* @cpotf2_.j, align 4
  %372 = add nsw i32 %371, 1
  %373 = load i32, i32* @cpotf2_.j, align 4
  %374 = load i32, i32* %12, align 4
  %375 = mul nsw i32 %373, %374
  %376 = add nsw i32 %372, %375
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i64 %377
  %379 = call i32 @cgemv_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %15, i32* %16, %struct.TYPE_5__* %18, %struct.TYPE_5__* %361, i32* %362, %struct.TYPE_5__* %368, i32* %369, %struct.TYPE_5__* @c_b57, %struct.TYPE_5__* %378, i32* @c__1)
  %380 = load i32, i32* @cpotf2_.j, align 4
  %381 = sub nsw i32 %380, 1
  store i32 %381, i32* %15, align 4
  %382 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %383 = load i32, i32* @cpotf2_.j, align 4
  %384 = load i32, i32* %12, align 4
  %385 = add nsw i32 %383, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %382, i64 %386
  %388 = load i32*, i32** %10, align 8
  %389 = call i32 @clacgv_(i32* %15, %struct.TYPE_5__* %387, i32* %388)
  %390 = load i32*, i32** %8, align 8
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* @cpotf2_.j, align 4
  %393 = sub nsw i32 %391, %392
  store i32 %393, i32* %15, align 4
  %394 = load float, float* @cpotf2_.ajj, align 4
  %395 = fdiv float 1.000000e+00, %394
  store float %395, float* %17, align 4
  %396 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %397 = load i32, i32* @cpotf2_.j, align 4
  %398 = add nsw i32 %397, 1
  %399 = load i32, i32* @cpotf2_.j, align 4
  %400 = load i32, i32* %12, align 4
  %401 = mul nsw i32 %399, %400
  %402 = add nsw i32 %398, %401
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %396, i64 %403
  %405 = call i32 @csscal_(i32* %15, float* %17, %struct.TYPE_5__* %404, i32* @c__1)
  br label %406

406:                                              ; preds = %336, %313
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* @cpotf2_.j, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* @cpotf2_.j, align 4
  br label %247

410:                                              ; preds = %247
  br label %411

411:                                              ; preds = %410, %243
  br label %415

412:                                              ; preds = %296, %126
  %413 = load i32, i32* @cpotf2_.j, align 4
  %414 = load i32*, i32** %11, align 8
  store i32 %413, i32* %414, align 4
  br label %415

415:                                              ; preds = %412, %411
  store i32 0, i32* %6, align 4
  br label %416

416:                                              ; preds = %415, %70, %61
  %417 = load i32, i32* %6, align 4
  ret i32 %417
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @cdotc_(%struct.TYPE_5__*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i8* @sisnan_(float*) #1

declare dso_local float @sqrt(float) #1

declare dso_local i32 @clacgv_(i32*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @cgemv_(i8*, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @csscal_(i32*, float*, %struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
