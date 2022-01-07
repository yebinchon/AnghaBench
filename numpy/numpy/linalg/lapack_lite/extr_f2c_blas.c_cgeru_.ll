; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_cgeru_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_blas.c_cgeru_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float }

@cgeru_.i__ = internal global i32 0, align 4
@cgeru_.j = internal global i32 0, align 4
@cgeru_.ix = internal global i32 0, align 4
@cgeru_.jy = internal global i32 0, align 4
@cgeru_.kx = internal global i32 0, align 4
@cgeru_.info = internal global i32 0, align 4
@cgeru_.temp = internal global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"CGERU \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgeru_(i32* %0, i32* %1, %struct.TYPE_6__* %2, %struct.TYPE_6__* %3, i32* %4, %struct.TYPE_6__* %5, i32* %6, %struct.TYPE_6__* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_6__, align 4
  %28 = alloca %struct.TYPE_6__, align 4
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %14, align 8
  store i32* %4, i32** %15, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %16, align 8
  store i32* %6, i32** %17, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %18, align 8
  store i32* %8, i32** %19, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 -1
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %14, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 -1
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %16, align 8
  %33 = load i32*, i32** %19, align 8
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %20, align 4
  %36 = add nsw i32 1, %35
  store i32 %36, i32* %21, align 4
  %37 = load i32, i32* %21, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %39 = sext i32 %37 to i64
  %40 = sub i64 0, %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %18, align 8
  store i32 0, i32* @cgeru_.info, align 4
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %9
  store i32 1, i32* @cgeru_.info, align 4
  br label %73

46:                                               ; preds = %9
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 2, i32* @cgeru_.info, align 4
  br label %72

51:                                               ; preds = %46
  %52 = load i32*, i32** %15, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 5, i32* @cgeru_.info, align 4
  br label %71

56:                                               ; preds = %51
  %57 = load i32*, i32** %17, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 7, i32* @cgeru_.info, align 4
  br label %70

61:                                               ; preds = %56
  %62 = load i32*, i32** %19, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @max(i32 1, i32 %65)
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 9, i32* @cgeru_.info, align 4
  br label %69

69:                                               ; preds = %68, %61
  br label %70

70:                                               ; preds = %69, %60
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71, %50
  br label %73

73:                                               ; preds = %72, %45
  %74 = load i32, i32* @cgeru_.info, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @cgeru_.info)
  store i32 0, i32* %10, align 4
  br label %483

78:                                               ; preds = %73
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %78
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load float, float* %88, align 4
  %90 = fcmp oeq float %89, 0.000000e+00
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load float, float* %93, align 4
  %95 = fcmp oeq float %94, 0.000000e+00
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %82, %78
  store i32 0, i32* %10, align 4
  br label %483

97:                                               ; preds = %91, %86
  %98 = load i32*, i32** %17, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 1, i32* @cgeru_.jy, align 4
  br label %110

102:                                              ; preds = %97
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 1
  %106 = load i32*, i32** %17, align 8
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %105, %107
  %109 = sub nsw i32 1, %108
  store i32 %109, i32* @cgeru_.jy, align 4
  br label %110

110:                                              ; preds = %102, %101
  %111 = load i32*, i32** %15, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %289

114:                                              ; preds = %110
  %115 = load i32*, i32** %12, align 8
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %22, align 4
  store i32 1, i32* @cgeru_.j, align 4
  br label %117

117:                                              ; preds = %285, %114
  %118 = load i32, i32* @cgeru_.j, align 4
  %119 = load i32, i32* %22, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %288

121:                                              ; preds = %117
  %122 = load i32, i32* @cgeru_.jy, align 4
  store i32 %122, i32* %23, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %124 = load i32, i32* %23, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load float, float* %127, align 4
  %129 = fcmp une float %128, 0.000000e+00
  br i1 %129, label %138, label %130

130:                                              ; preds = %121
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %132 = load i32, i32* %23, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load float, float* %135, align 4
  %137 = fcmp une float %136, 0.000000e+00
  br i1 %137, label %138, label %280

138:                                              ; preds = %130, %121
  %139 = load i32, i32* @cgeru_.jy, align 4
  store i32 %139, i32* %23, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load float, float* %141, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %144 = load i32, i32* %23, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load float, float* %147, align 4
  %149 = fmul float %142, %148
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load float, float* %151, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %154 = load i32, i32* %23, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load float, float* %157, align 4
  %159 = fmul float %152, %158
  %160 = fsub float %149, %159
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store float %160, float* %161, align 4
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load float, float* %163, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %166 = load i32, i32* %23, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load float, float* %169, align 4
  %171 = fmul float %164, %170
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load float, float* %173, align 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %176 = load i32, i32* %23, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load float, float* %179, align 4
  %181 = fmul float %174, %180
  %182 = fadd float %171, %181
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store float %182, float* %183, align 4
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %185 = load float, float* %184, align 4
  store float %185, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgeru_.temp, i32 0, i32 0), align 4
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %187 = load float, float* %186, align 4
  store float %187, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgeru_.temp, i32 0, i32 1), align 4
  %188 = load i32*, i32** %11, align 8
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %23, align 4
  store i32 1, i32* @cgeru_.i__, align 4
  br label %190

190:                                              ; preds = %276, %138
  %191 = load i32, i32* @cgeru_.i__, align 4
  %192 = load i32, i32* %23, align 4
  %193 = icmp sle i32 %191, %192
  br i1 %193, label %194, label %279

194:                                              ; preds = %190
  %195 = load i32, i32* @cgeru_.i__, align 4
  %196 = load i32, i32* @cgeru_.j, align 4
  %197 = load i32, i32* %20, align 4
  %198 = mul nsw i32 %196, %197
  %199 = add nsw i32 %195, %198
  store i32 %199, i32* %24, align 4
  %200 = load i32, i32* @cgeru_.i__, align 4
  %201 = load i32, i32* @cgeru_.j, align 4
  %202 = load i32, i32* %20, align 4
  %203 = mul nsw i32 %201, %202
  %204 = add nsw i32 %200, %203
  store i32 %204, i32* %25, align 4
  %205 = load i32, i32* @cgeru_.i__, align 4
  store i32 %205, i32* %26, align 4
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %207 = load i32, i32* %26, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load float, float* %210, align 4
  %212 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgeru_.temp, i32 0, i32 0), align 4
  %213 = fmul float %211, %212
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %215 = load i32, i32* %26, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 1
  %219 = load float, float* %218, align 4
  %220 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgeru_.temp, i32 0, i32 1), align 4
  %221 = fmul float %219, %220
  %222 = fsub float %213, %221
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store float %222, float* %223, align 4
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %225 = load i32, i32* %26, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load float, float* %228, align 4
  %230 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgeru_.temp, i32 0, i32 1), align 4
  %231 = fmul float %229, %230
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %233 = load i32, i32* %26, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = load float, float* %236, align 4
  %238 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgeru_.temp, i32 0, i32 0), align 4
  %239 = fmul float %237, %238
  %240 = fadd float %231, %239
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store float %240, float* %241, align 4
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %243 = load i32, i32* %25, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load float, float* %246, align 4
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %249 = load float, float* %248, align 4
  %250 = fadd float %247, %249
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store float %250, float* %251, align 4
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %253 = load i32, i32* %25, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 1
  %257 = load float, float* %256, align 4
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %259 = load float, float* %258, align 4
  %260 = fadd float %257, %259
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store float %260, float* %261, align 4
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %263 = load float, float* %262, align 4
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %265 = load i32, i32* %24, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  store float %263, float* %268, align 4
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %270 = load float, float* %269, align 4
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %272 = load i32, i32* %24, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 1
  store float %270, float* %275, align 4
  br label %276

276:                                              ; preds = %194
  %277 = load i32, i32* @cgeru_.i__, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* @cgeru_.i__, align 4
  br label %190

279:                                              ; preds = %190
  br label %280

280:                                              ; preds = %279, %130
  %281 = load i32*, i32** %17, align 8
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @cgeru_.jy, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* @cgeru_.jy, align 4
  br label %285

285:                                              ; preds = %280
  %286 = load i32, i32* @cgeru_.j, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* @cgeru_.j, align 4
  br label %117

288:                                              ; preds = %117
  br label %482

289:                                              ; preds = %110
  %290 = load i32*, i32** %15, align 8
  %291 = load i32, i32* %290, align 4
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %289
  store i32 1, i32* @cgeru_.kx, align 4
  br label %302

294:                                              ; preds = %289
  %295 = load i32*, i32** %11, align 8
  %296 = load i32, i32* %295, align 4
  %297 = sub nsw i32 %296, 1
  %298 = load i32*, i32** %15, align 8
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 %297, %299
  %301 = sub nsw i32 1, %300
  store i32 %301, i32* @cgeru_.kx, align 4
  br label %302

302:                                              ; preds = %294, %293
  %303 = load i32*, i32** %12, align 8
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %22, align 4
  store i32 1, i32* @cgeru_.j, align 4
  br label %305

305:                                              ; preds = %478, %302
  %306 = load i32, i32* @cgeru_.j, align 4
  %307 = load i32, i32* %22, align 4
  %308 = icmp sle i32 %306, %307
  br i1 %308, label %309, label %481

309:                                              ; preds = %305
  %310 = load i32, i32* @cgeru_.jy, align 4
  store i32 %310, i32* %23, align 4
  %311 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %312 = load i32, i32* %23, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = load float, float* %315, align 4
  %317 = fcmp une float %316, 0.000000e+00
  br i1 %317, label %326, label %318

318:                                              ; preds = %309
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %320 = load i32, i32* %23, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 1
  %324 = load float, float* %323, align 4
  %325 = fcmp une float %324, 0.000000e+00
  br i1 %325, label %326, label %473

326:                                              ; preds = %318, %309
  %327 = load i32, i32* @cgeru_.jy, align 4
  store i32 %327, i32* %23, align 4
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 0
  %330 = load float, float* %329, align 4
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %332 = load i32, i32* %23, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 0
  %336 = load float, float* %335, align 4
  %337 = fmul float %330, %336
  %338 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 1
  %340 = load float, float* %339, align 4
  %341 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %342 = load i32, i32* %23, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 1
  %346 = load float, float* %345, align 4
  %347 = fmul float %340, %346
  %348 = fsub float %337, %347
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store float %348, float* %349, align 4
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 0
  %352 = load float, float* %351, align 4
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %354 = load i32, i32* %23, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 1
  %358 = load float, float* %357, align 4
  %359 = fmul float %352, %358
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 1
  %362 = load float, float* %361, align 4
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %364 = load i32, i32* %23, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 0
  %368 = load float, float* %367, align 4
  %369 = fmul float %362, %368
  %370 = fadd float %359, %369
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store float %370, float* %371, align 4
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %373 = load float, float* %372, align 4
  store float %373, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgeru_.temp, i32 0, i32 0), align 4
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %375 = load float, float* %374, align 4
  store float %375, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgeru_.temp, i32 0, i32 1), align 4
  %376 = load i32, i32* @cgeru_.kx, align 4
  store i32 %376, i32* @cgeru_.ix, align 4
  %377 = load i32*, i32** %11, align 8
  %378 = load i32, i32* %377, align 4
  store i32 %378, i32* %23, align 4
  store i32 1, i32* @cgeru_.i__, align 4
  br label %379

379:                                              ; preds = %469, %326
  %380 = load i32, i32* @cgeru_.i__, align 4
  %381 = load i32, i32* %23, align 4
  %382 = icmp sle i32 %380, %381
  br i1 %382, label %383, label %472

383:                                              ; preds = %379
  %384 = load i32, i32* @cgeru_.i__, align 4
  %385 = load i32, i32* @cgeru_.j, align 4
  %386 = load i32, i32* %20, align 4
  %387 = mul nsw i32 %385, %386
  %388 = add nsw i32 %384, %387
  store i32 %388, i32* %24, align 4
  %389 = load i32, i32* @cgeru_.i__, align 4
  %390 = load i32, i32* @cgeru_.j, align 4
  %391 = load i32, i32* %20, align 4
  %392 = mul nsw i32 %390, %391
  %393 = add nsw i32 %389, %392
  store i32 %393, i32* %25, align 4
  %394 = load i32, i32* @cgeru_.ix, align 4
  store i32 %394, i32* %26, align 4
  %395 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %396 = load i32, i32* %26, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 0
  %400 = load float, float* %399, align 4
  %401 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgeru_.temp, i32 0, i32 0), align 4
  %402 = fmul float %400, %401
  %403 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %404 = load i32, i32* %26, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i64 %405
  %407 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %406, i32 0, i32 1
  %408 = load float, float* %407, align 4
  %409 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgeru_.temp, i32 0, i32 1), align 4
  %410 = fmul float %408, %409
  %411 = fsub float %402, %410
  %412 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store float %411, float* %412, align 4
  %413 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %414 = load i32, i32* %26, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 0
  %418 = load float, float* %417, align 4
  %419 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgeru_.temp, i32 0, i32 1), align 4
  %420 = fmul float %418, %419
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %422 = load i32, i32* %26, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 1
  %426 = load float, float* %425, align 4
  %427 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cgeru_.temp, i32 0, i32 0), align 4
  %428 = fmul float %426, %427
  %429 = fadd float %420, %428
  %430 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store float %429, float* %430, align 4
  %431 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %432 = load i32, i32* %25, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %431, i64 %433
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 0
  %436 = load float, float* %435, align 4
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %438 = load float, float* %437, align 4
  %439 = fadd float %436, %438
  %440 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store float %439, float* %440, align 4
  %441 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %442 = load i32, i32* %25, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %441, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %444, i32 0, i32 1
  %446 = load float, float* %445, align 4
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %448 = load float, float* %447, align 4
  %449 = fadd float %446, %448
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store float %449, float* %450, align 4
  %451 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %452 = load float, float* %451, align 4
  %453 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %454 = load i32, i32* %24, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %453, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %456, i32 0, i32 0
  store float %452, float* %457, align 4
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %459 = load float, float* %458, align 4
  %460 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %461 = load i32, i32* %24, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %463, i32 0, i32 1
  store float %459, float* %464, align 4
  %465 = load i32*, i32** %15, align 8
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* @cgeru_.ix, align 4
  %468 = add nsw i32 %467, %466
  store i32 %468, i32* @cgeru_.ix, align 4
  br label %469

469:                                              ; preds = %383
  %470 = load i32, i32* @cgeru_.i__, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* @cgeru_.i__, align 4
  br label %379

472:                                              ; preds = %379
  br label %473

473:                                              ; preds = %472, %318
  %474 = load i32*, i32** %17, align 8
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* @cgeru_.jy, align 4
  %477 = add nsw i32 %476, %475
  store i32 %477, i32* @cgeru_.jy, align 4
  br label %478

478:                                              ; preds = %473
  %479 = load i32, i32* @cgeru_.j, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* @cgeru_.j, align 4
  br label %305

481:                                              ; preds = %305
  br label %482

482:                                              ; preds = %481, %288
  store i32 0, i32* %10, align 4
  br label %483

483:                                              ; preds = %482, %96, %76
  %484 = load i32, i32* %10, align 4
  ret i32 %484
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
