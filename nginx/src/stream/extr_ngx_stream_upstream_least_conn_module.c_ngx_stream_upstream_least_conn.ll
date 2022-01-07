; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream_least_conn_module.c_ngx_stream_upstream_least_conn.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_upstream_least_conn_module.c_ngx_stream_upstream_least_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ngx_stream_upstream_module = common dso_local global i32 0, align 4
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"load balancing method redefined\00", align 1
@ngx_stream_upstream_init_least_conn = common dso_local global i64 0, align 8
@NGX_STREAM_UPSTREAM_CREATE = common dso_local global i32 0, align 4
@NGX_STREAM_UPSTREAM_WEIGHT = common dso_local global i32 0, align 4
@NGX_STREAM_UPSTREAM_MAX_CONNS = common dso_local global i32 0, align 4
@NGX_STREAM_UPSTREAM_MAX_FAILS = common dso_local global i32 0, align 4
@NGX_STREAM_UPSTREAM_FAIL_TIMEOUT = common dso_local global i32 0, align 4
@NGX_STREAM_UPSTREAM_DOWN = common dso_local global i32 0, align 4
@NGX_STREAM_UPSTREAM_BACKUP = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i8*)* @ngx_stream_upstream_least_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_upstream_least_conn(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @ngx_stream_upstream_module, align 4
  %10 = call %struct.TYPE_5__* @ngx_stream_conf_get_module_srv_conf(i32* %8, i32 %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @NGX_LOG_WARN, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @ngx_conf_log_error(i32 %17, i32* %18, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i64, i64* @ngx_stream_upstream_init_least_conn, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load i32, i32* @NGX_STREAM_UPSTREAM_CREATE, align 4
  %26 = load i32, i32* @NGX_STREAM_UPSTREAM_WEIGHT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @NGX_STREAM_UPSTREAM_MAX_CONNS, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @NGX_STREAM_UPSTREAM_MAX_FAILS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @NGX_STREAM_UPSTREAM_FAIL_TIMEOUT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @NGX_STREAM_UPSTREAM_DOWN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @NGX_STREAM_UPSTREAM_BACKUP, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** @NGX_CONF_OK, align 8
  ret i8* %40
}

declare dso_local %struct.TYPE_5__* @ngx_stream_conf_get_module_srv_conf(i32*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
