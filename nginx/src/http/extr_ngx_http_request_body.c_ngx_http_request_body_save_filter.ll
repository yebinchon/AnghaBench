; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request_body.c_ngx_http_request_body_save_filter.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request_body.c_ngx_http_request_body_save_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i64, %struct.TYPE_16__*, %struct.TYPE_21__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_22__*, %struct.TYPE_19__*, i32, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_23__*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32, i64, i64, %struct.TYPE_18__*, i64, i64, i32, i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_request_body_save_filter(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %8, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = call i64 @ngx_chain_add_copy(i32 %14, %struct.TYPE_22__** %16, %struct.TYPE_22__* %17)
  %19 = load i64, i64* @NGX_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %22, i64* %3, align 8
  br label %125

23:                                               ; preds = %2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* @NGX_OK, align 8
  store i64 %29, i64* %3, align 8
  br label %125

30:                                               ; preds = %23
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %30
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = icmp ne %struct.TYPE_17__* %38, null
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %45, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %40
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %54 = call i64 @ngx_http_write_request_body(%struct.TYPE_20__* %53)
  %55 = load i64, i64* @NGX_OK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %58, i64* %3, align 8
  br label %125

59:                                               ; preds = %52, %40, %35
  %60 = load i64, i64* @NGX_OK, align 8
  store i64 %60, i64* %3, align 8
  br label %125

61:                                               ; preds = %30
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = icmp ne %struct.TYPE_19__* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %123

71:                                               ; preds = %66, %61
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %73 = call i64 @ngx_http_write_request_body(%struct.TYPE_20__* %72)
  %74 = load i64, i64* @NGX_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %77, i64* %3, align 8
  br label %125

78:                                               ; preds = %71
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %122

86:                                               ; preds = %78
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 3
  %92 = call %struct.TYPE_22__* @ngx_chain_get_free_buf(i32 %89, i32* %91)
  store %struct.TYPE_22__* %92, %struct.TYPE_22__** %7, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %94 = icmp eq %struct.TYPE_22__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %96, i64* %3, align 8
  br label %125

97:                                               ; preds = %86
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %99, align 8
  store %struct.TYPE_23__* %100, %struct.TYPE_23__** %6, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %102 = call i32 @ngx_memzero(%struct.TYPE_23__* %101, i32 56)
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 3
  store %struct.TYPE_18__* %116, %struct.TYPE_18__** %118, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  store %struct.TYPE_22__* %119, %struct.TYPE_22__** %121, align 8
  br label %122

122:                                              ; preds = %97, %78
  br label %123

123:                                              ; preds = %122, %66
  %124 = load i64, i64* @NGX_OK, align 8
  store i64 %124, i64* %3, align 8
  br label %125

125:                                              ; preds = %123, %95, %76, %59, %57, %28, %21
  %126 = load i64, i64* %3, align 8
  ret i64 %126
}

declare dso_local i64 @ngx_chain_add_copy(i32, %struct.TYPE_22__**, %struct.TYPE_22__*) #1

declare dso_local i64 @ngx_http_write_request_body(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_22__* @ngx_chain_get_free_buf(i32, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
