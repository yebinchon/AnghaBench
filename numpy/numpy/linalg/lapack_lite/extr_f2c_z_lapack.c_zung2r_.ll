; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zung2r_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_z_lapack.c_zung2r_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@zung2r_.i__ = internal global i32 0, align 4
@zung2r_.j = internal global i32 0, align 4
@zung2r_.l = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ZUNG2R\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@c__1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zung2r_(i32* %0, i32* %1, i32* %2, %struct.TYPE_9__* %3, i32* %4, %struct.TYPE_9__* %5, %struct.TYPE_9__* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_9__, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = add nsw i32 1, %26
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* %19, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %30 = sext i32 %28 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %31
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %13, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 -1
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %15, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 -1
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %16, align 8
  %37 = load i32*, i32** %17, align 8
  store i32 0, i32* %37, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %8
  %42 = load i32*, i32** %17, align 8
  store i32 -1, i32* %42, align 4
  br label %79

43:                                               ; preds = %8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47, %43
  %54 = load i32*, i32** %17, align 8
  store i32 -2, i32* %54, align 4
  br label %78

55:                                               ; preds = %47
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %59, %55
  %66 = load i32*, i32** %17, align 8
  store i32 -3, i32* %66, align 4
  br label %77

67:                                               ; preds = %59
  %68 = load i32*, i32** %14, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @max(i32 1, i32 %71)
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32*, i32** %17, align 8
  store i32 -5, i32* %75, align 4
  br label %76

76:                                               ; preds = %74, %67
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %77, %53
  br label %79

79:                                               ; preds = %78, %41
  %80 = load i32*, i32** %17, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32*, i32** %17, align 8
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %20, align 4
  %87 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %20)
  store i32 0, i32* %9, align 4
  br label %317

88:                                               ; preds = %79
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp sle i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 0, i32* %9, align 4
  br label %317

93:                                               ; preds = %88
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %20, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* @zung2r_.j, align 4
  br label %99

99:                                               ; preds = %145, %93
  %100 = load i32, i32* @zung2r_.j, align 4
  %101 = load i32, i32* %20, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %148

103:                                              ; preds = %99
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %21, align 4
  store i32 1, i32* @zung2r_.l, align 4
  br label %106

106:                                              ; preds = %126, %103
  %107 = load i32, i32* @zung2r_.l, align 4
  %108 = load i32, i32* %21, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %106
  %111 = load i32, i32* @zung2r_.l, align 4
  %112 = load i32, i32* @zung2r_.j, align 4
  %113 = load i32, i32* %18, align 4
  %114 = mul nsw i32 %112, %113
  %115 = add nsw i32 %111, %114
  store i32 %115, i32* %22, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %117 = load i32, i32* %22, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  store i32 0, i32* %120, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %122 = load i32, i32* %22, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  br label %126

126:                                              ; preds = %110
  %127 = load i32, i32* @zung2r_.l, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @zung2r_.l, align 4
  br label %106

129:                                              ; preds = %106
  %130 = load i32, i32* @zung2r_.j, align 4
  %131 = load i32, i32* @zung2r_.j, align 4
  %132 = load i32, i32* %18, align 4
  %133 = mul nsw i32 %131, %132
  %134 = add nsw i32 %130, %133
  store i32 %134, i32* %21, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %136 = load i32, i32* %21, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %141 = load i32, i32* %21, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  store i32 0, i32* %144, align 4
  br label %145

145:                                              ; preds = %129
  %146 = load i32, i32* @zung2r_.j, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* @zung2r_.j, align 4
  br label %99

148:                                              ; preds = %99
  %149 = load i32*, i32** %12, align 8
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* @zung2r_.i__, align 4
  br label %151

151:                                              ; preds = %313, %148
  %152 = load i32, i32* @zung2r_.i__, align 4
  %153 = icmp sge i32 %152, 1
  br i1 %153, label %154, label %316

154:                                              ; preds = %151
  %155 = load i32, i32* @zung2r_.i__, align 4
  %156 = load i32*, i32** %11, align 8
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %159, label %209

159:                                              ; preds = %154
  %160 = load i32, i32* @zung2r_.i__, align 4
  %161 = load i32, i32* @zung2r_.i__, align 4
  %162 = load i32, i32* %18, align 4
  %163 = mul nsw i32 %161, %162
  %164 = add nsw i32 %160, %163
  store i32 %164, i32* %20, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %166 = load i32, i32* %20, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %171 = load i32, i32* %20, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 1
  store i32 0, i32* %174, align 4
  %175 = load i32*, i32** %10, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @zung2r_.i__, align 4
  %178 = sub nsw i32 %176, %177
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %20, align 4
  %180 = load i32*, i32** %11, align 8
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @zung2r_.i__, align 4
  %183 = sub nsw i32 %181, %182
  store i32 %183, i32* %21, align 4
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %185 = load i32, i32* @zung2r_.i__, align 4
  %186 = load i32, i32* @zung2r_.i__, align 4
  %187 = load i32, i32* %18, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 %185, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i64 %190
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %193 = load i32, i32* @zung2r_.i__, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i64 %194
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %197 = load i32, i32* @zung2r_.i__, align 4
  %198 = load i32, i32* @zung2r_.i__, align 4
  %199 = add nsw i32 %198, 1
  %200 = load i32, i32* %18, align 4
  %201 = mul nsw i32 %199, %200
  %202 = add nsw i32 %197, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i64 %203
  %205 = load i32*, i32** %14, align 8
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i64 1
  %208 = call i32 @zlarf_(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %20, i32* %21, %struct.TYPE_9__* %191, i32* @c__1, %struct.TYPE_9__* %195, %struct.TYPE_9__* %204, i32* %205, %struct.TYPE_9__* %207)
  br label %209

209:                                              ; preds = %159, %154
  %210 = load i32, i32* @zung2r_.i__, align 4
  %211 = load i32*, i32** %10, align 8
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %210, %212
  br i1 %213, label %214, label %246

214:                                              ; preds = %209
  %215 = load i32*, i32** %10, align 8
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @zung2r_.i__, align 4
  %218 = sub nsw i32 %216, %217
  store i32 %218, i32* %20, align 4
  %219 = load i32, i32* @zung2r_.i__, align 4
  store i32 %219, i32* %21, align 4
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %221 = load i32, i32* %21, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = sub nsw i32 0, %225
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 %226, i32* %227, align 4
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %229 = load i32, i32* %21, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 0, %233
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store i32 %234, i32* %235, align 4
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %237 = load i32, i32* @zung2r_.i__, align 4
  %238 = add nsw i32 %237, 1
  %239 = load i32, i32* @zung2r_.i__, align 4
  %240 = load i32, i32* %18, align 4
  %241 = mul nsw i32 %239, %240
  %242 = add nsw i32 %238, %241
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i64 %243
  %245 = call i32 @zscal_(i32* %20, %struct.TYPE_9__* %23, %struct.TYPE_9__* %244, i32* @c__1)
  br label %246

246:                                              ; preds = %214, %209
  %247 = load i32, i32* @zung2r_.i__, align 4
  %248 = load i32, i32* @zung2r_.i__, align 4
  %249 = load i32, i32* %18, align 4
  %250 = mul nsw i32 %248, %249
  %251 = add nsw i32 %247, %250
  store i32 %251, i32* %20, align 4
  %252 = load i32, i32* @zung2r_.i__, align 4
  store i32 %252, i32* %21, align 4
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %254 = load i32, i32* %21, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = sitofp i32 %258 to double
  %260 = fsub double 1.000000e+00, %259
  %261 = fptosi double %260 to i32
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  store i32 %261, i32* %262, align 4
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %264 = load i32, i32* %21, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = sitofp i32 %268 to double
  %270 = fsub double 0.000000e+00, %269
  %271 = fptosi double %270 to i32
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store i32 %271, i32* %272, align 4
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %276 = load i32, i32* %20, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 0
  store i32 %274, i32* %279, align 4
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %283 = load i32, i32* %20, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 1
  store i32 %281, i32* %286, align 4
  %287 = load i32, i32* @zung2r_.i__, align 4
  %288 = sub nsw i32 %287, 1
  store i32 %288, i32* %20, align 4
  store i32 1, i32* @zung2r_.l, align 4
  br label %289

289:                                              ; preds = %309, %246
  %290 = load i32, i32* @zung2r_.l, align 4
  %291 = load i32, i32* %20, align 4
  %292 = icmp sle i32 %290, %291
  br i1 %292, label %293, label %312

293:                                              ; preds = %289
  %294 = load i32, i32* @zung2r_.l, align 4
  %295 = load i32, i32* @zung2r_.i__, align 4
  %296 = load i32, i32* %18, align 4
  %297 = mul nsw i32 %295, %296
  %298 = add nsw i32 %294, %297
  store i32 %298, i32* %21, align 4
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %300 = load i32, i32* %21, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 0
  store i32 0, i32* %303, align 4
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %305 = load i32, i32* %21, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 1
  store i32 0, i32* %308, align 4
  br label %309

309:                                              ; preds = %293
  %310 = load i32, i32* @zung2r_.l, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* @zung2r_.l, align 4
  br label %289

312:                                              ; preds = %289
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* @zung2r_.i__, align 4
  %315 = add nsw i32 %314, -1
  store i32 %315, i32* @zung2r_.i__, align 4
  br label %151

316:                                              ; preds = %151
  store i32 0, i32* %9, align 4
  br label %317

317:                                              ; preds = %316, %92, %83
  %318 = load i32, i32* %9, align 4
  ret i32 %318
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @zlarf_(i8*, i32*, i32*, %struct.TYPE_9__*, i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @zscal_(i32*, %struct.TYPE_9__*, %struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
