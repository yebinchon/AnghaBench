; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_process_request_header.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_process_request_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_21__, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i64, i32, i64, %struct.TYPE_20__*, i32, %struct.TYPE_18__*, %struct.TYPE_16__*, i32*, %struct.TYPE_14__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_VERSION_10 = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"client sent HTTP/1.1 request without \22Host\22 header\00", align 1
@NGX_HTTP_BAD_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"client sent invalid \22Content-Length\22 header\00", align 1
@NGX_HTTP_TRACE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"client sent TRACE method\00", align 1
@NGX_HTTP_NOT_ALLOWED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"identity\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"client sent unknown \22Transfer-Encoding\22: \22%V\22\00", align 1
@NGX_HTTP_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@NGX_HTTP_CONNECTION_KEEP_ALIVE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_process_request_header(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %4 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 8
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 8
  %15 = call i64 @ngx_http_set_virtual_server(%struct.TYPE_23__* %11, %struct.TYPE_14__* %14)
  %16 = load i64, i64* @NGX_ERROR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i64, i64* @NGX_ERROR, align 8
  store i64 %19, i64* %2, align 8
  br label %214

20:                                               ; preds = %10, %1
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NGX_HTTP_VERSION_10, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load i32, i32* @NGX_LOG_INFO, align 4
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %33, i32 %38, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %41 = load i32, i32* @NGX_HTTP_BAD_REQUEST, align 4
  %42 = call i32 @ngx_http_finalize_request(%struct.TYPE_23__* %40, i32 %41)
  %43 = load i64, i64* @NGX_ERROR, align 8
  store i64 %43, i64* %2, align 8
  br label %214

44:                                               ; preds = %26, %20
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = icmp ne %struct.TYPE_16__* %48, null
  br i1 %49, label %50, label %88

50:                                               ; preds = %44
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 6
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @ngx_atoof(i32 %57, i32 %64)
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NGX_ERROR, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %50
  %76 = load i32, i32* @NGX_LOG_INFO, align 4
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %76, i32 %81, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %84 = load i32, i32* @NGX_HTTP_BAD_REQUEST, align 4
  %85 = call i32 @ngx_http_finalize_request(%struct.TYPE_23__* %83, i32 %84)
  %86 = load i64, i64* @NGX_ERROR, align 8
  store i64 %86, i64* %2, align 8
  br label %214

87:                                               ; preds = %50
  br label %88

88:                                               ; preds = %87, %44
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NGX_HTTP_TRACE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load i32, i32* @NGX_LOG_INFO, align 4
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %95, i32 %100, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %103 = load i32, i32* @NGX_HTTP_NOT_ALLOWED, align 4
  %104 = call i32 @ngx_http_finalize_request(%struct.TYPE_23__* %102, i32 %103)
  %105 = load i64, i64* @NGX_ERROR, align 8
  store i64 %105, i64* %2, align 8
  br label %214

106:                                              ; preds = %88
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = icmp ne %struct.TYPE_18__* %110, null
  br i1 %111, label %112, label %179

112:                                              ; preds = %106
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 5
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 7
  br i1 %120, label %121, label %141

121:                                              ; preds = %112
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 5
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @ngx_strncasecmp(i32 %128, i32* bitcast ([8 x i8]* @.str.3 to i32*), i32 7)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %121
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 6
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %134, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  store i64 -1, i64* %137, align 8
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 1
  store i32 1, i32* %140, align 8
  br label %178

141:                                              ; preds = %121, %112
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 5
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 8
  br i1 %149, label %160, label %150

150:                                              ; preds = %141
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 5
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @ngx_strncasecmp(i32 %157, i32* bitcast ([9 x i8]* @.str.4 to i32*), i32 8)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %177

160:                                              ; preds = %150, %141
  %161 = load i32, i32* @NGX_LOG_INFO, align 4
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 5
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 0
  %172 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %161, i32 %166, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_22__* %171)
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %174 = load i32, i32* @NGX_HTTP_NOT_IMPLEMENTED, align 4
  %175 = call i32 @ngx_http_finalize_request(%struct.TYPE_23__* %173, i32 %174)
  %176 = load i64, i64* @NGX_ERROR, align 8
  store i64 %176, i64* %2, align 8
  br label %214

177:                                              ; preds = %150
  br label %178

178:                                              ; preds = %177, %131
  br label %179

179:                                              ; preds = %178, %106
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @NGX_HTTP_CONNECTION_KEEP_ALIVE, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %212

186:                                              ; preds = %179
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %189, align 8
  %191 = icmp ne %struct.TYPE_20__* %190, null
  br i1 %191, label %192, label %211

192:                                              ; preds = %186
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %194, i32 0, i32 3
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @ngx_atotm(i32 %199, i32 %206)
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 4
  store i32 %207, i32* %210, align 8
  br label %211

211:                                              ; preds = %192, %186
  br label %212

212:                                              ; preds = %211, %179
  %213 = load i64, i64* @NGX_OK, align 8
  store i64 %213, i64* %2, align 8
  br label %214

214:                                              ; preds = %212, %160, %94, %75, %32, %18
  %215 = load i64, i64* %2, align 8
  ret i64 %215
}

declare dso_local i64 @ngx_http_set_virtual_server(%struct.TYPE_23__*, %struct.TYPE_14__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @ngx_atoof(i32, i32) #1

declare dso_local i64 @ngx_strncasecmp(i32, i32*, i32) #1

declare dso_local i32 @ngx_atotm(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
