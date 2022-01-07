; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_control_module.c_ngx_rtmp_control_record.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_control_module.c_ngx_rtmp_control_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i64, i32 }

@ngx_rtmp_control_module = common dso_local global i32 0, align 4
@NGX_RTMP_CONTROL_FILTER_PUBLISHER = common dso_local global i32 0, align 4
@ngx_rtmp_control_record_handler = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_HTTP_NO_CONTENT = common dso_local global i32 0, align 4
@NGX_HTTP_OK = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, i32*)* @ngx_rtmp_control_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_control_record(%struct.TYPE_19__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_20__, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = load i32, i32* @ngx_rtmp_control_module, align 4
  %12 = call %struct.TYPE_18__* @ngx_http_get_module_ctx(%struct.TYPE_19__* %10, i32 %11)
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %9, align 8
  %13 = load i32, i32* @NGX_RTMP_CONTROL_FILTER_PUBLISHER, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = load i32, i32* @ngx_rtmp_control_record_handler, align 4
  %18 = call i8* @ngx_rtmp_control_walk(%struct.TYPE_19__* %16, i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** @NGX_CONF_OK, align 8
  %21 = icmp ne i8* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %78

23:                                               ; preds = %2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @NGX_HTTP_NO_CONTENT, align 4
  store i32 %30, i32* %3, align 4
  br label %80

31:                                               ; preds = %23
  %32 = load i32, i32* @NGX_HTTP_OK, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.TYPE_21__* @ngx_create_temp_buf(i32 %45, i64 %49)
  store %struct.TYPE_21__* %50, %struct.TYPE_21__** %6, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %52 = icmp eq %struct.TYPE_21__* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %31
  br label %78

54:                                               ; preds = %31
  %55 = call i32 @ngx_memzero(%struct.TYPE_20__* %8, i32 8)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  store %struct.TYPE_21__* %56, %struct.TYPE_21__** %57, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @ngx_cpymem(i32 %60, i32 %64, i64 %68)
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %75 = call i32 @ngx_http_send_header(%struct.TYPE_19__* %74)
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %77 = call i32 @ngx_http_output_filter(%struct.TYPE_19__* %76, %struct.TYPE_20__* %8)
  store i32 %77, i32* %3, align 4
  br label %80

78:                                               ; preds = %53, %22
  %79 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %54, %29
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_ctx(%struct.TYPE_19__*, i32) #1

declare dso_local i8* @ngx_rtmp_control_walk(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_cpymem(i32, i32, i64) #1

declare dso_local i32 @ngx_http_send_header(%struct.TYPE_19__*) #1

declare dso_local i32 @ngx_http_output_filter(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
