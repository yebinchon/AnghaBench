; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_intercept_errors.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_intercept_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_17__*, %struct.TYPE_20__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_20__ = type { i32*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, %struct.TYPE_21__*, i64, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i64 }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_25__* }

@NGX_HTTP_NOT_FOUND = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_UNAUTHORIZED = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_24__*, %struct.TYPE_23__*)* @ngx_http_upstream_intercept_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_intercept_errors(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %28 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  %29 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_24__* %26, %struct.TYPE_23__* %27, i64 %28)
  %30 = load i64, i64* @NGX_OK, align 8
  store i64 %30, i64* %3, align 8
  br label %118

31:                                               ; preds = %18, %2
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %39, i64* %3, align 8
  br label %118

40:                                               ; preds = %31
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %42 = load i32, i32* @ngx_http_core_module, align 4
  %43 = call %struct.TYPE_26__* @ngx_http_get_module_loc_conf(%struct.TYPE_24__* %41, i32 %42)
  store %struct.TYPE_26__* %43, %struct.TYPE_26__** %10, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = icmp eq %struct.TYPE_18__* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %49, i64* %3, align 8
  br label %118

50:                                               ; preds = %40
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %54, align 8
  store %struct.TYPE_25__* %55, %struct.TYPE_25__** %9, align 8
  store i64 0, i64* %7, align 8
  br label %56

56:                                               ; preds = %113, %50
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %57, %62
  br i1 %63, label %64, label %116

64:                                               ; preds = %56
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %112

72:                                               ; preds = %64
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @NGX_HTTP_UNAUTHORIZED, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %106

76:                                               ; preds = %72
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %106

82:                                               ; preds = %76
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = call i32* @ngx_list_push(i32* %85)
  store i32* %86, i32** %8, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %92 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %93 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_24__* %90, %struct.TYPE_23__* %91, i64 %92)
  %94 = load i64, i64* @NGX_OK, align 8
  store i64 %94, i64* %3, align 8
  br label %118

95:                                               ; preds = %82
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  store i32* %102, i32** %105, align 8
  br label %106

106:                                              ; preds = %95, %76, %72
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_24__* %107, %struct.TYPE_23__* %108, i64 %109)
  %111 = load i64, i64* @NGX_OK, align 8
  store i64 %111, i64* %3, align 8
  br label %118

112:                                              ; preds = %64
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %7, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %7, align 8
  br label %56

116:                                              ; preds = %56
  %117 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %117, i64* %3, align 8
  br label %118

118:                                              ; preds = %116, %106, %89, %48, %38, %25
  %119 = load i64, i64* %3, align 8
  ret i64 %119
}

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_24__*, %struct.TYPE_23__*, i64) #1

declare dso_local %struct.TYPE_26__* @ngx_http_get_module_loc_conf(%struct.TYPE_24__*, i32) #1

declare dso_local i32* @ngx_list_push(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
