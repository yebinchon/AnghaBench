; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_close_stream.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_close_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__*, i64, i32*, %struct.TYPE_18__*, i32, i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_14__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { i32, i64, i64 }
%struct.TYPE_18__ = type { i32, i32, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_16__*, i64, i64, i64, %struct.TYPE_21__*, %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_20__*, i32 }
%struct.TYPE_15__ = type { i64, i32*, %struct.TYPE_17__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"http2 close stream %ui, queued %ui, processing %ui, pushing %ui\00", align 1
@ngx_http_v2_close_stream_handler = common dso_local global i32 0, align 4
@ngx_http_empty_handler = common dso_local global i32 0, align 4
@NGX_HTTP_V2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_V2_INTERNAL_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_V2_NO_ERROR = common dso_local global i32 0, align 4
@ngx_http_v2_handle_connection_handler = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_v2_close_stream(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %10, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %9, align 8
  %17 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ngx_log_debug4(i32 %17, i32 %22, i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i64 %31, i64 %34)
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %8, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %2
  %46 = load i32, i32* @ngx_http_v2_close_stream_handler, align 4
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  %51 = load i32, i32* @ngx_http_empty_handler, align 4
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  br label %266

56:                                               ; preds = %2
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %119, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %119, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %97, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  br label %86

84:                                               ; preds = %73
  %85 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = call i64 @ngx_http_v2_send_rst_stream(%struct.TYPE_19__* %74, i32 %77, i32 %87)
  %89 = load i64, i64* @NGX_OK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %91, %86
  br label %118

97:                                               ; preds = %68
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %97
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @NGX_HTTP_V2_NO_ERROR, align 4
  %108 = call i64 @ngx_http_v2_send_rst_stream(%struct.TYPE_19__* %103, i32 %106, i32 %107)
  %109 = load i64, i64* @NGX_OK, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %102
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  br label %116

116:                                              ; preds = %111, %102
  br label %117

117:                                              ; preds = %116, %97
  br label %118

118:                                              ; preds = %117, %96
  br label %119

119:                                              ; preds = %118, %61, %56
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %125 = icmp eq %struct.TYPE_17__* %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %129, align 8
  br label %130

130:                                              ; preds = %126, %119
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = srem i32 %135, 2
  %137 = icmp eq i32 %136, 0
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %6, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 2
  store i32* null, i32** %140, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  %145 = call i32 @ngx_queue_insert_tail(i32* %142, i32* %144)
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  store i32* %152, i32** %5, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = sub nsw i64 %159, %155
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %157, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %163, align 8
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @ngx_http_free_request(%struct.TYPE_14__* %164, i32 %165)
  %167 = load i32*, i32** %5, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %167, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %130
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @ngx_destroy_pool(i32* %174)
  br label %180

176:                                              ; preds = %130
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  store i64 0, i64* %179, align 8
  br label %180

180:                                              ; preds = %176, %173
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %182, align 8
  store %struct.TYPE_20__* %183, %struct.TYPE_20__** %7, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %180
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %190 = call i32 @ngx_del_timer(%struct.TYPE_20__* %189)
  br label %191

191:                                              ; preds = %188, %180
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %198 = call i32 @ngx_delete_posted_event(%struct.TYPE_20__* %197)
  br label %199

199:                                              ; preds = %196, %191
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %201, align 8
  store %struct.TYPE_20__* %202, %struct.TYPE_20__** %7, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %199
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %209 = call i32 @ngx_del_timer(%struct.TYPE_20__* %208)
  br label %210

210:                                              ; preds = %207, %199
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %217 = call i32 @ngx_delete_posted_event(%struct.TYPE_20__* %216)
  br label %218

218:                                              ; preds = %215, %210
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 4
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %220, align 8
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %222, i32 0, i32 0
  store %struct.TYPE_21__* %221, %struct.TYPE_21__** %223, align 8
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 4
  store %struct.TYPE_21__* %224, %struct.TYPE_21__** %226, align 8
  %227 = load i32, i32* %6, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %218
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %232, -1
  store i64 %233, i64* %231, align 8
  br label %239

234:                                              ; preds = %218
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, -1
  store i64 %238, i64* %236, align 8
  br label %239

239:                                              ; preds = %234, %229
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %254, label %244

244:                                              ; preds = %239
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %244
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %249, %244, %239
  br label %266

255:                                              ; preds = %249
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %259, align 8
  store %struct.TYPE_20__* %260, %struct.TYPE_20__** %7, align 8
  %261 = load i32, i32* @ngx_http_v2_handle_connection_handler, align 4
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %265 = call i32 @ngx_post_event(%struct.TYPE_20__* %264, i32* @ngx_posted_events)
  br label %266

266:                                              ; preds = %255, %254, %45
  ret void
}

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i64, i64) #1

declare dso_local i64 @ngx_http_v2_send_rst_stream(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ngx_queue_insert_tail(i32*, i32*) #1

declare dso_local i32 @ngx_http_free_request(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_delete_posted_event(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
