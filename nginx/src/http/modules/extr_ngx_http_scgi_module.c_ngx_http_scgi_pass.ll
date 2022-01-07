; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_scgi_module.c_ngx_http_scgi_pass.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_scgi_module.c_ngx_http_scgi_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_20__ = type { %struct.TYPE_17__, i32, i64 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i64, i32*, i64*, i32*, %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@ngx_http_scgi_handler = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_22__*, i32*, i8*)* @ngx_http_scgi_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_scgi_pass(%struct.TYPE_22__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %8, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %114

28:                                               ; preds = %22
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = load i32, i32* @ngx_http_core_module, align 4
  %31 = call %struct.TYPE_21__* @ngx_http_conf_get_module_loc_conf(%struct.TYPE_22__* %29, i32 %30)
  store %struct.TYPE_21__* %31, %struct.TYPE_21__** %13, align 8
  %32 = load i32, i32* @ngx_http_scgi_handler, align 4
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i64 @ngx_http_script_variables_count(i32* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %28
  %47 = call i32 @ngx_memzero(%struct.TYPE_19__* %14, i32 56)
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 8
  store %struct.TYPE_22__* %48, %struct.TYPE_22__** %49, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 7
  store i32* %50, i32** %51, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 6
  store i64* %53, i64** %54, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 5
  store i32* %56, i32** %57, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 4
  store i64 %58, i64* %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = call i64 @ngx_http_script_compile(%struct.TYPE_19__* %14)
  %63 = load i64, i64* @NGX_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %46
  %66 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %66, i8** %4, align 8
  br label %114

67:                                               ; preds = %46
  %68 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %68, i8** %4, align 8
  br label %114

69:                                               ; preds = %28
  %70 = call i32 @ngx_memzero(%struct.TYPE_19__* %9, i32 56)
  %71 = load i32*, i32** %10, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  store i32 1, i32* %75, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = call i32* @ngx_http_upstream_add(%struct.TYPE_22__* %76, %struct.TYPE_19__* %9, i32 0)
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  store i32* %77, i32** %80, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %69
  %87 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %87, i8** %4, align 8
  br label %114

88:                                               ; preds = %69
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %88
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %98, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 47
  br i1 %108, label %109, label %112

109:                                              ; preds = %94
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %94, %88
  %113 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %113, i8** %4, align 8
  br label %114

114:                                              ; preds = %112, %86, %67, %65, %27
  %115 = load i8*, i8** %4, align 8
  ret i8* %115
}

declare dso_local %struct.TYPE_21__* @ngx_http_conf_get_module_loc_conf(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @ngx_http_script_variables_count(i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_http_script_compile(%struct.TYPE_19__*) #1

declare dso_local i32* @ngx_http_upstream_add(%struct.TYPE_22__*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
