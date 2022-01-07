; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_resolve_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_resolve_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, %struct.TYPE_19__*, i64, i32, %struct.TYPE_24__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_23__* }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_23__ = type { i64, i32*, %struct.TYPE_19__* }
%struct.TYPE_25__ = type { i64 }

@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"stream upstream resolve\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%V could not be resolved (%i: %s)\00", align 1
@NGX_STREAM_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_current_msec = common dso_local global i32 0, align 4
@ngx_stream_proxy_module = common dso_local global i32 0, align 4
@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*)* @ngx_stream_proxy_resolve_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_stream_proxy_resolve_handler(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %7 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %9, %struct.TYPE_24__** %3, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %4, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_23__* %15, %struct.TYPE_23__** %6, align 8
  %16 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ngx_log_debug0(i32 %16, i32 %21, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %1
  %28 = load i32, i32* @NGX_LOG_ERR, align 4
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ngx_resolver_strerror(i64 %41)
  %43 = call i32 @ngx_log_error(i32 %28, i32 %33, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* %35, i64 %38, i32 %42)
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %45 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %46 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_24__* %44, i32 %45)
  br label %102

47:                                               ; preds = %1
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 2
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %57, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %60 = call i64 @ngx_stream_upstream_create_round_robin_peer(%struct.TYPE_24__* %58, %struct.TYPE_23__* %59)
  %61 = load i64, i64* @NGX_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %65 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %66 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_24__* %64, i32 %65)
  br label %102

67:                                               ; preds = %47
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %69 = call i32 @ngx_resolve_name_done(%struct.TYPE_27__* %68)
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load i32, i32* @ngx_current_msec, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %77 = load i32, i32* @ngx_stream_proxy_module, align 4
  %78 = call %struct.TYPE_25__* @ngx_stream_get_module_srv_conf(%struct.TYPE_24__* %76, i32 %77)
  store %struct.TYPE_25__* %78, %struct.TYPE_25__** %5, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %67
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  store i64 %95, i64* %98, align 8
  br label %99

99:                                               ; preds = %92, %83, %67
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %101 = call i32 @ngx_stream_proxy_connect(%struct.TYPE_24__* %100)
  br label %102

102:                                              ; preds = %99, %63, %27
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, i64, i32) #1

declare dso_local i32 @ngx_resolver_strerror(i64) #1

declare dso_local i32 @ngx_stream_proxy_finalize(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ngx_stream_upstream_create_round_robin_peer(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ngx_resolve_name_done(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_25__* @ngx_stream_get_module_srv_conf(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ngx_stream_proxy_connect(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
