; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_filter_request_body.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_filter_request_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__, %struct.TYPE_16__*, i32, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i64, i32, i64, i64, i32, i32, i64 }
%struct.TYPE_21__ = type { %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32 }

@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"client intended to send body data larger than declared\00", align 1
@NGX_HTTP_BAD_REQUEST = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"client intended to send too large chunked body: %O bytes\00", align 1
@NGX_HTTP_REQUEST_ENTITY_TOO_LARGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"client prematurely closed stream: only %O out of %O bytes of request body received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @ngx_http_v2_filter_request_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_v2_filter_request_body(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %12, %struct.TYPE_19__** %8, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  store %struct.TYPE_22__* %15, %struct.TYPE_22__** %5, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %208

29:                                               ; preds = %23, %1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 2
  %35 = call %struct.TYPE_21__* @ngx_chain_get_free_buf(i32 %32, i32* %34)
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %7, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %37 = icmp eq %struct.TYPE_21__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %39, i32* %2, align 4
  br label %221

40:                                               ; preds = %29
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %42, align 8
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %4, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %45 = call i32 @ngx_memzero(%struct.TYPE_22__* %44, i32 56)
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %161

53:                                               ; preds = %40
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %56, %59
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 8
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %104

85:                                               ; preds = %53
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %88, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %85
  %95 = load i32, i32* @NGX_LOG_INFO, align 4
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %95, i32 %100, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %102 = load i32, i32* @NGX_HTTP_BAD_REQUEST, align 4
  store i32 %102, i32* %2, align 4
  br label %221

103:                                              ; preds = %85
  br label %133

104:                                              ; preds = %53
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %106 = load i32, i32* @ngx_http_core_module, align 4
  %107 = call %struct.TYPE_20__* @ngx_http_get_module_loc_conf(%struct.TYPE_18__* %105, i32 %106)
  store %struct.TYPE_20__* %107, %struct.TYPE_20__** %9, align 8
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %104
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %115, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %112
  %121 = load i32, i32* @NGX_LOG_ERR, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %121, i32 %126, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @NGX_HTTP_REQUEST_ENTITY_TOO_LARGE, align 4
  store i32 %131, i32* %2, align 4
  br label %221

132:                                              ; preds = %112, %104
  br label %133

133:                                              ; preds = %132, %103
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 2
  store i32 1, i32* %135, align 8
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  store i64 %138, i64* %140, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 3
  store i64 %148, i64* %150, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 4
  store i64 %153, i64* %155, align 8
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %133, %40
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %200, label %166

166:                                              ; preds = %161
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, -1
  br i1 %171, label %172, label %197

172:                                              ; preds = %166
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %176, %179
  br i1 %180, label %181, label %197

181:                                              ; preds = %172
  %182 = load i32, i32* @NGX_LOG_INFO, align 4
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %182, i32 %187, i32 0, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %190, i32 %194)
  %196 = load i32, i32* @NGX_HTTP_BAD_REQUEST, align 4
  store i32 %196, i32* %2, align 4
  br label %221

197:                                              ; preds = %172, %166
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 5
  store i32 1, i32* %199, align 8
  br label %200

200:                                              ; preds = %197, %161
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 7
  store i64 ptrtoint (i32 (%struct.TYPE_18__*)* @ngx_http_v2_filter_request_body to i64), i64* %202, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 6
  store i32 %205, i32* %207, align 4
  br label %208

208:                                              ; preds = %200, %28
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %211 = call i32 @ngx_http_top_request_body_filter(%struct.TYPE_18__* %209, %struct.TYPE_21__* %210)
  store i32 %211, i32* %6, align 4
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 1
  %219 = call i32 @ngx_chain_update_chains(i32 %214, i32* %216, i32* %218, %struct.TYPE_21__** %7, i64 ptrtoint (i32 (%struct.TYPE_18__*)* @ngx_http_v2_filter_request_body to i64))
  %220 = load i32, i32* %6, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %208, %181, %120, %94, %38
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.TYPE_21__* @ngx_chain_get_free_buf(i32, i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_20__* @ngx_http_get_module_loc_conf(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_http_top_request_body_filter(%struct.TYPE_18__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_chain_update_chains(i32, i32*, i32*, %struct.TYPE_21__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
