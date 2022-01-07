; ModuleID = '/home/carl/AnghaBench/memcached/extr_items.c_item_stats.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_items.c_item_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.thread_stats = type { i64* }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@MAX_NUMBER_OF_SLAB_CLASSES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"items:%d:%s\00", align 1
@STAT_KEY_LEN = common dso_local global i32 0, align 4
@STAT_VAL_LEN = common dso_local global i32 0, align 4
@lru_type_map = common dso_local global i32* null, align 8
@lru_locks = common dso_local global i32* null, align 8
@itemstats = common dso_local global %struct.TYPE_9__* null, align 8
@sizes_bytes = common dso_local global i64* null, align 8
@sizes = common dso_local global i32* null, align 8
@tails = common dso_local global %struct.TYPE_7__** null, align 8
@current_time = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@settings = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"number_hot\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"number_warm\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"number_cold\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"number_temp\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"age_hot\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"age_warm\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"age\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"mem_requested\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"evicted\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"evicted_nonzero\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"evicted_time\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"outofmemory\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"tailrepairs\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"reclaimed\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"expired_unfetched\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"evicted_unfetched\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"evicted_active\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"crawler_reclaimed\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"crawler_items_checked\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"lrutail_reflocked\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"moves_to_cold\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"moves_to_warm\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"moves_within_lru\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"direct_reclaims\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"hits_to_hot\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"hits_to_warm\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"hits_to_cold\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"hits_to_temp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @item_stats(i32 (i32*, i32, i32*, i32, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32 (i32*, i32, i32*, i32, i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.thread_stats, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 (i32*, i32, i32*, i32, i8*)* %0, i32 (i32*, i32, i32*, i32, i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %22 = call i32 @threadlocal_stats_aggregate(%struct.thread_stats* %5)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %519, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MAX_NUMBER_OF_SLAB_CLASSES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %522

27:                                               ; preds = %23
  %28 = call i32 @memset(%struct.TYPE_6__* %6, i32 0, i32 168)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %29 = load i32, i32* @STAT_KEY_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %16, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %17, align 8
  %33 = load i32, i32* @STAT_VAL_LEN, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %342, %27
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %345

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** @lru_type_map, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %40, %45
  store i32 %46, i32* %9, align 4
  %47 = load i32*, i32** @lru_locks, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @pthread_mutex_lock(i32* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 15
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 19
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, %57
  store i64 %60, i64* %58, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 14
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 18
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %66
  store i64 %69, i64* %67, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 13
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 17
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %75
  store i64 %78, i64* %76, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 12
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 16
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, %84
  store i64 %87, i64* %85, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 11
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 15
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %93
  store i64 %96, i64* %94, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 10
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 14
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, %102
  store i64 %105, i64* %103, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 9
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 13
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, %111
  store i64 %114, i64* %112, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 8
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 12
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, %120
  store i64 %123, i64* %121, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 7
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 11
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, %129
  store i64 %132, i64* %130, align 8
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 10
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, %138
  store i64 %141, i64* %139, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 9
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %147
  store i64 %150, i64* %148, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 8
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, %156
  store i64 %159, i64* %157, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 7
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, %165
  store i64 %168, i64* %166, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %170 = load i32, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, %174
  store i64 %177, i64* %175, align 8
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = add nsw i64 %185, %183
  store i64 %186, i64* %184, align 8
  %187 = load i64*, i64** @sizes_bytes, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 20
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, %191
  store i64 %194, i64* %192, align 8
  %195 = load i32*, i32** @sizes, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %10, align 4
  %201 = add i32 %200, %199
  store i32 %201, i32* %10, align 4
  %202 = load i32*, i32** @sizes, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* %8, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %208
  store i32 %206, i32* %209, align 4
  %210 = load i32*, i32** @lru_type_map, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 131
  br i1 %215, label %216, label %233

216:                                              ; preds = %39
  %217 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @tails, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %217, i64 %219
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = icmp ne %struct.TYPE_7__* %221, null
  br i1 %222, label %223, label %233

223:                                              ; preds = %216
  %224 = load i32, i32* @current_time, align 4
  %225 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @tails, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %225, i64 %227
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = sub i32 %224, %231
  store i32 %232, i32* %11, align 4
  br label %283

233:                                              ; preds = %216, %39
  %234 = load i32*, i32** @lru_type_map, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 130
  br i1 %239, label %240, label %257

240:                                              ; preds = %233
  %241 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @tails, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %241, i64 %243
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %244, align 8
  %246 = icmp ne %struct.TYPE_7__* %245, null
  br i1 %246, label %247, label %257

247:                                              ; preds = %240
  %248 = load i32, i32* @current_time, align 4
  %249 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @tails, align 8
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %249, i64 %251
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = sub i32 %248, %255
  store i32 %256, i32* %12, align 4
  br label %282

257:                                              ; preds = %240, %233
  %258 = load i32*, i32** @lru_type_map, align 8
  %259 = load i32, i32* %8, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 128
  br i1 %263, label %264, label %281

264:                                              ; preds = %257
  %265 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @tails, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %265, i64 %267
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %268, align 8
  %270 = icmp ne %struct.TYPE_7__* %269, null
  br i1 %270, label %271, label %281

271:                                              ; preds = %264
  %272 = load i32, i32* @current_time, align 4
  %273 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @tails, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %273, i64 %275
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = sub i32 %272, %279
  store i32 %280, i32* %13, align 4
  br label %281

281:                                              ; preds = %271, %264, %257
  br label %282

282:                                              ; preds = %281, %247
  br label %283

283:                                              ; preds = %282, %223
  %284 = load i32*, i32** @lru_type_map, align 8
  %285 = load i32, i32* %8, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %288, 131
  br i1 %289, label %290, label %298

290:                                              ; preds = %283
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** @itemstats, align 8
  %292 = load i32, i32* %9, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i64 %296, i64* %297, align 8
  br label %298

298:                                              ; preds = %290, %283
  %299 = load i32*, i32** @lru_type_map, align 8
  %300 = load i32, i32* %8, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  switch i32 %303, label %336 [
    i32 130, label %304
    i32 128, label %312
    i32 131, label %320
    i32 129, label %328
  ]

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %5, i32 0, i32 0
  %306 = load i64*, i64** %305, align 8
  %307 = load i32, i32* %9, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  store i64 %310, i64* %311, align 8
  br label %336

312:                                              ; preds = %298
  %313 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %5, i32 0, i32 0
  %314 = load i64*, i64** %313, align 8
  %315 = load i32, i32* %9, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64, i64* %314, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  store i64 %318, i64* %319, align 8
  br label %336

320:                                              ; preds = %298
  %321 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %5, i32 0, i32 0
  %322 = load i64*, i64** %321, align 8
  %323 = load i32, i32* %9, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i64, i64* %322, i64 %324
  %326 = load i64, i64* %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  store i64 %326, i64* %327, align 8
  br label %336

328:                                              ; preds = %298
  %329 = getelementptr inbounds %struct.thread_stats, %struct.thread_stats* %5, i32 0, i32 0
  %330 = load i64*, i64** %329, align 8
  %331 = load i32, i32* %9, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i64, i64* %330, i64 %332
  %334 = load i64, i64* %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  store i64 %334, i64* %335, align 8
  br label %336

336:                                              ; preds = %298, %328, %320, %312, %304
  %337 = load i32*, i32** @lru_locks, align 8
  %338 = load i32, i32* %9, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = call i32 @pthread_mutex_unlock(i32* %340)
  br label %342

342:                                              ; preds = %336
  %343 = load i32, i32* %8, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %8, align 4
  br label %36

345:                                              ; preds = %36
  %346 = load i32, i32* %10, align 4
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %345
  store i32 4, i32* %21, align 4
  br label %515

349:                                              ; preds = %345
  %350 = load i8*, i8** %15, align 8
  %351 = load i32, i32* %7, align 4
  %352 = load i32, i32* %10, align 4
  %353 = zext i32 %352 to i64
  %354 = call i32 @APPEND_NUM_FMT_STAT(i8* %350, i32 %351, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %353)
  %355 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @settings, i32 0, i32 0), align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %396

357:                                              ; preds = %349
  %358 = load i8*, i8** %15, align 8
  %359 = load i32, i32* %7, align 4
  %360 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %361 = load i32, i32* %360, align 16
  %362 = zext i32 %361 to i64
  %363 = call i32 @APPEND_NUM_FMT_STAT(i8* %358, i32 %359, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %362)
  %364 = load i8*, i8** %15, align 8
  %365 = load i32, i32* %7, align 4
  %366 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %367 = load i32, i32* %366, align 4
  %368 = zext i32 %367 to i64
  %369 = call i32 @APPEND_NUM_FMT_STAT(i8* %364, i32 %365, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %368)
  %370 = load i8*, i8** %15, align 8
  %371 = load i32, i32* %7, align 4
  %372 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %373 = load i32, i32* %372, align 8
  %374 = zext i32 %373 to i64
  %375 = call i32 @APPEND_NUM_FMT_STAT(i8* %370, i32 %371, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %374)
  %376 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @settings, i32 0, i32 1), align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %385

378:                                              ; preds = %357
  %379 = load i8*, i8** %15, align 8
  %380 = load i32, i32* %7, align 4
  %381 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %382 = load i32, i32* %381, align 4
  %383 = zext i32 %382 to i64
  %384 = call i32 @APPEND_NUM_FMT_STAT(i8* %379, i32 %380, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %383)
  br label %385

385:                                              ; preds = %378, %357
  %386 = load i8*, i8** %15, align 8
  %387 = load i32, i32* %7, align 4
  %388 = load i32, i32* %12, align 4
  %389 = zext i32 %388 to i64
  %390 = call i32 @APPEND_NUM_FMT_STAT(i8* %386, i32 %387, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %389)
  %391 = load i8*, i8** %15, align 8
  %392 = load i32, i32* %7, align 4
  %393 = load i32, i32* %13, align 4
  %394 = zext i32 %393 to i64
  %395 = call i32 @APPEND_NUM_FMT_STAT(i8* %391, i32 %392, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %394)
  br label %396

396:                                              ; preds = %385, %349
  %397 = load i8*, i8** %15, align 8
  %398 = load i32, i32* %7, align 4
  %399 = load i32, i32* %11, align 4
  %400 = zext i32 %399 to i64
  %401 = call i32 @APPEND_NUM_FMT_STAT(i8* %397, i32 %398, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %400)
  %402 = load i8*, i8** %15, align 8
  %403 = load i32, i32* %7, align 4
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 20
  %405 = load i64, i64* %404, align 8
  %406 = call i32 @APPEND_NUM_FMT_STAT(i8* %402, i32 %403, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %405)
  %407 = load i8*, i8** %15, align 8
  %408 = load i32, i32* %7, align 4
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 19
  %410 = load i64, i64* %409, align 8
  %411 = call i32 @APPEND_NUM_FMT_STAT(i8* %407, i32 %408, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %410)
  %412 = load i8*, i8** %15, align 8
  %413 = load i32, i32* %7, align 4
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 18
  %415 = load i64, i64* %414, align 8
  %416 = call i32 @APPEND_NUM_FMT_STAT(i8* %412, i32 %413, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %415)
  %417 = load i8*, i8** %15, align 8
  %418 = load i32, i32* %7, align 4
  %419 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = call i32 @APPEND_NUM_FMT_STAT(i8* %417, i32 %418, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %420)
  %422 = load i8*, i8** %15, align 8
  %423 = load i32, i32* %7, align 4
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 17
  %425 = load i64, i64* %424, align 8
  %426 = call i32 @APPEND_NUM_FMT_STAT(i8* %422, i32 %423, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %425)
  %427 = load i8*, i8** %15, align 8
  %428 = load i32, i32* %7, align 4
  %429 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 16
  %430 = load i64, i64* %429, align 8
  %431 = call i32 @APPEND_NUM_FMT_STAT(i8* %427, i32 %428, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %430)
  %432 = load i8*, i8** %15, align 8
  %433 = load i32, i32* %7, align 4
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 15
  %435 = load i64, i64* %434, align 8
  %436 = call i32 @APPEND_NUM_FMT_STAT(i8* %432, i32 %433, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %435)
  %437 = load i8*, i8** %15, align 8
  %438 = load i32, i32* %7, align 4
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 14
  %440 = load i64, i64* %439, align 8
  %441 = call i32 @APPEND_NUM_FMT_STAT(i8* %437, i32 %438, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %440)
  %442 = load i8*, i8** %15, align 8
  %443 = load i32, i32* %7, align 4
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 13
  %445 = load i64, i64* %444, align 8
  %446 = call i32 @APPEND_NUM_FMT_STAT(i8* %442, i32 %443, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %445)
  %447 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @settings, i32 0, i32 0), align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %455

449:                                              ; preds = %396
  %450 = load i8*, i8** %15, align 8
  %451 = load i32, i32* %7, align 4
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 12
  %453 = load i64, i64* %452, align 8
  %454 = call i32 @APPEND_NUM_FMT_STAT(i8* %450, i32 %451, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %453)
  br label %455

455:                                              ; preds = %449, %396
  %456 = load i8*, i8** %15, align 8
  %457 = load i32, i32* %7, align 4
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 11
  %459 = load i64, i64* %458, align 8
  %460 = call i32 @APPEND_NUM_FMT_STAT(i8* %456, i32 %457, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %459)
  %461 = load i8*, i8** %15, align 8
  %462 = load i32, i32* %7, align 4
  %463 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 10
  %464 = load i64, i64* %463, align 8
  %465 = call i32 @APPEND_NUM_FMT_STAT(i8* %461, i32 %462, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %464)
  %466 = load i8*, i8** %15, align 8
  %467 = load i32, i32* %7, align 4
  %468 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 9
  %469 = load i64, i64* %468, align 8
  %470 = call i32 @APPEND_NUM_FMT_STAT(i8* %466, i32 %467, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %469)
  %471 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @settings, i32 0, i32 0), align 8
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %514

473:                                              ; preds = %455
  %474 = load i8*, i8** %15, align 8
  %475 = load i32, i32* %7, align 4
  %476 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 8
  %477 = load i64, i64* %476, align 8
  %478 = call i32 @APPEND_NUM_FMT_STAT(i8* %474, i32 %475, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %477)
  %479 = load i8*, i8** %15, align 8
  %480 = load i32, i32* %7, align 4
  %481 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 7
  %482 = load i64, i64* %481, align 8
  %483 = call i32 @APPEND_NUM_FMT_STAT(i8* %479, i32 %480, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %482)
  %484 = load i8*, i8** %15, align 8
  %485 = load i32, i32* %7, align 4
  %486 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 6
  %487 = load i64, i64* %486, align 8
  %488 = call i32 @APPEND_NUM_FMT_STAT(i8* %484, i32 %485, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %487)
  %489 = load i8*, i8** %15, align 8
  %490 = load i32, i32* %7, align 4
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  %492 = load i64, i64* %491, align 8
  %493 = call i32 @APPEND_NUM_FMT_STAT(i8* %489, i32 %490, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %492)
  %494 = load i8*, i8** %15, align 8
  %495 = load i32, i32* %7, align 4
  %496 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 4
  %497 = load i64, i64* %496, align 8
  %498 = call i32 @APPEND_NUM_FMT_STAT(i8* %494, i32 %495, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %497)
  %499 = load i8*, i8** %15, align 8
  %500 = load i32, i32* %7, align 4
  %501 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %502 = load i64, i64* %501, align 8
  %503 = call i32 @APPEND_NUM_FMT_STAT(i8* %499, i32 %500, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %502)
  %504 = load i8*, i8** %15, align 8
  %505 = load i32, i32* %7, align 4
  %506 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 2
  %507 = load i64, i64* %506, align 8
  %508 = call i32 @APPEND_NUM_FMT_STAT(i8* %504, i32 %505, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %507)
  %509 = load i8*, i8** %15, align 8
  %510 = load i32, i32* %7, align 4
  %511 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %512 = load i64, i64* %511, align 8
  %513 = call i32 @APPEND_NUM_FMT_STAT(i8* %509, i32 %510, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 %512)
  br label %514

514:                                              ; preds = %473, %455
  store i32 0, i32* %21, align 4
  br label %515

515:                                              ; preds = %514, %348
  %516 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %516)
  %517 = load i32, i32* %21, align 4
  switch i32 %517, label %526 [
    i32 0, label %518
    i32 4, label %519
  ]

518:                                              ; preds = %515
  br label %519

519:                                              ; preds = %518, %515
  %520 = load i32, i32* %7, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %7, align 4
  br label %23

522:                                              ; preds = %23
  %523 = load i32 (i32*, i32, i32*, i32, i8*)*, i32 (i32*, i32, i32*, i32, i8*)** %3, align 8
  %524 = load i8*, i8** %4, align 8
  %525 = call i32 %523(i32* null, i32 0, i32* null, i32 0, i8* %524)
  ret void

526:                                              ; preds = %515
  unreachable
}

declare dso_local i32 @threadlocal_stats_aggregate(%struct.thread_stats*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @APPEND_NUM_FMT_STAT(i8*, i32, i8*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
