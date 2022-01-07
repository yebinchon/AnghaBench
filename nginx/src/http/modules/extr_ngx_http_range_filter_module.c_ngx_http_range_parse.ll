; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_range_filter_module.c_ngx_http_range_parse.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_range_filter_module.c_ngx_http_range_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, i32, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i8 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_22__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_21__ = type { i8, i8 }

@ngx_http_range_body_filter_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_MAX_OFF_T_VALUE = common dso_local global i32 0, align 4
@NGX_HTTP_RANGE_NOT_SATISFIABLE = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_22__*, i32)* @ngx_http_range_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_range_parse(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %22 = icmp ne %struct.TYPE_20__* %18, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %3
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %27 = load i32, i32* @ngx_http_range_body_filter_module, align 4
  %28 = call %struct.TYPE_22__* @ngx_http_get_module_ctx(%struct.TYPE_20__* %26, i32 %27)
  store %struct.TYPE_22__* %28, %struct.TYPE_22__** %17, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %30 = icmp ne %struct.TYPE_22__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = bitcast %struct.TYPE_15__* %33 to i8*
  %37 = bitcast %struct.TYPE_15__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 8, i1 false)
  %38 = load i64, i64* @NGX_OK, align 8
  store i64 %38, i64* %4, align 8
  br label %380

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @ngx_array_init(%struct.TYPE_15__* %42, i32 %45, i32 1, i32 2)
  %47 = load i64, i64* @NGX_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i64, i64* @NGX_ERROR, align 8
  store i64 %50, i64* %4, align 8
  br label %380

51:                                               ; preds = %40
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 6
  store i8* %59, i8** %8, align 8
  store i8 0, i8* %11, align 1
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 8
  store i8 %63, i8* %12, align 1
  %64 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %65 = sdiv i32 %64, 10
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %13, align 1
  %67 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %68 = srem i32 %67, 10
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %14, align 1
  br label %70

70:                                               ; preds = %361, %51
  store i8 0, i8* %9, align 1
  store i8 0, i8* %10, align 1
  store i32 0, i32* %15, align 4
  br label %71

71:                                               ; preds = %76, %70
  %72 = load i8*, i8** %8, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 32
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %8, align 8
  br label %71

79:                                               ; preds = %71
  %80 = load i8*, i8** %8, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 45
  br i1 %83, label %84, label %181

84:                                               ; preds = %79
  %85 = load i8*, i8** %8, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp slt i32 %87, 48
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %8, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp sgt i32 %92, 57
  br i1 %93, label %94, label %96

94:                                               ; preds = %89, %84
  %95 = load i64, i64* @NGX_HTTP_RANGE_NOT_SATISFIABLE, align 8
  store i64 %95, i64* %4, align 8
  br label %380

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %131, %96
  %98 = load i8*, i8** %8, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sge i32 %100, 48
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load i8*, i8** %8, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sle i32 %105, 57
  br label %107

107:                                              ; preds = %102, %97
  %108 = phi i1 [ false, %97 ], [ %106, %102 ]
  br i1 %108, label %109, label %142

109:                                              ; preds = %107
  %110 = load i8, i8* %9, align 1
  %111 = sext i8 %110 to i32
  %112 = load i8, i8* %13, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp sge i32 %111, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %109
  %116 = load i8, i8* %9, align 1
  %117 = sext i8 %116 to i32
  %118 = load i8, i8* %13, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp sgt i32 %117, %119
  br i1 %120, label %129, label %121

121:                                              ; preds = %115
  %122 = load i8*, i8** %8, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = sub nsw i32 %124, 48
  %126 = load i8, i8* %14, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sgt i32 %125, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %121, %115
  %130 = load i64, i64* @NGX_HTTP_RANGE_NOT_SATISFIABLE, align 8
  store i64 %130, i64* %4, align 8
  br label %380

131:                                              ; preds = %121, %109
  %132 = load i8, i8* %9, align 1
  %133 = sext i8 %132 to i32
  %134 = mul nsw i32 %133, 10
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %8, align 8
  %137 = load i8, i8* %135, align 1
  %138 = sext i8 %137 to i32
  %139 = sub nsw i32 %138, 48
  %140 = add nsw i32 %134, %139
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %9, align 1
  br label %97

142:                                              ; preds = %107
  br label %143

143:                                              ; preds = %148, %142
  %144 = load i8*, i8** %8, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 32
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %8, align 8
  br label %143

151:                                              ; preds = %143
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %8, align 8
  %154 = load i8, i8* %152, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 45
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i64, i64* @NGX_HTTP_RANGE_NOT_SATISFIABLE, align 8
  store i64 %158, i64* %4, align 8
  br label %380

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %165, %159
  %161 = load i8*, i8** %8, align 8
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 32
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %8, align 8
  br label %160

168:                                              ; preds = %160
  %169 = load i8*, i8** %8, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 44
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load i8*, i8** %8, align 8
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %173, %168
  %179 = load i8, i8* %12, align 1
  store i8 %179, i8* %10, align 1
  br label %298

180:                                              ; preds = %173
  br label %184

181:                                              ; preds = %79
  store i32 1, i32* %15, align 4
  %182 = load i8*, i8** %8, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %8, align 8
  br label %184

184:                                              ; preds = %181, %180
  %185 = load i8*, i8** %8, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp slt i32 %187, 48
  br i1 %188, label %194, label %189

189:                                              ; preds = %184
  %190 = load i8*, i8** %8, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp sgt i32 %192, 57
  br i1 %193, label %194, label %196

194:                                              ; preds = %189, %184
  %195 = load i64, i64* @NGX_HTTP_RANGE_NOT_SATISFIABLE, align 8
  store i64 %195, i64* %4, align 8
  br label %380

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %231, %196
  %198 = load i8*, i8** %8, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp sge i32 %200, 48
  br i1 %201, label %202, label %207

202:                                              ; preds = %197
  %203 = load i8*, i8** %8, align 8
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp sle i32 %205, 57
  br label %207

207:                                              ; preds = %202, %197
  %208 = phi i1 [ false, %197 ], [ %206, %202 ]
  br i1 %208, label %209, label %242

209:                                              ; preds = %207
  %210 = load i8, i8* %10, align 1
  %211 = sext i8 %210 to i32
  %212 = load i8, i8* %13, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp sge i32 %211, %213
  br i1 %214, label %215, label %231

215:                                              ; preds = %209
  %216 = load i8, i8* %10, align 1
  %217 = sext i8 %216 to i32
  %218 = load i8, i8* %13, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp sgt i32 %217, %219
  br i1 %220, label %229, label %221

221:                                              ; preds = %215
  %222 = load i8*, i8** %8, align 8
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = sub nsw i32 %224, 48
  %226 = load i8, i8* %14, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp sgt i32 %225, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %221, %215
  %230 = load i64, i64* @NGX_HTTP_RANGE_NOT_SATISFIABLE, align 8
  store i64 %230, i64* %4, align 8
  br label %380

231:                                              ; preds = %221, %209
  %232 = load i8, i8* %10, align 1
  %233 = sext i8 %232 to i32
  %234 = mul nsw i32 %233, 10
  %235 = load i8*, i8** %8, align 8
  %236 = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %236, i8** %8, align 8
  %237 = load i8, i8* %235, align 1
  %238 = sext i8 %237 to i32
  %239 = sub nsw i32 %238, 48
  %240 = add nsw i32 %234, %239
  %241 = trunc i32 %240 to i8
  store i8 %241, i8* %10, align 1
  br label %197

242:                                              ; preds = %207
  br label %243

243:                                              ; preds = %248, %242
  %244 = load i8*, i8** %8, align 8
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 32
  br i1 %247, label %248, label %251

248:                                              ; preds = %243
  %249 = load i8*, i8** %8, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %8, align 8
  br label %243

251:                                              ; preds = %243
  %252 = load i8*, i8** %8, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp ne i32 %254, 44
  br i1 %255, label %256, label %263

256:                                              ; preds = %251
  %257 = load i8*, i8** %8, align 8
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = load i64, i64* @NGX_HTTP_RANGE_NOT_SATISFIABLE, align 8
  store i64 %262, i64* %4, align 8
  br label %380

263:                                              ; preds = %256, %251
  %264 = load i32, i32* %15, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %286

266:                                              ; preds = %263
  %267 = load i8, i8* %10, align 1
  %268 = sext i8 %267 to i32
  %269 = load i8, i8* %12, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp slt i32 %268, %270
  br i1 %271, label %272, label %278

272:                                              ; preds = %266
  %273 = load i8, i8* %12, align 1
  %274 = sext i8 %273 to i32
  %275 = load i8, i8* %10, align 1
  %276 = sext i8 %275 to i32
  %277 = sub nsw i32 %274, %276
  br label %279

278:                                              ; preds = %266
  br label %279

279:                                              ; preds = %278, %272
  %280 = phi i32 [ %277, %272 ], [ 0, %278 ]
  %281 = trunc i32 %280 to i8
  store i8 %281, i8* %9, align 1
  %282 = load i8, i8* %12, align 1
  %283 = sext i8 %282 to i32
  %284 = sub nsw i32 %283, 1
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %10, align 1
  br label %286

286:                                              ; preds = %279, %263
  %287 = load i8, i8* %10, align 1
  %288 = sext i8 %287 to i32
  %289 = load i8, i8* %12, align 1
  %290 = sext i8 %289 to i32
  %291 = icmp sge i32 %288, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %286
  %293 = load i8, i8* %12, align 1
  store i8 %293, i8* %10, align 1
  br label %297

294:                                              ; preds = %286
  %295 = load i8, i8* %10, align 1
  %296 = add i8 %295, 1
  store i8 %296, i8* %10, align 1
  br label %297

297:                                              ; preds = %294, %292
  br label %298

298:                                              ; preds = %297, %178
  %299 = load i8, i8* %9, align 1
  %300 = sext i8 %299 to i32
  %301 = load i8, i8* %10, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp slt i32 %300, %302
  br i1 %303, label %304, label %347

304:                                              ; preds = %298
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 0
  %307 = call %struct.TYPE_21__* @ngx_array_push(%struct.TYPE_15__* %306)
  store %struct.TYPE_21__* %307, %struct.TYPE_21__** %16, align 8
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %309 = icmp eq %struct.TYPE_21__* %308, null
  br i1 %309, label %310, label %312

310:                                              ; preds = %304
  %311 = load i64, i64* @NGX_ERROR, align 8
  store i64 %311, i64* %4, align 8
  br label %380

312:                                              ; preds = %304
  %313 = load i8, i8* %9, align 1
  %314 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 0
  store i8 %313, i8* %315, align 1
  %316 = load i8, i8* %10, align 1
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %317, i32 0, i32 1
  store i8 %316, i8* %318, align 1
  %319 = load i8, i8* %11, align 1
  %320 = sext i8 %319 to i32
  %321 = load i32, i32* @NGX_MAX_OFF_T_VALUE, align 4
  %322 = load i8, i8* %10, align 1
  %323 = sext i8 %322 to i32
  %324 = load i8, i8* %9, align 1
  %325 = sext i8 %324 to i32
  %326 = sub nsw i32 %323, %325
  %327 = sub nsw i32 %321, %326
  %328 = icmp sgt i32 %320, %327
  br i1 %328, label %329, label %331

329:                                              ; preds = %312
  %330 = load i64, i64* @NGX_HTTP_RANGE_NOT_SATISFIABLE, align 8
  store i64 %330, i64* %4, align 8
  br label %380

331:                                              ; preds = %312
  %332 = load i8, i8* %10, align 1
  %333 = sext i8 %332 to i32
  %334 = load i8, i8* %9, align 1
  %335 = sext i8 %334 to i32
  %336 = sub nsw i32 %333, %335
  %337 = load i8, i8* %11, align 1
  %338 = sext i8 %337 to i32
  %339 = add nsw i32 %338, %336
  %340 = trunc i32 %339 to i8
  store i8 %340, i8* %11, align 1
  %341 = load i32, i32* %7, align 4
  %342 = add nsw i32 %341, -1
  store i32 %342, i32* %7, align 4
  %343 = icmp eq i32 %341, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %331
  %345 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %345, i64* %4, align 8
  br label %380

346:                                              ; preds = %331
  br label %354

347:                                              ; preds = %298
  %348 = load i8, i8* %9, align 1
  %349 = sext i8 %348 to i32
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %347
  %352 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %352, i64* %4, align 8
  br label %380

353:                                              ; preds = %347
  br label %354

354:                                              ; preds = %353, %346
  %355 = load i8*, i8** %8, align 8
  %356 = getelementptr inbounds i8, i8* %355, i32 1
  store i8* %356, i8** %8, align 8
  %357 = load i8, i8* %355, align 1
  %358 = sext i8 %357 to i32
  %359 = icmp ne i32 %358, 44
  br i1 %359, label %360, label %361

360:                                              ; preds = %354
  br label %362

361:                                              ; preds = %354
  br label %70

362:                                              ; preds = %360
  %363 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %362
  %369 = load i64, i64* @NGX_HTTP_RANGE_NOT_SATISFIABLE, align 8
  store i64 %369, i64* %4, align 8
  br label %380

370:                                              ; preds = %362
  %371 = load i8, i8* %11, align 1
  %372 = sext i8 %371 to i32
  %373 = load i8, i8* %12, align 1
  %374 = sext i8 %373 to i32
  %375 = icmp sgt i32 %372, %374
  br i1 %375, label %376, label %378

376:                                              ; preds = %370
  %377 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %377, i64* %4, align 8
  br label %380

378:                                              ; preds = %370
  %379 = load i64, i64* @NGX_OK, align 8
  store i64 %379, i64* %4, align 8
  br label %380

380:                                              ; preds = %378, %376, %368, %351, %344, %329, %310, %261, %229, %194, %157, %129, %94, %49, %31
  %381 = load i64, i64* %4, align 8
  ret i64 %381
}

declare dso_local %struct.TYPE_22__* @ngx_http_get_module_ctx(%struct.TYPE_20__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_array_init(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_array_push(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
