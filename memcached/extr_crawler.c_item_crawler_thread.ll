; ModuleID = '/home/carl/AnghaBench/memcached/extr_crawler.c_item_crawler_thread.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_crawler.c_item_crawler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, i64 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__*, %struct.TYPE_18__ }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_22__*)*, i64, i32 (%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32)*, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i32*, i32 }
%struct.TYPE_23__ = type { i32 }

@settings = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@lru_crawler_lock = common dso_local global i32 0, align 4
@lru_crawler_cond = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Starting LRU crawler background thread\0A\00", align 1
@do_run_lru_crawler_thread = common dso_local global i64 0, align 8
@crawler_count = common dso_local global i64 0, align 8
@POWER_SMALLEST = common dso_local global i32 0, align 4
@LARGEST_ID = common dso_local global i32 0, align 4
@crawlers = common dso_local global %struct.TYPE_19__* null, align 8
@active_crawler_mod = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@lru_locks = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Nothing left to crawl for %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"LRU crawler thread sleeping\0A\00", align 1
@stats_state = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"LRU crawler thread stopping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @item_crawler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @item_crawler_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @settings, i32 0, i32 0), align 8
  store i32 %9, i32* %4, align 4
  %10 = call i32 @pthread_mutex_lock(i32* @lru_crawler_lock)
  %11 = call i32 @pthread_cond_signal(i32* @lru_crawler_cond)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @settings, i32 0, i32 1), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @settings, i32 0, i32 2), align 8
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %1
  br label %18

18:                                               ; preds = %240, %17
  %19 = load i64, i64* @do_run_lru_crawler_thread, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %243

21:                                               ; preds = %18
  %22 = call i32 @pthread_cond_wait(i32* @lru_crawler_cond, i32* @lru_crawler_lock)
  br label %23

23:                                               ; preds = %202, %21
  %24 = load i64, i64* @crawler_count, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %203

26:                                               ; preds = %23
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %5, align 8
  store i8* null, i8** %6, align 8
  %27 = load i32, i32* @POWER_SMALLEST, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %199, %26
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @LARGEST_ID, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %202

32:                                               ; preds = %28
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** @crawlers, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %199

41:                                               ; preds = %32
  %42 = load i32*, i32** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 1, i32 0), align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = call i32 @lru_crawler_client_getbuf(%struct.TYPE_18__* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 1))
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @lru_crawler_class_done(i32 %49)
  br label %199

51:                                               ; preds = %44
  br label %61

52:                                               ; preds = %41
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 0), align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @lru_crawler_class_done(i32 %58)
  br label %199

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %51
  %62 = load i32*, i32** @lru_locks, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i32 @pthread_mutex_lock(i32* %65)
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** @crawlers, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i64 %69
  %71 = bitcast %struct.TYPE_19__* %70 to %struct.TYPE_21__*
  %72 = call %struct.TYPE_21__* @do_item_crawl_q(%struct.TYPE_21__* %71)
  store %struct.TYPE_21__* %72, %struct.TYPE_21__** %5, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = icmp eq %struct.TYPE_21__* %73, null
  br i1 %74, label %92, label %75

75:                                               ; preds = %61
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** @crawlers, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %75
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** @crawlers, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %88, align 4
  %91 = icmp slt i32 %90, 1
  br i1 %91, label %92, label %102

92:                                               ; preds = %83, %61
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @settings, i32 0, i32 2), align 8
  %94 = icmp sgt i32 %93, 2
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* @stderr, align 4
  %97 = load i32, i32* %3, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @lru_crawler_class_done(i32 %100)
  br label %199

102:                                              ; preds = %83, %75
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %104 = call i32 @ITEM_key(%struct.TYPE_21__* %103)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @hash(i32 %104, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i8* @item_trylock(i32 %109)
  store i8* %110, i8** %6, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %102
  %113 = load i32*, i32** @lru_locks, align 8
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = call i32 @pthread_mutex_unlock(i32* %116)
  br label %199

118:                                              ; preds = %102
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = call i32 @refcount_incr(%struct.TYPE_21__* %119)
  %121 = icmp ne i32 %120, 2
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %124 = call i32 @refcount_decr(%struct.TYPE_21__* %123)
  %125 = load i8*, i8** %6, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @item_trylock_unlock(i8* %128)
  br label %130

130:                                              ; preds = %127, %122
  %131 = load i32*, i32** @lru_locks, align 8
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = call i32 @pthread_mutex_unlock(i32* %134)
  br label %199

136:                                              ; preds = %118
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** @crawlers, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 0), align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %136
  %149 = load i32*, i32** @lru_locks, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = call i32 @pthread_mutex_unlock(i32* %152)
  br label %154

154:                                              ; preds = %148, %136
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 0), align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 2
  %157 = load i32 (%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_22__*, %struct.TYPE_21__*, i32, i32)** %156, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %3, align 4
  %161 = call i32 %157(%struct.TYPE_22__* @active_crawler_mod, %struct.TYPE_21__* %158, i32 %159, i32 %160)
  %162 = load i8*, i8** %6, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %154
  %165 = load i8*, i8** %6, align 8
  %166 = call i32 @item_trylock_unlock(i8* %165)
  br label %167

167:                                              ; preds = %164, %154
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 0), align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load i32*, i32** @lru_locks, align 8
  %174 = load i32, i32* %3, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = call i32 @pthread_mutex_unlock(i32* %176)
  br label %178

178:                                              ; preds = %172, %167
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %4, align 4
  %181 = icmp sle i32 %179, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @settings, i32 0, i32 3), align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = call i32 @pthread_mutex_unlock(i32* @lru_crawler_lock)
  %187 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @settings, i32 0, i32 3), align 8
  %188 = call i32 @usleep(i64 %187)
  %189 = call i32 @pthread_mutex_lock(i32* @lru_crawler_lock)
  %190 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @settings, i32 0, i32 0), align 8
  store i32 %190, i32* %4, align 4
  br label %198

191:                                              ; preds = %182, %178
  %192 = load i64, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @settings, i32 0, i32 3), align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = call i32 @pthread_mutex_unlock(i32* @lru_crawler_lock)
  %196 = call i32 @pthread_mutex_lock(i32* @lru_crawler_lock)
  br label %197

197:                                              ; preds = %194, %191
  br label %198

198:                                              ; preds = %197, %185
  br label %199

199:                                              ; preds = %198, %130, %112, %99, %57, %48, %40
  %200 = load i32, i32* %3, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %3, align 4
  br label %28

202:                                              ; preds = %28
  br label %23

203:                                              ; preds = %23
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 0), align 8
  %205 = icmp ne %struct.TYPE_20__* %204, null
  br i1 %205, label %206, label %234

206:                                              ; preds = %203
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 0), align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  %209 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %208, align 8
  %210 = icmp ne i32 (%struct.TYPE_22__*)* %209, null
  br i1 %210, label %211, label %216

211:                                              ; preds = %206
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 0), align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  %214 = load i32 (%struct.TYPE_22__*)*, i32 (%struct.TYPE_22__*)** %213, align 8
  %215 = call i32 %214(%struct.TYPE_22__* @active_crawler_mod)
  br label %216

216:                                              ; preds = %211, %206
  br label %217

217:                                              ; preds = %226, %216
  %218 = load i32*, i32** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 1, i32 0), align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 1, i32 1), align 8
  %222 = call i64 @bipbuf_used(i32 %221)
  %223 = icmp ne i64 %222, 0
  br label %224

224:                                              ; preds = %220, %217
  %225 = phi i1 [ false, %217 ], [ %223, %220 ]
  br i1 %225, label %226, label %228

226:                                              ; preds = %224
  %227 = call i32 @lru_crawler_poll(%struct.TYPE_18__* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 1))
  br label %217

228:                                              ; preds = %224
  %229 = load i32*, i32** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 1, i32 0), align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = call i32 @lru_crawler_release_client(%struct.TYPE_18__* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 1))
  br label %233

233:                                              ; preds = %231, %228
  store %struct.TYPE_20__* null, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @active_crawler_mod, i32 0, i32 0), align 8
  br label %234

234:                                              ; preds = %233, %203
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @settings, i32 0, i32 2), align 8
  %236 = icmp sgt i32 %235, 2
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32, i32* @stderr, align 4
  %239 = call i32 (i32, i8*, ...) @fprintf(i32 %238, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %240

240:                                              ; preds = %237, %234
  %241 = call i32 (...) @STATS_LOCK()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @stats_state, i32 0, i32 0), align 4
  %242 = call i32 (...) @STATS_UNLOCK()
  br label %18

243:                                              ; preds = %18
  %244 = call i32 @pthread_mutex_unlock(i32* @lru_crawler_lock)
  %245 = load i32, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @settings, i32 0, i32 2), align 8
  %246 = icmp sgt i32 %245, 2
  br i1 %246, label %247, label %250

247:                                              ; preds = %243
  %248 = load i32, i32* @stderr, align 4
  %249 = call i32 (i32, i8*, ...) @fprintf(i32 %248, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %250

250:                                              ; preds = %247, %243
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @settings, i32 0, i32 1), align 4
  ret i8* null
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @lru_crawler_client_getbuf(%struct.TYPE_18__*) #1

declare dso_local i32 @lru_crawler_class_done(i32) #1

declare dso_local %struct.TYPE_21__* @do_item_crawl_q(%struct.TYPE_21__*) #1

declare dso_local i32 @hash(i32, i32) #1

declare dso_local i32 @ITEM_key(%struct.TYPE_21__*) #1

declare dso_local i8* @item_trylock(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @refcount_incr(%struct.TYPE_21__*) #1

declare dso_local i32 @refcount_decr(%struct.TYPE_21__*) #1

declare dso_local i32 @item_trylock_unlock(i8*) #1

declare dso_local i32 @usleep(i64) #1

declare dso_local i64 @bipbuf_used(i32) #1

declare dso_local i32 @lru_crawler_poll(%struct.TYPE_18__*) #1

declare dso_local i32 @lru_crawler_release_client(%struct.TYPE_18__*) #1

declare dso_local i32 @STATS_LOCK(...) #1

declare dso_local i32 @STATS_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
