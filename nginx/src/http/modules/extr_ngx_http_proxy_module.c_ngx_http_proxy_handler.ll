; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32, %struct.TYPE_28__, i32, i64, %struct.TYPE_29__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_30__*, i32, i32, %struct.TYPE_26__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_27__*, %struct.TYPE_25__, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_30__*, i32 }
%struct.TYPE_27__ = type { i64, i32, i32, i32* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_32__ = type { i64, %struct.TYPE_27__, i32*, i64, i64, i64, %struct.TYPE_24__, i32* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@ngx_http_proxy_module = common dso_local global i32 0, align 4
@ngx_http_proxy_create_request = common dso_local global i32 0, align 4
@ngx_http_proxy_reinit_request = common dso_local global i32 0, align 4
@ngx_http_proxy_process_status_line = common dso_local global i32 0, align 4
@ngx_http_proxy_abort_request = common dso_local global i32 0, align 4
@ngx_http_proxy_finalize_request = common dso_local global i32 0, align 4
@ngx_http_proxy_rewrite_redirect = common dso_local global i32 0, align 4
@ngx_http_proxy_rewrite_cookie = common dso_local global i32 0, align 4
@ngx_http_proxy_copy_filter = common dso_local global i32 0, align 4
@ngx_http_proxy_input_filter_init = common dso_local global i32 0, align 4
@ngx_http_proxy_non_buffered_copy_filter = common dso_local global i32 0, align 4
@NGX_HTTP_VERSION_11 = common dso_local global i64 0, align 8
@ngx_http_upstream_init = common dso_local global i32 0, align 4
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@ngx_http_proxy_create_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_30__*)* @ngx_http_proxy_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_proxy_handler(%struct.TYPE_30__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  %8 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %9 = call i64 @ngx_http_upstream_create(%struct.TYPE_30__* %8)
  %10 = load i64, i64* @NGX_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %13, i64* %2, align 8
  br label %193

14:                                               ; preds = %1
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @ngx_pcalloc(i32 %17, i32 4)
  %19 = bitcast i8* %18 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %6, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %21 = icmp eq %struct.TYPE_23__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %23, i64* %2, align 8
  br label %193

24:                                               ; preds = %14
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %27 = load i32, i32* @ngx_http_proxy_module, align 4
  %28 = call i32 @ngx_http_set_ctx(%struct.TYPE_30__* %25, %struct.TYPE_23__* %26, i32 %27)
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %30 = load i32, i32* @ngx_http_proxy_module, align 4
  %31 = call %struct.TYPE_32__* @ngx_http_get_module_loc_conf(%struct.TYPE_30__* %29, i32 %30)
  store %struct.TYPE_32__* %31, %struct.TYPE_32__** %7, align 8
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  store %struct.TYPE_29__* %34, %struct.TYPE_29__** %5, align 8
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %24
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %42, i32 0, i32 6
  %44 = bitcast %struct.TYPE_24__* %41 to i8*
  %45 = bitcast %struct.TYPE_24__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 8 %45, i64 4, i1 false)
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 18
  store i32 %49, i32* %51, align 4
  br label %62

52:                                               ; preds = %24
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %56 = call i64 @ngx_http_proxy_eval(%struct.TYPE_30__* %53, %struct.TYPE_23__* %54, %struct.TYPE_32__* %55)
  %57 = load i64, i64* @NGX_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %60, i64* %2, align 8
  br label %193

61:                                               ; preds = %52
  br label %62

62:                                               ; preds = %61, %39
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %63, i32 0, i32 16
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  store i64 ptrtoint (i32* @ngx_http_proxy_module to i64), i64* %65, align 8
  %66 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 15
  store %struct.TYPE_27__* %67, %struct.TYPE_27__** %69, align 8
  %70 = load i32, i32* @ngx_http_proxy_create_request, align 4
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %71, i32 0, i32 12
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @ngx_http_proxy_reinit_request, align 4
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 11
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @ngx_http_proxy_process_status_line, align 4
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 10
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @ngx_http_proxy_abort_request, align 4
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 9
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @ngx_http_proxy_finalize_request, align 4
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %62
  %92 = load i32, i32* @ngx_http_proxy_rewrite_redirect, align 4
  %93 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %62
  %96 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100, %95
  %106 = load i32, i32* @ngx_http_proxy_rewrite_cookie, align 4
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i8* @ngx_pcalloc(i32 %118, i32 4)
  %120 = bitcast i8* %119 to %struct.TYPE_26__*
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 4
  store %struct.TYPE_26__* %120, %struct.TYPE_26__** %122, align 8
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %124, align 8
  %126 = icmp eq %struct.TYPE_26__* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %109
  %128 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %128, i64* %2, align 8
  br label %193

129:                                              ; preds = %109
  %130 = load i32, i32* @ngx_http_proxy_copy_filter, align 4
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 1
  store i32 %130, i32* %134, align 8
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  store %struct.TYPE_30__* %135, %struct.TYPE_30__** %139, align 8
  %140 = load i32, i32* @ngx_http_proxy_input_filter_init, align 4
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @ngx_http_proxy_non_buffered_copy_filter, align 4
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i32 0, i32 1
  store %struct.TYPE_30__* %146, %struct.TYPE_30__** %148, align 8
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %182, label %156

156:                                              ; preds = %129
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %182

161:                                              ; preds = %156
  %162 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %161
  %168 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @NGX_HTTP_VERSION_11, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %173, %167
  %180 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  br label %182

182:                                              ; preds = %179, %173, %161, %156, %129
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %184 = load i32, i32* @ngx_http_upstream_init, align 4
  %185 = call i64 @ngx_http_read_client_request_body(%struct.TYPE_30__* %183, i32 %184)
  store i64 %185, i64* %4, align 8
  %186 = load i64, i64* %4, align 8
  %187 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %188 = icmp sge i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %182
  %190 = load i64, i64* %4, align 8
  store i64 %190, i64* %2, align 8
  br label %193

191:                                              ; preds = %182
  %192 = load i64, i64* @NGX_DONE, align 8
  store i64 %192, i64* %2, align 8
  br label %193

193:                                              ; preds = %191, %189, %127, %59, %22, %12
  %194 = load i64, i64* %2, align 8
  ret i64 %194
}

declare dso_local i64 @ngx_http_upstream_create(%struct.TYPE_30__*) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_30__*, %struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_32__* @ngx_http_get_module_loc_conf(%struct.TYPE_30__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_http_proxy_eval(%struct.TYPE_30__*, %struct.TYPE_23__*, %struct.TYPE_32__*) #1

declare dso_local i64 @ngx_http_read_client_request_body(%struct.TYPE_30__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
