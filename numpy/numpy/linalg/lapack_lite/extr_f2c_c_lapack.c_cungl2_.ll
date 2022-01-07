; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_cungl2_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_c_lapack.c_cungl2_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { float, float }

@cungl2_.i__ = internal global i32 0, align 4
@cungl2_.j = internal global i32 0, align 4
@cungl2_.l = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"CUNGL2\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Right\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cungl2_(i32* %0, i32* %1, i32* %2, %struct.TYPE_12__* %3, i32* %4, %struct.TYPE_12__* %5, %struct.TYPE_12__* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_12__, align 4
  %24 = alloca %struct.TYPE_12__, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %13, align 8
  store i32* %4, i32** %14, align 8
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %16, align 8
  store i32* %7, i32** %17, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %18, align 4
  %28 = add nsw i32 1, %27
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %19, align 4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %31 = sext i32 %29 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 %32
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %13, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 -1
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %15, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 -1
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %16, align 8
  %38 = load i32*, i32** %17, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %8
  %43 = load i32*, i32** %17, align 8
  store i32 -1, i32* %43, align 4
  br label %76

44:                                               ; preds = %8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32*, i32** %17, align 8
  store i32 -2, i32* %51, align 4
  br label %75

52:                                               ; preds = %44
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %52
  %63 = load i32*, i32** %17, align 8
  store i32 -3, i32* %63, align 4
  br label %74

64:                                               ; preds = %56
  %65 = load i32*, i32** %14, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @max(i32 1, i32 %68)
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32*, i32** %17, align 8
  store i32 -5, i32* %72, align 4
  br label %73

73:                                               ; preds = %71, %64
  br label %74

74:                                               ; preds = %73, %62
  br label %75

75:                                               ; preds = %74, %50
  br label %76

76:                                               ; preds = %75, %42
  %77 = load i32*, i32** %17, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32*, i32** %17, align 8
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %20, align 4
  %84 = call i32 @xerbla_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %20)
  store i32 0, i32* %9, align 4
  br label %357

85:                                               ; preds = %76
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 0, i32* %9, align 4
  br label %357

90:                                               ; preds = %85
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %163

96:                                               ; preds = %90
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %20, align 4
  store i32 1, i32* @cungl2_.j, align 4
  br label %99

99:                                               ; preds = %159, %96
  %100 = load i32, i32* @cungl2_.j, align 4
  %101 = load i32, i32* %20, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %162

103:                                              ; preds = %99
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %21, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* @cungl2_.l, align 4
  br label %109

109:                                              ; preds = %129, %103
  %110 = load i32, i32* @cungl2_.l, align 4
  %111 = load i32, i32* %21, align 4
  %112 = icmp sle i32 %110, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %109
  %114 = load i32, i32* @cungl2_.l, align 4
  %115 = load i32, i32* @cungl2_.j, align 4
  %116 = load i32, i32* %18, align 4
  %117 = mul nsw i32 %115, %116
  %118 = add nsw i32 %114, %117
  store i32 %118, i32* %22, align 4
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %120 = load i32, i32* %22, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  store float 0.000000e+00, float* %123, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %125 = load i32, i32* %22, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  store float 0.000000e+00, float* %128, align 4
  br label %129

129:                                              ; preds = %113
  %130 = load i32, i32* @cungl2_.l, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* @cungl2_.l, align 4
  br label %109

132:                                              ; preds = %109
  %133 = load i32, i32* @cungl2_.j, align 4
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %133, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %132
  %138 = load i32, i32* @cungl2_.j, align 4
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp sle i32 %138, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %137
  %143 = load i32, i32* @cungl2_.j, align 4
  %144 = load i32, i32* @cungl2_.j, align 4
  %145 = load i32, i32* %18, align 4
  %146 = mul nsw i32 %144, %145
  %147 = add nsw i32 %143, %146
  store i32 %147, i32* %21, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %149 = load i32, i32* %21, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  store float 1.000000e+00, float* %152, align 4
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %154 = load i32, i32* %21, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  store float 0.000000e+00, float* %157, align 4
  br label %158

158:                                              ; preds = %142, %137, %132
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* @cungl2_.j, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* @cungl2_.j, align 4
  br label %99

162:                                              ; preds = %99
  br label %163

163:                                              ; preds = %162, %90
  %164 = load i32*, i32** %12, align 8
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* @cungl2_.i__, align 4
  br label %166

166:                                              ; preds = %353, %163
  %167 = load i32, i32* @cungl2_.i__, align 4
  %168 = icmp sge i32 %167, 1
  br i1 %168, label %169, label %356

169:                                              ; preds = %166
  %170 = load i32, i32* @cungl2_.i__, align 4
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %294

174:                                              ; preds = %169
  %175 = load i32*, i32** %11, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @cungl2_.i__, align 4
  %178 = sub nsw i32 %176, %177
  store i32 %178, i32* %20, align 4
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %180 = load i32, i32* @cungl2_.i__, align 4
  %181 = load i32, i32* @cungl2_.i__, align 4
  %182 = add nsw i32 %181, 1
  %183 = load i32, i32* %18, align 4
  %184 = mul nsw i32 %182, %183
  %185 = add nsw i32 %180, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i64 %186
  %188 = load i32*, i32** %14, align 8
  %189 = call i32 @clacgv_(i32* %20, %struct.TYPE_12__* %187, i32* %188)
  %190 = load i32, i32* @cungl2_.i__, align 4
  %191 = load i32*, i32** %10, align 8
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %246

194:                                              ; preds = %174
  %195 = load i32, i32* @cungl2_.i__, align 4
  %196 = load i32, i32* @cungl2_.i__, align 4
  %197 = load i32, i32* %18, align 4
  %198 = mul nsw i32 %196, %197
  %199 = add nsw i32 %195, %198
  store i32 %199, i32* %20, align 4
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  store float 1.000000e+00, float* %204, align 4
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %206 = load i32, i32* %20, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  store float 0.000000e+00, float* %209, align 4
  %210 = load i32*, i32** %10, align 8
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @cungl2_.i__, align 4
  %213 = sub nsw i32 %211, %212
  store i32 %213, i32* %20, align 4
  %214 = load i32*, i32** %11, align 8
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @cungl2_.i__, align 4
  %217 = sub nsw i32 %215, %216
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %21, align 4
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %220 = load i32, i32* @cungl2_.i__, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i64 %221
  %223 = call i32 @r_cnjg(%struct.TYPE_12__* %23, %struct.TYPE_12__* %222)
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %225 = load i32, i32* @cungl2_.i__, align 4
  %226 = load i32, i32* @cungl2_.i__, align 4
  %227 = load i32, i32* %18, align 4
  %228 = mul nsw i32 %226, %227
  %229 = add nsw i32 %225, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i64 %230
  %232 = load i32*, i32** %14, align 8
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %234 = load i32, i32* @cungl2_.i__, align 4
  %235 = add nsw i32 %234, 1
  %236 = load i32, i32* @cungl2_.i__, align 4
  %237 = load i32, i32* %18, align 4
  %238 = mul nsw i32 %236, %237
  %239 = add nsw i32 %235, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i64 %240
  %242 = load i32*, i32** %14, align 8
  %243 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i64 1
  %245 = call i32 @clarf_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %20, i32* %21, %struct.TYPE_12__* %231, i32* %232, %struct.TYPE_12__* %23, %struct.TYPE_12__* %241, i32* %242, %struct.TYPE_12__* %244)
  br label %246

246:                                              ; preds = %194, %174
  %247 = load i32*, i32** %11, align 8
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @cungl2_.i__, align 4
  %250 = sub nsw i32 %248, %249
  store i32 %250, i32* %20, align 4
  %251 = load i32, i32* @cungl2_.i__, align 4
  store i32 %251, i32* %21, align 4
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %253 = load i32, i32* %21, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = load float, float* %256, align 4
  %258 = fneg float %257
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store float %258, float* %259, align 4
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %261 = load i32, i32* %21, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 1
  %265 = load float, float* %264, align 4
  %266 = fneg float %265
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  store float %266, float* %267, align 4
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %269 = load i32, i32* @cungl2_.i__, align 4
  %270 = load i32, i32* @cungl2_.i__, align 4
  %271 = add nsw i32 %270, 1
  %272 = load i32, i32* %18, align 4
  %273 = mul nsw i32 %271, %272
  %274 = add nsw i32 %269, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i64 %275
  %277 = load i32*, i32** %14, align 8
  %278 = call i32 @cscal_(i32* %20, %struct.TYPE_12__* %23, %struct.TYPE_12__* %276, i32* %277)
  %279 = load i32*, i32** %11, align 8
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @cungl2_.i__, align 4
  %282 = sub nsw i32 %280, %281
  store i32 %282, i32* %20, align 4
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %284 = load i32, i32* @cungl2_.i__, align 4
  %285 = load i32, i32* @cungl2_.i__, align 4
  %286 = add nsw i32 %285, 1
  %287 = load i32, i32* %18, align 4
  %288 = mul nsw i32 %286, %287
  %289 = add nsw i32 %284, %288
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i64 %290
  %292 = load i32*, i32** %14, align 8
  %293 = call i32 @clacgv_(i32* %20, %struct.TYPE_12__* %291, i32* %292)
  br label %294

294:                                              ; preds = %246, %169
  %295 = load i32, i32* @cungl2_.i__, align 4
  %296 = load i32, i32* @cungl2_.i__, align 4
  %297 = load i32, i32* %18, align 4
  %298 = mul nsw i32 %296, %297
  %299 = add nsw i32 %295, %298
  store i32 %299, i32* %20, align 4
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %301 = load i32, i32* @cungl2_.i__, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i64 %302
  %304 = call i32 @r_cnjg(%struct.TYPE_12__* %24, %struct.TYPE_12__* %303)
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %306 = load float, float* %305, align 4
  %307 = fsub float 1.000000e+00, %306
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  store float %307, float* %308, align 4
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %310 = load float, float* %309, align 4
  %311 = fsub float 0.000000e+00, %310
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  store float %311, float* %312, align 4
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %314 = load float, float* %313, align 4
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %316 = load i32, i32* %20, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 0
  store float %314, float* %319, align 4
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %321 = load float, float* %320, align 4
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %323 = load i32, i32* %20, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 1
  store float %321, float* %326, align 4
  %327 = load i32, i32* @cungl2_.i__, align 4
  %328 = sub nsw i32 %327, 1
  store i32 %328, i32* %20, align 4
  store i32 1, i32* @cungl2_.l, align 4
  br label %329

329:                                              ; preds = %349, %294
  %330 = load i32, i32* @cungl2_.l, align 4
  %331 = load i32, i32* %20, align 4
  %332 = icmp sle i32 %330, %331
  br i1 %332, label %333, label %352

333:                                              ; preds = %329
  %334 = load i32, i32* @cungl2_.i__, align 4
  %335 = load i32, i32* @cungl2_.l, align 4
  %336 = load i32, i32* %18, align 4
  %337 = mul nsw i32 %335, %336
  %338 = add nsw i32 %334, %337
  store i32 %338, i32* %21, align 4
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %340 = load i32, i32* %21, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 0
  store float 0.000000e+00, float* %343, align 4
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %345 = load i32, i32* %21, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 1
  store float 0.000000e+00, float* %348, align 4
  br label %349

349:                                              ; preds = %333
  %350 = load i32, i32* @cungl2_.l, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* @cungl2_.l, align 4
  br label %329

352:                                              ; preds = %329
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* @cungl2_.i__, align 4
  %355 = add nsw i32 %354, -1
  store i32 %355, i32* @cungl2_.i__, align 4
  br label %166

356:                                              ; preds = %166
  store i32 0, i32* %9, align 4
  br label %357

357:                                              ; preds = %356, %89, %80
  %358 = load i32, i32* %9, align 4
  ret i32 %358
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @xerbla_(i8*, i32*) #1

declare dso_local i32 @clacgv_(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @r_cnjg(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @clarf_(i8*, i32*, i32*, %struct.TYPE_12__*, i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @cscal_(i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
