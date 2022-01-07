; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_aio_read.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_aio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_20__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__*, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_17__* }

@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_HTTP_AIO_ON = common dso_local global i64 0, align 8
@NGX_HTTP_AIO_THREADS = common dso_local global i64 0, align 8
@ngx_file_aio = common dso_local global i64 0, align 8
@ngx_http_cache_aio_event_handler = common dso_local global i32 0, align 4
@ngx_http_cache_thread_handler = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_17__*, %struct.TYPE_19__*)* @ngx_http_file_cache_aio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_file_cache_aio_read(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %5 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ngx_read_file(%struct.TYPE_20__* %6, i32 %11, i32 %14, i32 0)
  ret i64 %15
}

declare dso_local i64 @ngx_read_file(%struct.TYPE_20__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
