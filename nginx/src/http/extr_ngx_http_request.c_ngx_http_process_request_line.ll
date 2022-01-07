; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_process_request_line.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_process_request_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32 (%struct.TYPE_34__*)*, i64, i32, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, %struct.TYPE_36__*, %struct.TYPE_33__* }
%struct.TYPE_36__ = type { i8* }
%struct.TYPE_33__ = type { i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_26__, %struct.TYPE_28__*, i32, %struct.TYPE_31__, i64, %struct.TYPE_30__, i64, %struct.TYPE_29__, %struct.TYPE_27__ }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_28__ = type { i64, i64 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64, i64 }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_29__ = type { i64, i64 }
%struct.TYPE_27__ = type { i64, i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"http process request line\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@NGX_HTTP_REQUEST_TIME_OUT = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"http request line: \22%V\22\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"client sent invalid host in request line\00", align 1
@NGX_HTTP_BAD_REQUEST = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_VERSION_10 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"reading client request headers\00", align 1
@ngx_http_client_errors = common dso_local global i8** null, align 8
@NGX_HTTP_CLIENT_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_PARSE_INVALID_VERSION = common dso_local global i64 0, align 8
@NGX_HTTP_VERSION_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"client sent too long URI\00", align 1
@NGX_HTTP_REQUEST_URI_TOO_LARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_34__*)* @ngx_http_process_request_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_process_request_line(%struct.TYPE_34__* %0) #0 {
  %2 = alloca %struct.TYPE_34__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_32__, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %2, align 8
  %9 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  store %struct.TYPE_35__* %11, %struct.TYPE_35__** %7, align 8
  %12 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  store %struct.TYPE_33__* %14, %struct.TYPE_33__** %8, align 8
  %15 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %16 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ngx_log_debug0(i32 %15, i32 %18, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = load i32, i32* @NGX_LOG_INFO, align 4
  %26 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %29 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %30 = call i32 @ngx_log_error(i32 %25, %struct.TYPE_36__* %28, i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %34 = load i32, i32* @NGX_HTTP_REQUEST_TIME_OUT, align 4
  %35 = call i32 @ngx_http_close_request(%struct.TYPE_33__* %33, i32 %34)
  br label %349

36:                                               ; preds = %1
  %37 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %345, %36
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @NGX_AGAIN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %44 = call i64 @ngx_http_read_request_header(%struct.TYPE_33__* %43)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @NGX_AGAIN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @NGX_ERROR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %42
  br label %346

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %56, i32 0, i32 8
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %57, align 8
  %59 = call i64 @ngx_http_parse_request_line(%struct.TYPE_33__* %55, %struct.TYPE_28__* %58)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @NGX_OK, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %263

63:                                               ; preds = %54
  %64 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 1
  store i64 %76, i64* %79, align 8
  %80 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %80, i32 0, i32 8
  %82 = load %struct.TYPE_28__*, %struct.TYPE_28__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  %91 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %92 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_36__*, %struct.TYPE_36__** %93, align 8
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 7
  %97 = call i32 @ngx_log_debug1(i32 %91, %struct.TYPE_36__* %94, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_26__* %96)
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = add nsw i64 %104, 1
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %106, i32 0, i32 15
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  store i64 %105, i64* %108, align 8
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 1
  store i64 %112, i64* %115, align 8
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i32 0, i32 14
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %63
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i32 0, i32 14
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %124, %128
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %130, i32 0, i32 14
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 1
  store i64 %129, i64* %132, align 8
  br label %133

133:                                              ; preds = %121, %63
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %135 = call i64 @ngx_http_process_request_uri(%struct.TYPE_33__* %134)
  %136 = load i64, i64* @NGX_OK, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %346

139:                                              ; preds = %133
  %140 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %140, i32 0, i32 13
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %139
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %145, i32 0, i32 13
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 11
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %147, %150
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 12
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 1
  store i64 %151, i64* %154, align 8
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 11
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %158, i32 0, i32 12
  %160 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %159, i32 0, i32 0
  store i64 %157, i64* %160, align 8
  br label %161

161:                                              ; preds = %144, %139
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %215

166:                                              ; preds = %161
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %169, %172
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 0
  store i64 %173, i64* %174, align 8
  %175 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %6, i32 0, i32 1
  store i64 %177, i64* %178, align 8
  %179 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %179, i32 0, i32 9
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @ngx_http_validate_host(%struct.TYPE_32__* %6, i32 %181, i32 0)
  store i64 %182, i64* %4, align 8
  %183 = load i64, i64* %4, align 8
  %184 = load i64, i64* @NGX_DECLINED, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %166
  %187 = load i32, i32* @NGX_LOG_INFO, align 4
  %188 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_36__*, %struct.TYPE_36__** %189, align 8
  %191 = call i32 @ngx_log_error(i32 %187, %struct.TYPE_36__* %190, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %192 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %193 = load i32, i32* @NGX_HTTP_BAD_REQUEST, align 4
  %194 = call i32 @ngx_http_finalize_request(%struct.TYPE_33__* %192, i32 %193)
  br label %346

195:                                              ; preds = %166
  %196 = load i64, i64* %4, align 8
  %197 = load i64, i64* @NGX_ERROR, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %201 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %202 = call i32 @ngx_http_close_request(%struct.TYPE_33__* %200, i32 %201)
  br label %346

203:                                              ; preds = %195
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %205 = call i64 @ngx_http_set_virtual_server(%struct.TYPE_33__* %204, %struct.TYPE_32__* %6)
  %206 = load i64, i64* @NGX_ERROR, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %346

209:                                              ; preds = %203
  %210 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %210, i32 0, i32 10
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 1
  %213 = bitcast %struct.TYPE_32__* %212 to i8*
  %214 = bitcast %struct.TYPE_32__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %213, i8* align 8 %214, i64 16, i1 false)
  br label %215

215:                                              ; preds = %209, %161
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @NGX_HTTP_VERSION_10, align 8
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %221, label %240

221:                                              ; preds = %215
  %222 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %222, i32 0, i32 10
  %224 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %221
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %230 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %230, i32 0, i32 10
  %232 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %231, i32 0, i32 1
  %233 = call i64 @ngx_http_set_virtual_server(%struct.TYPE_33__* %229, %struct.TYPE_32__* %232)
  %234 = load i64, i64* @NGX_ERROR, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %228
  br label %346

237:                                              ; preds = %228, %221
  %238 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %239 = call i32 @ngx_http_process_request(%struct.TYPE_33__* %238)
  br label %346

240:                                              ; preds = %215
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %241, i32 0, i32 10
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 8
  %247 = call i64 @ngx_list_init(i32* %243, i32 %246, i32 20, i32 4)
  %248 = load i64, i64* @NGX_OK, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %254

250:                                              ; preds = %240
  %251 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %252 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %253 = call i32 @ngx_http_close_request(%struct.TYPE_33__* %251, i32 %252)
  br label %346

254:                                              ; preds = %240
  %255 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_36__*, %struct.TYPE_36__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %257, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8** %258, align 8
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %260 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %259, i32 0, i32 0
  store i32 (%struct.TYPE_34__*)* @ngx_http_process_request_headers, i32 (%struct.TYPE_34__*)** %260, align 8
  %261 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %262 = call i32 @ngx_http_process_request_headers(%struct.TYPE_34__* %261)
  br label %346

263:                                              ; preds = %54
  %264 = load i64, i64* %4, align 8
  %265 = load i64, i64* @NGX_AGAIN, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %267, label %291

267:                                              ; preds = %263
  %268 = load i32, i32* @NGX_LOG_INFO, align 4
  %269 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_36__*, %struct.TYPE_36__** %270, align 8
  %272 = load i8**, i8*** @ngx_http_client_errors, align 8
  %273 = load i64, i64* %4, align 8
  %274 = load i64, i64* @NGX_HTTP_CLIENT_ERROR, align 8
  %275 = sub nsw i64 %273, %274
  %276 = getelementptr inbounds i8*, i8** %272, i64 %275
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @ngx_log_error(i32 %268, %struct.TYPE_36__* %271, i32 0, i8* %277)
  %279 = load i64, i64* %4, align 8
  %280 = load i64, i64* @NGX_HTTP_PARSE_INVALID_VERSION, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %267
  %283 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %284 = load i32, i32* @NGX_HTTP_VERSION_NOT_SUPPORTED, align 4
  %285 = call i32 @ngx_http_finalize_request(%struct.TYPE_33__* %283, i32 %284)
  br label %290

286:                                              ; preds = %267
  %287 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %288 = load i32, i32* @NGX_HTTP_BAD_REQUEST, align 4
  %289 = call i32 @ngx_http_finalize_request(%struct.TYPE_33__* %287, i32 %288)
  br label %290

290:                                              ; preds = %286, %282
  br label %346

291:                                              ; preds = %263
  %292 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %292, i32 0, i32 8
  %294 = load %struct.TYPE_28__*, %struct.TYPE_28__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %297, i32 0, i32 8
  %299 = load %struct.TYPE_28__*, %struct.TYPE_28__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = icmp eq i64 %296, %301
  br i1 %302, label %303, label %345

303:                                              ; preds = %291
  %304 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %305 = call i64 @ngx_http_alloc_large_header_buffer(%struct.TYPE_33__* %304, i32 1)
  store i64 %305, i64* %5, align 8
  %306 = load i64, i64* %5, align 8
  %307 = load i64, i64* @NGX_ERROR, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %313

309:                                              ; preds = %303
  %310 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %311 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %312 = call i32 @ngx_http_close_request(%struct.TYPE_33__* %310, i32 %311)
  br label %346

313:                                              ; preds = %303
  %314 = load i64, i64* %5, align 8
  %315 = load i64, i64* @NGX_DECLINED, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %344

317:                                              ; preds = %313
  %318 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %318, i32 0, i32 8
  %320 = load %struct.TYPE_28__*, %struct.TYPE_28__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = sub nsw i64 %322, %325
  %327 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %327, i32 0, i32 7
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 0
  store i64 %326, i64* %329, align 8
  %330 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %333, i32 0, i32 7
  %335 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %334, i32 0, i32 1
  store i64 %332, i64* %335, align 8
  %336 = load i32, i32* @NGX_LOG_INFO, align 4
  %337 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_36__*, %struct.TYPE_36__** %338, align 8
  %340 = call i32 @ngx_log_error(i32 %336, %struct.TYPE_36__* %339, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %341 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %342 = load i32, i32* @NGX_HTTP_REQUEST_URI_TOO_LARGE, align 4
  %343 = call i32 @ngx_http_finalize_request(%struct.TYPE_33__* %341, i32 %342)
  br label %346

344:                                              ; preds = %313
  br label %345

345:                                              ; preds = %344, %291
  br label %38

346:                                              ; preds = %317, %309, %290, %254, %250, %237, %236, %208, %199, %186, %138, %52
  %347 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %348 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_35__* %347)
  br label %349

349:                                              ; preds = %346, %24
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_36__*, i32, i8*) #1

declare dso_local i32 @ngx_http_close_request(%struct.TYPE_33__*, i32) #1

declare dso_local i64 @ngx_http_read_request_header(%struct.TYPE_33__*) #1

declare dso_local i64 @ngx_http_parse_request_line(%struct.TYPE_33__*, %struct.TYPE_28__*) #1

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_36__*, i32, i8*, %struct.TYPE_26__*) #1

declare dso_local i64 @ngx_http_process_request_uri(%struct.TYPE_33__*) #1

declare dso_local i64 @ngx_http_validate_host(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_33__*, i32) #1

declare dso_local i64 @ngx_http_set_virtual_server(%struct.TYPE_33__*, %struct.TYPE_32__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_http_process_request(%struct.TYPE_33__*) #1

declare dso_local i64 @ngx_list_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ngx_http_process_request_headers(%struct.TYPE_34__*) #1

declare dso_local i64 @ngx_http_alloc_large_header_buffer(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @ngx_http_run_posted_requests(%struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
