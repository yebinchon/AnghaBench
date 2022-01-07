; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_core_module.c_ngx_http_core_content_phase.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_core_module.c_ngx_http_core_content_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 (%struct.TYPE_16__*)*, %struct.TYPE_14__*, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_17__ = type { i64 (%struct.TYPE_16__*)*, i64 }
%struct.TYPE_15__ = type { i32 }

@ngx_http_request_empty_handler = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"content phase: %ui\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"directory index of \22%s\22 is forbidden\00", align 1
@NGX_HTTP_FORBIDDEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"no handler found\00", align 1
@NGX_HTTP_NOT_FOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_core_content_phase(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %10, align 8
  %12 = icmp ne i64 (%struct.TYPE_16__*)* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i32, i32* @ngx_http_request_empty_handler, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %19, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = call i64 %20(%struct.TYPE_16__* %21)
  %23 = call i32 @ngx_http_finalize_request(%struct.TYPE_16__* %17, i64 %22)
  %24 = load i64, i64* @NGX_OK, align 8
  store i64 %24, i64* %3, align 8
  br label %108

25:                                               ; preds = %2
  %26 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ngx_log_debug1(i32 %26, i32 %31, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64 (%struct.TYPE_16__*)*, i64 (%struct.TYPE_16__*)** %37, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = call i64 %38(%struct.TYPE_16__* %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @NGX_DECLINED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %25
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @ngx_http_finalize_request(%struct.TYPE_16__* %45, i64 %46)
  %48 = load i64, i64* @NGX_OK, align 8
  store i64 %48, i64* %3, align 8
  br label %108

49:                                               ; preds = %25
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 1
  store %struct.TYPE_17__* %51, %struct.TYPE_17__** %5, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %61, i64* %3, align 8
  br label %108

62:                                               ; preds = %49
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %66, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 47
  br i1 %76, label %77, label %96

77:                                               ; preds = %62
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %79 = call i32* @ngx_http_map_uri_to_path(%struct.TYPE_16__* %78, %struct.TYPE_15__* %8, i64* %6, i32 0)
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i32, i32* @NGX_LOG_ERR, align 4
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %82, i32 %87, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %81, %77
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = load i64, i64* @NGX_HTTP_FORBIDDEN, align 8
  %94 = call i32 @ngx_http_finalize_request(%struct.TYPE_16__* %92, i64 %93)
  %95 = load i64, i64* @NGX_OK, align 8
  store i64 %95, i64* %3, align 8
  br label %108

96:                                               ; preds = %62
  %97 = load i32, i32* @NGX_LOG_ERR, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %97, i32 %102, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %105 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  %106 = call i32 @ngx_http_finalize_request(%struct.TYPE_16__* %104, i64 %105)
  %107 = load i64, i64* @NGX_OK, align 8
  store i64 %107, i64* %3, align 8
  br label %108

108:                                              ; preds = %96, %91, %56, %44, %13
  %109 = load i64, i64* %3, align 8
  ret i64 %109
}

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32* @ngx_http_map_uri_to_path(%struct.TYPE_16__*, %struct.TYPE_15__*, i64*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
