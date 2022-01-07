; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_gzip_filter_module.c_ngx_http_gzip_filter_buffer.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_gzip_filter_module.c_ngx_http_gzip_filter_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_17__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i64 }

@NGX_HTTP_GZIP_BUFFERED = common dso_local global i32 0, align 4
@ngx_http_gzip_filter_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_17__*)* @ngx_http_gzip_filter_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_gzip_filter_buffer(%struct.TYPE_15__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__**, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %12, align 8
  %17 = load i32, i32* @NGX_HTTP_GZIP_BUFFERED, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %17
  store i32 %23, i32* %21, align 4
  store i64 0, i64* %7, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  store %struct.TYPE_17__** %25, %struct.TYPE_17__*** %11, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %10, align 8
  br label %29

29:                                               ; preds = %48, %2
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %31 = icmp ne %struct.TYPE_17__* %30, null
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %37, %42
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  store %struct.TYPE_17__** %47, %struct.TYPE_17__*** %11, align 8
  br label %48

48:                                               ; preds = %32
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  store %struct.TYPE_17__* %51, %struct.TYPE_17__** %10, align 8
  br label %29

52:                                               ; preds = %29
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %54 = load i32, i32* @ngx_http_gzip_filter_module, align 4
  %55 = call %struct.TYPE_16__* @ngx_http_get_module_loc_conf(%struct.TYPE_14__* %53, i32 %54)
  store %struct.TYPE_16__* %55, %struct.TYPE_16__** %13, align 8
  br label %56

56:                                               ; preds = %148, %52
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %58 = icmp ne %struct.TYPE_17__* %57, null
  br i1 %58, label %59, label %156

59:                                               ; preds = %56
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.TYPE_17__* @ngx_alloc_chain_link(i32 %62)
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %10, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %65 = icmp eq %struct.TYPE_17__* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @NGX_ERROR, align 4
  store i32 %67, i32* %3, align 4
  br label %168

68:                                               ; preds = %59
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %8, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub i64 %74, %77
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %7, align 8
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %68
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ugt i64 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91, %86, %68
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %91
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %144

105:                                              ; preds = %100
  %106 = load i64, i64* %6, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %144

108:                                              ; preds = %105
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = call %struct.TYPE_18__* @ngx_create_temp_buf(i32 %111, i64 %112)
  store %struct.TYPE_18__* %113, %struct.TYPE_18__** %9, align 8
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %115 = icmp eq %struct.TYPE_18__* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* @NGX_ERROR, align 4
  store i32 %117, i32* %3, align 4
  br label %168

118:                                              ; preds = %108
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i64 @ngx_cpymem(i64 %121, i64 %124, i64 %125)
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 3
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  store i64 ptrtoint (i32* @ngx_http_gzip_filter_module to i64), i64* %140, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  store %struct.TYPE_18__* %141, %struct.TYPE_18__** %143, align 8
  br label %148

144:                                              ; preds = %105, %100
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 1
  store %struct.TYPE_18__* %145, %struct.TYPE_18__** %147, align 8
  br label %148

148:                                              ; preds = %144, %118
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %150 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %11, align 8
  store %struct.TYPE_17__* %149, %struct.TYPE_17__** %150, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 0
  store %struct.TYPE_17__** %152, %struct.TYPE_17__*** %11, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  store %struct.TYPE_17__* %155, %struct.TYPE_17__** %5, align 8
  br label %56

156:                                              ; preds = %56
  %157 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %11, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %157, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %156
  %163 = load i32, i32* @NGX_OK, align 4
  br label %166

164:                                              ; preds = %156
  %165 = load i32, i32* @NGX_DONE, align 4
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i32 [ %163, %162 ], [ %165, %164 ]
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %166, %116, %66
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.TYPE_16__* @ngx_http_get_module_loc_conf(%struct.TYPE_14__*, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_alloc_chain_link(i32) #1

declare dso_local %struct.TYPE_18__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i64 @ngx_cpymem(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
