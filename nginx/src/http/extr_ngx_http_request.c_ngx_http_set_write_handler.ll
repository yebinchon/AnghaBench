; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_set_write_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_set_write_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32, i64, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32, i32 }

@NGX_HTTP_WRITING_REQUEST_STATE = common dso_local global i32 0, align 4
@ngx_http_discarded_request_body_handler = common dso_local global i32 0, align 4
@ngx_http_test_reading = common dso_local global i32 0, align 4
@ngx_http_writer = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*)* @ngx_http_set_write_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_set_write_handler(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %6 = load i32, i32* @NGX_HTTP_WRITING_REQUEST_STATE, align 4
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ngx_http_discarded_request_body_handler, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ngx_http_test_reading, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @ngx_http_writer, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %4, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %17
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i64, i64* @NGX_OK, align 8
  store i64 %39, i64* %2, align 8
  br label %68

40:                                               ; preds = %33, %17
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = load i32, i32* @ngx_http_core_module, align 4
  %43 = call %struct.TYPE_13__* @ngx_http_get_module_loc_conf(%struct.TYPE_12__* %41, i32 %42)
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %5, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %40
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ngx_add_timer(%struct.TYPE_14__* %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %40
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @ngx_handle_write_event(%struct.TYPE_14__* %55, i32 %58)
  %60 = load i64, i64* @NGX_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %64 = call i32 @ngx_http_close_request(%struct.TYPE_12__* %63, i32 0)
  %65 = load i64, i64* @NGX_ERROR, align 8
  store i64 %65, i64* %2, align 8
  br label %68

66:                                               ; preds = %54
  %67 = load i64, i64* @NGX_OK, align 8
  store i64 %67, i64* %2, align 8
  br label %68

68:                                               ; preds = %66, %62, %38
  %69 = load i64, i64* %2, align 8
  ret i64 %69
}

declare dso_local %struct.TYPE_13__* @ngx_http_get_module_loc_conf(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_http_close_request(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
