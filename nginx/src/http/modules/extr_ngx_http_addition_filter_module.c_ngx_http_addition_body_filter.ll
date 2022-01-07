; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_addition_filter_module.c_ngx_http_addition_body_filter.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_addition_filter_module.c_ngx_http_addition_body_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_19__*, %struct.TYPE_23__* }
%struct.TYPE_19__ = type { i32, i32, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_24__, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }

@ngx_http_addition_filter_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_20__*, %struct.TYPE_23__*)* @ngx_http_addition_body_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_addition_body_filter(%struct.TYPE_20__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %13 = icmp eq %struct.TYPE_23__* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14, %2
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = call i64 @ngx_http_next_body_filter(%struct.TYPE_20__* %20, %struct.TYPE_23__* %21)
  store i64 %22, i64* %3, align 8
  br label %137

23:                                               ; preds = %14
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %25 = load i32, i32* @ngx_http_addition_filter_module, align 4
  %26 = call %struct.TYPE_21__* @ngx_http_get_module_ctx(%struct.TYPE_20__* %24, i32 %25)
  store %struct.TYPE_21__* %26, %struct.TYPE_21__** %10, align 8
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %28 = icmp eq %struct.TYPE_21__* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %32 = call i64 @ngx_http_next_body_filter(%struct.TYPE_20__* %30, %struct.TYPE_23__* %31)
  store i64 %32, i64* %3, align 8
  br label %137

33:                                               ; preds = %23
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = load i32, i32* @ngx_http_addition_filter_module, align 4
  %36 = call %struct.TYPE_22__* @ngx_http_get_module_loc_conf(%struct.TYPE_20__* %34, i32 %35)
  store %struct.TYPE_22__* %36, %struct.TYPE_22__** %11, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %51, i32 0, i32 1
  %53 = call i64 @ngx_http_subrequest(%struct.TYPE_20__* %50, %struct.TYPE_24__* %52, i32* null, %struct.TYPE_20__** %9, i32* null, i32 0)
  %54 = load i64, i64* @NGX_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i64, i64* @NGX_ERROR, align 8
  store i64 %57, i64* %3, align 8
  br label %137

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %41
  br label %60

60:                                               ; preds = %59, %33
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %68 = load i32, i32* @ngx_http_addition_filter_module, align 4
  %69 = call i32 @ngx_http_set_ctx(%struct.TYPE_20__* %67, i32* null, i32 %68)
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %72 = call i64 @ngx_http_next_body_filter(%struct.TYPE_20__* %70, %struct.TYPE_23__* %71)
  store i64 %72, i64* %3, align 8
  br label %137

73:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %74, %struct.TYPE_23__** %8, align 8
  br label %75

75:                                               ; preds = %99, %73
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %77 = icmp ne %struct.TYPE_23__* %76, null
  br i1 %77, label %78, label %103

78:                                               ; preds = %75
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  store i32 1, i32* %7, align 4
  br label %98

98:                                               ; preds = %85, %78
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %101, align 8
  store %struct.TYPE_23__* %102, %struct.TYPE_23__** %8, align 8
  br label %75

103:                                              ; preds = %75
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %106 = call i64 @ngx_http_next_body_filter(%struct.TYPE_20__* %104, %struct.TYPE_23__* %105)
  store i64 %106, i64* %6, align 8
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* @NGX_ERROR, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %119, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113, %110, %103
  %120 = load i64, i64* %6, align 8
  store i64 %120, i64* %3, align 8
  br label %137

121:                                              ; preds = %113
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = call i64 @ngx_http_subrequest(%struct.TYPE_20__* %122, %struct.TYPE_24__* %124, i32* null, %struct.TYPE_20__** %9, i32* null, i32 0)
  %126 = load i64, i64* @NGX_OK, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = load i64, i64* @NGX_ERROR, align 8
  store i64 %129, i64* %3, align 8
  br label %137

130:                                              ; preds = %121
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %132 = load i32, i32* @ngx_http_addition_filter_module, align 4
  %133 = call i32 @ngx_http_set_ctx(%struct.TYPE_20__* %131, i32* null, i32 %132)
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %135 = load i32, i32* @NGX_HTTP_LAST, align 4
  %136 = call i64 @ngx_http_send_special(%struct.TYPE_20__* %134, i32 %135)
  store i64 %136, i64* %3, align 8
  br label %137

137:                                              ; preds = %130, %128, %119, %66, %56, %29, %19
  %138 = load i64, i64* %3, align 8
  ret i64 %138
}

declare dso_local i64 @ngx_http_next_body_filter(%struct.TYPE_20__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_21__* @ngx_http_get_module_ctx(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_http_get_module_loc_conf(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_http_subrequest(%struct.TYPE_20__*, %struct.TYPE_24__*, i32*, %struct.TYPE_20__**, i32*, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i64 @ngx_http_send_special(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
