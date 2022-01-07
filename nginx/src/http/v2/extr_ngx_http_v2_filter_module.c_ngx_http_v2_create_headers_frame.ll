; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2_filter_module.c_ngx_http_v2_create_headers_frame.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2_filter_module.c_ngx_http_v2_create_headers_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_22__*, %struct.TYPE_22__*, i8*, %struct.TYPE_19__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_22__*, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i8*, i32*, i32*, i32*, i32*, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_17__*, i32, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32 }

@ngx_http_v2_headers_frame_handler = common dso_local global i32 0, align 4
@NGX_HTTP_V2_HEADERS_FRAME = common dso_local global i32 0, align 4
@NGX_HTTP_V2_END_STREAM_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_V2_NO_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_V2_END_HEADERS_FLAG = common dso_local global i32 0, align 4
@NGX_HTTP_V2_FRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@ngx_http_v2_module = common dso_local global i32 0, align 4
@NGX_HTTP_V2_CONTINUATION_FRAME = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"http2:%ui create HEADERS frame %p: len:%uz fin:%ui\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_21__*, i32*, i32*, i8*)* @ngx_http_v2_create_headers_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @ngx_http_v2_create_headers_frame(%struct.TYPE_21__* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_22__**, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %17, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = ptrtoint i32* %22 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  store i64 %27, i64* %12, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_20__* @ngx_palloc(i32 %30, i32 56)
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %18, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %33 = icmp eq %struct.TYPE_20__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  br label %210

35:                                               ; preds = %4
  %36 = load i32, i32* @ngx_http_v2_headers_frame_handler, align 4
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 5
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %41, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 3
  store %struct.TYPE_22__** %51, %struct.TYPE_22__*** %16, align 8
  %52 = load i32, i32* @NGX_HTTP_V2_HEADERS_FRAME, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %35
  %56 = load i32, i32* @NGX_HTTP_V2_END_STREAM_FLAG, align 4
  br label %59

57:                                               ; preds = %35
  %58 = load i32, i32* @NGX_HTTP_V2_NO_FLAG, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %11, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %13, align 8
  br label %66

66:                                               ; preds = %175, %59
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp ule i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i64, i64* %12, align 8
  store i64 %71, i64* %13, align 8
  %72 = load i32, i32* @NGX_HTTP_V2_END_HEADERS_FLAG, align 4
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %70, %66
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* @NGX_HTTP_V2_FRAME_HEADER_SIZE, align 8
  %80 = call %struct.TYPE_23__* @ngx_create_temp_buf(i32 %78, i64 %79)
  store %struct.TYPE_23__* %80, %struct.TYPE_23__** %14, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %82 = icmp eq %struct.TYPE_23__* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  br label %210

84:                                               ; preds = %75
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32* @ngx_http_v2_write_len_and_type(i32* %87, i64 %88, i32 %89)
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %95, align 8
  store i32 %93, i32* %96, align 4
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32* @ngx_http_v2_write_sid(i32* %100, i32 %105)
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 2
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 6
  store i64 ptrtoint (i32* @ngx_http_v2_module to i64), i64* %110, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call %struct.TYPE_22__* @ngx_alloc_chain_link(i32 %113)
  store %struct.TYPE_22__* %114, %struct.TYPE_22__** %15, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %116 = icmp eq %struct.TYPE_22__* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %84
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  br label %210

118:                                              ; preds = %84
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  store %struct.TYPE_23__* %119, %struct.TYPE_23__** %121, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %123 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %16, align 8
  store %struct.TYPE_22__* %122, %struct.TYPE_22__** %123, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 0
  store %struct.TYPE_22__** %125, %struct.TYPE_22__*** %16, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call %struct.TYPE_23__* @ngx_calloc_buf(i32 %128)
  store %struct.TYPE_23__* %129, %struct.TYPE_23__** %14, align 8
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %131 = icmp eq %struct.TYPE_23__* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %118
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  br label %210

133:                                              ; preds = %118
  %134 = load i32*, i32** %7, align 8
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 4
  store i32* %134, i32** %136, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 %137
  store i32* %139, i32** %7, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 2
  store i32* %140, i32** %142, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 5
  store i32* %145, i32** %147, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 3
  store i32* %150, i32** %152, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call %struct.TYPE_22__* @ngx_alloc_chain_link(i32 %157)
  store %struct.TYPE_22__* %158, %struct.TYPE_22__** %15, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %160 = icmp eq %struct.TYPE_22__* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %133
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %5, align 8
  br label %210

162:                                              ; preds = %133
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 1
  store %struct.TYPE_23__* %163, %struct.TYPE_23__** %165, align 8
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %167 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %16, align 8
  store %struct.TYPE_22__* %166, %struct.TYPE_22__** %167, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  store %struct.TYPE_22__** %169, %struct.TYPE_22__*** %16, align 8
  %170 = load i64, i64* %13, align 8
  %171 = load i64, i64* %12, align 8
  %172 = sub i64 %171, %170
  store i64 %172, i64* %12, align 8
  %173 = load i64, i64* %12, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %162
  %176 = load i64, i64* @NGX_HTTP_V2_FRAME_HEADER_SIZE, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, %176
  store i64 %180, i64* %178, align 8
  %181 = load i32, i32* @NGX_HTTP_V2_CONTINUATION_FRAME, align 4
  store i32 %181, i32* %10, align 4
  %182 = load i32, i32* @NGX_HTTP_V2_NO_FLAG, align 4
  store i32 %182, i32* %11, align 4
  br label %66

183:                                              ; preds = %162
  %184 = load i8*, i8** %9, align 8
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 1
  store i8* %184, i8** %186, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %188, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 2
  store %struct.TYPE_22__* %189, %struct.TYPE_22__** %191, align 8
  %192 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i8*, i8** %9, align 8
  %208 = call i32 @ngx_log_debug4(i32 %192, i32 %197, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %202, %struct.TYPE_20__* %203, i64 %206, i8* %207)
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  store %struct.TYPE_20__* %209, %struct.TYPE_20__** %5, align 8
  br label %210

210:                                              ; preds = %183, %161, %132, %117, %83, %34
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  ret %struct.TYPE_20__* %211
}

declare dso_local %struct.TYPE_20__* @ngx_palloc(i32, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i32* @ngx_http_v2_write_len_and_type(i32*, i64, i32) #1

declare dso_local i32* @ngx_http_v2_write_sid(i32*, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_alloc_chain_link(i32) #1

declare dso_local %struct.TYPE_23__* @ngx_calloc_buf(i32) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, %struct.TYPE_20__*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
