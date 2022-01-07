; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request_body.c_ngx_http_discarded_request_body_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request_body.c_ngx_http_discarded_request_body_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i32 0, align 4
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_discarded_request_body_handler(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 3
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %6, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %5, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = load i32, i32* @NGX_ERROR, align 4
  %25 = call i32 @ngx_http_finalize_request(%struct.TYPE_12__* %23, i32 %24)
  br label %109

26:                                               ; preds = %1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %26
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i64 (...) @ngx_time()
  %37 = trunc i64 %36 to i32
  %38 = sub nsw i32 %35, %37
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp sle i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = load i32, i32* @NGX_ERROR, align 4
  %49 = call i32 @ngx_http_finalize_request(%struct.TYPE_12__* %47, i32 %48)
  br label %109

50:                                               ; preds = %31
  br label %52

51:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %54 = call i64 @ngx_http_read_discarded_request_body(%struct.TYPE_12__* %53)
  store i64 %54, i64* %3, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @NGX_OK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i64 0, i64* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = load i32, i32* @NGX_DONE, align 4
  %65 = call i32 @ngx_http_finalize_request(%struct.TYPE_12__* %63, i32 %64)
  br label %109

66:                                               ; preds = %52
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = load i32, i32* @NGX_ERROR, align 4
  %75 = call i32 @ngx_http_finalize_request(%struct.TYPE_12__* %73, i32 %74)
  br label %109

76:                                               ; preds = %66
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %78 = call i64 @ngx_handle_read_event(%struct.TYPE_14__* %77, i32 0)
  %79 = load i64, i64* @NGX_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %85 = load i32, i32* @NGX_ERROR, align 4
  %86 = call i32 @ngx_http_finalize_request(%struct.TYPE_12__* %84, i32 %85)
  br label %109

87:                                               ; preds = %76
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %92 = load i32, i32* @ngx_http_core_module, align 4
  %93 = call %struct.TYPE_13__* @ngx_http_get_module_loc_conf(%struct.TYPE_12__* %91, i32 %92)
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %7, align 8
  %94 = load i32, i32* %4, align 4
  %95 = mul nsw i32 %94, 1000
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %90
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %90
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @ngx_add_timer(%struct.TYPE_14__* %106, i32 %107)
  br label %109

109:                                              ; preds = %18, %42, %58, %70, %81, %105, %87
  ret void
}

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ngx_time(...) #1

declare dso_local i64 @ngx_http_read_discarded_request_body(%struct.TYPE_12__*) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_13__* @ngx_http_get_module_loc_conf(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
