; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_postpone_filter_module.c_ngx_http_postpone_filter_in_memory.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_postpone_filter_module.c_ngx_http_postpone_filter_in_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32, %struct.TYPE_16__, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { %struct.TYPE_21__*, i32* }
%struct.TYPE_21__ = type { i32, i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_14__*, %struct.TYPE_20__* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"http postpone filter in memory\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"too big subrequest response: %uz\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"too big subrequest response\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"http postpone filter in memory %uz bytes\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_20__*)* @ngx_http_postpone_filter_in_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_postpone_filter_in_memory(%struct.TYPE_17__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %8, align 8
  %13 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ngx_log_debug0(i32 %13, i32 %16, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = icmp eq %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %90

22:                                               ; preds = %2
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = load i32, i32* @ngx_http_core_module, align 4
  %25 = call %struct.TYPE_18__* @ngx_http_get_module_loc_conf(%struct.TYPE_17__* %23, i32 %24)
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %9, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %51

31:                                               ; preds = %22
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %37, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %31
  %43 = load i32, i32* @NGX_LOG_ERR, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %6, align 8
  %48 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %43, i32 %46, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @NGX_ERROR, align 4
  store i32 %49, i32* %3, align 4
  br label %168

50:                                               ; preds = %31
  br label %55

51:                                               ; preds = %22
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %51, %50
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call %struct.TYPE_21__* @ngx_create_temp_buf(i32 %58, i64 %59)
  store %struct.TYPE_21__* %60, %struct.TYPE_21__** %7, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %62 = icmp eq %struct.TYPE_21__* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @NGX_ERROR, align 4
  store i32 %64, i32* %3, align 4
  br label %168

65:                                               ; preds = %55
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.TYPE_15__* @ngx_alloc_chain_link(i32 %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  store %struct.TYPE_15__* %71, %struct.TYPE_15__** %73, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = icmp eq %struct.TYPE_15__* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %65
  %79 = load i32, i32* @NGX_ERROR, align 4
  store i32 %79, i32* %3, align 4
  br label %168

80:                                               ; preds = %65
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  store %struct.TYPE_21__* %81, %struct.TYPE_21__** %85, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %80, %2
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  store %struct.TYPE_21__* %95, %struct.TYPE_21__** %7, align 8
  br label %96

96:                                               ; preds = %162, %90
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = icmp ne %struct.TYPE_20__* %97, null
  br i1 %98, label %99, label %166

99:                                               ; preds = %96
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = call i64 @ngx_buf_special(%struct.TYPE_14__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %162

106:                                              ; preds = %99
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub i64 %111, %116
  store i64 %117, i64* %6, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %121, %124
  %126 = icmp ugt i64 %118, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %106
  %128 = load i32, i32* @NGX_LOG_ERR, align 4
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %128, i32 %131, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* @NGX_ERROR, align 4
  store i32 %133, i32* %3, align 4
  br label %168

134:                                              ; preds = %106
  %135 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %6, align 8
  %140 = call i32 @ngx_log_debug1(i32 %135, i32 %138, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %139)
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %6, align 8
  %150 = call i64 @ngx_cpymem(i64 %143, i64 %148, i64 %149)
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  store i64 %157, i64* %161, align 8
  br label %162

162:                                              ; preds = %134, %105
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %164, align 8
  store %struct.TYPE_20__* %165, %struct.TYPE_20__** %5, align 8
  br label %96

166:                                              ; preds = %96
  %167 = load i32, i32* @NGX_OK, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %166, %127, %78, %63, %42
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_18__* @ngx_http_get_module_loc_conf(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_21__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local %struct.TYPE_15__* @ngx_alloc_chain_link(i32) #1

declare dso_local i64 @ngx_buf_special(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ngx_cpymem(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
