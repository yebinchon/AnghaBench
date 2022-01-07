; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_variables.c_ngx_http_get_indexed_variable.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_variables.c_ngx_http_get_indexed_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i64 (%struct.TYPE_17__*, %struct.TYPE_15__*, i32)*, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_16__* }

@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unknown variable index: %ui\00", align 1
@ngx_http_variable_depth = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"cycle while evaluating variable \22%V\22\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_VAR_NOCACHEABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @ngx_http_get_indexed_variable(%struct.TYPE_17__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = load i32, i32* @ngx_http_core_module, align 4
  %10 = call %struct.TYPE_18__* @ngx_http_get_module_main_conf(%struct.TYPE_17__* %8, i32 %9)
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %7, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %2
  %18 = load i32, i32* @NGX_LOG_ALERT, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @ngx_log_error(i32 %18, i32 %23, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %24)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %131

26:                                               ; preds = %2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %26
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35, %26
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i64 %48
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %3, align 8
  br label %131

50:                                               ; preds = %35
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %6, align 8
  %55 = load i64, i64* @ngx_http_variable_depth, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = load i32, i32* @NGX_LOG_ERR, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 3
  %68 = ptrtoint i32* %67 to i64
  %69 = call i32 @ngx_log_error(i32 %58, i32 %63, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %68)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %131

70:                                               ; preds = %50
  %71 = load i64, i64* @ngx_http_variable_depth, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* @ngx_http_variable_depth, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i64 (%struct.TYPE_17__*, %struct.TYPE_15__*, i32)*, i64 (%struct.TYPE_17__*, %struct.TYPE_15__*, i32)** %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i64 %82
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i64 %77(%struct.TYPE_17__* %78, %struct.TYPE_15__* %83, i32 %88)
  %90 = load i64, i64* @NGX_OK, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %116

92:                                               ; preds = %70
  %93 = load i64, i64* @ngx_http_variable_depth, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* @ngx_http_variable_depth, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = load i64, i64* %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @NGX_HTTP_VAR_NOCACHEABLE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %92
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = load i64, i64* %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  br label %110

110:                                              ; preds = %103, %92
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %112, align 8
  %114 = load i64, i64* %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i64 %114
  store %struct.TYPE_15__* %115, %struct.TYPE_15__** %3, align 8
  br label %131

116:                                              ; preds = %70
  %117 = load i64, i64* @ngx_http_variable_depth, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* @ngx_http_variable_depth, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = load i64, i64* %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = load i64, i64* %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %131

131:                                              ; preds = %116, %110, %57, %44, %17
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %132
}

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_main_conf(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
