; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_copy_filter_module.c_ngx_http_copy_filter.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_copy_filter_module.c_ngx_http_copy_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32*, i32, i32, i32, i32, %struct.TYPE_18__*, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_20__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"http copy filter: \22%V?%V\22\00", align 1
@ngx_http_copy_filter_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@ngx_http_next_body_filter = common dso_local global i64 0, align 8
@NGX_HTTP_COPY_BUFFERED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"http copy filter: %i \22%V?%V\22\00", align 1
@NGX_HTTP_AIO_ON = common dso_local global i64 0, align 8
@NGX_HTTP_AIO_THREADS = common dso_local global i64 0, align 8
@ngx_file_aio = common dso_local global i64 0, align 8
@ngx_http_copy_aio_handler = common dso_local global i32 0, align 4
@ngx_http_copy_aio_sendfile_preload = common dso_local global i32 0, align 4
@ngx_http_copy_thread_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_22__*)* @ngx_http_copy_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_copy_filter(%struct.TYPE_18__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 9
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %7, align 8
  %14 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = call i32 @ngx_log_debug2(i32 %14, i32 %17, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* %19, i32* %21)
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %24 = load i32, i32* @ngx_http_copy_filter_module, align 4
  %25 = call %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_18__* %23, i32 %24)
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %8, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %27 = icmp eq %struct.TYPE_17__* %26, null
  br i1 %27, label %28, label %114

28:                                               ; preds = %2
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.TYPE_17__* @ngx_pcalloc(i32 %31, i32 80)
  store %struct.TYPE_17__* %32, %struct.TYPE_17__** %8, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %34 = icmp eq %struct.TYPE_17__* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @NGX_ERROR, align 4
  store i32 %36, i32* %3, align 4
  br label %147

37:                                               ; preds = %28
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %40 = load i32, i32* @ngx_http_copy_filter_module, align 4
  %41 = call i32 @ngx_http_set_ctx(%struct.TYPE_18__* %38, %struct.TYPE_17__* %39, i32 %40)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %43 = load i32, i32* @ngx_http_copy_filter_module, align 4
  %44 = call i8* @ngx_http_get_module_loc_conf(%struct.TYPE_18__* %42, i32 %43)
  %45 = bitcast i8* %44 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %45, %struct.TYPE_20__** %10, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %47 = load i32, i32* @ngx_http_core_module, align 4
  %48 = call i8* @ngx_http_get_module_loc_conf(%struct.TYPE_18__* %46, i32 %47)
  %49 = bitcast i8* %48 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %9, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 13
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %37
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 7
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %59, %37
  %65 = phi i1 [ true, %37 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 12
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 11
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 10
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 9
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 8
  store i64 ptrtoint (i32* @ngx_http_copy_filter_module to i64), i64* %90, align 8
  %91 = load i64, i64* @ngx_http_next_body_filter, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 7
  store i64 %91, i64* %93, align 8
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 6
  store %struct.TYPE_18__* %94, %struct.TYPE_18__** %96, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %98 = icmp ne %struct.TYPE_22__* %97, null
  br i1 %98, label %99, label %113

99:                                               ; preds = %64
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i64 @ngx_buf_size(i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %104, %99, %64
  br label %114

114:                                              ; preds = %113, %2
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %117 = call i32 @ngx_output_chain(%struct.TYPE_17__* %115, %struct.TYPE_22__* %116)
  store i32 %117, i32* %6, align 4
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %114
  %123 = load i32, i32* @NGX_HTTP_COPY_BUFFERED, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %135

129:                                              ; preds = %114
  %130 = load i32, i32* @NGX_HTTP_COPY_BUFFERED, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %129, %122
  %136 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  %145 = call i32 @ngx_log_debug3(i32 %136, i32 %139, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32* %142, i32* %144)
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %135, %35
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i8* @ngx_http_get_module_loc_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @ngx_buf_size(i64) #1

declare dso_local i32 @ngx_output_chain(%struct.TYPE_17__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
