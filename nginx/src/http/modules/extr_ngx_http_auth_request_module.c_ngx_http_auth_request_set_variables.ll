; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_auth_request_module.c_ngx_http_auth_request_set_variables.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_auth_request_module.c_ngx_http_auth_request_set_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_26__*, %struct.TYPE_22__* }
%struct.TYPE_26__ = type { i32, i32, i32, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, i32 (%struct.TYPE_28__*, %struct.TYPE_26__*, i32)*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_27__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"auth request set variables\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_28__*, %struct.TYPE_21__*, %struct.TYPE_20__*)* @ngx_http_auth_request_set_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_auth_request_set_variables(%struct.TYPE_28__* %0, %struct.TYPE_21__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_25__, align 4
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %14 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ngx_log_debug0(i32 %14, i32 %19, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %22, align 8
  %24 = icmp eq %struct.TYPE_24__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* @NGX_OK, align 8
  store i64 %26, i64* %4, align 8
  br label %106

27:                                               ; preds = %3
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %29 = load i32, i32* @ngx_http_core_module, align 4
  %30 = call %struct.TYPE_29__* @ngx_http_get_module_main_conf(%struct.TYPE_28__* %28, i32 %29)
  store %struct.TYPE_29__* %30, %struct.TYPE_29__** %13, align 8
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  store %struct.TYPE_27__* %34, %struct.TYPE_27__** %9, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %38, align 8
  store %struct.TYPE_30__* %39, %struct.TYPE_30__** %11, align 8
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i64 %46
  store %struct.TYPE_30__* %47, %struct.TYPE_30__** %12, align 8
  br label %48

48:                                               ; preds = %101, %27
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %51 = icmp ult %struct.TYPE_30__* %49, %50
  br i1 %51, label %52, label %104

52:                                               ; preds = %48
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %54, align 8
  %56 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i64 %58
  store %struct.TYPE_26__* %59, %struct.TYPE_26__** %10, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %63, i32 0, i32 2
  %65 = call i64 @ngx_http_complex_value(i32 %62, i32* %64, %struct.TYPE_25__* %8)
  %66 = load i64, i64* @NGX_OK, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %52
  %69 = load i64, i64* @NGX_ERROR, align 8
  store i64 %69, i64* %4, align 8
  br label %106

70:                                               ; preds = %52
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %83, i32 0, i32 1
  %85 = load i32 (%struct.TYPE_28__*, %struct.TYPE_26__*, i32)*, i32 (%struct.TYPE_28__*, %struct.TYPE_26__*, i32)** %84, align 8
  %86 = icmp ne i32 (%struct.TYPE_28__*, %struct.TYPE_26__*, i32)* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %70
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %88, i32 0, i32 1
  %90 = load i32 (%struct.TYPE_28__*, %struct.TYPE_26__*, i32)*, i32 (%struct.TYPE_28__*, %struct.TYPE_26__*, i32)** %89, align 8
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %94 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 %90(%struct.TYPE_28__* %91, %struct.TYPE_26__* %92, i32 %99)
  br label %101

101:                                              ; preds = %87, %70
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 1
  store %struct.TYPE_30__* %103, %struct.TYPE_30__** %11, align 8
  br label %48

104:                                              ; preds = %48
  %105 = load i64, i64* @NGX_OK, align 8
  store i64 %105, i64* %4, align 8
  br label %106

106:                                              ; preds = %104, %68, %25
  %107 = load i64, i64* %4, align 8
  ret i64 %107
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_29__* @ngx_http_get_module_main_conf(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @ngx_http_complex_value(i32, i32*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
