; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_finalize_request.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_request.c_ngx_http_finalize_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, i32, i32 (%struct.TYPE_25__*)*, i32, i32, i32, %struct.TYPE_24__*, i64, i32, %struct.TYPE_25__*, i64, %struct.TYPE_25__*, i64, %struct.TYPE_22__*, i32*, i64, %struct.TYPE_27__* }
%struct.TYPE_24__ = type { %struct.TYPE_24__*, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i64 (%struct.TYPE_25__*, i32, i64)*, i32 }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_23__*, %struct.TYPE_23__*, i32, %struct.TYPE_25__*, i64 }
%struct.TYPE_23__ = type { i64, i64, i64, i8* }
%struct.TYPE_26__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"http finalize request: %i, \22%V?%V\22 a:%d, c:%d\00", align 1
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_REQUEST_TIME_OUT = common dso_local global i64 0, align 8
@NGX_HTTP_CLIENT_CLOSED_REQUEST = common dso_local global i64 0, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_HTTP_CREATED = common dso_local global i64 0, align 8
@NGX_HTTP_NO_CONTENT = common dso_local global i64 0, align 8
@NGX_HTTP_CLOSE = common dso_local global i64 0, align 8
@ngx_http_request_handler = common dso_local global i8* null, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"subrequest: \22%V?%V\22 logged again\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"http finalize non-active request: \22%V?%V\22\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"http wake parent request: \22%V?%V\22\00", align 1
@ngx_http_block_reading = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_finalize_request(%struct.TYPE_25__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 18
  %10 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_27__* %10, %struct.TYPE_27__** %5, align 8
  %11 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %12 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 7
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %24 = icmp eq %struct.TYPE_25__* %20, %23
  %25 = zext i1 %24 to i32
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 11
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ngx_log_debug5(i32 %11, i32 %14, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %15, i32* %17, i32* %19, i32 %25, i32 %30)
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @NGX_DONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %37 = call i32 @ngx_http_finalize_connection(%struct.TYPE_25__* %36)
  br label %459

38:                                               ; preds = %2
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @NGX_OK, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 17
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %47, %42, %38
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* @NGX_DECLINED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 16
  store i32* null, i32** %56, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 4
  store i32 (%struct.TYPE_25__*)* @ngx_http_core_run_phases, i32 (%struct.TYPE_25__*)** %58, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %60 = call i32 @ngx_http_core_run_phases(%struct.TYPE_25__* %59)
  br label %459

61:                                               ; preds = %50
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 11
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %64, align 8
  %66 = icmp ne %struct.TYPE_25__* %62, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %61
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 15
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %69, align 8
  %71 = icmp ne %struct.TYPE_22__* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 15
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 0
  %77 = load i64 (%struct.TYPE_25__*, i32, i64)*, i64 (%struct.TYPE_25__*, i32, i64)** %76, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 15
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* %4, align 8
  %85 = call i64 %77(%struct.TYPE_25__* %78, i32 %83, i64 %84)
  store i64 %85, i64* %4, align 8
  br label %86

86:                                               ; preds = %72, %67, %61
  %87 = load i64, i64* %4, align 8
  %88 = load i64, i64* @NGX_ERROR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %103, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* @NGX_HTTP_REQUEST_TIME_OUT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %103, label %94

94:                                               ; preds = %90
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* @NGX_HTTP_CLIENT_CLOSED_REQUEST, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %98, %94, %90, %86
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %105 = call i64 @ngx_http_post_action(%struct.TYPE_25__* %104)
  %106 = load i64, i64* @NGX_OK, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %459

109:                                              ; preds = %103
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %111 = load i64, i64* %4, align 8
  %112 = call i32 @ngx_http_terminate_request(%struct.TYPE_25__* %110, i64 %111)
  br label %459

113:                                              ; preds = %98
  %114 = load i64, i64* %4, align 8
  %115 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %116 = icmp sge i64 %114, %115
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* @NGX_HTTP_CREATED, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i64, i64* %4, align 8
  %123 = load i64, i64* @NGX_HTTP_NO_CONTENT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %181

125:                                              ; preds = %121, %117, %113
  %126 = load i64, i64* %4, align 8
  %127 = load i64, i64* @NGX_HTTP_CLOSE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %133 = load i64, i64* %4, align 8
  %134 = call i32 @ngx_http_terminate_request(%struct.TYPE_25__* %132, i64 %133)
  br label %459

135:                                              ; preds = %125
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 11
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %138, align 8
  %140 = icmp eq %struct.TYPE_25__* %136, %139
  br i1 %140, label %141, label %166

141:                                              ; preds = %135
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %150, align 8
  %152 = call i32 @ngx_del_timer(%struct.TYPE_23__* %151)
  br label %153

153:                                              ; preds = %148, %141
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %153
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %162, align 8
  %164 = call i32 @ngx_del_timer(%struct.TYPE_23__* %163)
  br label %165

165:                                              ; preds = %160, %153
  br label %166

166:                                              ; preds = %165, %135
  %167 = load i8*, i8** @ngx_http_request_handler, align 8
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 3
  store i8* %167, i8** %171, align 8
  %172 = load i8*, i8** @ngx_http_request_handler, align 8
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 3
  store i8* %172, i8** %176, align 8
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %179 = load i64, i64* %4, align 8
  %180 = call i64 @ngx_http_special_response_handler(%struct.TYPE_25__* %178, i64 %179)
  call void @ngx_http_finalize_request(%struct.TYPE_25__* %177, i64 %180)
  br label %459

181:                                              ; preds = %121
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 11
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %184, align 8
  %186 = icmp ne %struct.TYPE_25__* %182, %185
  br i1 %186, label %187, label %357

187:                                              ; preds = %181
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %189 = load i32, i32* @ngx_http_core_module, align 4
  %190 = call %struct.TYPE_26__* @ngx_http_get_module_loc_conf(%struct.TYPE_25__* %188, i32 %189)
  store %struct.TYPE_26__* %190, %struct.TYPE_26__** %7, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 14
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %226

195:                                              ; preds = %187
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %211, label %200

200:                                              ; preds = %195
  %201 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %207 = call i32 @ngx_http_log_request(%struct.TYPE_25__* %206)
  br label %208

208:                                              ; preds = %205, %200
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 0
  store i32 1, i32* %210, align 8
  br label %221

211:                                              ; preds = %195
  %212 = load i32, i32* @NGX_LOG_ALERT, align 4
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 7
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 6
  %220 = call i32 @ngx_log_error(i32 %212, i32 %215, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* %217, i32* %219)
  br label %221

221:                                              ; preds = %211, %208
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %222, i32 0, i32 1
  store i32 1, i32* %223, align 4
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %225 = call i32 @ngx_http_finalize_connection(%struct.TYPE_25__* %224)
  br label %459

226:                                              ; preds = %187
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 9
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %226
  %232 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %232, i32 0, i32 8
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %233, align 8
  %235 = icmp ne %struct.TYPE_24__* %234, null
  br i1 %235, label %236, label %245

236:                                              ; preds = %231, %226
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %238 = call i64 @ngx_http_set_write_handler(%struct.TYPE_25__* %237)
  %239 = load i64, i64* @NGX_OK, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %236
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %243 = call i32 @ngx_http_terminate_request(%struct.TYPE_25__* %242, i64 0)
  br label %244

244:                                              ; preds = %241, %236
  br label %459

245:                                              ; preds = %231
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 13
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %247, align 8
  store %struct.TYPE_25__* %248, %struct.TYPE_25__** %6, align 8
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 5
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %251, align 8
  %253 = icmp eq %struct.TYPE_25__* %249, %252
  br i1 %253, label %254, label %313

254:                                              ; preds = %245
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %255, i32 0, i32 11
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %257, i32 0, i32 10
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, -1
  store i32 %260, i32* %258, align 8
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %276, label %265

265:                                              ; preds = %254
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %265
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %272 = call i32 @ngx_http_log_request(%struct.TYPE_25__* %271)
  br label %273

273:                                              ; preds = %270, %265
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 0
  store i32 1, i32* %275, align 8
  br label %286

276:                                              ; preds = %254
  %277 = load i32, i32* @NGX_LOG_ALERT, align 4
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %281, i32 0, i32 7
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 6
  %285 = call i32 @ngx_log_error(i32 %277, i32 %280, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32* %282, i32* %284)
  br label %286

286:                                              ; preds = %276, %273
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 1
  store i32 1, i32* %288, align 4
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 8
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %290, align 8
  %292 = icmp ne %struct.TYPE_24__* %291, null
  br i1 %292, label %293, label %309

293:                                              ; preds = %286
  %294 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %294, i32 0, i32 8
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %297, align 8
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %300 = icmp eq %struct.TYPE_25__* %298, %299
  br i1 %300, label %301, label %309

301:                                              ; preds = %293
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 8
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %305, align 8
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 8
  store %struct.TYPE_24__* %306, %struct.TYPE_24__** %308, align 8
  br label %309

309:                                              ; preds = %301, %293, %286
  %310 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %311 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %311, i32 0, i32 5
  store %struct.TYPE_25__* %310, %struct.TYPE_25__** %312, align 8
  br label %333

313:                                              ; preds = %245
  %314 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %315 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %315, i32 0, i32 4
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %318, i32 0, i32 7
  %320 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %320, i32 0, i32 6
  %322 = call i32 @ngx_log_debug2(i32 %314, i32 %317, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32* %319, i32* %321)
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 4
  store i32 (%struct.TYPE_25__*)* @ngx_http_request_finalizer, i32 (%struct.TYPE_25__*)** %324, align 8
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 12
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %313
  %330 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %330, i32 0, i32 1
  store i32 1, i32* %331, align 4
  br label %332

332:                                              ; preds = %329, %313
  br label %333

333:                                              ; preds = %332, %309
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %335 = call i64 @ngx_http_post_request(%struct.TYPE_25__* %334, i32* null)
  %336 = load i64, i64* @NGX_OK, align 8
  %337 = icmp ne i64 %335, %336
  br i1 %337, label %338, label %347

338:                                              ; preds = %333
  %339 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %339, i32 0, i32 11
  %341 = load %struct.TYPE_25__*, %struct.TYPE_25__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %341, i32 0, i32 10
  %343 = load i32, i32* %342, align 8
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %342, align 8
  %345 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %346 = call i32 @ngx_http_terminate_request(%struct.TYPE_25__* %345, i64 0)
  br label %459

347:                                              ; preds = %333
  %348 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %352, i32 0, i32 7
  %354 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %355 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %354, i32 0, i32 6
  %356 = call i32 @ngx_log_debug2(i32 %348, i32 %351, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32* %353, i32* %355)
  br label %459

357:                                              ; preds = %181
  %358 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %358, i32 0, i32 9
  %360 = load i64, i64* %359, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %372, label %362

362:                                              ; preds = %357
  %363 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %363, i32 0, i32 6
  %365 = load i64, i64* %364, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %372, label %367

367:                                              ; preds = %362
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 8
  %370 = load %struct.TYPE_24__*, %struct.TYPE_24__** %369, align 8
  %371 = icmp ne %struct.TYPE_24__* %370, null
  br i1 %371, label %372, label %381

372:                                              ; preds = %367, %362, %357
  %373 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %374 = call i64 @ngx_http_set_write_handler(%struct.TYPE_25__* %373)
  %375 = load i64, i64* @NGX_OK, align 8
  %376 = icmp ne i64 %374, %375
  br i1 %376, label %377, label %380

377:                                              ; preds = %372
  %378 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %379 = call i32 @ngx_http_terminate_request(%struct.TYPE_25__* %378, i64 0)
  br label %380

380:                                              ; preds = %377, %372
  br label %459

381:                                              ; preds = %367
  %382 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %383 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %383, i32 0, i32 5
  %385 = load %struct.TYPE_25__*, %struct.TYPE_25__** %384, align 8
  %386 = icmp ne %struct.TYPE_25__* %382, %385
  br i1 %386, label %387, label %397

387:                                              ; preds = %381
  %388 = load i32, i32* @NGX_LOG_ALERT, align 4
  %389 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 8
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 7
  %394 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %394, i32 0, i32 6
  %396 = call i32 @ngx_log_error(i32 %388, i32 %391, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32* %393, i32* %395)
  br label %459

397:                                              ; preds = %381
  %398 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %398, i32 0, i32 1
  store i32 1, i32* %399, align 4
  %400 = load i32, i32* @ngx_http_block_reading, align 4
  %401 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %401, i32 0, i32 5
  store i32 %400, i32* %402, align 8
  %403 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %403, i32 0, i32 4
  store i32 (%struct.TYPE_25__*)* @ngx_http_request_empty_handler, i32 (%struct.TYPE_25__*)** %404, align 8
  %405 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %412, label %409

409:                                              ; preds = %397
  %410 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %411 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %410, i32 0, i32 2
  store i32 1, i32* %411, align 8
  br label %412

412:                                              ; preds = %409, %397
  %413 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %414 = call i64 @ngx_http_post_action(%struct.TYPE_25__* %413)
  %415 = load i64, i64* @NGX_OK, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %418

417:                                              ; preds = %412
  br label %459

418:                                              ; preds = %412
  %419 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %419, i32 0, i32 2
  %421 = load %struct.TYPE_23__*, %struct.TYPE_23__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %421, i32 0, i32 2
  %423 = load i64, i64* %422, align 8
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %430

425:                                              ; preds = %418
  %426 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %426, i32 0, i32 2
  %428 = load %struct.TYPE_23__*, %struct.TYPE_23__** %427, align 8
  %429 = call i32 @ngx_del_timer(%struct.TYPE_23__* %428)
  br label %430

430:                                              ; preds = %425, %418
  %431 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %431, i32 0, i32 3
  %433 = load %struct.TYPE_23__*, %struct.TYPE_23__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %433, i32 0, i32 2
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %446

437:                                              ; preds = %430
  %438 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %438, i32 0, i32 3
  %440 = load %struct.TYPE_23__*, %struct.TYPE_23__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %440, i32 0, i32 1
  store i64 0, i64* %441, align 8
  %442 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %442, i32 0, i32 3
  %444 = load %struct.TYPE_23__*, %struct.TYPE_23__** %443, align 8
  %445 = call i32 @ngx_del_timer(%struct.TYPE_23__* %444)
  br label %446

446:                                              ; preds = %437, %430
  %447 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %447, i32 0, i32 2
  %449 = load %struct.TYPE_23__*, %struct.TYPE_23__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %446
  %454 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %455 = call i32 @ngx_http_close_request(%struct.TYPE_25__* %454, i32 0)
  br label %459

456:                                              ; preds = %446
  %457 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %458 = call i32 @ngx_http_finalize_connection(%struct.TYPE_25__* %457)
  br label %459

459:                                              ; preds = %456, %453, %417, %387, %380, %347, %338, %244, %221, %166, %129, %109, %108, %54, %35
  ret void
}

declare dso_local i32 @ngx_log_debug5(i32, i32, i32, i8*, i64, i32*, i32*, i32, i32) #1

declare dso_local i32 @ngx_http_finalize_connection(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_http_core_run_phases(%struct.TYPE_25__*) #1

declare dso_local i64 @ngx_http_post_action(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_http_terminate_request(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_23__*) #1

declare dso_local i64 @ngx_http_special_response_handler(%struct.TYPE_25__*, i64) #1

declare dso_local %struct.TYPE_26__* @ngx_http_get_module_loc_conf(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ngx_http_log_request(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, i32*) #1

declare dso_local i64 @ngx_http_set_write_handler(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @ngx_http_request_finalizer(%struct.TYPE_25__*) #1

declare dso_local i64 @ngx_http_post_request(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @ngx_http_request_empty_handler(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_http_close_request(%struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
