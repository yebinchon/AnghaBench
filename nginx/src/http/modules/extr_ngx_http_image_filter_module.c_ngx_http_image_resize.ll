; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_resize.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_image_filter_module.c_ngx_http_image_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, i32, i32*, i32* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { i32*, i32 }
%struct.TYPE_29__ = type { i64, i64, i32, i32, i64 }

@ngx_http_image_filter_module = common dso_local global i32 0, align 4
@NGX_HTTP_IMAGE_RESIZE = common dso_local global i64 0, align 8
@NGX_HTTP_IMAGE_ROTATE = common dso_local global i64 0, align 8
@NGX_HTTP_IMAGE_CROP = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"image crop: %d x %d @ %d x %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"image: %d x %d %d\00", align 1
@ngx_http_image_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_30__* (%struct.TYPE_27__*, %struct.TYPE_28__*)* @ngx_http_image_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_30__* @ngx_http_image_resize(%struct.TYPE_27__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_30__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_26__*, align 8
  %29 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %32 = call i32* @ngx_http_image_source(%struct.TYPE_27__* %30, %struct.TYPE_28__* %31)
  store i32* %32, i32** %26, align 8
  %33 = load i32*, i32** %26, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %590

36:                                               ; preds = %2
  %37 = load i32*, i32** %26, align 8
  %38 = call i32 @gdImageSX(i32* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32*, i32** %26, align 8
  %40 = call i32 @gdImageSY(i32* %39)
  store i32 %40, i32* %7, align 4
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %42 = load i32, i32* @ngx_http_image_filter_module, align 4
  %43 = call %struct.TYPE_29__* @ngx_http_get_module_loc_conf(%struct.TYPE_27__* %41, i32 %42)
  store %struct.TYPE_29__* %43, %struct.TYPE_29__** %29, align 8
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %36
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i32*, i32** %26, align 8
  %67 = call i32 @gdImageDestroy(i32* %66)
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %70 = call %struct.TYPE_30__* @ngx_http_image_asis(%struct.TYPE_27__* %68, %struct.TYPE_28__* %69)
  store %struct.TYPE_30__* %70, %struct.TYPE_30__** %3, align 8
  br label %590

71:                                               ; preds = %59, %53, %48, %36
  %72 = load i32*, i32** %26, align 8
  %73 = call i32 @gdImageColorsTotal(i32* %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %71
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load i32*, i32** %26, align 8
  %83 = call i32 @gdImageGetTransparent(i32* %82)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %16, align 4
  %88 = load i32*, i32** %26, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @gdImageRed(i32* %88, i32 %89)
  store i32 %90, i32* %19, align 4
  %91 = load i32*, i32** %26, align 8
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @gdImageGreen(i32* %91, i32 %92)
  store i32 %93, i32* %20, align 4
  %94 = load i32*, i32** %26, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call i32 @gdImageBlue(i32* %94, i32 %95)
  store i32 %96, i32* %21, align 4
  br label %99

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %76, %71
  store i32 0, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %99

99:                                               ; preds = %98, %86
  %100 = load i32*, i32** %26, align 8
  %101 = call i32 @gdImageColorTransparent(i32* %100, i32 -1)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %7, align 4
  store i32 %103, i32* %9, align 4
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @NGX_HTTP_IMAGE_RESIZE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %158

109:                                              ; preds = %99
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %110, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %109
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %116, %119
  %121 = load i32, i32* %8, align 4
  %122 = sdiv i32 %120, %121
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = load i32, i32* %9, align 4
  br label %128

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127, %125
  %129 = phi i32 [ %126, %125 ], [ 1, %127 ]
  store i32 %129, i32* %9, align 4
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %128, %109
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %134, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %133
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %140, %143
  %145 = load i32, i32* %9, align 4
  %146 = sdiv i32 %144, %145
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %139
  %150 = load i32, i32* %8, align 4
  br label %152

151:                                              ; preds = %139
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i32 [ %150, %149 ], [ 1, %151 ]
  store i32 %153, i32* %8, align 4
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %152, %133
  store i32 1, i32* %25, align 4
  br label %233

158:                                              ; preds = %99
  %159 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %160 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @NGX_HTTP_IMAGE_ROTATE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  store i32 0, i32* %25, align 4
  br label %232

165:                                              ; preds = %158
  store i32 0, i32* %25, align 4
  %166 = load i32, i32* %8, align 4
  %167 = sitofp i32 %166 to double
  %168 = load i32, i32* %9, align 4
  %169 = sitofp i32 %168 to double
  %170 = fdiv double %167, %169
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sitofp i32 %173 to double
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = sitofp i32 %177 to double
  %179 = fdiv double %174, %178
  %180 = fcmp olt double %170, %179
  br i1 %180, label %181, label %206

181:                                              ; preds = %165
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp sgt i32 %182, %185
  br i1 %186, label %187, label %205

187:                                              ; preds = %181
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %188, %191
  %193 = load i32, i32* %8, align 4
  %194 = sdiv i32 %192, %193
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %187
  %198 = load i32, i32* %9, align 4
  br label %200

199:                                              ; preds = %187
  br label %200

200:                                              ; preds = %199, %197
  %201 = phi i32 [ %198, %197 ], [ 1, %199 ]
  store i32 %201, i32* %9, align 4
  %202 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %8, align 4
  store i32 1, i32* %25, align 4
  br label %205

205:                                              ; preds = %200, %181
  br label %231

206:                                              ; preds = %165
  %207 = load i32, i32* %9, align 4
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = icmp sgt i32 %207, %210
  br i1 %211, label %212, label %230

212:                                              ; preds = %206
  %213 = load i32, i32* %8, align 4
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %213, %216
  %218 = load i32, i32* %9, align 4
  %219 = sdiv i32 %217, %218
  store i32 %219, i32* %8, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %212
  %223 = load i32, i32* %8, align 4
  br label %225

224:                                              ; preds = %212
  br label %225

225:                                              ; preds = %224, %222
  %226 = phi i32 [ %223, %222 ], [ 1, %224 ]
  store i32 %226, i32* %8, align 4
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %9, align 4
  store i32 1, i32* %25, align 4
  br label %230

230:                                              ; preds = %225, %206
  br label %231

231:                                              ; preds = %230, %205
  br label %232

232:                                              ; preds = %231, %164
  br label %233

233:                                              ; preds = %232, %157
  %234 = load i32, i32* %25, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %271

236:                                              ; preds = %233
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* %9, align 4
  %240 = load i32, i32* %16, align 4
  %241 = call i32* @ngx_http_image_new(%struct.TYPE_27__* %237, i32 %238, i32 %239, i32 %240)
  store i32* %241, i32** %27, align 8
  %242 = load i32*, i32** %27, align 8
  %243 = icmp eq i32* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %236
  %245 = load i32*, i32** %26, align 8
  %246 = call i32 @gdImageDestroy(i32* %245)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %590

247:                                              ; preds = %236
  %248 = load i32, i32* %15, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %247
  %251 = load i32*, i32** %27, align 8
  %252 = call i32 @gdImageSaveAlpha(i32* %251, i32 1)
  %253 = load i32*, i32** %27, align 8
  %254 = call i32 @gdImageAlphaBlending(i32* %253, i32 0)
  br label %255

255:                                              ; preds = %250, %247
  %256 = load i32*, i32** %27, align 8
  %257 = load i32*, i32** %26, align 8
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* %6, align 4
  %261 = load i32, i32* %7, align 4
  %262 = call i32 @gdImageCopyResampled(i32* %256, i32* %257, i32 0, i32 0, i32 0, i32 0, i32 %258, i32 %259, i32 %260, i32 %261)
  %263 = load i32, i32* %15, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %255
  %266 = load i32*, i32** %27, align 8
  %267 = call i32 @gdImageTrueColorToPalette(i32* %266, i32 1, i32 256)
  br label %268

268:                                              ; preds = %265, %255
  %269 = load i32*, i32** %26, align 8
  %270 = call i32 @gdImageDestroy(i32* %269)
  br label %273

271:                                              ; preds = %233
  %272 = load i32*, i32** %26, align 8
  store i32* %272, i32** %27, align 8
  br label %273

273:                                              ; preds = %271, %268
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %382

278:                                              ; preds = %273
  %279 = load i32*, i32** %27, align 8
  store i32* %279, i32** %26, align 8
  %280 = load i32, i32* %8, align 4
  %281 = srem i32 %280, 2
  %282 = icmp eq i32 %281, 0
  %283 = zext i1 %282 to i64
  %284 = select i1 %282, i32 1, i32 0
  store i32 %284, i32* %12, align 4
  %285 = load i32, i32* %9, align 4
  %286 = srem i32 %285, 2
  %287 = icmp eq i32 %286, 0
  %288 = zext i1 %287 to i64
  %289 = select i1 %287, i32 1, i32 0
  store i32 %289, i32* %13, align 4
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  switch i32 %292, label %381 [
    i32 90, label %293
    i32 270, label %293
    i32 180, label %347
  ]

293:                                              ; preds = %278, %278
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %295 = load i32, i32* %9, align 4
  %296 = load i32, i32* %8, align 4
  %297 = load i32, i32* %16, align 4
  %298 = call i32* @ngx_http_image_new(%struct.TYPE_27__* %294, i32 %295, i32 %296, i32 %297)
  store i32* %298, i32** %27, align 8
  %299 = load i32*, i32** %27, align 8
  %300 = icmp eq i32* %299, null
  br i1 %300, label %301, label %304

301:                                              ; preds = %293
  %302 = load i32*, i32** %26, align 8
  %303 = call i32 @gdImageDestroy(i32* %302)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %590

304:                                              ; preds = %293
  %305 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = icmp eq i32 %307, 90
  br i1 %308, label %309, label %318

309:                                              ; preds = %304
  %310 = load i32, i32* %9, align 4
  %311 = sdiv i32 %310, 2
  %312 = load i32, i32* %13, align 4
  %313 = add nsw i32 %311, %312
  store i32 %313, i32* %10, align 4
  %314 = load i32, i32* %8, align 4
  %315 = sdiv i32 %314, 2
  %316 = load i32, i32* %12, align 4
  %317 = sub nsw i32 %315, %316
  store i32 %317, i32* %11, align 4
  br label %327

318:                                              ; preds = %304
  %319 = load i32, i32* %9, align 4
  %320 = sdiv i32 %319, 2
  %321 = load i32, i32* %13, align 4
  %322 = sub nsw i32 %320, %321
  store i32 %322, i32* %10, align 4
  %323 = load i32, i32* %8, align 4
  %324 = sdiv i32 %323, 2
  %325 = load i32, i32* %12, align 4
  %326 = add nsw i32 %324, %325
  store i32 %326, i32* %11, align 4
  br label %327

327:                                              ; preds = %318, %309
  %328 = load i32*, i32** %27, align 8
  %329 = load i32*, i32** %26, align 8
  %330 = load i32, i32* %10, align 4
  %331 = load i32, i32* %11, align 4
  %332 = load i32, i32* %8, align 4
  %333 = load i32, i32* %12, align 4
  %334 = add nsw i32 %332, %333
  %335 = load i32, i32* %9, align 4
  %336 = load i32, i32* %13, align 4
  %337 = add nsw i32 %335, %336
  %338 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @gdImageCopyRotated(i32* %328, i32* %329, i32 %330, i32 %331, i32 0, i32 0, i32 %334, i32 %337, i32 %340)
  %342 = load i32*, i32** %26, align 8
  %343 = call i32 @gdImageDestroy(i32* %342)
  %344 = load i32, i32* %8, align 4
  store i32 %344, i32* %22, align 4
  %345 = load i32, i32* %9, align 4
  store i32 %345, i32* %8, align 4
  %346 = load i32, i32* %22, align 4
  store i32 %346, i32* %9, align 4
  br label %381

347:                                              ; preds = %278
  %348 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %349 = load i32, i32* %8, align 4
  %350 = load i32, i32* %9, align 4
  %351 = load i32, i32* %16, align 4
  %352 = call i32* @ngx_http_image_new(%struct.TYPE_27__* %348, i32 %349, i32 %350, i32 %351)
  store i32* %352, i32** %27, align 8
  %353 = load i32*, i32** %27, align 8
  %354 = icmp eq i32* %353, null
  br i1 %354, label %355, label %358

355:                                              ; preds = %347
  %356 = load i32*, i32** %26, align 8
  %357 = call i32 @gdImageDestroy(i32* %356)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %590

358:                                              ; preds = %347
  %359 = load i32*, i32** %27, align 8
  %360 = load i32*, i32** %26, align 8
  %361 = load i32, i32* %8, align 4
  %362 = sdiv i32 %361, 2
  %363 = load i32, i32* %12, align 4
  %364 = sub nsw i32 %362, %363
  %365 = load i32, i32* %9, align 4
  %366 = sdiv i32 %365, 2
  %367 = load i32, i32* %13, align 4
  %368 = sub nsw i32 %366, %367
  %369 = load i32, i32* %8, align 4
  %370 = load i32, i32* %12, align 4
  %371 = add nsw i32 %369, %370
  %372 = load i32, i32* %9, align 4
  %373 = load i32, i32* %13, align 4
  %374 = add nsw i32 %372, %373
  %375 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @gdImageCopyRotated(i32* %359, i32* %360, i32 %364, i32 %368, i32 0, i32 0, i32 %371, i32 %374, i32 %377)
  %379 = load i32*, i32** %26, align 8
  %380 = call i32 @gdImageDestroy(i32* %379)
  br label %381

381:                                              ; preds = %278, %358, %327
  br label %382

382:                                              ; preds = %381, %273
  %383 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %384 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = load i64, i64* @NGX_HTTP_IMAGE_CROP, align 8
  %387 = icmp eq i64 %385, %386
  br i1 %387, label %388, label %480

388:                                              ; preds = %382
  %389 = load i32*, i32** %27, align 8
  store i32* %389, i32** %26, align 8
  %390 = load i32, i32* %8, align 4
  %391 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = icmp sgt i32 %390, %393
  br i1 %394, label %395, label %401

395:                                              ; preds = %388
  %396 = load i32, i32* %8, align 4
  %397 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = sub nsw i32 %396, %399
  store i32 %400, i32* %10, align 4
  br label %402

401:                                              ; preds = %388
  store i32 0, i32* %10, align 4
  br label %402

402:                                              ; preds = %401, %395
  %403 = load i32, i32* %9, align 4
  %404 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = icmp sgt i32 %403, %406
  br i1 %407, label %408, label %414

408:                                              ; preds = %402
  %409 = load i32, i32* %9, align 4
  %410 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 4
  %413 = sub nsw i32 %409, %412
  store i32 %413, i32* %11, align 4
  br label %415

414:                                              ; preds = %402
  store i32 0, i32* %11, align 4
  br label %415

415:                                              ; preds = %414, %408
  %416 = load i32, i32* %10, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %421, label %418

418:                                              ; preds = %415
  %419 = load i32, i32* %11, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %479

421:                                              ; preds = %418, %415
  %422 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %423 = load i32, i32* %8, align 4
  %424 = load i32, i32* %10, align 4
  %425 = sub nsw i32 %423, %424
  %426 = load i32, i32* %9, align 4
  %427 = load i32, i32* %11, align 4
  %428 = sub nsw i32 %426, %427
  %429 = load i32, i32* %15, align 4
  %430 = call i32* @ngx_http_image_new(%struct.TYPE_27__* %422, i32 %425, i32 %428, i32 %429)
  store i32* %430, i32** %27, align 8
  %431 = load i32*, i32** %27, align 8
  %432 = icmp eq i32* %431, null
  br i1 %432, label %433, label %436

433:                                              ; preds = %421
  %434 = load i32*, i32** %26, align 8
  %435 = call i32 @gdImageDestroy(i32* %434)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %590

436:                                              ; preds = %421
  %437 = load i32, i32* %10, align 4
  %438 = sdiv i32 %437, 2
  store i32 %438, i32* %10, align 4
  %439 = load i32, i32* %11, align 4
  %440 = sdiv i32 %439, 2
  store i32 %440, i32* %11, align 4
  %441 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %442 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %442, i32 0, i32 1
  %444 = load %struct.TYPE_25__*, %struct.TYPE_25__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* %8, align 4
  %448 = load i32, i32* %9, align 4
  %449 = load i32, i32* %10, align 4
  %450 = load i32, i32* %11, align 4
  %451 = call i32 @ngx_log_debug4(i32 %441, i32 %446, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %447, i32 %448, i32 %449, i32 %450)
  %452 = load i32, i32* %15, align 4
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %459

454:                                              ; preds = %436
  %455 = load i32*, i32** %27, align 8
  %456 = call i32 @gdImageSaveAlpha(i32* %455, i32 1)
  %457 = load i32*, i32** %27, align 8
  %458 = call i32 @gdImageAlphaBlending(i32* %457, i32 0)
  br label %459

459:                                              ; preds = %454, %436
  %460 = load i32*, i32** %27, align 8
  %461 = load i32*, i32** %26, align 8
  %462 = load i32, i32* %10, align 4
  %463 = load i32, i32* %11, align 4
  %464 = load i32, i32* %8, align 4
  %465 = load i32, i32* %10, align 4
  %466 = sub nsw i32 %464, %465
  %467 = load i32, i32* %9, align 4
  %468 = load i32, i32* %11, align 4
  %469 = sub nsw i32 %467, %468
  %470 = call i32 @gdImageCopy(i32* %460, i32* %461, i32 0, i32 0, i32 %462, i32 %463, i32 %466, i32 %469)
  %471 = load i32, i32* %15, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %476

473:                                              ; preds = %459
  %474 = load i32*, i32** %27, align 8
  %475 = call i32 @gdImageTrueColorToPalette(i32* %474, i32 1, i32 256)
  br label %476

476:                                              ; preds = %473, %459
  %477 = load i32*, i32** %26, align 8
  %478 = call i32 @gdImageDestroy(i32* %477)
  br label %479

479:                                              ; preds = %476, %418
  br label %480

480:                                              ; preds = %479, %382
  %481 = load i32, i32* %17, align 4
  %482 = icmp ne i32 %481, -1
  br i1 %482, label %483, label %494

483:                                              ; preds = %480
  %484 = load i32, i32* %15, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %494

486:                                              ; preds = %483
  %487 = load i32*, i32** %27, align 8
  %488 = load i32*, i32** %27, align 8
  %489 = load i32, i32* %19, align 4
  %490 = load i32, i32* %20, align 4
  %491 = load i32, i32* %21, align 4
  %492 = call i32 @gdImageColorExact(i32* %488, i32 %489, i32 %490, i32 %491)
  %493 = call i32 @gdImageColorTransparent(i32* %487, i32 %492)
  br label %494

494:                                              ; preds = %486, %483, %480
  %495 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %496 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %497 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %496, i32 0, i32 3
  %498 = load i32, i32* %497, align 4
  %499 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %500 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %499, i32 0, i32 2
  %501 = load i32, i32* %500, align 8
  %502 = call i32 @ngx_http_image_filter_get_value(%struct.TYPE_27__* %495, i32 %498, i32 %501)
  store i32 %502, i32* %18, align 4
  %503 = load i32, i32* %18, align 4
  %504 = icmp sgt i32 %503, 0
  br i1 %504, label %505, label %509

505:                                              ; preds = %494
  %506 = load i32*, i32** %27, align 8
  %507 = load i32, i32* %18, align 4
  %508 = call i32 @gdImageSharpen(i32* %506, i32 %507)
  br label %509

509:                                              ; preds = %505, %494
  %510 = load i32*, i32** %27, align 8
  %511 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %512 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %511, i32 0, i32 1
  %513 = load i64, i64* %512, align 8
  %514 = trunc i64 %513 to i32
  %515 = call i32 @gdImageInterlace(i32* %510, i32 %514)
  %516 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %517 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %518 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %517, i32 0, i32 4
  %519 = load i32, i32* %518, align 4
  %520 = load i32*, i32** %27, align 8
  %521 = call i32* @ngx_http_image_out(%struct.TYPE_27__* %516, i32 %519, i32* %520, i32* %14)
  store i32* %521, i32** %23, align 8
  %522 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %523 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %524 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %523, i32 0, i32 1
  %525 = load %struct.TYPE_25__*, %struct.TYPE_25__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* %6, align 4
  %529 = load i32, i32* %7, align 4
  %530 = load i32, i32* %15, align 4
  %531 = call i32 @ngx_log_debug3(i32 %522, i32 %527, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %528, i32 %529, i32 %530)
  %532 = load i32*, i32** %27, align 8
  %533 = call i32 @gdImageDestroy(i32* %532)
  %534 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %535 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %538 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %537, i32 0, i32 3
  %539 = load i32, i32* %538, align 4
  %540 = call i32 @ngx_pfree(i32 %536, i32 %539)
  %541 = load i32*, i32** %23, align 8
  %542 = icmp eq i32* %541, null
  br i1 %542, label %543, label %544

543:                                              ; preds = %509
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %590

544:                                              ; preds = %509
  %545 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %546 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %545, i32 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = call %struct.TYPE_26__* @ngx_pool_cleanup_add(i32 %547, i32 0)
  store %struct.TYPE_26__* %548, %struct.TYPE_26__** %28, align 8
  %549 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %550 = icmp eq %struct.TYPE_26__* %549, null
  br i1 %550, label %551, label %554

551:                                              ; preds = %544
  %552 = load i32*, i32** %23, align 8
  %553 = call i32 @gdFree(i32* %552)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %590

554:                                              ; preds = %544
  %555 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %556 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = call %struct.TYPE_30__* @ngx_calloc_buf(i32 %557)
  store %struct.TYPE_30__* %558, %struct.TYPE_30__** %24, align 8
  %559 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %560 = icmp eq %struct.TYPE_30__* %559, null
  br i1 %560, label %561, label %564

561:                                              ; preds = %554
  %562 = load i32*, i32** %23, align 8
  %563 = call i32 @gdFree(i32* %562)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %590

564:                                              ; preds = %554
  %565 = load i32, i32* @ngx_http_image_cleanup, align 4
  %566 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %567 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %566, i32 0, i32 1
  store i32 %565, i32* %567, align 8
  %568 = load i32*, i32** %23, align 8
  %569 = load %struct.TYPE_26__*, %struct.TYPE_26__** %28, align 8
  %570 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %569, i32 0, i32 0
  store i32* %568, i32** %570, align 8
  %571 = load i32*, i32** %23, align 8
  %572 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %573 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %572, i32 0, i32 3
  store i32* %571, i32** %573, align 8
  %574 = load i32*, i32** %23, align 8
  %575 = load i32, i32* %14, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i32, i32* %574, i64 %576
  %578 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %579 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %578, i32 0, i32 2
  store i32* %577, i32** %579, align 8
  %580 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %581 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %580, i32 0, i32 0
  store i32 1, i32* %581, align 8
  %582 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %583 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %582, i32 0, i32 1
  store i32 1, i32* %583, align 4
  %584 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %585 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %586 = call i32 @ngx_http_image_length(%struct.TYPE_27__* %584, %struct.TYPE_30__* %585)
  %587 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %588 = call i32 @ngx_http_weak_etag(%struct.TYPE_27__* %587)
  %589 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  store %struct.TYPE_30__* %589, %struct.TYPE_30__** %3, align 8
  br label %590

590:                                              ; preds = %564, %561, %551, %543, %433, %355, %301, %244, %65, %35
  %591 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  ret %struct.TYPE_30__* %591
}

declare dso_local i32* @ngx_http_image_source(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i32 @gdImageSX(i32*) #1

declare dso_local i32 @gdImageSY(i32*) #1

declare dso_local %struct.TYPE_29__* @ngx_http_get_module_loc_conf(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @gdImageDestroy(i32*) #1

declare dso_local %struct.TYPE_30__* @ngx_http_image_asis(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i32 @gdImageColorsTotal(i32*) #1

declare dso_local i32 @gdImageGetTransparent(i32*) #1

declare dso_local i32 @gdImageRed(i32*, i32) #1

declare dso_local i32 @gdImageGreen(i32*, i32) #1

declare dso_local i32 @gdImageBlue(i32*, i32) #1

declare dso_local i32 @gdImageColorTransparent(i32*, i32) #1

declare dso_local i32* @ngx_http_image_new(%struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @gdImageSaveAlpha(i32*, i32) #1

declare dso_local i32 @gdImageAlphaBlending(i32*, i32) #1

declare dso_local i32 @gdImageCopyResampled(i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageTrueColorToPalette(i32*, i32, i32) #1

declare dso_local i32 @gdImageCopyRotated(i32*, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageCopy(i32*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageColorExact(i32*, i32, i32, i32) #1

declare dso_local i32 @ngx_http_image_filter_get_value(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i32 @gdImageSharpen(i32*, i32) #1

declare dso_local i32 @gdImageInterlace(i32*, i32) #1

declare dso_local i32* @ngx_http_image_out(%struct.TYPE_27__*, i32, i32*, i32*) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ngx_pfree(i32, i32) #1

declare dso_local %struct.TYPE_26__* @ngx_pool_cleanup_add(i32, i32) #1

declare dso_local i32 @gdFree(i32*) #1

declare dso_local %struct.TYPE_30__* @ngx_calloc_buf(i32) #1

declare dso_local i32 @ngx_http_image_length(%struct.TYPE_27__*, %struct.TYPE_30__*) #1

declare dso_local i32 @ngx_http_weak_etag(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
