; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_upstream_keepalive_module.c_ngx_http_upstream_init_keepalive.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_upstream_keepalive_module.c_ngx_http_upstream_init_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i64 (%struct.TYPE_17__*, %struct.TYPE_14__*)*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"init keepalive\00", align 1
@ngx_http_upstream_keepalive_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_upstream_init_keepalive_peer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_14__*)* @ngx_http_upstream_init_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_init_keepalive(%struct.TYPE_17__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %9 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ngx_log_debug0(i32 %9, i32 %12, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = load i32, i32* @ngx_http_upstream_keepalive_module, align 4
  %16 = call %struct.TYPE_15__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_14__* %14, i32 %15)
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %7, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ngx_conf_init_msec_value(i32 %19, i32 60000)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ngx_conf_init_uint_value(i32 %23, i32 100)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64 (%struct.TYPE_17__*, %struct.TYPE_14__*)*, i64 (%struct.TYPE_17__*, %struct.TYPE_14__*)** %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = call i64 %27(%struct.TYPE_17__* %28, %struct.TYPE_14__* %29)
  %31 = load i64, i64* @NGX_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i64, i64* @NGX_ERROR, align 8
  store i64 %34, i64* %3, align 8
  br label %92

35:                                               ; preds = %2
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ngx_http_upstream_init_keepalive_peer, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 16, %52
  %54 = trunc i64 %53 to i32
  %55 = call %struct.TYPE_16__* @ngx_pcalloc(i32 %48, i32 %54)
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** %8, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = icmp eq %struct.TYPE_16__* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %35
  %59 = load i64, i64* @NGX_ERROR, align 8
  store i64 %59, i64* %3, align 8
  br label %92

60:                                               ; preds = %35
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 3
  %63 = call i32 @ngx_queue_init(i32* %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = call i32 @ngx_queue_init(i32* %65)
  store i64 0, i64* %6, align 8
  br label %67

67:                                               ; preds = %87, %60
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %68, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %67
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = call i32 @ngx_queue_insert_head(i32* %76, i32* %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %86, align 8
  br label %87

87:                                               ; preds = %74
  %88 = load i64, i64* %6, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %6, align 8
  br label %67

90:                                               ; preds = %67
  %91 = load i64, i64* @NGX_OK, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %90, %58, %33
  %93 = load i64, i64* %3, align 8
  ret i64 %93
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_15__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_conf_init_msec_value(i32, i32) #1

declare dso_local i32 @ngx_conf_init_uint_value(i32, i32) #1

declare dso_local %struct.TYPE_16__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_queue_init(i32*) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
