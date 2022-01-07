; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request_body.c_ngx_http_write_request_body.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request_body.c_ngx_http_write_request_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i64, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_24__*, %struct.TYPE_20__* }
%struct.TYPE_24__ = type { %struct.TYPE_24__*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"http write client request body, bufs %p\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_INVALID_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"a client request body is buffered to a temporary file\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*)* @ngx_http_write_request_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_write_request_body(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 6
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %8, align 8
  %13 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %22 = call i32 @ngx_log_debug1(i32 %13, i32 %18, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %21)
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = icmp eq %struct.TYPE_20__* %25, null
  br i1 %26, label %27, label %120

27:                                               ; preds = %1
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_20__* @ngx_pcalloc(i32 %30, i32 48)
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %7, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %33 = icmp eq %struct.TYPE_20__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* @NGX_ERROR, align 8
  store i64 %35, i64* %2, align 8
  br label %179

36:                                               ; preds = %27
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %38 = load i32, i32* @ngx_http_core_module, align 4
  %39 = call %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_21__* %37, i32 %38)
  store %struct.TYPE_23__* %39, %struct.TYPE_23__** %9, align 8
  %40 = load i32, i32* @NGX_INVALID_FILE, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8** %63, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %36
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  store i32 432, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %36
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 1
  store %struct.TYPE_20__* %87, %struct.TYPE_20__** %89, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %91, align 8
  %93 = icmp eq %struct.TYPE_24__* %92, null
  br i1 %93, label %94, label %119

94:                                               ; preds = %86
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 7
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @ngx_create_temp_file(%struct.TYPE_17__* %96, i32 %99, i32 %102, i32 %105, i32 %108, i32 %111)
  %113 = load i64, i64* @NGX_OK, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %94
  %116 = load i64, i64* @NGX_ERROR, align 8
  store i64 %116, i64* %2, align 8
  br label %179

117:                                              ; preds = %94
  %118 = load i64, i64* @NGX_OK, align 8
  store i64 %118, i64* %2, align 8
  br label %179

119:                                              ; preds = %86
  br label %120

120:                                              ; preds = %119, %1
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %122, align 8
  %124 = icmp eq %struct.TYPE_24__* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i64, i64* @NGX_OK, align 8
  store i64 %126, i64* %2, align 8
  br label %179

127:                                              ; preds = %120
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %129, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %132, align 8
  %134 = call i64 @ngx_write_chain_to_temp_file(%struct.TYPE_20__* %130, %struct.TYPE_24__* %133)
  store i64 %134, i64* %4, align 8
  %135 = load i64, i64* %4, align 8
  %136 = load i64, i64* @NGX_ERROR, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %127
  %139 = load i64, i64* @NGX_ERROR, align 8
  store i64 %139, i64* %2, align 8
  br label %179

140:                                              ; preds = %127
  %141 = load i64, i64* %4, align 8
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %141
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 4
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %151, align 8
  store %struct.TYPE_24__* %152, %struct.TYPE_24__** %5, align 8
  br label %153

153:                                              ; preds = %156, %140
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %155 = icmp ne %struct.TYPE_24__* %154, null
  br i1 %155, label %156, label %175

156:                                              ; preds = %153
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 1
  store i32 %161, i32* %165, align 4
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %166, %struct.TYPE_24__** %6, align 8
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %168, align 8
  store %struct.TYPE_24__* %169, %struct.TYPE_24__** %5, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %174 = call i32 @ngx_free_chain(i32 %172, %struct.TYPE_24__* %173)
  br label %153

175:                                              ; preds = %153
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %177, align 8
  %178 = load i64, i64* @NGX_OK, align 8
  store i64 %178, i64* %2, align 8
  br label %179

179:                                              ; preds = %175, %138, %125, %117, %115, %34
  %180 = load i64, i64* %2, align 8
  ret i64 %180
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_20__* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_http_get_module_loc_conf(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ngx_create_temp_file(%struct.TYPE_17__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ngx_write_chain_to_temp_file(%struct.TYPE_20__*, %struct.TYPE_24__*) #1

declare dso_local i32 @ngx_free_chain(i32, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
