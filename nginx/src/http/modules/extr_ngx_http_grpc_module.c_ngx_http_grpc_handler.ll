; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_20__*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__*, %struct.TYPE_15__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__ }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@ngx_http_grpc_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"grpc://\00", align 1
@ngx_http_grpc_create_request = common dso_local global i32 0, align 4
@ngx_http_grpc_reinit_request = common dso_local global i32 0, align 4
@ngx_http_grpc_process_header = common dso_local global i32 0, align 4
@ngx_http_grpc_abort_request = common dso_local global i32 0, align 4
@ngx_http_grpc_finalize_request = common dso_local global i32 0, align 4
@ngx_http_grpc_filter_init = common dso_local global i32 0, align 4
@ngx_http_grpc_filter = common dso_local global i32 0, align 4
@ngx_http_upstream_init = common dso_local global i32 0, align 4
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*)* @ngx_http_grpc_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_grpc_handler(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = call i64 @ngx_http_upstream_create(%struct.TYPE_18__* %8)
  %10 = load i64, i64* @NGX_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %13, i64* %2, align 8
  br label %83

14:                                               ; preds = %1
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = load i32, i32* @ngx_http_grpc_module, align 4
  %17 = call %struct.TYPE_19__* @ngx_http_get_module_loc_conf(%struct.TYPE_18__* %15, i32 %16)
  store %struct.TYPE_19__* %17, %struct.TYPE_19__** %7, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %5, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 11
  %23 = call i32 @ngx_str_set(i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 10
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i64 ptrtoint (i32* @ngx_http_grpc_module to i64), i64* %26, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 9
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %30, align 8
  %31 = load i32, i32* @ngx_http_grpc_create_request, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @ngx_http_grpc_reinit_request, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @ngx_http_grpc_process_header, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @ngx_http_grpc_abort_request, align 4
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @ngx_http_grpc_finalize_request, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_20__* @ngx_pcalloc(i32 %48, i32 8)
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %6, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %51 = icmp eq %struct.TYPE_20__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %14
  %53 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %53, i64* %2, align 8
  br label %83

54:                                               ; preds = %14
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %57, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %60 = load i32, i32* @ngx_http_grpc_module, align 4
  %61 = call i32 @ngx_http_set_ctx(%struct.TYPE_18__* %58, %struct.TYPE_20__* %59, i32 %60)
  %62 = load i32, i32* @ngx_http_grpc_filter_init, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @ngx_http_grpc_filter, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  store %struct.TYPE_20__* %68, %struct.TYPE_20__** %70, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %74 = load i32, i32* @ngx_http_upstream_init, align 4
  %75 = call i64 @ngx_http_read_client_request_body(%struct.TYPE_18__* %73, i32 %74)
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %54
  %80 = load i64, i64* %4, align 8
  store i64 %80, i64* %2, align 8
  br label %83

81:                                               ; preds = %54
  %82 = load i64, i64* @NGX_DONE, align 8
  store i64 %82, i64* %2, align 8
  br label %83

83:                                               ; preds = %81, %79, %52, %12
  %84 = load i64, i64* %2, align 8
  ret i64 %84
}

declare dso_local i64 @ngx_http_upstream_create(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_loc_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local %struct.TYPE_20__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_18__*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_http_read_client_request_body(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
