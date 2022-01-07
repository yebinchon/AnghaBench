; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_slab.c_ngx_slab_free_locked.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_slab.c_ngx_slab_free_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_15__*, i32*, i32* }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_15__* }

@NGX_LOG_DEBUG_ALLOC = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"slab free: %p\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ngx_slab_free(): outside of pool\00", align 1
@ngx_pagesize_shift = common dso_local global i32 0, align 4
@NGX_SLAB_SHIFT_MASK = common dso_local global i64 0, align 8
@ngx_pagesize = common dso_local global i64 0, align 8
@ngx_slab_exact_shift = common dso_local global i64 0, align 8
@ngx_slab_exact_size = common dso_local global i64 0, align 8
@NGX_SLAB_BUSY = common dso_local global i64 0, align 8
@NGX_SLAB_MAP_SHIFT = common dso_local global i32 0, align 4
@NGX_SLAB_MAP_MASK = common dso_local global i32 0, align 4
@NGX_SLAB_PAGE_START = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"ngx_slab_free(): page is already free\00", align 1
@NGX_SLAB_PAGE_BUSY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"ngx_slab_free(): pointer to wrong page\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"ngx_slab_free(): pointer to wrong chunk\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"ngx_slab_free(): chunk is already free\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_slab_free_locked(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8* %1, i8** %4, align 8
  %17 = load i32, i32* @NGX_LOG_DEBUG_ALLOC, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ngx_cycle, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @ngx_log_debug1(i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ult i32* %24, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %2
  %30 = load i8*, i8** %4, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ugt i32* %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29, %2
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = load i32, i32* @NGX_LOG_ALERT, align 4
  %39 = call i32 @ngx_slab_error(%struct.TYPE_14__* %37, i32 %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %464

40:                                               ; preds = %29
  %41 = load i8*, i8** %4, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = ptrtoint i32* %42 to i64
  %47 = ptrtoint i32* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 4
  %50 = load i32, i32* @ngx_pagesize_shift, align 4
  %51 = zext i32 %50 to i64
  %52 = ashr i64 %49, %51
  store i64 %52, i64* %10, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i64 %56
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %16, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %6, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %62 = call i64 @ngx_slab_page_type(%struct.TYPE_15__* %61)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  switch i64 %63, label %443 [
    i64 128, label %64
    i64 130, label %219
    i64 131, label %304
    i64 129, label %403
  ]

64:                                               ; preds = %40
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @NGX_SLAB_SHIFT_MASK, align 8
  %67 = and i64 %65, %66
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %13, align 8
  %69 = shl i64 1, %68
  store i64 %69, i64* %5, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load i64, i64* %5, align 8
  %73 = sub i64 %72, 1
  %74 = and i64 %71, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %456

77:                                               ; preds = %64
  %78 = load i8*, i8** %4, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = load i64, i64* @ngx_pagesize, align 8
  %81 = sub i64 %80, 1
  %82 = and i64 %79, %81
  %83 = load i64, i64* %13, align 8
  %84 = lshr i64 %82, %83
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* %10, align 8
  %86 = urem i64 %85, 64
  %87 = shl i64 1, %86
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %10, align 8
  %89 = udiv i64 %88, 64
  store i64 %89, i64* %10, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = ptrtoint i8* %90 to i64
  %92 = load i64, i64* @ngx_pagesize, align 8
  %93 = sub i64 %92, 1
  %94 = xor i64 %93, -1
  %95 = and i64 %91, %94
  %96 = inttoptr i64 %95 to i64*
  store i64* %96, i64** %8, align 8
  %97 = load i64*, i64** %8, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %7, align 8
  %102 = and i64 %100, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %218

104:                                              ; preds = %77
  %105 = load i64, i64* %13, align 8
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub i64 %105, %108
  store i64 %109, i64* %12, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = icmp eq %struct.TYPE_15__* %112, null
  br i1 %113, label %114, label %143

114:                                              ; preds = %104
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = call %struct.TYPE_15__* @ngx_slab_slots(%struct.TYPE_14__* %115)
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %15, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %118 = load i64, i64* %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  store %struct.TYPE_15__* %121, %struct.TYPE_15__** %123, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %126 = load i64, i64* %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  store %struct.TYPE_15__* %124, %struct.TYPE_15__** %128, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %130 = load i64, i64* %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i64 %130
  %132 = ptrtoint %struct.TYPE_15__* %131 to i64
  %133 = or i64 %132, 128
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %137 = ptrtoint %struct.TYPE_15__* %136 to i64
  %138 = or i64 %137, 128
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  store i64 %138, i64* %142, align 8
  br label %143

143:                                              ; preds = %114, %104
  %144 = load i64, i64* %7, align 8
  %145 = xor i64 %144, -1
  %146 = load i64*, i64** %8, align 8
  %147 = load i64, i64* %10, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = and i64 %149, %145
  store i64 %150, i64* %148, align 8
  %151 = load i64, i64* @ngx_pagesize, align 8
  %152 = load i64, i64* %13, align 8
  %153 = lshr i64 %151, %152
  %154 = load i64, i64* %13, align 8
  %155 = trunc i64 %154 to i32
  %156 = shl i32 1, %155
  %157 = mul nsw i32 %156, 8
  %158 = sext i32 %157 to i64
  %159 = udiv i64 %153, %158
  store i64 %159, i64* %10, align 8
  %160 = load i64, i64* %10, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %143
  store i64 1, i64* %10, align 8
  br label %163

163:                                              ; preds = %162, %143
  %164 = load i64, i64* %10, align 8
  %165 = udiv i64 %164, 64
  store i64 %165, i64* %9, align 8
  %166 = load i64, i64* %10, align 8
  %167 = urem i64 %166, 64
  %168 = shl i64 1, %167
  %169 = sub i64 %168, 1
  store i64 %169, i64* %7, align 8
  %170 = load i64*, i64** %8, align 8
  %171 = load i64, i64* %9, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %7, align 8
  %175 = xor i64 %174, -1
  %176 = and i64 %173, %175
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %163
  br label %444

179:                                              ; preds = %163
  %180 = load i64, i64* @ngx_pagesize, align 8
  %181 = load i64, i64* %13, align 8
  %182 = lshr i64 %180, %181
  %183 = udiv i64 %182, 64
  store i64 %183, i64* %14, align 8
  %184 = load i64, i64* %9, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %9, align 8
  br label %186

186:                                              ; preds = %198, %179
  %187 = load i64, i64* %9, align 8
  %188 = load i64, i64* %14, align 8
  %189 = icmp ult i64 %187, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %186
  %191 = load i64*, i64** %8, align 8
  %192 = load i64, i64* %9, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  br label %444

197:                                              ; preds = %190
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %9, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %9, align 8
  br label %186

201:                                              ; preds = %186
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %204 = call i32 @ngx_slab_free_pages(%struct.TYPE_14__* %202, %struct.TYPE_15__* %203, i64 1)
  %205 = load i64, i64* @ngx_pagesize, align 8
  %206 = load i64, i64* %13, align 8
  %207 = lshr i64 %205, %206
  %208 = load i64, i64* %10, align 8
  %209 = sub i64 %207, %208
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %211, align 8
  %213 = load i64, i64* %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = sub i64 %216, %209
  store i64 %217, i64* %215, align 8
  br label %444

218:                                              ; preds = %77
  br label %460

219:                                              ; preds = %40
  %220 = load i8*, i8** %4, align 8
  %221 = ptrtoint i8* %220 to i64
  %222 = load i64, i64* @ngx_pagesize, align 8
  %223 = sub i64 %222, 1
  %224 = and i64 %221, %223
  %225 = load i64, i64* @ngx_slab_exact_shift, align 8
  %226 = lshr i64 %224, %225
  %227 = shl i64 1, %226
  store i64 %227, i64* %7, align 8
  %228 = load i64, i64* @ngx_slab_exact_size, align 8
  store i64 %228, i64* %5, align 8
  %229 = load i8*, i8** %4, align 8
  %230 = ptrtoint i8* %229 to i64
  %231 = load i64, i64* %5, align 8
  %232 = sub i64 %231, 1
  %233 = and i64 %230, %232
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %219
  br label %456

236:                                              ; preds = %219
  %237 = load i64, i64* %6, align 8
  %238 = load i64, i64* %7, align 8
  %239 = and i64 %237, %238
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %303

241:                                              ; preds = %236
  %242 = load i64, i64* @ngx_slab_exact_shift, align 8
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = sub i64 %242, %245
  store i64 %246, i64* %12, align 8
  %247 = load i64, i64* %6, align 8
  %248 = load i64, i64* @NGX_SLAB_BUSY, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %279

250:                                              ; preds = %241
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %252 = call %struct.TYPE_15__* @ngx_slab_slots(%struct.TYPE_14__* %251)
  store %struct.TYPE_15__* %252, %struct.TYPE_15__** %15, align 8
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %254 = load i64, i64* %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 2
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %256, align 8
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 2
  store %struct.TYPE_15__* %257, %struct.TYPE_15__** %259, align 8
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %262 = load i64, i64* %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 2
  store %struct.TYPE_15__* %260, %struct.TYPE_15__** %264, align 8
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %266 = load i64, i64* %12, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i64 %266
  %268 = ptrtoint %struct.TYPE_15__* %267 to i64
  %269 = or i64 %268, 130
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  store i64 %269, i64* %271, align 8
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %273 = ptrtoint %struct.TYPE_15__* %272 to i64
  %274 = or i64 %273, 130
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 2
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 1
  store i64 %274, i64* %278, align 8
  br label %279

279:                                              ; preds = %250, %241
  %280 = load i64, i64* %7, align 8
  %281 = xor i64 %280, -1
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = and i64 %284, %281
  store i64 %285, i64* %283, align 8
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %279
  br label %444

291:                                              ; preds = %279
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %294 = call i32 @ngx_slab_free_pages(%struct.TYPE_14__* %292, %struct.TYPE_15__* %293, i64 1)
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %296, align 8
  %298 = load i64, i64* %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = sub i64 %301, 64
  store i64 %302, i64* %300, align 8
  br label %444

303:                                              ; preds = %236
  br label %460

304:                                              ; preds = %40
  %305 = load i64, i64* %6, align 8
  %306 = load i64, i64* @NGX_SLAB_SHIFT_MASK, align 8
  %307 = and i64 %305, %306
  store i64 %307, i64* %13, align 8
  %308 = load i64, i64* %13, align 8
  %309 = shl i64 1, %308
  store i64 %309, i64* %5, align 8
  %310 = load i8*, i8** %4, align 8
  %311 = ptrtoint i8* %310 to i64
  %312 = load i64, i64* %5, align 8
  %313 = sub i64 %312, 1
  %314 = and i64 %311, %313
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %304
  br label %456

317:                                              ; preds = %304
  %318 = load i8*, i8** %4, align 8
  %319 = ptrtoint i8* %318 to i64
  %320 = load i64, i64* @ngx_pagesize, align 8
  %321 = sub i64 %320, 1
  %322 = and i64 %319, %321
  %323 = load i64, i64* %13, align 8
  %324 = lshr i64 %322, %323
  %325 = load i32, i32* @NGX_SLAB_MAP_SHIFT, align 4
  %326 = sext i32 %325 to i64
  %327 = add i64 %324, %326
  %328 = shl i64 1, %327
  store i64 %328, i64* %7, align 8
  %329 = load i64, i64* %6, align 8
  %330 = load i64, i64* %7, align 8
  %331 = and i64 %329, %330
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %402

333:                                              ; preds = %317
  %334 = load i64, i64* %13, align 8
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = sub i64 %334, %337
  store i64 %338, i64* %12, align 8
  %339 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %340 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %339, i32 0, i32 2
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %340, align 8
  %342 = icmp eq %struct.TYPE_15__* %341, null
  br i1 %342, label %343, label %372

343:                                              ; preds = %333
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %345 = call %struct.TYPE_15__* @ngx_slab_slots(%struct.TYPE_14__* %344)
  store %struct.TYPE_15__* %345, %struct.TYPE_15__** %15, align 8
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %347 = load i64, i64* %12, align 8
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %348, i32 0, i32 2
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %349, align 8
  %351 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 2
  store %struct.TYPE_15__* %350, %struct.TYPE_15__** %352, align 8
  %353 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %355 = load i64, i64* %12, align 8
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 2
  store %struct.TYPE_15__* %353, %struct.TYPE_15__** %357, align 8
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %359 = load i64, i64* %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i64 %359
  %361 = ptrtoint %struct.TYPE_15__* %360 to i64
  %362 = or i64 %361, 131
  %363 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %364 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %363, i32 0, i32 1
  store i64 %362, i64* %364, align 8
  %365 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %366 = ptrtoint %struct.TYPE_15__* %365 to i64
  %367 = or i64 %366, 131
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 2
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 1
  store i64 %367, i64* %371, align 8
  br label %372

372:                                              ; preds = %343, %333
  %373 = load i64, i64* %7, align 8
  %374 = xor i64 %373, -1
  %375 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = and i64 %377, %374
  store i64 %378, i64* %376, align 8
  %379 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %380 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = load i32, i32* @NGX_SLAB_MAP_MASK, align 4
  %383 = sext i32 %382 to i64
  %384 = and i64 %381, %383
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %372
  br label %444

387:                                              ; preds = %372
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %389 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %390 = call i32 @ngx_slab_free_pages(%struct.TYPE_14__* %388, %struct.TYPE_15__* %389, i64 1)
  %391 = load i64, i64* @ngx_pagesize, align 8
  %392 = load i64, i64* %13, align 8
  %393 = lshr i64 %391, %392
  %394 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %395, align 8
  %397 = load i64, i64* %12, align 8
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = sub i64 %400, %393
  store i64 %401, i64* %399, align 8
  br label %444

402:                                              ; preds = %317
  br label %460

403:                                              ; preds = %40
  %404 = load i8*, i8** %4, align 8
  %405 = ptrtoint i8* %404 to i64
  %406 = load i64, i64* @ngx_pagesize, align 8
  %407 = sub i64 %406, 1
  %408 = and i64 %405, %407
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %411

410:                                              ; preds = %403
  br label %456

411:                                              ; preds = %403
  %412 = load i64, i64* %6, align 8
  %413 = load i64, i64* @NGX_SLAB_PAGE_START, align 8
  %414 = and i64 %412, %413
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %420, label %416

416:                                              ; preds = %411
  %417 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %418 = load i32, i32* @NGX_LOG_ALERT, align 4
  %419 = call i32 @ngx_slab_error(%struct.TYPE_14__* %417, i32 %418, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %464

420:                                              ; preds = %411
  %421 = load i64, i64* %6, align 8
  %422 = load i64, i64* @NGX_SLAB_PAGE_BUSY, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %424, label %428

424:                                              ; preds = %420
  %425 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %426 = load i32, i32* @NGX_LOG_ALERT, align 4
  %427 = call i32 @ngx_slab_error(%struct.TYPE_14__* %425, i32 %426, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %464

428:                                              ; preds = %420
  %429 = load i64, i64* %6, align 8
  %430 = load i64, i64* @NGX_SLAB_PAGE_START, align 8
  %431 = xor i64 %430, -1
  %432 = and i64 %429, %431
  store i64 %432, i64* %5, align 8
  %433 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %434 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %435 = load i64, i64* %5, align 8
  %436 = call i32 @ngx_slab_free_pages(%struct.TYPE_14__* %433, %struct.TYPE_15__* %434, i64 %435)
  %437 = load i8*, i8** %4, align 8
  %438 = load i64, i64* %5, align 8
  %439 = load i32, i32* @ngx_pagesize_shift, align 4
  %440 = zext i32 %439 to i64
  %441 = shl i64 %438, %440
  %442 = call i32 @ngx_slab_junk(i8* %437, i64 %441)
  br label %465

443:                                              ; preds = %40
  br label %465

444:                                              ; preds = %387, %386, %291, %290, %201, %196, %178
  %445 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %446 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %445, i32 0, i32 1
  %447 = load %struct.TYPE_13__*, %struct.TYPE_13__** %446, align 8
  %448 = load i64, i64* %12, align 8
  %449 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %447, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 8
  %452 = add nsw i32 %451, -1
  store i32 %452, i32* %450, align 8
  %453 = load i8*, i8** %4, align 8
  %454 = load i64, i64* %5, align 8
  %455 = call i32 @ngx_slab_junk(i8* %453, i64 %454)
  br label %465

456:                                              ; preds = %410, %316, %235, %76
  %457 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %458 = load i32, i32* @NGX_LOG_ALERT, align 4
  %459 = call i32 @ngx_slab_error(%struct.TYPE_14__* %457, i32 %458, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %464

460:                                              ; preds = %402, %303, %218
  %461 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %462 = load i32, i32* @NGX_LOG_ALERT, align 4
  %463 = call i32 @ngx_slab_error(%struct.TYPE_14__* %461, i32 %462, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %464

464:                                              ; preds = %460, %456, %424, %416, %36
  br label %465

465:                                              ; preds = %464, %444, %443, %428
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @ngx_slab_error(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i64 @ngx_slab_page_type(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @ngx_slab_slots(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_slab_free_pages(%struct.TYPE_14__*, %struct.TYPE_15__*, i64) #1

declare dso_local i32 @ngx_slab_junk(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
