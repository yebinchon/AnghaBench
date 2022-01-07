; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_headers.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32, i64, %struct.TYPE_27__, %struct.TYPE_25__*, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i32, i64, i64, i32, i32, i32*, %struct.TYPE_28__*, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_30__*, %struct.TYPE_24__*, i32* }
%struct.TYPE_30__ = type { i32, i32*, %struct.TYPE_28__*, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_29__ = type { i64, i64, i64, i32 }

@NGX_HTTP_V2_PADDED_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_V2_PRIORITY_FLAG = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"client sent HEADERS frame with incorrect length %uz\00", align 1
@NGX_HTTP_V2_SIZE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"client sent HEADERS frame with empty header block\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"skipping http2 HEADERS frame\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"client sent padded HEADERS frame with incorrect length: %uz, padding: %uz\00", align 1
@NGX_HTTP_V2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_V2_DEFAULT_WEIGHT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [63 x i8] c"http2 HEADERS frame sid:%ui depends on %ui excl:%ui weight:%ui\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"client sent HEADERS frame with incorrect identifier %ui, the last was %ui\00", align 1
@.str.6 = private unnamed_addr constant [67 x i8] c"client sent HEADERS frame for stream %ui with incorrect dependency\00", align 1
@NGX_HTTP_V2_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ngx_http_v2_module = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"concurrent streams exceeded %ui\00", align 1
@NGX_HTTP_V2_REFUSED_STREAM = common dso_local global i32 0, align 4
@NGX_HTTP_V2_END_STREAM_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_V2_DEFAULT_WINDOW = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [63 x i8] c"client sent stream with data before settings were acknowledged\00", align 1
@NGX_HTTP_V2_NO_ERROR = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_31__*, i32*, i32*)* @ngx_http_v2_state_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_state_headers(%struct.TYPE_31__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NGX_HTTP_V2_PADDED_FLAG, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @NGX_HTTP_V2_PRIORITY_FLAG, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %10, align 4
  store i64 0, i64* %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %33, %3
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 5
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %42
  %50 = load i32, i32* @NGX_LOG_INFO, align 4
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %50, i32 %55, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %62 = load i32, i32* @NGX_HTTP_V2_SIZE_ERROR, align 4
  %63 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %61, i32 %62)
  store i32* %63, i32** %4, align 8
  br label %475

64:                                               ; preds = %42
  %65 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %64
  %72 = load i32, i32* @NGX_LOG_INFO, align 4
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %72, i32 %77, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %80 = load i32, i32* @NGX_HTTP_V2_SIZE_ERROR, align 4
  %81 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %79, i32 %80)
  store i32* %81, i32** %4, align 8
  br label %475

82:                                               ; preds = %64
  %83 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ngx_log_debug0(i32 %88, i32 %93, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i32* @ngx_http_v2_state_skip(%struct.TYPE_31__* %95, i32* %96, i32* %97)
  store i32* %98, i32** %4, align 8
  br label %475

99:                                               ; preds = %82
  %100 = load i32*, i32** %7, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = load i64, i64* %8, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %99
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i32* @ngx_http_v2_state_save(%struct.TYPE_31__* %109, i32* %110, i32* %111, i32* (%struct.TYPE_31__*, i32*, i32*)* @ngx_http_v2_state_headers)
  store i32* %112, i32** %4, align 8
  br label %475

113:                                              ; preds = %99
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub i64 %118, %114
  store i64 %119, i64* %117, align 8
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %168

122:                                              ; preds = %113
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %6, align 8
  %125 = load i32, i32* %123, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 2
  store i64 %126, i64* %129, align 8
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ugt i64 %133, %137
  br i1 %138, label %139, label %158

139:                                              ; preds = %122
  %140 = load i32, i32* @NGX_LOG_INFO, align 4
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %140, i32 %145, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i64 %149, i64 %153)
  %155 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %156 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %157 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %155, i32 %156)
  store i32* %157, i32** %4, align 8
  br label %475

158:                                              ; preds = %122
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = sub i64 %166, %162
  store i64 %167, i64* %165, align 8
  br label %168

168:                                              ; preds = %158, %113
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %169 = load i32, i32* @NGX_HTTP_V2_DEFAULT_WEIGHT, align 4
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %168
  %173 = load i32*, i32** %6, align 8
  %174 = call i32 @ngx_http_v2_parse_uint32(i32* %173)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = and i32 %175, 2147483647
  store i32 %176, i32* %11, align 4
  %177 = load i32, i32* %12, align 4
  %178 = ashr i32 %177, 31
  store i32 %178, i32* %13, align 4
  %179 = load i32*, i32** %6, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 4
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %14, align 4
  %183 = load i32*, i32** %6, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 5
  store i32* %184, i32** %6, align 8
  br label %185

185:                                              ; preds = %172, %168
  %186 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %14, align 4
  %199 = call i32 @ngx_log_debug4(i32 %186, i32 %191, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i32 %195, i32 %196, i32 %197, i32 %198)
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = srem i32 %203, 2
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %215, label %206

206:                                              ; preds = %185
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = icmp sle i32 %210, %213
  br i1 %214, label %215, label %233

215:                                              ; preds = %206, %185
  %216 = load i32, i32* @NGX_LOG_INFO, align 4
  %217 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 4
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %216, i32 %221, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %225, i32 %228)
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %231 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %232 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %230, i32 %231)
  store i32* %232, i32** %4, align 8
  br label %475

233:                                              ; preds = %206
  %234 = load i32, i32* %11, align 4
  %235 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %234, %238
  br i1 %239, label %240, label %255

240:                                              ; preds = %233
  %241 = load i32, i32* @NGX_LOG_INFO, align 4
  %242 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %242, i32 0, i32 4
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %241, i32 %246, i32 0, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0), i32 %250)
  %252 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %253 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %254 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %252, i32 %253)
  store i32* %254, i32** %4, align 8
  br label %475

255:                                              ; preds = %233
  %256 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %260, i32 0, i32 1
  store i32 %259, i32* %261, align 4
  %262 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %262, i32 0, i32 4
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = call i32* @ngx_create_pool(i32 1024, i32 %266)
  %268 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %268, i32 0, i32 3
  %270 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %269, i32 0, i32 5
  store i32* %267, i32** %270, align 8
  %271 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 5
  %274 = load i32*, i32** %273, align 8
  %275 = icmp eq i32* %274, null
  br i1 %275, label %276, label %280

276:                                              ; preds = %255
  %277 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %278 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %279 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %277, i32 %278)
  store i32* %279, i32** %4, align 8
  br label %475

280:                                              ; preds = %255
  %281 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %281, i32 0, i32 7
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @ngx_http_v2_module, align 4
  %287 = call %struct.TYPE_29__* @ngx_http_get_module_srv_conf(i32 %285, i32 %286)
  store %struct.TYPE_29__* %287, %struct.TYPE_29__** %18, align 8
  %288 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %289 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 7
  store i32 %290, i32* %293, align 8
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %298 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp sge i64 %296, %299
  br i1 %300, label %301, label %313

301:                                              ; preds = %280
  %302 = load i32, i32* @NGX_LOG_INFO, align 4
  %303 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %303, i32 0, i32 4
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %302, i32 %307, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %310)
  %312 = load i32, i32* @NGX_HTTP_V2_REFUSED_STREAM, align 4
  store i32 %312, i32* %15, align 4
  br label %456

313:                                              ; preds = %280
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %314, i32 0, i32 6
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %341, label %318

318:                                              ; preds = %313
  %319 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @NGX_HTTP_V2_END_STREAM_FLAG, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %341, label %326

326:                                              ; preds = %318
  %327 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %328 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @NGX_HTTP_V2_DEFAULT_WINDOW, align 8
  %331 = icmp slt i64 %329, %330
  br i1 %331, label %332, label %341

332:                                              ; preds = %326
  %333 = load i32, i32* @NGX_LOG_INFO, align 4
  %334 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %334, i32 0, i32 4
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %333, i32 %338, i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  %340 = load i32, i32* @NGX_HTTP_V2_REFUSED_STREAM, align 4
  store i32 %340, i32* %15, align 4
  br label %456

341:                                              ; preds = %326, %318, %313
  %342 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %343 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %343, i32 0, i32 3
  %345 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 8
  %347 = call %struct.TYPE_30__* @ngx_http_v2_get_node_by_id(%struct.TYPE_31__* %342, i32 %346, i32 1)
  store %struct.TYPE_30__* %347, %struct.TYPE_30__** %16, align 8
  %348 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %349 = icmp eq %struct.TYPE_30__* %348, null
  br i1 %349, label %350, label %354

350:                                              ; preds = %341
  %351 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %352 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %353 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %351, i32 %352)
  store i32* %353, i32** %4, align 8
  br label %475

354:                                              ; preds = %341
  %355 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %356 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %355, i32 0, i32 1
  %357 = load i32*, i32** %356, align 8
  %358 = icmp ne i32* %357, null
  br i1 %358, label %359, label %367

359:                                              ; preds = %354
  %360 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %361 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %360, i32 0, i32 3
  %362 = call i32 @ngx_queue_remove(i32* %361)
  %363 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %363, i32 0, i32 5
  %365 = load i32, i32* %364, align 8
  %366 = add nsw i32 %365, -1
  store i32 %366, i32* %364, align 8
  br label %367

367:                                              ; preds = %359, %354
  %368 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %369 = call %struct.TYPE_28__* @ngx_http_v2_create_stream(%struct.TYPE_31__* %368, i32 0)
  store %struct.TYPE_28__* %369, %struct.TYPE_28__** %17, align 8
  %370 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %371 = icmp eq %struct.TYPE_28__* %370, null
  br i1 %371, label %372, label %376

372:                                              ; preds = %367
  %373 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %374 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %375 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %373, i32 %374)
  store i32* %375, i32** %4, align 8
  br label %475

376:                                              ; preds = %367
  %377 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %378 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %378, i32 0, i32 3
  %380 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %379, i32 0, i32 6
  store %struct.TYPE_28__* %377, %struct.TYPE_28__** %380, align 8
  %381 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %381, i32 0, i32 3
  %383 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %382, i32 0, i32 5
  %384 = load i32*, i32** %383, align 8
  %385 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %386 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %385, i32 0, i32 3
  store i32* %384, i32** %386, align 8
  %387 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %388 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %387, i32 0, i32 3
  %389 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %388, i32 0, i32 4
  store i32 1, i32* %389, align 4
  %390 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %390, i32 0, i32 3
  %392 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %395 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %394, i32 0, i32 2
  %396 = load %struct.TYPE_24__*, %struct.TYPE_24__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %396, i32 0, i32 0
  store i64 %393, i64* %397, align 8
  %398 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %398, i32 0, i32 3
  %400 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* @NGX_HTTP_V2_END_STREAM_FLAG, align 4
  %403 = and i32 %401, %402
  %404 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %405 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %404, i32 0, i32 0
  store i32 %403, i32* %405, align 8
  %406 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %407 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %408 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %407, i32 0, i32 1
  store %struct.TYPE_30__* %406, %struct.TYPE_30__** %408, align 8
  %409 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %410 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %411 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %410, i32 0, i32 2
  store %struct.TYPE_28__* %409, %struct.TYPE_28__** %411, align 8
  %412 = load i32, i32* %10, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %419, label %414

414:                                              ; preds = %376
  %415 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %416 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %415, i32 0, i32 1
  %417 = load i32*, i32** %416, align 8
  %418 = icmp eq i32* %417, null
  br i1 %418, label %419, label %428

419:                                              ; preds = %414, %376
  %420 = load i32, i32* %14, align 4
  %421 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %422 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %421, i32 0, i32 0
  store i32 %420, i32* %422, align 8
  %423 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %424 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %425 = load i32, i32* %11, align 4
  %426 = load i32, i32* %13, align 4
  %427 = call i32 @ngx_http_v2_set_dependency(%struct.TYPE_31__* %423, %struct.TYPE_30__* %424, i32 %425, i32 %426)
  br label %428

428:                                              ; preds = %419, %414
  %429 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %429, i32 0, i32 4
  %431 = load %struct.TYPE_25__*, %struct.TYPE_25__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %435 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %434, i32 0, i32 2
  %436 = load i64, i64* %435, align 8
  %437 = icmp sge i64 %433, %436
  br i1 %437, label %438, label %451

438:                                              ; preds = %428
  %439 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %440 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %439, i32 0, i32 0
  store i32 1, i32* %440, align 8
  %441 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %442 = load i32, i32* @NGX_HTTP_V2_NO_ERROR, align 4
  %443 = call i64 @ngx_http_v2_send_goaway(%struct.TYPE_31__* %441, i32 %442)
  %444 = load i64, i64* @NGX_ERROR, align 8
  %445 = icmp eq i64 %443, %444
  br i1 %445, label %446, label %450

446:                                              ; preds = %438
  %447 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %448 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %449 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %447, i32 %448)
  store i32* %449, i32** %4, align 8
  br label %475

450:                                              ; preds = %438
  br label %451

451:                                              ; preds = %450, %428
  %452 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %453 = load i32*, i32** %6, align 8
  %454 = load i32*, i32** %7, align 8
  %455 = call i32* @ngx_http_v2_state_header_block(%struct.TYPE_31__* %452, i32* %453, i32* %454)
  store i32* %455, i32** %4, align 8
  br label %475

456:                                              ; preds = %332, %301
  %457 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %458 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %459 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %458, i32 0, i32 3
  %460 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %459, i32 0, i32 3
  %461 = load i32, i32* %460, align 8
  %462 = load i32, i32* %15, align 4
  %463 = call i64 @ngx_http_v2_send_rst_stream(%struct.TYPE_31__* %457, i32 %461, i32 %462)
  %464 = load i64, i64* @NGX_OK, align 8
  %465 = icmp ne i64 %463, %464
  br i1 %465, label %466, label %470

466:                                              ; preds = %456
  %467 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %468 = load i32, i32* @NGX_HTTP_V2_INTERNAL_ERROR, align 4
  %469 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_31__* %467, i32 %468)
  store i32* %469, i32** %4, align 8
  br label %475

470:                                              ; preds = %456
  %471 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %472 = load i32*, i32** %6, align 8
  %473 = load i32*, i32** %7, align 8
  %474 = call i32* @ngx_http_v2_state_header_block(%struct.TYPE_31__* %471, i32* %472, i32* %473)
  store i32* %474, i32** %4, align 8
  br label %475

475:                                              ; preds = %470, %466, %451, %446, %372, %350, %276, %240, %215, %139, %108, %87, %71, %49
  %476 = load i32*, i32** %4, align 8
  ret i32* %476
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32* @ngx_http_v2_connection_error(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32* @ngx_http_v2_state_skip(%struct.TYPE_31__*, i32*, i32*) #1

declare dso_local i32* @ngx_http_v2_state_save(%struct.TYPE_31__*, i32*, i32*, i32* (%struct.TYPE_31__*, i32*, i32*)*) #1

declare dso_local i32 @ngx_http_v2_parse_uint32(i32*) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32* @ngx_create_pool(i32, i32) #1

declare dso_local %struct.TYPE_29__* @ngx_http_get_module_srv_conf(i32, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_http_v2_get_node_by_id(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local %struct.TYPE_28__* @ngx_http_v2_create_stream(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @ngx_http_v2_set_dependency(%struct.TYPE_31__*, %struct.TYPE_30__*, i32, i32) #1

declare dso_local i64 @ngx_http_v2_send_goaway(%struct.TYPE_31__*, i32) #1

declare dso_local i32* @ngx_http_v2_state_header_block(%struct.TYPE_31__*, i32*, i32*) #1

declare dso_local i64 @ngx_http_v2_send_rst_stream(%struct.TYPE_31__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
