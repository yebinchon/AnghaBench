; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_main_request_charset.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_main_request_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i32 }

@ngx_http_charset_filter_module = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*)* @ngx_http_main_request_charset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_main_request_charset(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %12 = load i32, i32* @ngx_http_charset_filter_module, align 4
  %13 = call %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_18__* %11, i32 %12)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %8, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %15 = icmp ne %struct.TYPE_17__* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = bitcast %struct.TYPE_15__* %17 to i8*
  %21 = bitcast %struct.TYPE_15__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 8, i1 false)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  br label %69

25:                                               ; preds = %2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %7, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %36, i32* %3, align 4
  br label %69

37:                                               ; preds = %25
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_17__* @ngx_pcalloc(i32 %40, i32 16)
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %8, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %43 = icmp eq %struct.TYPE_17__* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @NGX_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %69

46:                                               ; preds = %37
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = load i32, i32* @ngx_http_charset_filter_module, align 4
  %52 = call i32 @ngx_http_set_ctx(%struct.TYPE_18__* %49, %struct.TYPE_17__* %50, i32 %51)
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %55 = call i32 @ngx_http_get_charset(%struct.TYPE_16__* %53, %struct.TYPE_15__* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = bitcast %struct.TYPE_15__* %60 to i8*
  %63 = bitcast %struct.TYPE_15__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 8, i1 false)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = bitcast %struct.TYPE_15__* %64 to i8*
  %67 = bitcast %struct.TYPE_15__* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 8, i1 false)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %46, %44, %35, %16
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_18__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_17__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_http_get_charset(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
