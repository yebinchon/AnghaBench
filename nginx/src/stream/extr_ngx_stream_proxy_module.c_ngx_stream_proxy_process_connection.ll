; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_process_connection.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_process_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, i32, i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_19__*, i32, i32, i64, %struct.TYPE_21__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i64, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i32, i32 }

@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"shutdown timeout\00", align 1
@NGX_STREAM_OK = common dso_local global i32 0, align 4
@ngx_stream_proxy_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_STREAM_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@NGX_MAX_INT32_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [104 x i8] c"udp timed out, packets from/to client:%ui/%ui, bytes from/to client:%O/%O, bytes from/to upstream:%O/%O\00", align 1
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"upstream timed out\00", align 1
@NGX_STREAM_BAD_GATEWAY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"connection timed out\00", align 1
@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"stream connection delayed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i32)* @ngx_stream_proxy_process_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_stream_proxy_process_connection(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* %13, %struct.TYPE_24__** %5, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %8, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %9, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load i32, i32* @NGX_LOG_INFO, align 4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ngx_log_error(i32 %25, %struct.TYPE_17__* %28, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %31 = load i32, i32* @NGX_STREAM_OK, align 4
  %32 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_21__* %30, i32 %31)
  br label %229

33:                                               ; preds = %2
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %35, align 8
  store %struct.TYPE_24__* %36, %struct.TYPE_24__** %5, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %39, align 8
  store %struct.TYPE_24__* %40, %struct.TYPE_24__** %6, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %42 = load i32, i32* @ngx_stream_proxy_module, align 4
  %43 = call %struct.TYPE_22__* @ngx_stream_get_module_srv_conf(%struct.TYPE_21__* %41, i32 %42)
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %10, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %192

48:                                               ; preds = %33
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %100

55:                                               ; preds = %48
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %99, label %62

62:                                               ; preds = %55
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %64 = call i64 @ngx_handle_read_event(%struct.TYPE_23__* %63, i32 0)
  %65 = load i64, i64* @NGX_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %69 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %70 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_21__* %68, i32 %69)
  br label %229

71:                                               ; preds = %62
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %71
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %76
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %83
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @ngx_add_timer(i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %90, %83, %76, %71
  br label %229

99:                                               ; preds = %55
  br label %191

100:                                              ; preds = %48
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SOCK_DGRAM, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %184

108:                                              ; preds = %100
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @NGX_MAX_INT32_VALUE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %126, label %114

114:                                              ; preds = %108
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %120, %123
  %125 = icmp sge i32 %117, %124
  br i1 %125, label %126, label %173

126:                                              ; preds = %114, %108
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %7, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  store i32* null, i32** %135, align 8
  %136 = load i32, i32* @NGX_LOG_INFO, align 4
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %138, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %156 = icmp ne %struct.TYPE_24__* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %126
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  br label %162

161:                                              ; preds = %126
  br label %162

162:                                              ; preds = %161, %157
  %163 = phi i32 [ %160, %157 ], [ 0, %161 ]
  %164 = call i32 (i32, %struct.TYPE_17__*, i32, i8*, ...) @ngx_log_error(i32 %136, %struct.TYPE_17__* %139, i32 0, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.1, i64 0, i64 0), i32 %142, i32 %145, i32 %148, i32 %151, i32 %154, i32 %163)
  %165 = load i32*, i32** %7, align 8
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  store i32* %165, i32** %169, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %171 = load i32, i32* @NGX_STREAM_OK, align 4
  %172 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_21__* %170, i32 %171)
  br label %229

173:                                              ; preds = %114
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %175 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %176 = call i32 @ngx_connection_error(%struct.TYPE_24__* %174, i32 %175, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  store i32 1, i32* %180, align 4
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %182 = load i32, i32* @NGX_STREAM_BAD_GATEWAY, align 4
  %183 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_21__* %181, i32 %182)
  br label %229

184:                                              ; preds = %100
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %186 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %187 = call i32 @ngx_connection_error(%struct.TYPE_24__* %185, i32 %186, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %189 = load i32, i32* @NGX_STREAM_OK, align 4
  %190 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_21__* %188, i32 %189)
  br label %229

191:                                              ; preds = %99
  br label %213

192:                                              ; preds = %33
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %192
  %198 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %200, align 8
  %202 = call i32 @ngx_log_debug0(i32 %198, %struct.TYPE_17__* %201, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %204 = call i64 @ngx_handle_read_event(%struct.TYPE_23__* %203, i32 0)
  %205 = load i64, i64* @NGX_OK, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %197
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %209 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %210 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_21__* %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %197
  br label %229

212:                                              ; preds = %192
  br label %213

213:                                              ; preds = %212, %191
  %214 = load i32, i32* %4, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %216
  br label %229

222:                                              ; preds = %216, %213
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %224 = load i32, i32* %4, align 4
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @ngx_stream_proxy_process(%struct.TYPE_21__* %223, i32 %224, i32 %227)
  br label %229

229:                                              ; preds = %222, %221, %211, %184, %173, %162, %98, %67, %24
  ret void
}

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_17__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_stream_proxy_finalize(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_stream_get_module_srv_conf(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ngx_add_timer(i32, i32) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_24__*, i32, i8*) #1

declare dso_local i32 @ngx_log_debug0(i32, %struct.TYPE_17__*, i32, i8*) #1

declare dso_local i32 @ngx_stream_proxy_process(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
