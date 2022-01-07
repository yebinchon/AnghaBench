; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_run_request.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_run_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_17__*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_PROCESS_REQUEST_STATE = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"client prematurely closed stream\00", align 1
@NGX_HTTP_BAD_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @ngx_http_v2_run_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_v2_run_request(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %7, %struct.TYPE_17__** %3, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %9 = call i64 @ngx_http_v2_construct_request_line(%struct.TYPE_16__* %8)
  %10 = load i64, i64* @NGX_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %90

13:                                               ; preds = %1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %15 = call i64 @ngx_http_v2_construct_cookie_header(%struct.TYPE_16__* %14)
  %16 = load i64, i64* @NGX_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %90

19:                                               ; preds = %13
  %20 = load i32, i32* @NGX_HTTP_PROCESS_REQUEST_STATE, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = call i64 @ngx_http_process_request_header(%struct.TYPE_16__* %23)
  %25 = load i64, i64* @NGX_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %90

28:                                               ; preds = %19
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load i32, i32* @NGX_LOG_INFO, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 3
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ngx_log_error(i32 %42, i32 %47, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %54 = load i32, i32* @NGX_HTTP_BAD_REQUEST, align 4
  %55 = call i32 @ngx_http_finalize_request(%struct.TYPE_16__* %53, i32 %54)
  br label %90

56:                                               ; preds = %34, %28
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %62, %56
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  store %struct.TYPE_15__* %78, %struct.TYPE_15__** %4, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %89 = call i32 @ngx_http_process_request(%struct.TYPE_16__* %88)
  br label %90

90:                                               ; preds = %73, %41, %27, %18, %12
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %92 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_17__* %91)
  ret void
}

declare dso_local i64 @ngx_http_v2_construct_request_line(%struct.TYPE_16__*) #1

declare dso_local i64 @ngx_http_v2_construct_cookie_header(%struct.TYPE_16__*) #1

declare dso_local i64 @ngx_http_process_request_header(%struct.TYPE_16__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_http_process_request(%struct.TYPE_16__*) #1

declare dso_local i32 @ngx_http_run_posted_requests(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
