; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_headers_expires.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_headers_expires.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_13__*, %struct.TYPE_17__* }

@NGX_HTTP_EXPIRES_UNSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_HTTP_EXPIRES_ACCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"modified\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"invalid value\00", align 1
@NGX_HTTP_EXPIRES_MODIFIED = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_17__*, i32*, i8*)* @ngx_http_headers_expires to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_headers_expires(%struct.TYPE_17__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca %struct.TYPE_16__, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %8, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NGX_HTTP_EXPIRES_UNSET, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %105

23:                                               ; preds = %3
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %10, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load i64, i64* @NGX_HTTP_EXPIRES_ACCESS, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  store i64 1, i64* %12, align 8
  br label %51

39:                                               ; preds = %23
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ngx_strcmp(i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %105

47:                                               ; preds = %39
  %48 = load i64, i64* @NGX_HTTP_EXPIRES_MODIFIED, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i64 2, i64* %12, align 8
  br label %51

51:                                               ; preds = %47, %35
  %52 = call i32 @ngx_memzero(%struct.TYPE_16__* %14, i32 24)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 2
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 1
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %59, align 8
  %60 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_16__* %14)
  %61 = load i64, i64* @NGX_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %64, i8** %4, align 8
  br label %105

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %89

69:                                               ; preds = %65
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.TYPE_15__* @ngx_palloc(i32 %72, i32 8)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  store %struct.TYPE_15__* %73, %struct.TYPE_15__** %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = icmp eq %struct.TYPE_15__* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %69
  %81 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %81, i8** %4, align 8
  br label %105

82:                                               ; preds = %69
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = bitcast %struct.TYPE_15__* %85 to i8*
  %87 = bitcast %struct.TYPE_15__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %86, i8* align 8 %87, i64 8, i1 false)
  %88 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %88, i8** %4, align 8
  br label %105

89:                                               ; preds = %65
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %91 = load i64, i64* %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i64 %91
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = call i64 @ngx_http_parse_expires(%struct.TYPE_13__* %92, i64* %94, i32* %96, i8** %9)
  store i64 %97, i64* %11, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* @NGX_OK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %89
  %102 = load i8*, i8** %9, align 8
  store i8* %102, i8** %4, align 8
  br label %105

103:                                              ; preds = %89
  %104 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %104, i8** %4, align 8
  br label %105

105:                                              ; preds = %103, %101, %82, %80, %63, %46, %22
  %106 = load i8*, i8** %4, align 8
  ret i8* %106
}

declare dso_local i64 @ngx_strcmp(i32, i8*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @ngx_palloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_http_parse_expires(%struct.TYPE_13__*, i64*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
