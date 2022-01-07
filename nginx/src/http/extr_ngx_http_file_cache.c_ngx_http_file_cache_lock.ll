; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_lock.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_11__, %struct.TYPE_12__*, %struct.TYPE_17__*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_16__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@NGX_DECLINED = common dso_local global i32 0, align 4
@ngx_current_msec = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"http file cache lock u:%d wt:%M\00", align 1
@NGX_HTTP_CACHE_SCARCE = common dso_local global i32 0, align 4
@ngx_http_file_cache_lock_wait_handler = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_18__*)* @ngx_http_file_cache_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_file_cache_lock(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 9
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %14, i32* %3, align 4
  br label %154

15:                                               ; preds = %2
  %16 = load i32, i32* @ngx_current_msec, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %8, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = call i32 @ngx_shmtx_lock(i32* %23)
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 7
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 7
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %15
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %38, %15
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 7
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %47, %50
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 7
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %42, %38
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = call i32 @ngx_shmtx_unlock(i32* %69)
  %71 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @ngx_log_debug2(i32 %71, i32 %76, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %79, i64 %82)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %65
  %89 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %89, i32* %3, align 4
  br label %154

90:                                               ; preds = %65
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @NGX_HTTP_CACHE_SCARCE, align 4
  store i32 %96, i32* %3, align 4
  br label %154

97:                                               ; preds = %90
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 5
  store i32 1, i32* %99, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %129

104:                                              ; preds = %97
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* @ngx_http_file_cache_lock_wait_handler, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  store i32 %113, i32* %116, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  store %struct.TYPE_16__* %117, %struct.TYPE_16__** %120, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  br label %129

129:                                              ; preds = %104, %97
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = sub nsw i64 %132, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %7, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 6
  %139 = load i32, i32* %7, align 4
  %140 = icmp sgt i32 %139, 500
  br i1 %140, label %141, label %142

141:                                              ; preds = %129
  br label %144

142:                                              ; preds = %129
  %143 = load i32, i32* %7, align 4
  br label %144

144:                                              ; preds = %142, %141
  %145 = phi i32 [ 500, %141 ], [ %143, %142 ]
  %146 = call i32 @ngx_add_timer(%struct.TYPE_11__* %138, i32 %145)
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %144, %95, %88, %13
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
