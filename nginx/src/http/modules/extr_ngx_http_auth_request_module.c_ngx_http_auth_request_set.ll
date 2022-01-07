; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_auth_request_module.c_ngx_http_auth_request_set.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_auth_request_module.c_ngx_http_auth_request_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8*, i32 }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_21__ = type { i64, i32, i32* }
%struct.TYPE_23__ = type { i64, i32, i32 }
%struct.TYPE_22__ = type { i32*, %struct.TYPE_20__*, %struct.TYPE_25__* }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid variable name \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_UNSET_PTR = common dso_local global i32* null, align 8
@NGX_HTTP_VAR_CHANGEABLE = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_auth_request_variable = common dso_local global i32* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_25__*, i32*, i8*)* @ngx_http_auth_request_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_auth_request_set(%struct.TYPE_25__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %14, %struct.TYPE_24__** %8, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %9, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i64 1
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 36
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load i32, i32* @NGX_LOG_EMERG, align 4
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i64 1
  %33 = call i32 @ngx_conf_log_error(i32 %29, %struct.TYPE_25__* %30, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_20__* %32)
  %34 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %34, i8** %4, align 8
  br label %133

35:                                               ; preds = %3
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %43, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32*, i32** @NGX_CONF_UNSET_PTR, align 8
  %50 = icmp eq i32* %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %35
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32* @ngx_array_create(i32 %54, i32 1, i32 16)
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %63, i8** %4, align 8
  br label %133

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %35
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call %struct.TYPE_23__* @ngx_array_push(i32* %68)
  store %struct.TYPE_23__* %69, %struct.TYPE_23__** %11, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %71 = icmp eq %struct.TYPE_23__* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %73, i8** %4, align 8
  br label %133

74:                                               ; preds = %65
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i64 1
  %78 = load i32, i32* @NGX_HTTP_VAR_CHANGEABLE, align 4
  %79 = call %struct.TYPE_21__* @ngx_http_add_variable(%struct.TYPE_25__* %75, %struct.TYPE_20__* %77, i32 %78)
  store %struct.TYPE_21__* %79, %struct.TYPE_21__** %10, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %81 = icmp eq %struct.TYPE_21__* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %83, i8** %4, align 8
  br label %133

84:                                               ; preds = %74
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i64 1
  %88 = call i64 @ngx_http_get_variable_index(%struct.TYPE_25__* %85, %struct.TYPE_20__* %87)
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NGX_ERROR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %97, i8** %4, align 8
  br label %133

98:                                               ; preds = %84
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load i32*, i32** @ngx_http_auth_request_variable, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  store i32* %104, i32** %106, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %108 = ptrtoint %struct.TYPE_23__* %107 to i64
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %103, %98
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = call i32 @ngx_memzero(%struct.TYPE_22__* %12, i32 24)
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 2
  store %struct.TYPE_25__* %118, %struct.TYPE_25__** %119, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i64 2
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 1
  store %struct.TYPE_20__* %121, %struct.TYPE_20__** %122, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  store i32* %124, i32** %125, align 8
  %126 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_22__* %12)
  %127 = load i64, i64* @NGX_OK, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %111
  %130 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %130, i8** %4, align 8
  br label %133

131:                                              ; preds = %111
  %132 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %132, i8** %4, align 8
  br label %133

133:                                              ; preds = %131, %129, %96, %82, %72, %62, %28
  %134 = load i8*, i8** %4, align 8
  ret i8* %134
}

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_25__*, i32, i8*, %struct.TYPE_20__*) #1

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_array_push(i32*) #1

declare dso_local %struct.TYPE_21__* @ngx_http_add_variable(%struct.TYPE_25__*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_http_get_variable_index(%struct.TYPE_25__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
