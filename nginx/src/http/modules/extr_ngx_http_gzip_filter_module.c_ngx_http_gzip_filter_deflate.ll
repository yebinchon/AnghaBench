; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_gzip_filter_module.c_ngx_http_gzip_filter_deflate.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_gzip_filter_module.c_ngx_http_gzip_filter_deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_25__**, %struct.TYPE_26__*, i32*, %struct.TYPE_19__, %struct.TYPE_20__*, %struct.TYPE_27__* }
%struct.TYPE_25__ = type { %struct.TYPE_25__*, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i64, i32, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_24__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"deflate in: ni:%p no:%p ai:%ud ao:%ud fl:%d redo:%d\00", align 1
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"deflate() failed: %d, %d\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"deflate out: ni:%p no:%p ai:%ud ao:%ud rc:%d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"gzip in_buf:%p pos:%p\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@Z_SYNC_FLUSH = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i64 0, align 8
@NGX_HTTP_GZIP_BUFFERED = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_gzip_filter_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*, %struct.TYPE_23__*)* @ngx_http_gzip_filter_deflate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_gzip_filter_deflate(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %10 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ngx_log_debug6(i32 %10, i32 %15, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32* %19, i32 %23, i64 %27, i64 %31, i64 %34, i32 %37)
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @deflate(%struct.TYPE_19__* %40, i64 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @Z_OK, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %2
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @Z_STREAM_END, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @Z_BUF_ERROR, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load i32, i32* @NGX_LOG_ALERT, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @ngx_log_error(i32 %57, i32 %62, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %65, i32 %66)
  %68 = load i64, i64* @NGX_ERROR, align 8
  store i64 %68, i64* %3, align 8
  br label %302

69:                                               ; preds = %52, %48, %2
  %70 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @ngx_log_debug5(i32 %70, i32 %75, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32* %79, i32 %83, i64 %87, i64 %91, i32 %92)
  %94 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 7
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %101, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 7
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @ngx_log_debug2(i32 %94, i32 %99, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_27__* %102, i32* %107)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %133

114:                                              ; preds = %69
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 5
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 7
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  store i32* %118, i32** %122, align 8
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %114
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 3
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %128, %114
  br label %133

133:                                              ; preds = %132, %69
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 5
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 1
  store i32 %137, i32* %141, align 4
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %179

147:                                              ; preds = %133
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @Z_STREAM_END, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %179

151:                                              ; preds = %147
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call %struct.TYPE_25__* @ngx_alloc_chain_link(i32 %154)
  store %struct.TYPE_25__* %155, %struct.TYPE_25__** %8, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %157 = icmp eq %struct.TYPE_25__* %156, null
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load i64, i64* @NGX_ERROR, align 8
  store i64 %159, i64* %3, align 8
  br label %302

160:                                              ; preds = %151
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %162, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 1
  store %struct.TYPE_26__* %163, %struct.TYPE_26__** %165, align 8
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %167, align 8
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %170, align 8
  store %struct.TYPE_25__* %168, %struct.TYPE_25__** %171, align 8
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 2
  store %struct.TYPE_25__** %173, %struct.TYPE_25__*** %175, align 8
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 1
  store i32 1, i32* %177, align 8
  %178 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %178, i64* %3, align 8
  br label %302

179:                                              ; preds = %147, %133
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 1
  store i32 0, i32* %181, align 8
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @Z_SYNC_FLUSH, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %247

187:                                              ; preds = %179
  %188 = load i64, i64* @Z_NO_FLUSH, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call %struct.TYPE_25__* @ngx_alloc_chain_link(i32 %193)
  store %struct.TYPE_25__* %194, %struct.TYPE_25__** %8, align 8
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %196 = icmp eq %struct.TYPE_25__* %195, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %187
  %198 = load i64, i64* @NGX_ERROR, align 8
  store i64 %198, i64* %3, align 8
  br label %302

199:                                              ; preds = %187
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 3
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %201, align 8
  store %struct.TYPE_26__* %202, %struct.TYPE_26__** %7, align 8
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %204 = call i64 @ngx_buf_size(%struct.TYPE_26__* %203)
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %218

206:                                              ; preds = %199
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 6
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call %struct.TYPE_26__* @ngx_calloc_buf(i32 %211)
  store %struct.TYPE_26__* %212, %struct.TYPE_26__** %7, align 8
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %214 = icmp eq %struct.TYPE_26__* %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %206
  %216 = load i64, i64* @NGX_ERROR, align 8
  store i64 %216, i64* %3, align 8
  br label %302

217:                                              ; preds = %206
  br label %222

218:                                              ; preds = %199
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 1
  store i64 0, i64* %221, align 8
  br label %222

222:                                              ; preds = %218, %217
  %223 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 0
  store i32 1, i32* %224, align 4
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 1
  store %struct.TYPE_26__* %225, %struct.TYPE_26__** %227, align 8
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 0
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %229, align 8
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %232, align 8
  store %struct.TYPE_25__* %230, %struct.TYPE_25__** %233, align 8
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 2
  store %struct.TYPE_25__** %235, %struct.TYPE_25__*** %237, align 8
  %238 = load i32, i32* @NGX_HTTP_GZIP_BUFFERED, align 4
  %239 = xor i32 %238, -1
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_21__*, %struct.TYPE_21__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, %239
  store i32 %245, i32* %243, align 4
  %246 = load i64, i64* @NGX_OK, align 8
  store i64 %246, i64* %3, align 8
  br label %302

247:                                              ; preds = %179
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* @Z_STREAM_END, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %261

251:                                              ; preds = %247
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %254 = call i64 @ngx_http_gzip_filter_deflate_end(%struct.TYPE_22__* %252, %struct.TYPE_23__* %253)
  %255 = load i64, i64* @NGX_OK, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %251
  %258 = load i64, i64* @NGX_ERROR, align 8
  store i64 %258, i64* %3, align 8
  br label %302

259:                                              ; preds = %251
  %260 = load i64, i64* @NGX_OK, align 8
  store i64 %260, i64* %3, align 8
  br label %302

261:                                              ; preds = %247
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %263 = load i32, i32* @ngx_http_gzip_filter_module, align 4
  %264 = call %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__* %262, i32 %263)
  store %struct.TYPE_24__* %264, %struct.TYPE_24__** %9, align 8
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %300

269:                                              ; preds = %261
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 4
  %272 = load i32*, i32** %271, align 8
  %273 = icmp eq i32* %272, null
  br i1 %273, label %274, label %300

274:                                              ; preds = %269
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call %struct.TYPE_25__* @ngx_alloc_chain_link(i32 %277)
  store %struct.TYPE_25__* %278, %struct.TYPE_25__** %8, align 8
  %279 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %280 = icmp eq %struct.TYPE_25__* %279, null
  br i1 %280, label %281, label %283

281:                                              ; preds = %274
  %282 = load i64, i64* @NGX_ERROR, align 8
  store i64 %282, i64* %3, align 8
  br label %302

283:                                              ; preds = %274
  %284 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %284, i32 0, i32 3
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %285, align 8
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 1
  store %struct.TYPE_26__* %286, %struct.TYPE_26__** %288, align 8
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 0
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %290, align 8
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i32 0, i32 2
  %294 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %293, align 8
  store %struct.TYPE_25__* %291, %struct.TYPE_25__** %294, align 8
  %295 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 2
  store %struct.TYPE_25__** %296, %struct.TYPE_25__*** %298, align 8
  %299 = load i64, i64* @NGX_OK, align 8
  store i64 %299, i64* %3, align 8
  br label %302

300:                                              ; preds = %269, %261
  %301 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %301, i64* %3, align 8
  br label %302

302:                                              ; preds = %300, %283, %281, %259, %257, %222, %215, %197, %160, %158, %56
  %303 = load i64, i64* %3, align 8
  ret i64 %303
}

declare dso_local i32 @ngx_log_debug6(i32, i32, i32, i8*, i32*, i32, i64, i64, i64, i32) #1

declare dso_local i32 @deflate(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64, i32) #1

declare dso_local i32 @ngx_log_debug5(i32, i32, i32, i8*, i32*, i32, i64, i64, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_27__*, i32*) #1

declare dso_local %struct.TYPE_25__* @ngx_alloc_chain_link(i32) #1

declare dso_local i64 @ngx_buf_size(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @ngx_calloc_buf(i32) #1

declare dso_local i64 @ngx_http_gzip_filter_deflate_end(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_loc_conf(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
