; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_read_request_header.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_read_request_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_19__ = type { i64 (%struct.TYPE_19__*, i64, i64)*, i32, %struct.TYPE_20__*, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32 }

@NGX_AGAIN = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"client prematurely closed connection\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"reading client request headers\00", align 1
@NGX_HTTP_BAD_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*)* @ngx_http_read_request_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_read_request_header(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %6, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %5, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %18, %23
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i64, i64* %4, align 8
  store i64 %28, i64* %2, align 8
  br label %124

29:                                               ; preds = %1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %29
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i64 (%struct.TYPE_19__*, i64, i64)*, i64 (%struct.TYPE_19__*, i64, i64)** %36, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %48, %53
  %55 = call i64 %37(%struct.TYPE_19__* %38, i64 %43, i64 %54)
  store i64 %55, i64* %4, align 8
  br label %58

56:                                               ; preds = %29
  %57 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %56, %34
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* @NGX_AGAIN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %58
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %62
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %69 = load i32, i32* @ngx_http_core_module, align 4
  %70 = call %struct.TYPE_17__* @ngx_http_get_module_srv_conf(%struct.TYPE_16__* %68, i32 %69)
  store %struct.TYPE_17__* %70, %struct.TYPE_17__** %7, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ngx_add_timer(%struct.TYPE_18__* %71, i32 %74)
  br label %76

76:                                               ; preds = %67, %62
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = call i64 @ngx_handle_read_event(%struct.TYPE_18__* %77, i32 0)
  %79 = load i64, i64* @NGX_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %84 = call i32 @ngx_http_close_request(%struct.TYPE_16__* %82, i32 %83)
  %85 = load i64, i64* @NGX_ERROR, align 8
  store i64 %85, i64* %2, align 8
  br label %124

86:                                               ; preds = %76
  %87 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %87, i64* %2, align 8
  br label %124

88:                                               ; preds = %58
  %89 = load i64, i64* %4, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* @NGX_LOG_INFO, align 4
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %94, align 8
  %96 = call i32 @ngx_log_error(i32 %92, %struct.TYPE_20__* %95, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %91, %88
  %98 = load i64, i64* %4, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @NGX_ERROR, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %100, %97
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8** %110, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %112 = load i32, i32* @NGX_HTTP_BAD_REQUEST, align 4
  %113 = call i32 @ngx_http_finalize_request(%struct.TYPE_16__* %111, i32 %112)
  %114 = load i64, i64* @NGX_ERROR, align 8
  store i64 %114, i64* %2, align 8
  br label %124

115:                                              ; preds = %100
  %116 = load i64, i64* %4, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, %116
  store i64 %122, i64* %120, align 8
  %123 = load i64, i64* %4, align 8
  store i64 %123, i64* %2, align 8
  br label %124

124:                                              ; preds = %115, %104, %86, %81, %27
  %125 = load i64, i64* %2, align 8
  ret i64 %125
}

declare dso_local %struct.TYPE_17__* @ngx_http_get_module_srv_conf(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_http_close_request(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
