; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_read_handler.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_read_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i64 (%struct.TYPE_22__*, i32*, i64)*, i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_18__, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i32* (%struct.TYPE_20__*, i32*, i32*)*, i64, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32* }

@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@NGX_HTTP_V2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"http2 read handler\00", align 1
@NGX_HTTP_V2_NO_ERROR = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_v2_module = common dso_local global i32 0, align 4
@NGX_HTTP_V2_STATE_BUFFER_SIZE = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"client prematurely closed connection\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"http2 flood detected\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_V2_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @ngx_http_v2_read_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_v2_read_handler(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %12, %struct.TYPE_22__** %7, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %9, align 8
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load i32, i32* @NGX_LOG_INFO, align 4
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %26 = call i32 @ngx_log_error(i32 %21, i32 %24, i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %28 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %29 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__* %27, i32 %28)
  br label %266

30:                                               ; preds = %1
  %31 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ngx_log_debug0(i32 %31, i32 %34, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %80

42:                                               ; preds = %30
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %51 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__* %50, i32 0)
  br label %266

52:                                               ; preds = %42
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %61 = load i32, i32* @NGX_HTTP_V2_NO_ERROR, align 4
  %62 = call i64 @ngx_http_v2_send_goaway(%struct.TYPE_20__* %60, i32 %61)
  %63 = load i64, i64* @NGX_ERROR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %67 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__* %66, i32 0)
  br label %266

68:                                               ; preds = %57
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %70 = call i64 @ngx_http_v2_send_output_queue(%struct.TYPE_20__* %69)
  %71 = load i64, i64* @NGX_ERROR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %75 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__* %74, i32 0)
  br label %266

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %52
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %266

80:                                               ; preds = %30
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 8
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ngx_http_v2_module, align 4
  %87 = call %struct.TYPE_19__* @ngx_http_get_module_main_conf(i32 %85, i32 %86)
  store %struct.TYPE_19__* %87, %struct.TYPE_19__** %8, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @NGX_HTTP_V2_STATE_BUFFER_SIZE, align 4
  %92 = mul nsw i32 2, %91
  %93 = sub nsw i32 %90, %92
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %5, align 8
  br label %95

95:                                               ; preds = %215, %80
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %3, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @NGX_HTTP_V2_STATE_BUFFER_SIZE, align 4
  %105 = call i32 @ngx_memcpy(i32* %99, i32 %103, i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %106, i64 %111
  store i32* %112, i32** %4, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load i64 (%struct.TYPE_22__*, i32*, i64)*, i64 (%struct.TYPE_22__*, i32*, i64)** %114, align 8
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %117 = load i32*, i32** %4, align 8
  %118 = load i64, i64* %5, align 8
  %119 = call i64 %115(%struct.TYPE_22__* %116, i32* %117, i64 %118)
  store i64 %119, i64* %6, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* @NGX_AGAIN, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %95
  br label %220

124:                                              ; preds = %95
  %125 = load i64, i64* %6, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %149

127:                                              ; preds = %124
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 7
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %127
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %138, %133, %127
  %144 = load i32, i32* @NGX_LOG_INFO, align 4
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @ngx_log_error(i32 %144, i32 %147, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %149

149:                                              ; preds = %143, %138, %124
  %150 = load i64, i64* %6, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = load i64, i64* %6, align 8
  %154 = load i64, i64* @NGX_ERROR, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %152, %149
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  store i32 1, i32* %158, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %160 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__* %159, i32 0)
  br label %266

161:                                              ; preds = %152
  %162 = load i64, i64* %6, align 8
  %163 = load i32*, i32** %4, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 %162
  store i32* %164, i32** %4, align 8
  %165 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %165, i32 0, i32 7
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 2
  store i64 0, i64* %170, align 8
  br label %171

171:                                              ; preds = %184, %161
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 7
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 1
  %175 = load i32* (%struct.TYPE_20__*, i32*, i32*)*, i32* (%struct.TYPE_20__*, i32*, i32*)** %174, align 8
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %177 = load i32*, i32** %3, align 8
  %178 = load i32*, i32** %4, align 8
  %179 = call i32* %175(%struct.TYPE_20__* %176, i32* %177, i32* %178)
  store i32* %179, i32** %3, align 8
  %180 = load i32*, i32** %3, align 8
  %181 = icmp eq i32* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %171
  br label %266

183:                                              ; preds = %171
  br label %184

184:                                              ; preds = %183
  %185 = load i32*, i32** %3, align 8
  %186 = load i32*, i32** %4, align 8
  %187 = icmp ne i32* %185, %186
  br i1 %187, label %171, label %188

188:                                              ; preds = %184
  %189 = load i64, i64* %6, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, %189
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %191, align 8
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = sdiv i32 %198, 8
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1048576
  %204 = icmp sgt i32 %199, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %188
  %206 = load i32, i32* @NGX_LOG_INFO, align 4
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @ngx_log_error(i32 %206, i32 %209, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %212 = load i32, i32* @NGX_HTTP_V2_NO_ERROR, align 4
  %213 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__* %211, i32 %212)
  br label %266

214:                                              ; preds = %188
  br label %215

215:                                              ; preds = %214
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %95, label %220

220:                                              ; preds = %215, %123
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %222 = call i64 @ngx_handle_read_event(%struct.TYPE_21__* %221, i32 0)
  %223 = load i64, i64* @NGX_OK, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %227 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %228 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__* %226, i32 %227)
  br label %266

229:                                              ; preds = %220
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %229
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %236 = call i64 @ngx_http_v2_send_output_queue(%struct.TYPE_20__* %235)
  %237 = load i64, i64* @NGX_ERROR, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %241 = call i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__* %240, i32 0)
  br label %266

242:                                              ; preds = %234, %229
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 0
  store i32 0, i32* %244, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 5
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %242
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %249, %242
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %254
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %261 = call i32 @ngx_del_timer(%struct.TYPE_21__* %260)
  br label %262

262:                                              ; preds = %259, %254
  br label %266

263:                                              ; preds = %249
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %265 = call i32 @ngx_http_v2_handle_connection(%struct.TYPE_20__* %264)
  br label %266

266:                                              ; preds = %263, %262, %239, %225, %205, %182, %156, %77, %73, %65, %49, %20
  ret void
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_http_v2_finalize_connection(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_v2_send_goaway(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_http_v2_send_output_queue(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @ngx_http_get_module_main_conf(i32, i32) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_http_v2_handle_connection(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
