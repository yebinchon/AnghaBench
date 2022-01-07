; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_upgrade.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i64, %struct.TYPE_21__*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_24__*, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, i32, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i64 }

@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"connection upgrade in subrequest\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"proxying upgraded connection\00", align 1
@ngx_http_upstream_upgraded_read_upstream = common dso_local global i32 0, align 4
@ngx_http_upstream_upgraded_write_upstream = common dso_local global i32 0, align 4
@ngx_http_upstream_upgraded_read_downstream = common dso_local global i32 0, align 4
@ngx_http_upstream_upgraded_write_downstream = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_FLUSH = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_20__*)* @ngx_http_upstream_upgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_upgrade(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %9, %struct.TYPE_23__** %5, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %11 = load i32, i32* @ngx_http_core_module, align 4
  %12 = call %struct.TYPE_22__* @ngx_http_get_module_loc_conf(%struct.TYPE_21__* %10, i32 %11)
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %6, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %17 = icmp ne %struct.TYPE_21__* %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32, i32* @NGX_LOG_ERR, align 4
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %23 = call i32 @ngx_log_error(i32 %19, %struct.TYPE_25__* %22, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %26 = load i64, i64* @NGX_ERROR, align 8
  %27 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_21__* %24, %struct.TYPE_20__* %25, i64 %26)
  br label %116

28:                                               ; preds = %2
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = load i32, i32* @ngx_http_upstream_upgraded_read_upstream, align 4
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @ngx_http_upstream_upgraded_write_upstream, align 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @ngx_http_upstream_upgraded_read_downstream, align 4
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @ngx_http_upstream_upgraded_write_downstream, align 4
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %28
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %53 = call i64 @ngx_tcp_nodelay(%struct.TYPE_23__* %52)
  %54 = load i64, i64* @NGX_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = load i64, i64* @NGX_ERROR, align 8
  %60 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_21__* %57, %struct.TYPE_20__* %58, i64 %59)
  br label %116

61:                                               ; preds = %51
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %64, align 8
  %66 = call i64 @ngx_tcp_nodelay(%struct.TYPE_23__* %65)
  %67 = load i64, i64* @NGX_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = load i64, i64* @NGX_ERROR, align 8
  %73 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_21__* %70, %struct.TYPE_20__* %71, i64 %72)
  br label %116

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74, %28
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %77 = load i32, i32* @NGX_HTTP_FLUSH, align 4
  %78 = call i64 @ngx_http_send_special(%struct.TYPE_21__* %76, i32 %77)
  %79 = load i64, i64* @NGX_ERROR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = load i64, i64* @NGX_ERROR, align 8
  %85 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_21__* %82, %struct.TYPE_20__* %83, i64 %84)
  br label %116

86:                                               ; preds = %75
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %86
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %100, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %96, %86
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %108, align 8
  %110 = call i32 @ngx_post_event(%struct.TYPE_24__* %109, i32* @ngx_posted_events)
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %112 = call i32 @ngx_http_upstream_process_upgraded(%struct.TYPE_21__* %111, i32 1, i32 1)
  br label %116

113:                                              ; preds = %96
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %115 = call i32 @ngx_http_upstream_process_upgraded(%struct.TYPE_21__* %114, i32 0, i32 1)
  br label %116

116:                                              ; preds = %113, %106, %81, %69, %56, %18
  ret void
}

declare dso_local %struct.TYPE_22__* @ngx_http_get_module_loc_conf(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_25__*, i32, i8*) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_21__*, %struct.TYPE_20__*, i64) #1

declare dso_local i64 @ngx_tcp_nodelay(%struct.TYPE_23__*) #1

declare dso_local i64 @ngx_http_send_special(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @ngx_http_upstream_process_upgraded(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
