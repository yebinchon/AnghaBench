; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_trailers_filter.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_trailers_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_21__, i64, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_19__*, %struct.TYPE_27__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_23__, i32 }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_26__* }

@ngx_http_headers_filter_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_27__*)* @ngx_http_trailers_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_trailers_filter(%struct.TYPE_24__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_23__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %14 = load i32, i32* @ngx_http_headers_filter_module, align 4
  %15 = call %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_24__* %13, i32 %14)
  store %struct.TYPE_25__* %15, %struct.TYPE_25__** %12, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %17 = icmp eq %struct.TYPE_27__* %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %22 = icmp eq %struct.TYPE_20__* %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28, %23, %18, %2
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %35 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %36 = call i32 @ngx_http_next_body_filter(%struct.TYPE_24__* %34, %struct.TYPE_27__* %35)
  store i32 %36, i32* %3, align 4
  br label %140

37:                                               ; preds = %28
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_27__* %38, %struct.TYPE_27__** %9, align 8
  br label %39

39:                                               ; preds = %51, %37
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %41 = icmp ne %struct.TYPE_27__* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %39
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %55

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %53, align 8
  store %struct.TYPE_27__* %54, %struct.TYPE_27__** %9, align 8
  br label %39

55:                                               ; preds = %49, %39
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %57 = icmp eq %struct.TYPE_27__* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %61 = call i32 @ngx_http_next_body_filter(%struct.TYPE_24__* %59, %struct.TYPE_27__* %60)
  store i32 %61, i32* %3, align 4
  br label %140

62:                                               ; preds = %55
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %68 [
    i32 132, label %67
    i32 137, label %67
    i32 133, label %67
    i32 131, label %67
    i32 136, label %67
    i32 135, label %67
    i32 129, label %67
    i32 134, label %67
    i32 128, label %67
    i32 130, label %67
  ]

67:                                               ; preds = %62, %62, %62, %62, %62, %62, %62, %62, %62, %62
  store i64 1, i64* %8, align 8
  br label %69

68:                                               ; preds = %62
  store i64 0, i64* %8, align 8
  br label %69

69:                                               ; preds = %68, %67
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %73, align 8
  store %struct.TYPE_26__* %74, %struct.TYPE_26__** %11, align 8
  store i64 0, i64* %7, align 8
  br label %75

75:                                               ; preds = %133, %69
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %76, %81
  br i1 %82, label %83, label %136

83:                                               ; preds = %75
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %133

94:                                               ; preds = %86, %83
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 1
  %100 = call i64 @ngx_http_complex_value(%struct.TYPE_24__* %95, i32* %99, %struct.TYPE_23__* %6)
  %101 = load i64, i64* @NGX_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* @NGX_ERROR, align 4
  store i32 %104, i32* %3, align 4
  br label %140

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %105
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = call %struct.TYPE_22__* @ngx_list_push(i32* %112)
  store %struct.TYPE_22__* %113, %struct.TYPE_22__** %10, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %115 = icmp eq %struct.TYPE_22__* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @NGX_ERROR, align 4
  store i32 %117, i32* %3, align 4
  br label %140

118:                                              ; preds = %109
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = bitcast %struct.TYPE_23__* %127 to i8*
  %129 = bitcast %struct.TYPE_23__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %128, i8* align 8 %129, i64 8, i1 false)
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  br label %132

132:                                              ; preds = %118, %105
  br label %133

133:                                              ; preds = %132, %93
  %134 = load i64, i64* %7, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %7, align 8
  br label %75

136:                                              ; preds = %75
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %139 = call i32 @ngx_http_next_body_filter(%struct.TYPE_24__* %137, %struct.TYPE_27__* %138)
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %116, %103, %58, %33
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ngx_http_next_body_filter(%struct.TYPE_24__*, %struct.TYPE_27__*) #1

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_24__*, i32*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @ngx_list_push(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
