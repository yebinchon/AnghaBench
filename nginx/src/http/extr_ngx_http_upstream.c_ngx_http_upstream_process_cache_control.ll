; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_cache_control.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_cache_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__*, i32, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_UPSTREAM_IGN_CACHE_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_18__*, i32)* @ngx_http_upstream_process_cache_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_process_cache_control(%struct.TYPE_20__* %0, %struct.TYPE_18__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_18__**, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %10, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %8, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @ngx_array_init(%struct.TYPE_21__* %22, i32 %25, i32 2, i32 8)
  %27 = load i64, i64* @NGX_OK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i64, i64* @NGX_ERROR, align 8
  store i64 %30, i64* %4, align 8
  br label %43

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %34 = call %struct.TYPE_18__** @ngx_array_push(%struct.TYPE_21__* %33)
  store %struct.TYPE_18__** %34, %struct.TYPE_18__*** %9, align 8
  %35 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  %36 = icmp eq %struct.TYPE_18__** %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, i64* @NGX_ERROR, align 8
  store i64 %38, i64* %4, align 8
  br label %43

39:                                               ; preds = %32
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %41 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %9, align 8
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %41, align 8
  %42 = load i64, i64* @NGX_OK, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %39, %37, %29
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i64 @ngx_array_init(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_18__** @ngx_array_push(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
