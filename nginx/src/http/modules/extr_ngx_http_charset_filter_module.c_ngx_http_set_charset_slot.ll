; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_set_charset_slot.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_set_charset_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@ngx_http_charset_loc_conf_t = common dso_local global i32 0, align 4
@charset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@NGX_HTTP_CHARSET_OFF = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_HTTP_CHARSET_VAR = common dso_local global i64 0, align 8
@ngx_http_charset_filter_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, %struct.TYPE_17__*, i8*)* @ngx_http_set_charset_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_set_charset_slot(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** %9, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NGX_CONF_UNSET, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %106

26:                                               ; preds = %3
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %10, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* @ngx_http_charset_loc_conf_t, align 4
  %37 = load i32, i32* @charset, align 4
  %38 = call i64 @offsetof(i32 %36, i32 %37)
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %26
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i64 1
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @ngx_strcmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i64, i64* @NGX_HTTP_CHARSET_OFF, align 8
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %50, i8** %4, align 8
  br label %106

51:                                               ; preds = %40, %26
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 1
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 36
  br i1 %59, label %60, label %88

60:                                               ; preds = %51
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, 1
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i64 %65, i64* %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i64 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i8* %71, i8** %72, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = call i64 @ngx_http_get_variable_index(%struct.TYPE_16__* %73, %struct.TYPE_14__* %11)
  %75 = load i64*, i64** %9, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i64*, i64** %9, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NGX_ERROR, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %60
  %81 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %81, i8** %4, align 8
  br label %106

82:                                               ; preds = %60
  %83 = load i64, i64* @NGX_HTTP_CHARSET_VAR, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %83
  store i64 %86, i64* %84, align 8
  %87 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %87, i8** %4, align 8
  br label %106

88:                                               ; preds = %51
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %90 = load i32, i32* @ngx_http_charset_filter_module, align 4
  %91 = call %struct.TYPE_15__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_16__* %89, i32 %90)
  store %struct.TYPE_15__* %91, %struct.TYPE_15__** %12, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i64 1
  %96 = call i64 @ngx_http_add_charset(i32* %93, %struct.TYPE_14__* %95)
  %97 = load i64*, i64** %9, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i64*, i64** %9, align 8
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @NGX_ERROR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %88
  %103 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %103, i8** %4, align 8
  br label %106

104:                                              ; preds = %88
  %105 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %105, i8** %4, align 8
  br label %106

106:                                              ; preds = %104, %102, %82, %80, %47, %25
  %107 = load i8*, i8** %4, align 8
  ret i8* %107
}

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local i64 @ngx_http_get_variable_index(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_15__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @ngx_http_add_charset(i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
