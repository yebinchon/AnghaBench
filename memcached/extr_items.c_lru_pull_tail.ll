; ModuleID = '/home/carl/AnghaBench/memcached/extr_items.c_lru_pull_tail.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_items.c_lru_pull_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32, i64, i32, i64, i32, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32, i32 }
%struct.lru_pull_tail_return = type { i32, %struct.TYPE_16__* }

@lru_locks = common dso_local global i32* null, align 8
@tails = common dso_local global %struct.TYPE_16__** null, align 8
@LRU_PULL_CRAWL_BLOCKS = common dso_local global i32 0, align 4
@itemstats = common dso_local global %struct.TYPE_18__* null, align 8
@settings = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@current_time = common dso_local global i64 0, align 8
@ext_storage = common dso_local global i32 0, align 4
@ITEM_FETCHED = common dso_local global i32 0, align 4
@ITEM_ACTIVE = common dso_local global i32 0, align 4
@sizes_bytes = common dso_local global i32* null, align 8
@LRU_PULL_EVICT = common dso_local global i32 0, align 4
@LOG_EVICTIONS = common dso_local global i32 0, align 4
@LOGGER_EVICTION = common dso_local global i32 0, align 4
@LRU_PULL_RETURN_ITEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lru_pull_tail(i32 %0, i32 %1, i32 %2, i32 %3, i64 %4, %struct.lru_pull_tail_return* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.lru_pull_tail_return*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store %struct.lru_pull_tail_return* %5, %struct.lru_pull_tail_return** %13, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %14, align 8
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %457

28:                                               ; preds = %6
  store i32 5, i32* %17, align 4
  store i8* null, i8** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %15, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %15, align 4
  %32 = load i32*, i32** @lru_locks, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @pthread_mutex_lock(i32* %35)
  %37 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @tails, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %37, i64 %39
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %18, align 8
  br label %42

42:                                               ; preds = %417, %28
  %43 = load i32, i32* %17, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %47 = icmp ne %struct.TYPE_16__* %46, null
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ false, %42 ], [ %47, %45 ]
  br i1 %49, label %50, label %421

50:                                               ; preds = %48
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 7
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  store %struct.TYPE_16__* %53, %struct.TYPE_16__** %19, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %50
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %82

68:                                               ; preds = %63
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @LRU_PULL_CRAWL_BLOCKS, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32*, i32** @lru_locks, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @pthread_mutex_unlock(i32* %77)
  store i32 0, i32* %7, align 4
  br label %457

79:                                               ; preds = %68
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %17, align 4
  br label %417

82:                                               ; preds = %63, %58, %50
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %84 = call i32 @ITEM_key(%struct.TYPE_16__* %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @hash(i32 %84, i64 %87)
  store i32 %88, i32* %23, align 4
  %89 = load i32, i32* %23, align 4
  %90 = call i8* @item_trylock(i32 %89)
  store i8* %90, i8** %20, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %417

93:                                               ; preds = %82
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %95 = call i32 @refcount_incr(%struct.TYPE_16__* %94)
  %96 = icmp ne i32 %95, 2
  br i1 %96, label %97, label %134

97:                                               ; preds = %93
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** @itemstats, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 11
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @settings, i32 0, i32 0), align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %133

107:                                              ; preds = %97
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @settings, i32 0, i32 0), align 8
  %112 = add nsw i64 %110, %111
  %113 = load i64, i64* @current_time, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %133

115:                                              ; preds = %107
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** @itemstats, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 4
  store i32 1, i32* %124, align 8
  %125 = load i32, i32* @ext_storage, align 4
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %127 = call i32 @STORAGE_delete(i32 %125, %struct.TYPE_16__* %126)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %129 = load i32, i32* %23, align 4
  %130 = call i32 @do_item_unlink_nolock(%struct.TYPE_16__* %128, i32 %129)
  %131 = load i8*, i8** %20, align 8
  %132 = call i32 @item_trylock_unlock(i8* %131)
  br label %417

133:                                              ; preds = %107, %97
  br label %134

134:                                              ; preds = %133, %93
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @current_time, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %139, %134
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %147 = call i64 @item_is_flushed(%struct.TYPE_16__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %184

149:                                              ; preds = %145, %139
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** @itemstats, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @ITEM_FETCHED, align 4
  %161 = and i32 %159, %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %149
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** @itemstats, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %163, %149
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %173 = load i32, i32* %23, align 4
  %174 = call i32 @do_item_unlink_nolock(%struct.TYPE_16__* %172, i32 %173)
  %175 = load i32, i32* @ext_storage, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %177 = call i32 @STORAGE_delete(i32 %175, %struct.TYPE_16__* %176)
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %179 = call i32 @do_item_remove(%struct.TYPE_16__* %178)
  %180 = load i8*, i8** %20, align 8
  %181 = call i32 @item_trylock_unlock(i8* %180)
  %182 = load i32, i32* %16, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %16, align 4
  br label %417

184:                                              ; preds = %145
  %185 = load i32, i32* %9, align 4
  switch i32 %185, label %412 [
    i32 130, label %186
    i32 128, label %191
    i32 131, label %278
    i32 129, label %410
  ]

186:                                              ; preds = %184
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @settings, i32 0, i32 1), align 8
  %189 = mul nsw i32 %187, %188
  %190 = sdiv i32 %189, 100
  store i32 %190, i32* %22, align 4
  br label %191

191:                                              ; preds = %184, %186
  %192 = load i32, i32* %22, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @settings, i32 0, i32 2), align 4
  %197 = mul nsw i32 %195, %196
  %198 = sdiv i32 %197, 100
  store i32 %198, i32* %22, align 4
  br label %199

199:                                              ; preds = %194, %191
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @ITEM_ACTIVE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %245

206:                                              ; preds = %199
  %207 = load i32, i32* @ITEM_ACTIVE, align 4
  %208 = xor i32 %207, -1
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, %208
  store i32 %212, i32* %210, align 8
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %16, align 4
  %215 = load i32, i32* %9, align 4
  %216 = icmp eq i32 %215, 128
  br i1 %216, label %217, label %233

217:                                              ; preds = %206
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** @itemstats, align 8
  %219 = load i32, i32* %15, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 8
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %226 = call i32 @do_item_unlink_q(%struct.TYPE_16__* %225)
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %228 = call i32 @do_item_link_q(%struct.TYPE_16__* %227)
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %230 = call i32 @do_item_remove(%struct.TYPE_16__* %229)
  %231 = load i8*, i8** %20, align 8
  %232 = call i32 @item_trylock_unlock(i8* %231)
  br label %244

233:                                              ; preds = %206
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** @itemstats, align 8
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 8
  store i32 128, i32* %21, align 4
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %242 = call i32 @do_item_unlink_q(%struct.TYPE_16__* %241)
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %243, %struct.TYPE_16__** %14, align 8
  br label %244

244:                                              ; preds = %233, %217
  br label %277

245:                                              ; preds = %199
  %246 = load i32*, i32** @sizes_bytes, align 8
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %22, align 4
  %252 = icmp sgt i32 %250, %251
  br i1 %252, label %261, label %253

253:                                              ; preds = %245
  %254 = load i64, i64* @current_time, align 8
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = sub nsw i64 %254, %257
  %259 = load i64, i64* %12, align 8
  %260 = icmp sgt i64 %258, %259
  br i1 %260, label %261, label %274

261:                                              ; preds = %253, %245
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** @itemstats, align 8
  %263 = load i32, i32* %15, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %266, align 4
  store i32 131, i32* %21, align 4
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %270 = call i32 @do_item_unlink_q(%struct.TYPE_16__* %269)
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %271, %struct.TYPE_16__** %14, align 8
  %272 = load i32, i32* %16, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %16, align 4
  br label %412

274:                                              ; preds = %253
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %275, %struct.TYPE_16__** %14, align 8
  br label %276

276:                                              ; preds = %274
  br label %277

277:                                              ; preds = %276, %244
  br label %412

278:                                              ; preds = %184
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %279, %struct.TYPE_16__** %14, align 8
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* @LRU_PULL_EVICT, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %367

284:                                              ; preds = %278
  %285 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @settings, i32 0, i32 5), align 8
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %284
  br label %412

288:                                              ; preds = %284
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** @itemstats, align 8
  %290 = load i32, i32* %15, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %293, align 8
  %296 = load i64, i64* @current_time, align 8
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = sub nsw i64 %296, %299
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** @itemstats, align 8
  %302 = load i32, i32* %15, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 4
  store i64 %300, i64* %305, align 8
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 5
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %318

310:                                              ; preds = %288
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** @itemstats, align 8
  %312 = load i32, i32* %15, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %315, align 4
  br label %318

318:                                              ; preds = %310, %288
  %319 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @ITEM_FETCHED, align 4
  %323 = and i32 %321, %322
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %318
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** @itemstats, align 8
  %327 = load i32, i32* %15, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %330, align 8
  br label %333

333:                                              ; preds = %325, %318
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @ITEM_ACTIVE, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %333
  %341 = load %struct.TYPE_18__*, %struct.TYPE_18__** @itemstats, align 8
  %342 = load i32, i32* %15, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %345, align 4
  br label %348

348:                                              ; preds = %340, %333
  %349 = load i32, i32* @LOG_EVICTIONS, align 4
  %350 = load i32, i32* @LOGGER_EVICTION, align 4
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %352 = call i32 @LOGGER_LOG(i32* null, i32 %349, i32 %350, %struct.TYPE_16__* %351)
  %353 = load i32, i32* @ext_storage, align 4
  %354 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %355 = call i32 @STORAGE_delete(i32 %353, %struct.TYPE_16__* %354)
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %357 = load i32, i32* %23, align 4
  %358 = call i32 @do_item_unlink_nolock(%struct.TYPE_16__* %356, i32 %357)
  %359 = load i32, i32* %16, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %16, align 4
  %361 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @settings, i32 0, i32 3), align 8
  %362 = icmp eq i32 %361, 2
  br i1 %362, label %363, label %366

363:                                              ; preds = %348
  %364 = load i32, i32* %8, align 4
  %365 = call i32 @slabs_reassign(i32 -1, i32 %364)
  br label %366

366:                                              ; preds = %363, %348
  br label %409

367:                                              ; preds = %278
  %368 = load i32, i32* %11, align 4
  %369 = load i32, i32* @LRU_PULL_RETURN_ITEM, align 4
  %370 = and i32 %368, %369
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %379

372:                                              ; preds = %367
  %373 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %374 = load %struct.lru_pull_tail_return*, %struct.lru_pull_tail_return** %13, align 8
  %375 = getelementptr inbounds %struct.lru_pull_tail_return, %struct.lru_pull_tail_return* %374, i32 0, i32 1
  store %struct.TYPE_16__* %373, %struct.TYPE_16__** %375, align 8
  %376 = load i32, i32* %23, align 4
  %377 = load %struct.lru_pull_tail_return*, %struct.lru_pull_tail_return** %13, align 8
  %378 = getelementptr inbounds %struct.lru_pull_tail_return, %struct.lru_pull_tail_return* %377, i32 0, i32 0
  store i32 %376, i32* %378, align 8
  br label %408

379:                                              ; preds = %367
  %380 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %381 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @ITEM_ACTIVE, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %407

386:                                              ; preds = %379
  %387 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @settings, i32 0, i32 4), align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %407

389:                                              ; preds = %386
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** @itemstats, align 8
  %391 = load i32, i32* %15, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %394, align 8
  %397 = load i32, i32* @ITEM_ACTIVE, align 4
  %398 = xor i32 %397, -1
  %399 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %400 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = and i32 %401, %398
  store i32 %402, i32* %400, align 8
  store i32 128, i32* %21, align 4
  %403 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %404 = call i32 @do_item_unlink_q(%struct.TYPE_16__* %403)
  %405 = load i32, i32* %16, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %16, align 4
  br label %407

407:                                              ; preds = %389, %386, %379
  br label %408

408:                                              ; preds = %407, %372
  br label %409

409:                                              ; preds = %408, %366
  br label %412

410:                                              ; preds = %184
  %411 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %411, %struct.TYPE_16__** %14, align 8
  br label %412

412:                                              ; preds = %184, %410, %409, %287, %277, %261
  %413 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %414 = icmp ne %struct.TYPE_16__* %413, null
  br i1 %414, label %415, label %416

415:                                              ; preds = %412
  br label %421

416:                                              ; preds = %412
  br label %417

417:                                              ; preds = %416, %171, %115, %92, %79
  %418 = load i32, i32* %17, align 4
  %419 = add nsw i32 %418, -1
  store i32 %419, i32* %17, align 4
  %420 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %420, %struct.TYPE_16__** %18, align 8
  br label %42

421:                                              ; preds = %415, %48
  %422 = load i32*, i32** @lru_locks, align 8
  %423 = load i32, i32* %15, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = call i32 @pthread_mutex_unlock(i32* %425)
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %428 = icmp ne %struct.TYPE_16__* %427, null
  br i1 %428, label %429, label %455

429:                                              ; preds = %421
  %430 = load i32, i32* %21, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %444

432:                                              ; preds = %429
  %433 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %434 = call i32 @ITEM_clsid(%struct.TYPE_16__* %433)
  %435 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %436 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %435, i32 0, i32 6
  store i32 %434, i32* %436, align 8
  %437 = load i32, i32* %21, align 4
  %438 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %439 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %438, i32 0, i32 6
  %440 = load i32, i32* %439, align 8
  %441 = or i32 %440, %437
  store i32 %441, i32* %439, align 8
  %442 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %443 = call i32 @item_link_q(%struct.TYPE_16__* %442)
  br label %444

444:                                              ; preds = %432, %429
  %445 = load i32, i32* %11, align 4
  %446 = load i32, i32* @LRU_PULL_RETURN_ITEM, align 4
  %447 = and i32 %445, %446
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %454

449:                                              ; preds = %444
  %450 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %451 = call i32 @do_item_remove(%struct.TYPE_16__* %450)
  %452 = load i8*, i8** %20, align 8
  %453 = call i32 @item_trylock_unlock(i8* %452)
  br label %454

454:                                              ; preds = %449, %444
  br label %455

455:                                              ; preds = %454, %421
  %456 = load i32, i32* %16, align 4
  store i32 %456, i32* %7, align 4
  br label %457

457:                                              ; preds = %455, %73, %27
  %458 = load i32, i32* %7, align 4
  ret i32 %458
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @hash(i32, i64) #1

declare dso_local i32 @ITEM_key(%struct.TYPE_16__*) #1

declare dso_local i8* @item_trylock(i32) #1

declare dso_local i32 @refcount_incr(%struct.TYPE_16__*) #1

declare dso_local i32 @STORAGE_delete(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @do_item_unlink_nolock(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @item_trylock_unlock(i8*) #1

declare dso_local i64 @item_is_flushed(%struct.TYPE_16__*) #1

declare dso_local i32 @do_item_remove(%struct.TYPE_16__*) #1

declare dso_local i32 @do_item_unlink_q(%struct.TYPE_16__*) #1

declare dso_local i32 @do_item_link_q(%struct.TYPE_16__*) #1

declare dso_local i32 @LOGGER_LOG(i32*, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @slabs_reassign(i32, i32) #1

declare dso_local i32 @ITEM_clsid(%struct.TYPE_16__*) #1

declare dso_local i32 @item_link_q(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
