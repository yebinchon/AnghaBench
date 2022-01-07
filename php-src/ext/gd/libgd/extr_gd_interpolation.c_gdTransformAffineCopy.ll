; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdTransformAffineCopy.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdTransformAffineCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32**, i64 }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32 }

@GD_DEFAULT = common dso_local global i64 0, align 8
@GD_BILINEAR_FIXED = common dso_local global i64 0, align 8
@GD_BICUBIC_FIXED = common dso_local global i64 0, align 8
@GD_NEAREST_NEIGHBOUR = common dso_local global i64 0, align 8
@GD_BICUBIC = common dso_local global i64 0, align 8
@GD_FALSE = common dso_local global i32 0, align 4
@GD_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gdTransformAffineCopy(%struct.TYPE_24__* %0, i32 %1, i32 %2, %struct.TYPE_24__* %3, %struct.TYPE_21__* %4, double* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca [6 x double], align 16
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_23__, align 4
  %30 = alloca %struct.TYPE_23__, align 4
  %31 = alloca %struct.TYPE_22__, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %12, align 8
  store double* %5, double** %13, align 8
  store i32 0, i32* %18, align 4
  %35 = load i64, i64* @GD_DEFAULT, align 8
  store i64 %35, i64* %34, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GD_BILINEAR_FIXED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %6
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @GD_BICUBIC_FIXED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @GD_NEAREST_NEIGHBOUR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47, %41, %6
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %34, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %58 = load i64, i64* @GD_BICUBIC, align 8
  %59 = call i32 @gdImageSetInterpolationMethod(%struct.TYPE_24__* %57, i64 %58)
  br label %60

60:                                               ; preds = %53, %47
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %63 = call i32 @gdImageClipRectangle(%struct.TYPE_24__* %61, %struct.TYPE_21__* %62)
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %60
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %78 = call i32 @gdImageSX(%struct.TYPE_24__* %77)
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %85 = call i32 @gdImageSY(%struct.TYPE_24__* %84)
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %114

87:                                               ; preds = %80, %73, %68, %60
  store i32 1, i32* %18, align 4
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %89 = call i32 @gdImageGetClip(%struct.TYPE_24__* %88, i32* %19, i32* %20, i32* %21, i32* %22)
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = sub nsw i32 %103, 1
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %107, %110
  %112 = sub nsw i32 %111, 1
  %113 = call i32 @gdImageSetClip(%struct.TYPE_24__* %90, i32 %93, i32 %96, i32 %104, i32 %112)
  br label %114

114:                                              ; preds = %87, %80
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %116 = load double*, double** %13, align 8
  %117 = call i32 @gdTransformAffineBoundingBox(%struct.TYPE_21__* %115, double* %116, %struct.TYPE_22__* %31)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %134, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %18, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %20, align 4
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %22, align 4
  %128 = call i32 @gdImageSetClip(%struct.TYPE_24__* %123, i32 %124, i32 %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %122, %119
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %131 = load i64, i64* %34, align 8
  %132 = call i32 @gdImageSetInterpolationMethod(%struct.TYPE_24__* %130, i64 %131)
  %133 = load i32, i32* @GD_FALSE, align 4
  store i32 %133, i32* %7, align 4
  br label %319

134:                                              ; preds = %114
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %136 = call i32 @gdImageGetClip(%struct.TYPE_24__* %135, i32* %14, i32* %15, i32* %16, i32* %17)
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @abs(i32 %140) #3
  %142 = add nsw i32 %138, %141
  store i32 %142, i32* %32, align 4
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @abs(i32 %146) #3
  %148 = add nsw i32 %144, %147
  store i32 %148, i32* %33, align 4
  %149 = getelementptr inbounds [6 x double], [6 x double]* %27, i64 0, i64 0
  %150 = load double*, double** %13, align 8
  %151 = call i32 @gdAffineInvert(double* %149, double* %150)
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %25, align 4
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %26, align 4
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %213

162:                                              ; preds = %134
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %24, align 4
  br label %165

165:                                              ; preds = %209, %162
  %166 = load i32, i32* %24, align 4
  %167 = load i32, i32* %33, align 4
  %168 = icmp sle i32 %166, %167
  br i1 %168, label %169, label %212

169:                                              ; preds = %165
  %170 = load i32, i32* %24, align 4
  %171 = sitofp i32 %170 to double
  %172 = fadd double %171, 5.000000e-01
  %173 = fptosi double %172 to i32
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  store i32 %173, i32* %174, align 4
  store i32 0, i32* %23, align 4
  br label %175

175:                                              ; preds = %205, %169
  %176 = load i32, i32* %23, align 4
  %177 = load i32, i32* %32, align 4
  %178 = icmp sle i32 %176, %177
  br i1 %178, label %179, label %208

179:                                              ; preds = %175
  %180 = load i32, i32* %23, align 4
  %181 = sitofp i32 %180 to double
  %182 = fadd double %181, 5.000000e-01
  %183 = fptosi double %182 to i32
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  store i32 %183, i32* %184, align 4
  %185 = getelementptr inbounds [6 x double], [6 x double]* %27, i64 0, i64 0
  %186 = call i32 @gdAffineApplyToPointF(%struct.TYPE_23__* %30, %struct.TYPE_23__* %29, double* %185)
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %23, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %24, align 4
  %193 = add nsw i32 %191, %192
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %195 = load i32, i32* %25, align 4
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %195, %197
  %199 = load i32, i32* %26, align 4
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %199, %201
  %203 = call i32 @getPixelInterpolated(%struct.TYPE_24__* %194, i32 %198, i32 %202, i32 0)
  %204 = call i32 @gdImageSetPixel(%struct.TYPE_24__* %187, i32 %190, i32 %193, i32 %203)
  br label %205

205:                                              ; preds = %179
  %206 = load i32, i32* %23, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %23, align 4
  br label %175

208:                                              ; preds = %175
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %24, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %24, align 4
  br label %165

212:                                              ; preds = %165
  br label %304

213:                                              ; preds = %134
  store i32 0, i32* %24, align 4
  br label %214

214:                                              ; preds = %300, %213
  %215 = load i32, i32* %24, align 4
  %216 = load i32, i32* %33, align 4
  %217 = icmp sle i32 %215, %216
  br i1 %217, label %218, label %303

218:                                              ; preds = %214
  %219 = load i32, i32* %24, align 4
  %220 = sitofp i32 %219 to double
  %221 = fadd double %220, 5.000000e-01
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = sitofp i32 %223 to double
  %225 = fadd double %221, %224
  %226 = fptosi double %225 to i32
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 0
  store i32 %226, i32* %227, align 4
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* %24, align 4
  %230 = add nsw i32 %228, %229
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %240, label %232

232:                                              ; preds = %218
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* %24, align 4
  %235 = add nsw i32 %233, %234
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %237 = call i32 @gdImageSY(%struct.TYPE_24__* %236)
  %238 = sub nsw i32 %237, 1
  %239 = icmp sgt i32 %235, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %232, %218
  br label %300

241:                                              ; preds = %232
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i32 0, i32 1
  %244 = load i32**, i32*** %243, align 8
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %24, align 4
  %247 = add nsw i32 %245, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32*, i32** %244, i64 %248
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  store i32* %253, i32** %28, align 8
  store i32 0, i32* %23, align 4
  br label %254

254:                                              ; preds = %296, %241
  %255 = load i32, i32* %23, align 4
  %256 = load i32, i32* %32, align 4
  %257 = icmp sle i32 %255, %256
  br i1 %257, label %258, label %299

258:                                              ; preds = %254
  %259 = load i32, i32* %23, align 4
  %260 = sitofp i32 %259 to double
  %261 = fadd double %260, 5.000000e-01
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = sitofp i32 %263 to double
  %265 = fadd double %261, %264
  %266 = fptosi double %265 to i32
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  store i32 %266, i32* %267, align 4
  %268 = getelementptr inbounds [6 x double], [6 x double]* %27, i64 0, i64 0
  %269 = call i32 @gdAffineApplyToPointF(%struct.TYPE_23__* %30, %struct.TYPE_23__* %29, double* %268)
  %270 = load i32, i32* %9, align 4
  %271 = load i32, i32* %23, align 4
  %272 = add nsw i32 %270, %271
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %282, label %274

274:                                              ; preds = %258
  %275 = load i32, i32* %9, align 4
  %276 = load i32, i32* %23, align 4
  %277 = add nsw i32 %275, %276
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %279 = call i32 @gdImageSX(%struct.TYPE_24__* %278)
  %280 = sub nsw i32 %279, 1
  %281 = icmp sgt i32 %277, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %274, %258
  br label %299

283:                                              ; preds = %274
  %284 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %285 = load i32, i32* %25, align 4
  %286 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = add nsw i32 %285, %287
  %289 = load i32, i32* %26, align 4
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %289, %291
  %293 = call i32 @getPixelInterpolated(%struct.TYPE_24__* %284, i32 %288, i32 %292, i32 -1)
  %294 = load i32*, i32** %28, align 8
  %295 = getelementptr inbounds i32, i32* %294, i32 1
  store i32* %295, i32** %28, align 8
  store i32 %293, i32* %294, align 4
  br label %296

296:                                              ; preds = %283
  %297 = load i32, i32* %23, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %23, align 4
  br label %254

299:                                              ; preds = %282, %254
  br label %300

300:                                              ; preds = %299, %240
  %301 = load i32, i32* %24, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %24, align 4
  br label %214

303:                                              ; preds = %214
  br label %304

304:                                              ; preds = %303, %212
  %305 = load i32, i32* %18, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %314

307:                                              ; preds = %304
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %309 = load i32, i32* %19, align 4
  %310 = load i32, i32* %20, align 4
  %311 = load i32, i32* %21, align 4
  %312 = load i32, i32* %22, align 4
  %313 = call i32 @gdImageSetClip(%struct.TYPE_24__* %308, i32 %309, i32 %310, i32 %311, i32 %312)
  br label %314

314:                                              ; preds = %307, %304
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %316 = load i64, i64* %34, align 8
  %317 = call i32 @gdImageSetInterpolationMethod(%struct.TYPE_24__* %315, i64 %316)
  %318 = load i32, i32* @GD_TRUE, align 4
  store i32 %318, i32* %7, align 4
  br label %319

319:                                              ; preds = %314, %129
  %320 = load i32, i32* %7, align 4
  ret i32 %320
}

declare dso_local i32 @gdImageSetInterpolationMethod(%struct.TYPE_24__*, i64) #1

declare dso_local i32 @gdImageClipRectangle(%struct.TYPE_24__*, %struct.TYPE_21__*) #1

declare dso_local i32 @gdImageSX(%struct.TYPE_24__*) #1

declare dso_local i32 @gdImageSY(%struct.TYPE_24__*) #1

declare dso_local i32 @gdImageGetClip(%struct.TYPE_24__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @gdImageSetClip(%struct.TYPE_24__*, i32, i32, i32, i32) #1

declare dso_local i32 @gdTransformAffineBoundingBox(%struct.TYPE_21__*, double*, %struct.TYPE_22__*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @gdAffineInvert(double*, double*) #1

declare dso_local i32 @gdAffineApplyToPointF(%struct.TYPE_23__*, %struct.TYPE_23__*, double*) #1

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_24__*, i32, i32, i32) #1

declare dso_local i32 @getPixelInterpolated(%struct.TYPE_24__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
