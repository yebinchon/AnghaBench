; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_test_next.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_test_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_25__*, %struct.TYPE_22__*, i64 }
%struct.TYPE_25__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { i64, i64 (%struct.TYPE_28__*)*, %struct.TYPE_24__, %struct.TYPE_23__*, %struct.TYPE_21__, i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_21__ = type { i32, i64 }

@ngx_http_upstream_next_errors = common dso_local global %struct.TYPE_27__* null, align 8
@NGX_HTTP_POST = common dso_local global i32 0, align 4
@NGX_HTTP_LOCK = common dso_local global i32 0, align 4
@NGX_HTTP_PATCH = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_FT_NON_IDEMPOTENT = common dso_local global i64 0, align 8
@ngx_current_msec = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_HTTP_CACHE_EXPIRED = common dso_local global i64 0, align 8
@NGX_HTTP_CACHE_REVALIDATED = common dso_local global i64 0, align 8
@NGX_HTTP_CACHE_STALE = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_NOT_MODIFIED = common dso_local global i64 0, align 8
@NGX_HTTP_UPSTREAM_INVALID_HEADER = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)* @ngx_http_upstream_test_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_test_next(%struct.TYPE_28__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** @ngx_http_upstream_next_errors, align 8
  store %struct.TYPE_27__* %14, %struct.TYPE_27__** %9, align 8
  br label %15

15:                                               ; preds = %105, %2
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %108

20:                                               ; preds = %15
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %105

27:                                               ; preds = %20
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %27
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NGX_HTTP_POST, align 4
  %42 = load i32, i32* @NGX_HTTP_LOCK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @NGX_HTTP_PATCH, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %40, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NGX_HTTP_UPSTREAM_FT_NON_IDEMPOTENT, align 8
  %53 = or i64 %51, %52
  store i64 %53, i64* %8, align 8
  br label %58

54:                                               ; preds = %37, %27
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %54, %48
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %104

64:                                               ; preds = %58
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = and i64 %69, %70
  %72 = load i64, i64* %8, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %104

74:                                               ; preds = %64
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %104, label %84

84:                                               ; preds = %79, %74
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i64, i64* @ngx_current_msec, align 8
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %88, %92
  %94 = load i64, i64* %6, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %104, label %96

96:                                               ; preds = %87, %84
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @ngx_http_upstream_next(%struct.TYPE_28__* %97, %struct.TYPE_26__* %98, i64 %101)
  %103 = load i64, i64* @NGX_OK, align 8
  store i64 %103, i64* %3, align 8
  br label %110

104:                                              ; preds = %87, %79, %64, %58
  br label %105

105:                                              ; preds = %104, %26
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 1
  store %struct.TYPE_27__* %107, %struct.TYPE_27__** %9, align 8
  br label %15

108:                                              ; preds = %15
  %109 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %109, i64* %3, align 8
  br label %110

110:                                              ; preds = %108, %96
  %111 = load i64, i64* %3, align 8
  ret i64 %111
}

declare dso_local i32 @ngx_http_upstream_next(%struct.TYPE_28__*, %struct.TYPE_26__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
