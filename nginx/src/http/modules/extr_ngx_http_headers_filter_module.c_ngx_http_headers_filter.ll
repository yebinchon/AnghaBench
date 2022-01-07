; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_headers_filter.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_headers_filter_module.c_ngx_http_headers_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_16__, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_21__ = type { i64 (%struct.TYPE_19__*, %struct.TYPE_21__*, i32*)*, i32, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_21__* }

@ngx_http_headers_filter_module = common dso_local global i32 0, align 4
@NGX_HTTP_EXPIRES_OFF = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @ngx_http_headers_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_headers_filter(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %13 = icmp ne %struct.TYPE_19__* %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = call i32 @ngx_http_next_header_filter(%struct.TYPE_19__* %15)
  store i32 %16, i32* %2, align 4
  br label %165

17:                                               ; preds = %1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %19 = load i32, i32* @ngx_http_headers_filter_module, align 4
  %20 = call %struct.TYPE_20__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__* %18, i32 %19)
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %8, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NGX_HTTP_EXPIRES_OFF, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %17
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %28, align 8
  %30 = icmp eq %struct.TYPE_17__* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = icmp eq %struct.TYPE_18__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = call i32 @ngx_http_next_header_filter(%struct.TYPE_19__* %37)
  store i32 %38, i32* %2, align 4
  br label %165

39:                                               ; preds = %31, %26, %17
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %45 [
    i32 132, label %44
    i32 137, label %44
    i32 133, label %44
    i32 131, label %44
    i32 136, label %44
    i32 135, label %44
    i32 129, label %44
    i32 134, label %44
    i32 128, label %44
    i32 130, label %44
  ]

44:                                               ; preds = %39, %39, %39, %39, %39, %39, %39, %39, %39, %39
  store i64 1, i64* %6, align 8
  br label %46

45:                                               ; preds = %39
  store i64 0, i64* %6, align 8
  br label %46

46:                                               ; preds = %45, %44
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NGX_HTTP_EXPIRES_OFF, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %58 = call i64 @ngx_http_set_expires(%struct.TYPE_19__* %56, %struct.TYPE_20__* %57)
  %59 = load i64, i64* @NGX_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @NGX_ERROR, align 4
  store i32 %62, i32* %2, align 4
  br label %165

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %52, %46
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = icmp ne %struct.TYPE_17__* %67, null
  br i1 %68, label %69, label %125

69:                                               ; preds = %64
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  store %struct.TYPE_21__* %74, %struct.TYPE_21__** %7, align 8
  store i64 0, i64* %5, align 8
  br label %75

75:                                               ; preds = %121, %69
  %76 = load i64, i64* %5, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %76, %81
  br i1 %82, label %83, label %124

83:                                               ; preds = %75
  %84 = load i64, i64* %6, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %83
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %88 = load i64, i64* %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %121

94:                                               ; preds = %86, %83
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 2
  %100 = call i64 @ngx_http_complex_value(%struct.TYPE_19__* %95, i32* %99, i32* %4)
  %101 = load i64, i64* @NGX_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* @NGX_ERROR, align 4
  store i32 %104, i32* %2, align 4
  br label %165

105:                                              ; preds = %94
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %107 = load i64, i64* %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load i64 (%struct.TYPE_19__*, %struct.TYPE_21__*, i32*)*, i64 (%struct.TYPE_19__*, %struct.TYPE_21__*, i32*)** %109, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %113 = load i64, i64* %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i64 %113
  %115 = call i64 %110(%struct.TYPE_19__* %111, %struct.TYPE_21__* %114, i32* %4)
  %116 = load i64, i64* @NGX_OK, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %105
  %119 = load i32, i32* @NGX_ERROR, align 4
  store i32 %119, i32* %2, align 4
  br label %165

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120, %93
  %122 = load i64, i64* %5, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %5, align 8
  br label %75

124:                                              ; preds = %75
  br label %125

125:                                              ; preds = %124, %64
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %127, align 8
  %129 = icmp ne %struct.TYPE_18__* %128, null
  br i1 %129, label %130, label %162

130:                                              ; preds = %125
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %134, align 8
  store %struct.TYPE_21__* %135, %struct.TYPE_21__** %7, align 8
  store i64 0, i64* %5, align 8
  br label %136

136:                                              ; preds = %158, %130
  %137 = load i64, i64* %5, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ult i64 %137, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %136
  %145 = load i64, i64* %6, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %144
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %149 = load i64, i64* %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %147
  br label %158

155:                                              ; preds = %147, %144
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  store i32 1, i32* %157, align 8
  br label %161

158:                                              ; preds = %154
  %159 = load i64, i64* %5, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %5, align 8
  br label %136

161:                                              ; preds = %155, %136
  br label %162

162:                                              ; preds = %161, %125
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %164 = call i32 @ngx_http_next_header_filter(%struct.TYPE_19__* %163)
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %162, %118, %103, %61, %36, %14
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @ngx_http_next_header_filter(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @ngx_http_get_module_loc_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_http_set_expires(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_19__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
