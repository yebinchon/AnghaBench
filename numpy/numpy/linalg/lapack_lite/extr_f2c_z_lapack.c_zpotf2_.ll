; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zpotf2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zpotf2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@zpotf2_.j = internal global i32 0, align 4
@zpotf2_.ajj = internal global i32 0, align 4
@zpotf2_.upper = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ZPOTF2\00", align 1
@c__1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"Transpose\00", align 1
@c_b57 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"No transpose\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpotf2_(i8* %0, i32* %1, %struct.TYPE_6__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__, align 4
  %19 = alloca %struct.TYPE_6__, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = add nsw i32 1, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = sext i32 %24 to i64
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %9, align 8
  %29 = load i32*, i32** %11, align 8
  store i32 0, i32* %29, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @lsame_(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** @zpotf2_.upper, align 8
  %32 = load i8*, i8** @zpotf2_.upper, align 8
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
  br label %422

66:                                               ; preds = %57
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %422

71:                                               ; preds = %66
  %72 = load i8*, i8** @zpotf2_.upper, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %247

74:                                               ; preds = %71
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %14, align 4
  store i32 1, i32* @zpotf2_.j, align 4
  br label %77

77:                                               ; preds = %243, %74
  %78 = load i32, i32* @zpotf2_.j, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %246

81:                                               ; preds = %77
  %82 = load i32, i32* @zpotf2_.j, align 4
  %83 = load i32, i32* @zpotf2_.j, align 4
  %84 = load i32, i32* %12, align 4
  %85 = mul nsw i32 %83, %84
  %86 = add nsw i32 %82, %85
  store i32 %86, i32* %15, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* @zpotf2_.j, align 4
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %96 = load i32, i32* @zpotf2_.j, align 4
  %97 = load i32, i32* %12, align 4
  %98 = mul nsw i32 %96, %97
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %100
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %103 = load i32, i32* @zpotf2_.j, align 4
  %104 = load i32, i32* %12, align 4
  %105 = mul nsw i32 %103, %104
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %107
  %109 = call i32 @zdotc_(%struct.TYPE_6__* %19, i32* %16, %struct.TYPE_6__* %101, i32* @c__1, %struct.TYPE_6__* %108, i32* @c__1)
  %110 = load i32, i32* %17, align 4
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %110, %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 0, %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 %117, i32* %118, align 4
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* @zpotf2_.ajj, align 4
  %121 = load i32, i32* @zpotf2_.ajj, align 4
  %122 = sitofp i32 %121 to double
  %123 = fcmp ole double %122, 0.000000e+00
  br i1 %123, label %127, label %124

124:                                              ; preds = %81
  %125 = call i8* @disnan_(i32* @zpotf2_.ajj)
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %144

127:                                              ; preds = %124, %81
  %128 = load i32, i32* @zpotf2_.j, align 4
  %129 = load i32, i32* @zpotf2_.j, align 4
  %130 = load i32, i32* %12, align 4
  %131 = mul nsw i32 %129, %130
  %132 = add nsw i32 %128, %131
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* @zpotf2_.ajj, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i32 %133, i32* %138, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  store i32 0, i32* %143, align 4
  br label %418

144:                                              ; preds = %124
  %145 = load i32, i32* @zpotf2_.ajj, align 4
  %146 = call i32 @sqrt(i32 %145)
  store i32 %146, i32* @zpotf2_.ajj, align 4
  %147 = load i32, i32* @zpotf2_.j, align 4
  %148 = load i32, i32* @zpotf2_.j, align 4
  %149 = load i32, i32* %12, align 4
  %150 = mul nsw i32 %148, %149
  %151 = add nsw i32 %147, %150
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* @zpotf2_.ajj, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  store i32 %152, i32* %157, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  store i32 0, i32* %162, align 4
  %163 = load i32, i32* @zpotf2_.j, align 4
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %167, label %242

167:                                              ; preds = %144
  %168 = load i32, i32* @zpotf2_.j, align 4
  %169 = sub nsw i32 %168, 1
  store i32 %169, i32* %15, align 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %171 = load i32, i32* @zpotf2_.j, align 4
  %172 = load i32, i32* %12, align 4
  %173 = mul nsw i32 %171, %172
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %175
  %177 = call i32 @zlacgv_(i32* %15, %struct.TYPE_6__* %176, i32* @c__1)
  %178 = load i32, i32* @zpotf2_.j, align 4
  %179 = sub nsw i32 %178, 1
  store i32 %179, i32* %15, align 4
  %180 = load i32*, i32** %8, align 8
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @zpotf2_.j, align 4
  %183 = sub nsw i32 %181, %182
  store i32 %183, i32* %16, align 4
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 -1, i32* %184, align 4
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 0, i32* %185, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %187 = load i32, i32* @zpotf2_.j, align 4
  %188 = add nsw i32 %187, 1
  %189 = load i32, i32* %12, align 4
  %190 = mul nsw i32 %188, %189
  %191 = add nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %192
  %194 = load i32*, i32** %10, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %196 = load i32, i32* @zpotf2_.j, align 4
  %197 = load i32, i32* %12, align 4
  %198 = mul nsw i32 %196, %197
  %199 = add nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i64 %200
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %203 = load i32, i32* @zpotf2_.j, align 4
  %204 = load i32, i32* @zpotf2_.j, align 4
  %205 = add nsw i32 %204, 1
  %206 = load i32, i32* %12, align 4
  %207 = mul nsw i32 %205, %206
  %208 = add nsw i32 %203, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 %209
  %211 = load i32*, i32** %10, align 8
  %212 = call i32 @zgemv_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %15, i32* %16, %struct.TYPE_6__* %18, %struct.TYPE_6__* %193, i32* %194, %struct.TYPE_6__* %201, i32* @c__1, %struct.TYPE_6__* @c_b57, %struct.TYPE_6__* %210, i32* %211)
  %213 = load i32, i32* @zpotf2_.j, align 4
  %214 = sub nsw i32 %213, 1
  store i32 %214, i32* %15, align 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %216 = load i32, i32* @zpotf2_.j, align 4
  %217 = load i32, i32* %12, align 4
  %218 = mul nsw i32 %216, %217
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 %220
  %222 = call i32 @zlacgv_(i32* %15, %struct.TYPE_6__* %221, i32* @c__1)
  %223 = load i32*, i32** %8, align 8
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @zpotf2_.j, align 4
  %226 = sub nsw i32 %224, %225
  store i32 %226, i32* %15, align 4
  %227 = load i32, i32* @zpotf2_.ajj, align 4
  %228 = sitofp i32 %227 to double
  %229 = fdiv double 1.000000e+00, %228
  %230 = fptosi double %229 to i32
  store i32 %230, i32* %17, align 4
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %232 = load i32, i32* @zpotf2_.j, align 4
  %233 = load i32, i32* @zpotf2_.j, align 4
  %234 = add nsw i32 %233, 1
  %235 = load i32, i32* %12, align 4
  %236 = mul nsw i32 %234, %235
  %237 = add nsw i32 %232, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i64 %238
  %240 = load i32*, i32** %10, align 8
  %241 = call i32 @zdscal_(i32* %15, i32* %17, %struct.TYPE_6__* %239, i32* %240)
  br label %242

242:                                              ; preds = %167, %144
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* @zpotf2_.j, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* @zpotf2_.j, align 4
  br label %77

246:                                              ; preds = %77
  br label %417

247:                                              ; preds = %71
  %248 = load i32*, i32** %8, align 8
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %14, align 4
  store i32 1, i32* @zpotf2_.j, align 4
  br label %250

250:                                              ; preds = %413, %247
  %251 = load i32, i32* @zpotf2_.j, align 4
  %252 = load i32, i32* %14, align 4
  %253 = icmp sle i32 %251, %252
  br i1 %253, label %254, label %416

254:                                              ; preds = %250
  %255 = load i32, i32* @zpotf2_.j, align 4
  %256 = load i32, i32* @zpotf2_.j, align 4
  %257 = load i32, i32* %12, align 4
  %258 = mul nsw i32 %256, %257
  %259 = add nsw i32 %255, %258
  store i32 %259, i32* %15, align 4
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %261 = load i32, i32* %15, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %17, align 4
  %266 = load i32, i32* @zpotf2_.j, align 4
  %267 = sub nsw i32 %266, 1
  store i32 %267, i32* %16, align 4
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %269 = load i32, i32* @zpotf2_.j, align 4
  %270 = load i32, i32* %12, align 4
  %271 = add nsw i32 %269, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i64 %272
  %274 = load i32*, i32** %10, align 8
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %276 = load i32, i32* @zpotf2_.j, align 4
  %277 = load i32, i32* %12, align 4
  %278 = add nsw i32 %276, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i64 %279
  %281 = load i32*, i32** %10, align 8
  %282 = call i32 @zdotc_(%struct.TYPE_6__* %19, i32* %16, %struct.TYPE_6__* %273, i32* %274, %struct.TYPE_6__* %280, i32* %281)
  %283 = load i32, i32* %17, align 4
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = sub nsw i32 %283, %285
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %286, i32* %287, align 4
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 0, %289
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 %290, i32* %291, align 4
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  store i32 %293, i32* @zpotf2_.ajj, align 4
  %294 = load i32, i32* @zpotf2_.ajj, align 4
  %295 = sitofp i32 %294 to double
  %296 = fcmp ole double %295, 0.000000e+00
  br i1 %296, label %300, label %297

297:                                              ; preds = %254
  %298 = call i8* @disnan_(i32* @zpotf2_.ajj)
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %317

300:                                              ; preds = %297, %254
  %301 = load i32, i32* @zpotf2_.j, align 4
  %302 = load i32, i32* @zpotf2_.j, align 4
  %303 = load i32, i32* %12, align 4
  %304 = mul nsw i32 %302, %303
  %305 = add nsw i32 %301, %304
  store i32 %305, i32* %15, align 4
  %306 = load i32, i32* @zpotf2_.ajj, align 4
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %308 = load i32, i32* %15, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  store i32 %306, i32* %311, align 4
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %313 = load i32, i32* %15, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 1
  store i32 0, i32* %316, align 4
  br label %418

317:                                              ; preds = %297
  %318 = load i32, i32* @zpotf2_.ajj, align 4
  %319 = call i32 @sqrt(i32 %318)
  store i32 %319, i32* @zpotf2_.ajj, align 4
  %320 = load i32, i32* @zpotf2_.j, align 4
  %321 = load i32, i32* @zpotf2_.j, align 4
  %322 = load i32, i32* %12, align 4
  %323 = mul nsw i32 %321, %322
  %324 = add nsw i32 %320, %323
  store i32 %324, i32* %15, align 4
  %325 = load i32, i32* @zpotf2_.ajj, align 4
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %327 = load i32, i32* %15, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 0
  store i32 %325, i32* %330, align 4
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %332 = load i32, i32* %15, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 1
  store i32 0, i32* %335, align 4
  %336 = load i32, i32* @zpotf2_.j, align 4
  %337 = load i32*, i32** %8, align 8
  %338 = load i32, i32* %337, align 4
  %339 = icmp slt i32 %336, %338
  br i1 %339, label %340, label %412

340:                                              ; preds = %317
  %341 = load i32, i32* @zpotf2_.j, align 4
  %342 = sub nsw i32 %341, 1
  store i32 %342, i32* %15, align 4
  %343 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %344 = load i32, i32* @zpotf2_.j, align 4
  %345 = load i32, i32* %12, align 4
  %346 = add nsw i32 %344, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i64 %347
  %349 = load i32*, i32** %10, align 8
  %350 = call i32 @zlacgv_(i32* %15, %struct.TYPE_6__* %348, i32* %349)
  %351 = load i32*, i32** %8, align 8
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @zpotf2_.j, align 4
  %354 = sub nsw i32 %352, %353
  store i32 %354, i32* %15, align 4
  %355 = load i32, i32* @zpotf2_.j, align 4
  %356 = sub nsw i32 %355, 1
  store i32 %356, i32* %16, align 4
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 -1, i32* %357, align 4
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 0, i32* %358, align 4
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %360 = load i32, i32* @zpotf2_.j, align 4
  %361 = add nsw i32 %360, 1
  %362 = load i32, i32* %12, align 4
  %363 = add nsw i32 %361, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i64 %364
  %366 = load i32*, i32** %10, align 8
  %367 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %368 = load i32, i32* @zpotf2_.j, align 4
  %369 = load i32, i32* %12, align 4
  %370 = add nsw i32 %368, %369
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %367, i64 %371
  %373 = load i32*, i32** %10, align 8
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %375 = load i32, i32* @zpotf2_.j, align 4
  %376 = add nsw i32 %375, 1
  %377 = load i32, i32* @zpotf2_.j, align 4
  %378 = load i32, i32* %12, align 4
  %379 = mul nsw i32 %377, %378
  %380 = add nsw i32 %376, %379
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i64 %381
  %383 = call i32 @zgemv_(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* %15, i32* %16, %struct.TYPE_6__* %18, %struct.TYPE_6__* %365, i32* %366, %struct.TYPE_6__* %372, i32* %373, %struct.TYPE_6__* @c_b57, %struct.TYPE_6__* %382, i32* @c__1)
  %384 = load i32, i32* @zpotf2_.j, align 4
  %385 = sub nsw i32 %384, 1
  store i32 %385, i32* %15, align 4
  %386 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %387 = load i32, i32* @zpotf2_.j, align 4
  %388 = load i32, i32* %12, align 4
  %389 = add nsw i32 %387, %388
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i64 %390
  %392 = load i32*, i32** %10, align 8
  %393 = call i32 @zlacgv_(i32* %15, %struct.TYPE_6__* %391, i32* %392)
  %394 = load i32*, i32** %8, align 8
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @zpotf2_.j, align 4
  %397 = sub nsw i32 %395, %396
  store i32 %397, i32* %15, align 4
  %398 = load i32, i32* @zpotf2_.ajj, align 4
  %399 = sitofp i32 %398 to double
  %400 = fdiv double 1.000000e+00, %399
  %401 = fptosi double %400 to i32
  store i32 %401, i32* %17, align 4
  %402 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %403 = load i32, i32* @zpotf2_.j, align 4
  %404 = add nsw i32 %403, 1
  %405 = load i32, i32* @zpotf2_.j, align 4
  %406 = load i32, i32* %12, align 4
  %407 = mul nsw i32 %405, %406
  %408 = add nsw i32 %404, %407
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i64 %409
  %411 = call i32 @zdscal_(i32* %15, i32* %17, %struct.TYPE_6__* %410, i32* @c__1)
  br label %412

412:                                              ; preds = %340, %317
  br label %413

413:                                              ; preds = %412
  %414 = load i32, i32* @zpotf2_.j, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* @zpotf2_.j, align 4
  br label %250

416:                                              ; preds = %250
  br label %417

417:                                              ; preds = %416, %246
  br label %421

418:                                              ; preds = %300, %127
  %419 = load i32, i32* @zpotf2_.j, align 4
  %420 = load i32*, i32** %11, align 8
  store i32 %419, i32* %420, align 4
  br label %421

421:                                              ; preds = %418, %417
  store i32 0, i32* %6, align 4
  br label %422

422:                                              ; preds = %421, %70, %61
  %423 = load i32, i32* %6, align 4
  ret i32 %423
}

declare dso_local i8* @lsame_(i8*, i8*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @zdotc_(%struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i8* @disnan_(i32*) #1

declare dso_local i32 @sqrt(i32) #1

declare dso_local i32 @zlacgv_(i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @zgemv_(i8*, i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @zdscal_(i32*, i32*, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
