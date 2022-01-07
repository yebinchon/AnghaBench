; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_geoip_module.c_ngx_stream_geoip_city.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_geoip_module.c_ngx_stream_geoip_city.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@GEOIP_MEMORY_CACHE = common dso_local global i32 0, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"GeoIP_open(\22%V\22) failed\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@GEOIP_CHARSET_UTF8 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"invalid GeoIP City database \22%V\22 type:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_13__*, i32*, i8*)* @ngx_stream_geoip_city to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_geoip_city(%struct.TYPE_13__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %91

17:                                               ; preds = %3
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %9, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i32, i32* @GEOIP_MEMORY_CACHE, align 4
  %29 = call %struct.TYPE_14__* @GeoIP_open(i8* %27, i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = icmp eq %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %17
  %37 = load i32, i32* @NGX_LOG_EMERG, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 1
  %41 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, %struct.TYPE_12__*, ...) @ngx_conf_log_error(i32 %37, %struct.TYPE_13__* %38, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %40)
  %42 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %42, i8** %4, align 8
  br label %91

43:                                               ; preds = %17
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %71

50:                                               ; preds = %43
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 2
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @ngx_strcmp(i64 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = load i32, i32* @GEOIP_CHARSET_UTF8, align 4
  %62 = call i32 @GeoIP_set_charset(%struct.TYPE_14__* %60, i32 %61)
  br label %70

63:                                               ; preds = %50
  %64 = load i32, i32* @NGX_LOG_EMERG, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 2
  %68 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, %struct.TYPE_12__*, ...) @ngx_conf_log_error(i32 %64, %struct.TYPE_13__* %65, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_12__* %67)
  %69 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %69, i8** %4, align 8
  br label %91

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %43
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %79 [
    i32 131, label %77
    i32 129, label %77
  ]

77:                                               ; preds = %71, %71
  %78 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %78, i8** %4, align 8
  br label %91

79:                                               ; preds = %71
  %80 = load i32, i32* @NGX_LOG_EMERG, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i64 1
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, %struct.TYPE_13__*, i32, i8*, %struct.TYPE_12__*, ...) @ngx_conf_log_error(i32 %80, %struct.TYPE_13__* %81, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_12__* %83, i32 %88)
  %90 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %90, i8** %4, align 8
  br label %91

91:                                               ; preds = %79, %77, %63, %36, %16
  %92 = load i8*, i8** %4, align 8
  ret i8* %92
}

declare dso_local %struct.TYPE_14__* @GeoIP_open(i8*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_13__*, i32, i8*, %struct.TYPE_12__*, ...) #1

declare dso_local i64 @ngx_strcmp(i64, i8*) #1

declare dso_local i32 @GeoIP_set_charset(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
