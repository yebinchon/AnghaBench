; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mirror_module.c_ngx_http_mirror_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mirror_module.c_ngx_http_mirror_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64, i32* }

@NGX_DECLINED = common dso_local global i64 0, align 8
@ngx_http_mirror_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"mirror handler\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@ngx_http_mirror_body_handler = common dso_local global i32 0, align 4
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*)* @ngx_http_mirror_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_mirror_handler(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %11 = icmp ne %struct.TYPE_17__* %7, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %13, i64* %2, align 8
  br label %79

14:                                               ; preds = %1
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %16 = load i32, i32* @ngx_http_mirror_module, align 4
  %17 = call %struct.TYPE_18__* @ngx_http_get_module_loc_conf(%struct.TYPE_17__* %15, i32 %16)
  store %struct.TYPE_18__* %17, %struct.TYPE_18__** %6, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %23, i64* %2, align 8
  br label %79

24:                                               ; preds = %14
  %25 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ngx_log_debug0(i32 %25, i32 %30, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %76

36:                                               ; preds = %24
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %38 = load i32, i32* @ngx_http_mirror_module, align 4
  %39 = call %struct.TYPE_19__* @ngx_http_get_module_ctx(%struct.TYPE_17__* %37, i32 %38)
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %5, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %41 = icmp ne %struct.TYPE_19__* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %2, align 8
  br label %79

46:                                               ; preds = %36
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.TYPE_19__* @ngx_pcalloc(i32 %49, i32 8)
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %5, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %52 = icmp eq %struct.TYPE_19__* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i64, i64* @NGX_ERROR, align 8
  store i64 %54, i64* %2, align 8
  br label %79

55:                                               ; preds = %46
  %56 = load i64, i64* @NGX_DONE, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %61 = load i32, i32* @ngx_http_mirror_module, align 4
  %62 = call i32 @ngx_http_set_ctx(%struct.TYPE_17__* %59, %struct.TYPE_19__* %60, i32 %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %64 = load i32, i32* @ngx_http_mirror_body_handler, align 4
  %65 = call i64 @ngx_http_read_client_request_body(%struct.TYPE_17__* %63, i32 %64)
  store i64 %65, i64* %4, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %68 = icmp sge i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %55
  %70 = load i64, i64* %4, align 8
  store i64 %70, i64* %2, align 8
  br label %79

71:                                               ; preds = %55
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = load i64, i64* @NGX_DONE, align 8
  %74 = call i32 @ngx_http_finalize_request(%struct.TYPE_17__* %72, i64 %73)
  %75 = load i64, i64* @NGX_DONE, align 8
  store i64 %75, i64* %2, align 8
  br label %79

76:                                               ; preds = %24
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = call i64 @ngx_http_mirror_handler_internal(%struct.TYPE_17__* %77)
  store i64 %78, i64* %2, align 8
  br label %79

79:                                               ; preds = %76, %71, %69, %53, %42, %22, %12
  %80 = load i64, i64* %2, align 8
  ret i64 %80
}

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_loc_conf(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_ctx(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_17__*, %struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_http_read_client_request_body(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @ngx_http_mirror_handler_internal(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
