; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request_body.c_ngx_http_read_client_request_body.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request_body.c_ngx_http_read_client_request_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_25__*, i8*, i64, i8*, i32, i64, %struct.TYPE_24__, %struct.TYPE_23__*, %struct.TYPE_22__*, i32, i64, %struct.TYPE_26__*, i64 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i64, i64, i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_29__*, i32 (%struct.TYPE_25__*)* }
%struct.TYPE_29__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_28__ = type { i32*, %struct.TYPE_22__* }
%struct.TYPE_27__ = type { i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"http client request body preread %uz\00", align 1
@ngx_http_read_client_request_body_handler = common dso_local global i8* null, align 8
@ngx_http_request_empty_handler = common dso_local global i8* null, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"negative request body rest\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i64 0, align 8
@ngx_http_block_reading = common dso_local global i8* null, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_read_client_request_body(%struct.TYPE_25__* %0, i32 (%struct.TYPE_25__*)* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32 (%struct.TYPE_25__*)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_28__, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32 (%struct.TYPE_25__*)* %1, i32 (%struct.TYPE_25__*)** %5, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_25__*, %struct.TYPE_25__** %21, align 8
  %23 = icmp ne %struct.TYPE_25__* %19, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 13
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %28 = icmp ne %struct.TYPE_26__* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 14
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29, %24, %2
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 4
  store i64 0, i64* %36, align 8
  %37 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %5, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %39 = call i32 %37(%struct.TYPE_25__* %38)
  %40 = load i64, i64* @NGX_OK, align 8
  store i64 %40, i64* %3, align 8
  br label %358

41:                                               ; preds = %29
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %43 = call i64 @ngx_http_test_expect(%struct.TYPE_25__* %42)
  %44 = load i64, i64* @NGX_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %47, i64* %8, align 8
  br label %315

48:                                               ; preds = %41
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.TYPE_26__* @ngx_pcalloc(i32 %51, i32 24)
  store %struct.TYPE_26__* %52, %struct.TYPE_26__** %11, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %54 = icmp eq %struct.TYPE_26__* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %56, i64* %8, align 8
  br label %315

57:                                               ; preds = %48
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  store i32 -1, i32* %59, align 8
  %60 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %5, align 8
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 2
  store i32 (%struct.TYPE_25__*)* %60, i32 (%struct.TYPE_25__*)** %62, align 8
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 13
  store %struct.TYPE_26__* %63, %struct.TYPE_26__** %65, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %57
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %5, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %82 = call i32 %80(%struct.TYPE_25__* %81)
  %83 = load i64, i64* @NGX_OK, align 8
  store i64 %83, i64* %3, align 8
  br label %358

84:                                               ; preds = %71, %57
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 10
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 10
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = sub i64 %89, %94
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %217

98:                                               ; preds = %84
  %99 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 9
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %6, align 8
  %106 = call i32 @ngx_log_debug1(i32 %99, i32 %104, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %105)
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 10
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 1
  store %struct.TYPE_22__* %109, %struct.TYPE_22__** %110, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 0
  store i32* null, i32** %111, align 8
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %113 = call i64 @ngx_http_request_body_filter(%struct.TYPE_25__* %112, %struct.TYPE_28__* %10)
  store i64 %113, i64* %8, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* @NGX_OK, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %98
  br label %315

118:                                              ; preds = %98
  %119 = load i64, i64* %6, align 8
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 10
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 10
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = sub i64 %124, %129
  %131 = sub i64 %119, %130
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 11
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = add i64 %135, %131
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %216, label %143

143:                                              ; preds = %118
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %216

148:                                              ; preds = %143
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 10
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 10
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = sub i64 %156, %161
  %163 = trunc i64 %162 to i32
  %164 = icmp sle i32 %151, %163
  br i1 %164, label %165, label %216

165:                                              ; preds = %148
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = call %struct.TYPE_29__* @ngx_calloc_buf(i32 %168)
  store %struct.TYPE_29__* %169, %struct.TYPE_29__** %9, align 8
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %171 = icmp eq %struct.TYPE_29__* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %173, i64* %8, align 8
  br label %315

174:                                              ; preds = %165
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 0
  store i32 1, i32* %176, align 8
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 10
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %182, i32 0, i32 1
  store i64 %181, i64* %183, align 8
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 10
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 2
  store i64 %188, i64* %190, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 10
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 3
  store i64 %195, i64* %197, align 8
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 10
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 4
  store i64 %202, i64* %204, align 8
  %205 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 1
  store %struct.TYPE_29__* %205, %struct.TYPE_29__** %207, align 8
  %208 = load i8*, i8** @ngx_http_read_client_request_body_handler, align 8
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 3
  store i8* %208, i8** %210, align 8
  %211 = load i8*, i8** @ngx_http_request_empty_handler, align 8
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 5
  store i8* %211, i8** %213, align 8
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %215 = call i64 @ngx_http_do_read_client_request_body(%struct.TYPE_25__* %214)
  store i64 %215, i64* %8, align 8
  br label %315

216:                                              ; preds = %148, %143, %118
  br label %225

217:                                              ; preds = %84
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %219 = call i64 @ngx_http_request_body_filter(%struct.TYPE_25__* %218, %struct.TYPE_28__* null)
  %220 = load i64, i64* @NGX_OK, align 8
  %221 = icmp ne i64 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %223, i64* %8, align 8
  br label %315

224:                                              ; preds = %217
  br label %225

225:                                              ; preds = %224, %216
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %225
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 4
  store i64 0, i64* %232, align 8
  %233 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %5, align 8
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %235 = call i32 %233(%struct.TYPE_25__* %234)
  %236 = load i64, i64* @NGX_OK, align 8
  store i64 %236, i64* %3, align 8
  br label %358

237:                                              ; preds = %225
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %237
  %243 = load i32, i32* @NGX_LOG_ALERT, align 4
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 9
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @ngx_log_error(i32 %243, i32 %248, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %250 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %250, i64* %8, align 8
  br label %315

251:                                              ; preds = %237
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %253 = load i32, i32* @ngx_http_core_module, align 4
  %254 = call %struct.TYPE_27__* @ngx_http_get_module_loc_conf(%struct.TYPE_25__* %252, i32 %253)
  store %struct.TYPE_27__* %254, %struct.TYPE_27__** %12, align 8
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %7, align 4
  %258 = load i32, i32* %7, align 4
  %259 = ashr i32 %258, 2
  %260 = load i32, i32* %7, align 4
  %261 = add nsw i32 %260, %259
  store i32 %261, i32* %7, align 4
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %262, i32 0, i32 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %288, label %267

267:                                              ; preds = %251
  %268 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %7, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %288

273:                                              ; preds = %267
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  store i32 %276, i32* %7, align 4
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 7
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %273
  %282 = load i64, i64* %6, align 8
  %283 = load i32, i32* %7, align 4
  %284 = sext i32 %283 to i64
  %285 = add i64 %284, %282
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %7, align 4
  br label %287

287:                                              ; preds = %281, %273
  br label %292

288:                                              ; preds = %267, %251
  %289 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %7, align 4
  br label %292

292:                                              ; preds = %288, %287
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %293, i32 0, i32 6
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* %7, align 4
  %297 = call %struct.TYPE_29__* @ngx_create_temp_buf(i32 %295, i32 %296)
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 1
  store %struct.TYPE_29__* %297, %struct.TYPE_29__** %299, align 8
  %300 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %301 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_29__*, %struct.TYPE_29__** %301, align 8
  %303 = icmp eq %struct.TYPE_29__* %302, null
  br i1 %303, label %304, label %306

304:                                              ; preds = %292
  %305 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %305, i64* %8, align 8
  br label %315

306:                                              ; preds = %292
  %307 = load i8*, i8** @ngx_http_read_client_request_body_handler, align 8
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 3
  store i8* %307, i8** %309, align 8
  %310 = load i8*, i8** @ngx_http_request_empty_handler, align 8
  %311 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %311, i32 0, i32 5
  store i8* %310, i8** %312, align 8
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %314 = call i64 @ngx_http_do_read_client_request_body(%struct.TYPE_25__* %313)
  store i64 %314, i64* %8, align 8
  br label %315

315:                                              ; preds = %306, %304, %242, %222, %174, %172, %117, %55, %46
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 4
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %345

320:                                              ; preds = %315
  %321 = load i64, i64* %8, align 8
  %322 = load i64, i64* @NGX_OK, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %328, label %324

324:                                              ; preds = %320
  %325 = load i64, i64* %8, align 8
  %326 = load i64, i64* @NGX_AGAIN, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %345

328:                                              ; preds = %324, %320
  %329 = load i64, i64* %8, align 8
  %330 = load i64, i64* @NGX_OK, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %335

332:                                              ; preds = %328
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 4
  store i64 0, i64* %334, align 8
  br label %338

335:                                              ; preds = %328
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %336, i32 0, i32 0
  store i32 1, i32* %337, align 8
  br label %338

338:                                              ; preds = %335, %332
  %339 = load i8*, i8** @ngx_http_block_reading, align 8
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %340, i32 0, i32 3
  store i8* %339, i8** %341, align 8
  %342 = load i32 (%struct.TYPE_25__*)*, i32 (%struct.TYPE_25__*)** %5, align 8
  %343 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %344 = call i32 %342(%struct.TYPE_25__* %343)
  br label %345

345:                                              ; preds = %338, %324, %315
  %346 = load i64, i64* %8, align 8
  %347 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %348 = icmp sge i64 %346, %347
  br i1 %348, label %349, label %356

349:                                              ; preds = %345
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %351 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %350, i32 0, i32 2
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %354, -1
  store i32 %355, i32* %353, align 4
  br label %356

356:                                              ; preds = %349, %345
  %357 = load i64, i64* %8, align 8
  store i64 %357, i64* %3, align 8
  br label %358

358:                                              ; preds = %356, %230, %77, %34
  %359 = load i64, i64* %3, align 8
  ret i64 %359
}

declare dso_local i64 @ngx_http_test_expect(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_26__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ngx_http_request_body_filter(%struct.TYPE_25__*, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @ngx_calloc_buf(i32) #1

declare dso_local i64 @ngx_http_do_read_client_request_body(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_27__* @ngx_http_get_module_loc_conf(%struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_29__* @ngx_create_temp_buf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
