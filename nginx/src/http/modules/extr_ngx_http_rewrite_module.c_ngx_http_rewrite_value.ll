; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_rewrite_module.c_ngx_http_rewrite_value.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_rewrite_module.c_ngx_http_rewrite_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32, i64, i32*, i32**, %struct.TYPE_13__*, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { i64, i64, i64, i32 }
%struct.TYPE_15__ = type { i32*, i32 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_script_value_code = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_http_script_complex_value_code = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_13__*)* @ngx_http_rewrite_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_rewrite_value(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %13 = call i64 @ngx_http_script_variables_count(%struct.TYPE_13__* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %3
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = call i8* @ngx_http_script_start_code(i32 %19, i32* %21, i32 32)
  %23 = bitcast i8* %22 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %10, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %25 = icmp eq %struct.TYPE_14__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %27, i8** %4, align 8
  br label %97

28:                                               ; preds = %16
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @ngx_atoi(i64 %31, i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @NGX_ERROR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  store i64 0, i64* %8, align 8
  br label %40

40:                                               ; preds = %39, %28
  %41 = load i32, i32* @ngx_http_script_value_code, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %57, i8** %4, align 8
  br label %97

58:                                               ; preds = %3
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = call i8* @ngx_http_script_start_code(i32 %61, i32* %63, i32 16)
  %65 = bitcast i8* %64 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %65, %struct.TYPE_15__** %11, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %67 = icmp eq %struct.TYPE_15__* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %69, i8** %4, align 8
  br label %97

70:                                               ; preds = %58
  %71 = load i32, i32* @ngx_http_script_complex_value_code, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  %76 = call i32 @ngx_memzero(%struct.TYPE_16__* %9, i32 48)
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 5
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 4
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  store i32** %82, i32*** %83, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  store i32* %85, i32** %86, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i64 %87, i64* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = call i64 @ngx_http_script_compile(%struct.TYPE_16__* %9)
  %91 = load i64, i64* @NGX_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %70
  %94 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %94, i8** %4, align 8
  br label %97

95:                                               ; preds = %70
  %96 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %96, i8** %4, align 8
  br label %97

97:                                               ; preds = %95, %93, %68, %40, %26
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

declare dso_local i64 @ngx_http_script_variables_count(%struct.TYPE_13__*) #1

declare dso_local i8* @ngx_http_script_start_code(i32, i32*, i32) #1

declare dso_local i64 @ngx_atoi(i64, i64) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @ngx_http_script_compile(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
