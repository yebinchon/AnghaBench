; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_xslt_filter_module.c_ngx_http_xslt_body_filter.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_xslt_filter_module.c_ngx_http_xslt_body_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_20__*, %struct.TYPE_24__* }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_26__*, %struct.TYPE_25__*, i64 }
%struct.TYPE_26__ = type { i32* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_26__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"xslt filter body\00", align 1
@ngx_http_xslt_filter_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"not well formed XML document\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, %struct.TYPE_24__*)* @ngx_http_xslt_body_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_xslt_body_filter(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %9 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ngx_log_debug0(i32 %9, i32 %14, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %17 = icmp eq %struct.TYPE_24__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %21 = call i64 @ngx_http_next_body_filter(%struct.TYPE_23__* %19, %struct.TYPE_24__* %20)
  store i64 %21, i64* %3, align 8
  br label %135

22:                                               ; preds = %2
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %24 = load i32, i32* @ngx_http_xslt_filter_module, align 4
  %25 = call %struct.TYPE_22__* @ngx_http_get_module_ctx(%struct.TYPE_23__* %23, i32 %24)
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %8, align 8
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %27 = icmp eq %struct.TYPE_22__* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %22
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %36 = call i64 @ngx_http_next_body_filter(%struct.TYPE_23__* %34, %struct.TYPE_24__* %35)
  store i64 %36, i64* %3, align 8
  br label %135

37:                                               ; preds = %28
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %38, %struct.TYPE_24__** %7, align 8
  br label %39

39:                                               ; preds = %129, %37
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %41 = icmp ne %struct.TYPE_24__* %40, null
  br i1 %41, label %42, label %133

42:                                               ; preds = %39
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  %48 = call i64 @ngx_http_xslt_add_chunk(%struct.TYPE_23__* %43, %struct.TYPE_22__* %44, %struct.TYPE_20__* %47)
  %49 = load i64, i64* @NGX_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %42
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %55, align 8
  %57 = icmp ne %struct.TYPE_26__* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %62, align 8
  %64 = call i32 @xmlFreeDoc(%struct.TYPE_26__* %63)
  br label %65

65:                                               ; preds = %58, %51
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %67, align 8
  %69 = call i32 @xmlFreeParserCtxt(%struct.TYPE_25__* %68)
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %72 = call i64 @ngx_http_xslt_send(%struct.TYPE_23__* %70, %struct.TYPE_22__* %71, i32* null)
  store i64 %72, i64* %3, align 8
  br label %135

73:                                               ; preds = %42
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %128

87:                                               ; preds = %80, %73
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %91, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  store %struct.TYPE_26__* %92, %struct.TYPE_26__** %94, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %6, align 4
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %101, align 8
  %103 = call i32 @xmlFreeParserCtxt(%struct.TYPE_25__* %102)
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %87
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %111 = call i32* @ngx_http_xslt_apply_stylesheet(%struct.TYPE_23__* %109, %struct.TYPE_22__* %110)
  %112 = call i64 @ngx_http_xslt_send(%struct.TYPE_23__* %107, %struct.TYPE_22__* %108, i32* %111)
  store i64 %112, i64* %3, align 8
  br label %135

113:                                              ; preds = %87
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %115, align 8
  %117 = call i32 @xmlFreeDoc(%struct.TYPE_26__* %116)
  %118 = load i32, i32* @NGX_LOG_ERR, align 4
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ngx_log_error(i32 %118, i32 %123, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %127 = call i64 @ngx_http_xslt_send(%struct.TYPE_23__* %125, %struct.TYPE_22__* %126, i32* null)
  store i64 %127, i64* %3, align 8
  br label %135

128:                                              ; preds = %80
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %131, align 8
  store %struct.TYPE_24__* %132, %struct.TYPE_24__** %7, align 8
  br label %39

133:                                              ; preds = %39
  %134 = load i64, i64* @NGX_OK, align 8
  store i64 %134, i64* %3, align 8
  br label %135

135:                                              ; preds = %133, %113, %106, %65, %33, %18
  %136 = load i64, i64* %3, align 8
  ret i64 %136
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_next_body_filter(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_22__* @ngx_http_get_module_ctx(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @ngx_http_xslt_add_chunk(%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @xmlFreeDoc(%struct.TYPE_26__*) #1

declare dso_local i32 @xmlFreeParserCtxt(%struct.TYPE_25__*) #1

declare dso_local i64 @ngx_http_xslt_send(%struct.TYPE_23__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32* @ngx_http_xslt_apply_stylesheet(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
