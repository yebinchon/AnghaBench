; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_next.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_23__*, i64 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { i64, i64 (%struct.TYPE_27__*)*, %struct.TYPE_28__, %struct.TYPE_22__*, i64, %struct.TYPE_21__* }
%struct.TYPE_28__ = type { i64, i64, %struct.TYPE_20__*, i64, i32*, i32, i32 (%struct.TYPE_28__*, i32, i32)* }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"http next upstream, %xi\00", align 1
@NGX_PEER_NEXT = common dso_local global i32 0, align 4
@NGX_PEER_FAILED = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"upstream timed out\00", align 1
@NGX_HTTP_UPSTREAM_FT_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_GATEWAY_TIME_OUT = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_SERVICE_UNAVAILABLE = common dso_local global i32 0, align 4
@NGX_HTTP_FORBIDDEN = common dso_local global i32 0, align 4
@NGX_HTTP_NOT_FOUND = common dso_local global i32 0, align 4
@NGX_HTTP_TOO_MANY_REQUESTS = common dso_local global i32 0, align 4
@NGX_HTTP_BAD_GATEWAY = common dso_local global i32 0, align 4
@NGX_HTTP_CLIENT_CLOSED_REQUEST = common dso_local global i32 0, align 4
@NGX_HTTP_POST = common dso_local global i32 0, align 4
@NGX_HTTP_LOCK = common dso_local global i32 0, align 4
@NGX_HTTP_PATCH = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_FT_NON_IDEMPOTENT = common dso_local global i32 0, align 4
@ngx_current_msec = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"close http upstream connection: %d\00", align 1
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_HTTP_CACHE_EXPIRED = common dso_local global i64 0, align 8
@NGX_HTTP_CACHE_STALE = common dso_local global i64 0, align 8
@NGX_HTTP_UPSTREAM_INVALID_HEADER = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*, %struct.TYPE_26__*, i32)* @ngx_http_upstream_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_next(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ngx_log_debug1(i32 %10, i32 %15, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %66

23:                                               ; preds = %3
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = icmp ne %struct.TYPE_20__* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %29, %23
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 134
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 133
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @NGX_PEER_NEXT, align 4
  store i32 %47, i32* %9, align 4
  br label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @NGX_PEER_FAILED, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 6
  %54 = load i32 (%struct.TYPE_28__*, i32, i32)*, i32 (%struct.TYPE_28__*, i32, i32)** %53, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 %54(%struct.TYPE_28__* %56, i32 %60, i32 %61)
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 4
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %50, %3
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i32, i32* @NGX_LOG_ERR, align 4
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %77 = call i32 @ngx_log_error(i32 %70, i32 %75, i32 %76, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %69, %66
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_ERROR, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %88, %84, %78
  %95 = load i32, i32* %6, align 4
  switch i32 %95, label %109 [
    i32 128, label %96
    i32 129, label %96
    i32 131, label %98
    i32 130, label %101
    i32 134, label %103
    i32 133, label %105
    i32 132, label %107
  ]

96:                                               ; preds = %94, %94
  %97 = load i32, i32* @NGX_HTTP_GATEWAY_TIME_OUT, align 4
  store i32 %97, i32* %8, align 4
  br label %111

98:                                               ; preds = %94
  %99 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %8, align 4
  br label %111

101:                                              ; preds = %94
  %102 = load i32, i32* @NGX_HTTP_SERVICE_UNAVAILABLE, align 4
  store i32 %102, i32* %8, align 4
  br label %111

103:                                              ; preds = %94
  %104 = load i32, i32* @NGX_HTTP_FORBIDDEN, align 4
  store i32 %104, i32* %8, align 4
  br label %111

105:                                              ; preds = %94
  %106 = load i32, i32* @NGX_HTTP_NOT_FOUND, align 4
  store i32 %106, i32* %8, align 4
  br label %111

107:                                              ; preds = %94
  %108 = load i32, i32* @NGX_HTTP_TOO_MANY_REQUESTS, align 4
  store i32 %108, i32* %8, align 4
  br label %111

109:                                              ; preds = %94
  %110 = load i32, i32* @NGX_HTTP_BAD_GATEWAY, align 4
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %109, %107, %105, %103, %101, %98, %96
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %111
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %121 = load i32, i32* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 4
  %122 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__* %119, %struct.TYPE_26__* %120, i32 %121)
  br label %244

123:                                              ; preds = %111
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 4
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 3
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %7, align 8
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %123
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @NGX_HTTP_POST, align 4
  %143 = load i32, i32* @NGX_HTTP_LOCK, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @NGX_HTTP_PATCH, align 4
  %146 = or i32 %144, %145
  %147 = and i32 %141, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %138
  %150 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_NON_IDEMPOTENT, align 4
  %151 = load i32, i32* %6, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %149, %138, %123
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %191, label %159

159:                                              ; preds = %153
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = and i32 %164, %165
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %191, label %169

169:                                              ; preds = %159
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 4
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %174, %169
  %180 = load i64, i64* %7, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %196

182:                                              ; preds = %179
  %183 = load i64, i64* @ngx_current_msec, align 8
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = sub nsw i64 %183, %187
  %189 = load i64, i64* %7, align 8
  %190 = icmp sge i64 %188, %189
  br i1 %190, label %191, label %196

191:                                              ; preds = %182, %174, %159, %153
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__* %192, %struct.TYPE_26__* %193, i32 %194)
  br label %244

196:                                              ; preds = %182, %179
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %199, align 8
  %201 = icmp ne %struct.TYPE_20__* %200, null
  br i1 %201, label %202, label %240

202:                                              ; preds = %196
  %203 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @ngx_log_debug1(i32 %203, i32 %208, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %214)
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %231

223:                                              ; preds = %202
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = call i32 @ngx_destroy_pool(i64 %229)
  br label %231

231:                                              ; preds = %223, %202
  %232 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %234, align 8
  %236 = call i32 @ngx_close_connection(%struct.TYPE_20__* %235)
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %239, align 8
  br label %240

240:                                              ; preds = %231, %196
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %243 = call i32 @ngx_http_upstream_connect(%struct.TYPE_27__* %241, %struct.TYPE_26__* %242)
  br label %244

244:                                              ; preds = %240, %191, %118
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_27__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @ngx_destroy_pool(i64) #1

declare dso_local i32 @ngx_close_connection(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_http_upstream_connect(%struct.TYPE_27__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
