; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_header.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_42__ = type { %struct.TYPE_36__*, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_41__ = type { i64 (%struct.TYPE_42__*)*, %struct.TYPE_40__, i64, %struct.TYPE_39__*, %struct.TYPE_38__, %struct.TYPE_37__, i64, i32, %struct.TYPE_34__, %struct.TYPE_33__*, i32 }
%struct.TYPE_40__ = type { i64, i32, i32 }
%struct.TYPE_39__ = type { i64, i32 }
%struct.TYPE_38__ = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_37__ = type { i64, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i64 (%struct.TYPE_31__*, i64, i64)*, %struct.TYPE_32__*, %struct.TYPE_35__* }
%struct.TYPE_32__ = type { i8* }
%struct.TYPE_35__ = type { i64 }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"http upstream process header\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"reading response header from upstream\00", align 1
@NGX_HTTP_UPSTREAM_FT_TIMEOUT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_UPSTREAM_FT_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"upstream prematurely closed connection\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"upstream sent too big header\00", align 1
@NGX_HTTP_UPSTREAM_FT_INVALID_HEADER = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_INVALID_HEADER = common dso_local global i64 0, align 8
@ngx_current_msec = common dso_local global i64 0, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@rev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_42__*, %struct.TYPE_41__*)* @ngx_http_upstream_process_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_process_header(%struct.TYPE_42__* %0, %struct.TYPE_41__* %1) #0 {
  %3 = alloca %struct.TYPE_42__*, align 8
  %4 = alloca %struct.TYPE_41__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  store %struct.TYPE_42__* %0, %struct.TYPE_42__** %3, align 8
  store %struct.TYPE_41__* %1, %struct.TYPE_41__** %4, align 8
  %8 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  store %struct.TYPE_31__* %11, %struct.TYPE_31__** %7, align 8
  %12 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %13 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %16 = call i32 @ngx_log_debug0(i32 %12, %struct.TYPE_32__* %15, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %29 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %30 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_TIMEOUT, align 4
  %31 = call i32 @ngx_http_upstream_next(%struct.TYPE_42__* %28, %struct.TYPE_41__* %29, i32 %30)
  br label %311

32:                                               ; preds = %2
  %33 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %39 = call i64 @ngx_http_upstream_test_connect(%struct.TYPE_31__* %38)
  %40 = load i64, i64* @NGX_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %44 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %45 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_ERROR, align 4
  %46 = call i32 @ngx_http_upstream_next(%struct.TYPE_42__* %43, %struct.TYPE_41__* %44, i32 %45)
  br label %311

47:                                               ; preds = %37, %32
  %48 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %148

54:                                               ; preds = %47
  %55 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %58, i32 0, i32 9
  %60 = load %struct.TYPE_33__*, %struct.TYPE_33__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32* @ngx_palloc(i32 %57, i32 %62)
  %64 = ptrtoint i32* %63 to i64
  %65 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %66, i32 0, i32 1
  store i64 %64, i64* %67, align 8
  %68 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %54
  %75 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %76 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %77 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %78 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_42__* %75, %struct.TYPE_41__* %76, i32 %77)
  br label %311

79:                                               ; preds = %54
  %80 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %85, i32 0, i32 0
  store i64 %83, i64* %86, align 8
  %87 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %92, i32 0, i32 2
  store i64 %90, i64* %93, align 8
  %94 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %98, i32 0, i32 9
  %100 = load %struct.TYPE_33__*, %struct.TYPE_33__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %97, %103
  %105 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %106, i32 0, i32 3
  store i64 %104, i64* %107, align 8
  %108 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %109, i32 0, i32 4
  store i32 1, i32* %110, align 8
  %111 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %116, i32 0, i32 5
  store i32 %114, i32* %117, align 4
  %118 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @ngx_list_init(i32* %120, i32 %123, i32 8, i32 4)
  %125 = load i64, i64* @NGX_OK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %79
  %128 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %129 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %130 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %131 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_42__* %128, %struct.TYPE_41__* %129, i32 %130)
  br label %311

132:                                              ; preds = %79
  %133 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @ngx_list_init(i32* %135, i32 %138, i32 2, i32 4)
  %140 = load i64, i64* @NGX_OK, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %132
  %143 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %144 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %145 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %146 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_42__* %143, %struct.TYPE_41__* %144, i32 %145)
  br label %311

147:                                              ; preds = %132
  br label %148

148:                                              ; preds = %147, %47
  br label %149

149:                                              ; preds = %249, %148
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %150, i32 0, i32 0
  %152 = load i64 (%struct.TYPE_31__*, i64, i64)*, i64 (%struct.TYPE_31__*, i64, i64)** %151, align 8
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %154 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = sub nsw i64 %161, %165
  %167 = call i64 %152(%struct.TYPE_31__* %153, i64 %157, i64 %166)
  store i64 %167, i64* %5, align 8
  %168 = load i64, i64* %5, align 8
  %169 = load i64, i64* @NGX_AGAIN, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %149
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_35__*, %struct.TYPE_35__** %173, align 8
  %175 = call i64 @ngx_handle_read_event(%struct.TYPE_35__* %174, i32 0)
  %176 = load i64, i64* @NGX_OK, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %171
  %179 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %180 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %181 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %182 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_42__* %179, %struct.TYPE_41__* %180, i32 %181)
  br label %311

183:                                              ; preds = %171
  br label %311

184:                                              ; preds = %149
  %185 = load i64, i64* %5, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load i32, i32* @NGX_LOG_ERR, align 4
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_32__*, %struct.TYPE_32__** %190, align 8
  %192 = call i32 @ngx_log_error(i32 %188, %struct.TYPE_32__* %191, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %193

193:                                              ; preds = %187, %184
  %194 = load i64, i64* %5, align 8
  %195 = load i64, i64* @NGX_ERROR, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %200, label %197

197:                                              ; preds = %193
  %198 = load i64, i64* %5, align 8
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %197, %193
  %201 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %202 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %203 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_ERROR, align 4
  %204 = call i32 @ngx_http_upstream_next(%struct.TYPE_42__* %201, %struct.TYPE_41__* %202, i32 %203)
  br label %311

205:                                              ; preds = %197
  %206 = load i64, i64* %5, align 8
  %207 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %207, i32 0, i32 3
  %209 = load %struct.TYPE_39__*, %struct.TYPE_39__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %206
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %210, align 8
  %215 = load i64, i64* %5, align 8
  %216 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %219, %215
  store i64 %220, i64* %218, align 8
  %221 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %221, i32 0, i32 0
  %223 = load i64 (%struct.TYPE_42__*)*, i64 (%struct.TYPE_42__*)** %222, align 8
  %224 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %225 = call i64 %223(%struct.TYPE_42__* %224)
  store i64 %225, i64* %6, align 8
  %226 = load i64, i64* %6, align 8
  %227 = load i64, i64* @NGX_AGAIN, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %250

229:                                              ; preds = %205
  %230 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %234, i32 0, i32 4
  %236 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %233, %237
  br i1 %238, label %239, label %249

239:                                              ; preds = %229
  %240 = load i32, i32* @NGX_LOG_ERR, align 4
  %241 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %242, align 8
  %244 = call i32 @ngx_log_error(i32 %240, %struct.TYPE_32__* %243, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %245 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %246 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %247 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_INVALID_HEADER, align 4
  %248 = call i32 @ngx_http_upstream_next(%struct.TYPE_42__* %245, %struct.TYPE_41__* %246, i32 %247)
  br label %311

249:                                              ; preds = %229
  br label %149

250:                                              ; preds = %205
  br label %251

251:                                              ; preds = %250
  %252 = load i64, i64* %6, align 8
  %253 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %251
  %256 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %257 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %258 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_INVALID_HEADER, align 4
  %259 = call i32 @ngx_http_upstream_next(%struct.TYPE_42__* %256, %struct.TYPE_41__* %257, i32 %258)
  br label %311

260:                                              ; preds = %251
  %261 = load i64, i64* %6, align 8
  %262 = load i64, i64* @NGX_ERROR, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  %265 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %266 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %267 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %268 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_42__* %265, %struct.TYPE_41__* %266, i32 %267)
  br label %311

269:                                              ; preds = %260
  %270 = load i64, i64* @ngx_current_msec, align 8
  %271 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = sub nsw i64 %270, %273
  %275 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %275, i32 0, i32 3
  %277 = load %struct.TYPE_39__*, %struct.TYPE_39__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %277, i32 0, i32 0
  store i64 %274, i64* %278, align 8
  %279 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %284 = icmp sge i64 %282, %283
  br i1 %284, label %285, label %300

285:                                              ; preds = %269
  %286 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %287 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %288 = call i64 @ngx_http_upstream_test_next(%struct.TYPE_42__* %286, %struct.TYPE_41__* %287)
  %289 = load i64, i64* @NGX_OK, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %292

291:                                              ; preds = %285
  br label %311

292:                                              ; preds = %285
  %293 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %294 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %295 = call i64 @ngx_http_upstream_intercept_errors(%struct.TYPE_42__* %293, %struct.TYPE_41__* %294)
  %296 = load i64, i64* @NGX_OK, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %299

298:                                              ; preds = %292
  br label %311

299:                                              ; preds = %292
  br label %300

300:                                              ; preds = %299, %269
  %301 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %302 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %303 = call i64 @ngx_http_upstream_process_headers(%struct.TYPE_42__* %301, %struct.TYPE_41__* %302)
  %304 = load i64, i64* @NGX_OK, align 8
  %305 = icmp ne i64 %303, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %300
  br label %311

307:                                              ; preds = %300
  %308 = load %struct.TYPE_42__*, %struct.TYPE_42__** %3, align 8
  %309 = load %struct.TYPE_41__*, %struct.TYPE_41__** %4, align 8
  %310 = call i32 @ngx_http_upstream_send_response(%struct.TYPE_42__* %308, %struct.TYPE_41__* %309)
  br label %311

311:                                              ; preds = %307, %306, %298, %291, %264, %255, %239, %200, %183, %178, %142, %127, %74, %42, %27
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_32__*, i32, i8*) #1

declare dso_local i32 @ngx_http_upstream_next(%struct.TYPE_42__*, %struct.TYPE_41__*, i32) #1

declare dso_local i64 @ngx_http_upstream_test_connect(%struct.TYPE_31__*) #1

declare dso_local i32* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_42__*, %struct.TYPE_41__*, i32) #1

declare dso_local i64 @ngx_list_init(i32*, i32, i32, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_32__*, i32, i8*) #1

declare dso_local i64 @ngx_http_upstream_test_next(%struct.TYPE_42__*, %struct.TYPE_41__*) #1

declare dso_local i64 @ngx_http_upstream_intercept_errors(%struct.TYPE_42__*, %struct.TYPE_41__*) #1

declare dso_local i64 @ngx_http_upstream_process_headers(%struct.TYPE_42__*, %struct.TYPE_41__*) #1

declare dso_local i32 @ngx_http_upstream_send_response(%struct.TYPE_42__*, %struct.TYPE_41__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
