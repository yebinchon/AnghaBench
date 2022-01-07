; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_exists.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_20__*, %struct.TYPE_16__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__*, i64, i64, i32*, i64, i64 }
%struct.TYPE_18__ = type { i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i64, %struct.TYPE_21__, i32* }
%struct.TYPE_21__ = type { i32 }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_15__* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"could not allocate node%s\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_CACHE_KEY_LEN = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_19__*)* @ngx_http_file_cache_exists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_file_cache_exists(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %11 = call i32 @ngx_shmtx_lock(i32* %10)
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %6, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = icmp eq %struct.TYPE_18__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = call %struct.TYPE_18__* @ngx_http_file_cache_lookup(%struct.TYPE_17__* %18, i32* %21)
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %6, align 8
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = icmp ne %struct.TYPE_18__* %24, null
  br i1 %25, label %26, label %90

26:                                               ; preds = %23
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 5
  %29 = call i32 @ngx_queue_remove(i32* %28)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = icmp eq %struct.TYPE_18__* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %34, %26
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i64 (...) @ngx_time()
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %168

55:                                               ; preds = %48
  %56 = load i32, i32* @NGX_OK, align 4
  store i32 %56, i32* %5, align 4
  br label %184

57:                                               ; preds = %43
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sge i32 %65, %68
  br i1 %69, label %70, label %88

70:                                               ; preds = %62, %57
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 9
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 6
  store i64 %73, i64* %75, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 8
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %70
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 5
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %80, %70
  %87 = load i32, i32* @NGX_OK, align 4
  store i32 %87, i32* %5, align 4
  br label %184

88:                                               ; preds = %62
  %89 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %89, i32* %5, align 4
  br label %184

90:                                               ; preds = %23
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = call %struct.TYPE_18__* @ngx_slab_calloc_locked(%struct.TYPE_20__* %93, i32 96)
  store %struct.TYPE_18__* %94, %struct.TYPE_18__** %6, align 8
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %96 = icmp eq %struct.TYPE_18__* %95, null
  br i1 %96, label %97, label %131

97:                                               ; preds = %90
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = call i32 @ngx_http_file_cache_set_watermark(%struct.TYPE_17__* %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 0
  %104 = call i32 @ngx_shmtx_unlock(i32* %103)
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %106 = call i32 @ngx_http_file_cache_forced_expire(%struct.TYPE_17__* %105)
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = call i32 @ngx_shmtx_lock(i32* %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = call %struct.TYPE_18__* @ngx_slab_calloc_locked(%struct.TYPE_20__* %114, i32 96)
  store %struct.TYPE_18__* %115, %struct.TYPE_18__** %6, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %117 = icmp eq %struct.TYPE_18__* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %97
  %119 = load i32, i32* @NGX_LOG_ALERT, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** @ngx_cycle, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ngx_log_error(i32 %119, i32 %122, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @NGX_ERROR, align 4
  store i32 %129, i32* %5, align 4
  br label %212

130:                                              ; preds = %97
  br label %131

131:                                              ; preds = %130, %90
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 11
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @ngx_memcpy(i32* %140, i32* %143, i32 4)
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 12
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 4
  %152 = load i32, i32* @NGX_HTTP_CACHE_KEY_LEN, align 4
  %153 = sext i32 %152 to i64
  %154 = sub i64 %153, 4
  %155 = trunc i64 %154 to i32
  %156 = call i32 @ngx_memcpy(i32* %147, i32* %151, i32 %155)
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 11
  %163 = call i32 @ngx_rbtree_insert(i32* %160, %struct.TYPE_21__* %162)
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  store i32 1, i32* %165, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  store i32 1, i32* %167, align 4
  br label %168

168:                                              ; preds = %131, %54
  %169 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %169, i32* %5, align 4
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 10
  store i64 0, i64* %171, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 3
  store i64 0, i64* %173, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 9
  store i64 0, i64* %175, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 2
  store i64 0, i64* %177, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 4
  store i64 0, i64* %179, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 8
  store i64 0, i64* %181, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 7
  store i64 0, i64* %183, align 8
  br label %184

184:                                              ; preds = %168, %88, %86, %55
  %185 = call i64 (...) @ngx_time()
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %185, %188
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 6
  store i64 %189, i64* %191, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 5
  %198 = call i32 @ngx_queue_insert_head(i32* %195, i32* %197)
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 3
  store i64 %201, i64* %203, align 8
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 2
  store i64 %206, i64* %208, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 1
  store %struct.TYPE_18__* %209, %struct.TYPE_18__** %211, align 8
  br label %212

212:                                              ; preds = %184, %118
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = call i32 @ngx_shmtx_unlock(i32* %216)
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local %struct.TYPE_18__* @ngx_http_file_cache_lookup(%struct.TYPE_17__*, i32*) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local i64 @ngx_time(...) #1

declare dso_local %struct.TYPE_18__* @ngx_slab_calloc_locked(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_http_file_cache_set_watermark(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i32 @ngx_http_file_cache_forced_expire(%struct.TYPE_17__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ngx_rbtree_insert(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
