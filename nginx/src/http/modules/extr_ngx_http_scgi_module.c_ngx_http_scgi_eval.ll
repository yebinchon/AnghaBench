; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_scgi_module.c_ngx_http_scgi_eval.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_scgi_module.c_ngx_http_scgi_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, %struct.TYPE_18__*, i32, i64 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s in upstream \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, %struct.TYPE_21__*)* @ngx_http_scgi_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_scgi_eval(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %8 = call i32 @ngx_memzero(%struct.TYPE_19__* %6, i32 40)
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 5
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @ngx_http_script_run(%struct.TYPE_22__* %9, i32* %10, i32 %15, i32 0, i32 %20)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @NGX_ERROR, align 8
  store i64 %24, i64* %3, align 8
  br label %122

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @ngx_parse_url(i32 %29, %struct.TYPE_19__* %6)
  %31 = load i64, i64* @NGX_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 6
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i32, i32* @NGX_LOG_ERR, align 4
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 5
  %47 = call i32 @ngx_log_error(i32 %38, i32 %43, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %45, i32* %46)
  br label %48

48:                                               ; preds = %37, %33
  %49 = load i64, i64* @NGX_ERROR, align 8
  store i64 %49, i64* %3, align 8
  br label %122

50:                                               ; preds = %25
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %52, align 8
  store %struct.TYPE_20__* %53, %struct.TYPE_20__** %7, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.TYPE_23__* @ngx_pcalloc(i32 %56, i32 4)
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  store %struct.TYPE_23__* %57, %struct.TYPE_23__** %59, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  %63 = icmp eq %struct.TYPE_23__* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load i64, i64* @NGX_ERROR, align 8
  store i64 %65, i64* %3, align 8
  br label %122

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = icmp ne %struct.TYPE_18__* %68, null
  br i1 %69, label %70, label %102

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 4
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 6
  store i32 %75, i32* %79, align 4
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 5
  store i32 %84, i32* %88, align 4
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 4
  store i32 %93, i32* %97, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  br label %102

102:                                              ; preds = %70, %66
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 3
  store i32 %104, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  store i32 %110, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 1
  store i32 %116, i32* %120, align 4
  %121 = load i64, i64* @NGX_OK, align 8
  store i64 %121, i64* %3, align 8
  br label %122

122:                                              ; preds = %102, %64, %48, %23
  %123 = load i64, i64* %3, align 8
  ret i64 %123
}

declare dso_local i32 @ngx_memzero(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @ngx_http_script_run(%struct.TYPE_22__*, i32*, i32, i32, i32) #1

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, i32*) #1

declare dso_local %struct.TYPE_23__* @ngx_pcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
