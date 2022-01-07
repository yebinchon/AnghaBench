; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_create_request.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_create_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i32, i32 }

@ngx_rtmp_notify_module = common dso_local global i32 0, align 4
@NGX_RTMP_NETCALL_HTTP_POST = common dso_local global i64 0, align 8
@ngx_rtmp_notify_urlencoded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, i32*, i64, %struct.TYPE_13__*)* @ngx_rtmp_notify_create_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @ngx_rtmp_notify_create_request(i32* %0, i32* %1, i64 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* @ngx_rtmp_notify_module, align 4
  %17 = call %struct.TYPE_12__* @ngx_rtmp_get_module_app_conf(i32* %15, i32 %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %10, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %20, i64 %21
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %14, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call %struct.TYPE_13__* @ngx_rtmp_netcall_http_format_session(i32* %24, i32* %25)
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %11, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %28 = icmp eq %struct.TYPE_13__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  br label %55

30:                                               ; preds = %4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %33, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %12, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NGX_RTMP_NETCALL_HTTP_POST, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %13, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %41, %struct.TYPE_13__** %11, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %12, align 8
  br label %43

43:                                               ; preds = %39, %30
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call %struct.TYPE_13__* @ngx_rtmp_netcall_http_format_request(i64 %46, i32* %48, i32* %50, %struct.TYPE_13__* %51, %struct.TYPE_13__* %52, i32* %53, i32* @ngx_rtmp_notify_urlencoded)
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %5, align 8
  br label %55

55:                                               ; preds = %43, %29
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  ret %struct.TYPE_13__* %56
}

declare dso_local %struct.TYPE_12__* @ngx_rtmp_get_module_app_conf(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @ngx_rtmp_netcall_http_format_session(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @ngx_rtmp_netcall_http_format_request(i64, i32*, i32*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
