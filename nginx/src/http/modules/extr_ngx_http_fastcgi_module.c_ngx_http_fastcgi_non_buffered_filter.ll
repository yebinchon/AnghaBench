; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_fastcgi_module.c_ngx_http_fastcgi_non_buffered_filter.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_fastcgi_module.c_ngx_http_fastcgi_non_buffered_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, i8*, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__, i32, i64, %struct.TYPE_18__*, %struct.TYPE_19__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i8*, i8*, i64, i64, i64, i32 }

@ngx_http_fastcgi_module = common dso_local global i32 0, align 4
@ngx_http_fastcgi_st_data = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_FASTCGI_STDOUT = common dso_local global i64 0, align 8
@ngx_http_fastcgi_st_padding = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"http fastcgi closed stdout\00", align 1
@NGX_HTTP_FASTCGI_END_REQUEST = common dso_local global i64 0, align 8
@ngx_http_fastcgi_st_version = common dso_local global i8* null, align 8
@NGX_HTTP_FASTCGI_STDERR = common dso_local global i64 0, align 8
@LF = common dso_local global i8 0, align 1
@CR = common dso_local global i8 0, align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"FastCGI sent in stderr: \22%*s\22\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"http fastcgi output buf %p\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @ngx_http_fastcgi_non_buffered_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_fastcgi_non_buffered_filter(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_18__**, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %13, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %19 = load i32, i32* @ngx_http_fastcgi_module, align 4
  %20 = call %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_16__* %18, i32 %19)
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %15, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %14, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 5
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %10, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %31
  store i8* %35, i8** %33, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %11, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 4
  store %struct.TYPE_18__** %40, %struct.TYPE_18__*** %12, align 8
  br label %41

41:                                               ; preds = %47, %2
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %43 = icmp ne %struct.TYPE_18__* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  store %struct.TYPE_18__** %46, %struct.TYPE_18__*** %12, align 8
  br label %47

47:                                               ; preds = %44
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  store %struct.TYPE_18__* %50, %struct.TYPE_18__** %11, align 8
  br label %41

51:                                               ; preds = %41
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %460, %371, %352, %180, %93, %51
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ngx_http_fastcgi_st_data, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %105

68:                                               ; preds = %62
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %71 = call i64 @ngx_http_fastcgi_process_record(%struct.TYPE_16__* %69, %struct.TYPE_17__* %70)
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @NGX_AGAIN, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %495

76:                                               ; preds = %68
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @NGX_ERROR, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i64, i64* @NGX_ERROR, align 8
  store i64 %81, i64* %3, align 8
  br label %497

82:                                               ; preds = %76
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NGX_HTTP_FASTCGI_STDOUT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load i64, i64* @ngx_http_fastcgi_st_padding, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ngx_log_debug0(i32 %97, i32 %102, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %62

104:                                              ; preds = %88, %82
  br label %105

105:                                              ; preds = %104, %62
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ngx_http_fastcgi_st_padding, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %227

111:                                              ; preds = %105
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NGX_HTTP_FASTCGI_END_REQUEST, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %167

117:                                              ; preds = %111
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %120, i64 %124
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ult i8* %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %117
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 3
  store i64 0, i64* %132, align 8
  br label %495

133:                                              ; preds = %117
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %136, i64 %140
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = icmp eq i8* %141, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %133
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 3
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  br label %495

151:                                              ; preds = %133
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = ptrtoint i8* %154 to i64
  %159 = ptrtoint i8* %157 to i64
  %160 = sub i64 %158, %159
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = sub nsw i64 %164, %160
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 8
  br label %495

167:                                              ; preds = %111
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %170, i64 %174
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = icmp ult i8* %175, %178
  br i1 %179, label %180, label %193

180:                                              ; preds = %167
  %181 = load i8*, i8** @ngx_http_fastcgi_st_version, align 8
  %182 = ptrtoint i8* %181 to i64
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  store i64 %182, i64* %184, align 8
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = sext i32 %187 to i64
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  store i8* %192, i8** %189, align 8
  br label %62

193:                                              ; preds = %167
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %196, i64 %200
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = icmp eq i8* %201, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %193
  %207 = load i8*, i8** @ngx_http_fastcgi_st_version, align 8
  %208 = ptrtoint i8* %207 to i64
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 2
  store i64 %208, i64* %210, align 8
  br label %495

211:                                              ; preds = %193
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 1
  %214 = load i8*, i8** %213, align 8
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = ptrtoint i8* %214 to i64
  %219 = ptrtoint i8* %217 to i64
  %220 = sub i64 %218, %219
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = sub nsw i64 %224, %220
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %222, align 8
  br label %495

227:                                              ; preds = %105
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @NGX_HTTP_FASTCGI_STDERR, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %353

233:                                              ; preds = %227
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %348

238:                                              ; preds = %233
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = icmp eq i8* %241, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %238
  br label %495

247:                                              ; preds = %238
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  store i8* %250, i8** %7, align 8
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 4
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds i8, i8* %253, i64 %256
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = icmp ule i8* %257, %260
  br i1 %261, label %262, label %275

262:                                              ; preds = %247
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 %265
  store i8* %269, i8** %267, align 8
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 4
  store i64 0, i64* %271, align 8
  %272 = load i64, i64* @ngx_http_fastcgi_st_padding, align 8
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 2
  store i64 %272, i64* %274, align 8
  br label %294

275:                                              ; preds = %247
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 1
  %278 = load i8*, i8** %277, align 8
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 0
  %281 = load i8*, i8** %280, align 8
  %282 = ptrtoint i8* %278 to i64
  %283 = ptrtoint i8* %281 to i64
  %284 = sub i64 %282, %283
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = sub nsw i64 %287, %284
  store i64 %288, i64* %286, align 8
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 1
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 0
  store i8* %291, i8** %293, align 8
  br label %294

294:                                              ; preds = %275, %262
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %296 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %295, i32 0, i32 0
  %297 = load i8*, i8** %296, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 -1
  store i8* %298, i8** %6, align 8
  br label %299

299:                                              ; preds = %329, %294
  %300 = load i8*, i8** %7, align 8
  %301 = load i8*, i8** %6, align 8
  %302 = icmp ult i8* %300, %301
  br i1 %302, label %303, label %332

303:                                              ; preds = %299
  %304 = load i8*, i8** %6, align 8
  %305 = load i8, i8* %304, align 1
  %306 = sext i8 %305 to i32
  %307 = load i8, i8* @LF, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp ne i32 %306, %308
  br i1 %309, label %310, label %328

310:                                              ; preds = %303
  %311 = load i8*, i8** %6, align 8
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = load i8, i8* @CR, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp ne i32 %313, %315
  br i1 %316, label %317, label %328

317:                                              ; preds = %310
  %318 = load i8*, i8** %6, align 8
  %319 = load i8, i8* %318, align 1
  %320 = sext i8 %319 to i32
  %321 = icmp ne i32 %320, 46
  br i1 %321, label %322, label %328

322:                                              ; preds = %317
  %323 = load i8*, i8** %6, align 8
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = icmp ne i32 %325, 32
  br i1 %326, label %327, label %328

327:                                              ; preds = %322
  br label %332

328:                                              ; preds = %322, %317, %310, %303
  br label %329

329:                                              ; preds = %328
  %330 = load i8*, i8** %6, align 8
  %331 = getelementptr inbounds i8, i8* %330, i32 -1
  store i8* %331, i8** %6, align 8
  br label %299

332:                                              ; preds = %327, %299
  %333 = load i32, i32* @NGX_LOG_ERR, align 4
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load i8*, i8** %6, align 8
  %340 = getelementptr inbounds i8, i8* %339, i64 1
  %341 = load i8*, i8** %7, align 8
  %342 = ptrtoint i8* %340 to i64
  %343 = ptrtoint i8* %341 to i64
  %344 = sub i64 %342, %343
  %345 = trunc i64 %344 to i32
  %346 = load i8*, i8** %7, align 8
  %347 = call i32 @ngx_log_error(i32 %333, i32 %338, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %345, i8* %346)
  br label %352

348:                                              ; preds = %233
  %349 = load i64, i64* @ngx_http_fastcgi_st_padding, align 8
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 2
  store i64 %349, i64* %351, align 8
  br label %352

352:                                              ; preds = %348, %332
  br label %62

353:                                              ; preds = %227
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %355 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i32 0, i32 3
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @NGX_HTTP_FASTCGI_END_REQUEST, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %359, label %396

359:                                              ; preds = %353
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 0
  %362 = load i8*, i8** %361, align 8
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 4
  %365 = load i64, i64* %364, align 8
  %366 = getelementptr inbounds i8, i8* %362, i64 %365
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 1
  %369 = load i8*, i8** %368, align 8
  %370 = icmp ule i8* %366, %369
  br i1 %370, label %371, label %382

371:                                              ; preds = %359
  %372 = load i64, i64* @ngx_http_fastcgi_st_padding, align 8
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i32 0, i32 2
  store i64 %372, i64* %374, align 8
  %375 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 4
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %379 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %378, i32 0, i32 0
  %380 = load i8*, i8** %379, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 %377
  store i8* %381, i8** %379, align 8
  br label %62

382:                                              ; preds = %359
  %383 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 1
  %385 = load i8*, i8** %384, align 8
  %386 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 0
  %388 = load i8*, i8** %387, align 8
  %389 = ptrtoint i8* %385 to i64
  %390 = ptrtoint i8* %388 to i64
  %391 = sub i64 %389, %390
  %392 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %393 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %392, i32 0, i32 4
  %394 = load i64, i64* %393, align 8
  %395 = sub nsw i64 %394, %391
  store i64 %395, i64* %393, align 8
  br label %495

396:                                              ; preds = %353
  %397 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %398 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %397, i32 0, i32 0
  %399 = load i8*, i8** %398, align 8
  %400 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %401 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %400, i32 0, i32 1
  %402 = load i8*, i8** %401, align 8
  %403 = icmp eq i8* %399, %402
  br i1 %403, label %404, label %405

404:                                              ; preds = %396
  br label %495

405:                                              ; preds = %396
  %406 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i32 0, i32 2
  %411 = call %struct.TYPE_18__* @ngx_chain_get_free_buf(i32 %408, i32* %410)
  store %struct.TYPE_18__* %411, %struct.TYPE_18__** %11, align 8
  %412 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %413 = icmp eq %struct.TYPE_18__* %412, null
  br i1 %413, label %414, label %416

414:                                              ; preds = %405
  %415 = load i64, i64* @NGX_ERROR, align 8
  store i64 %415, i64* %3, align 8
  br label %497

416:                                              ; preds = %405
  %417 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %418 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %12, align 8
  store %struct.TYPE_18__* %417, %struct.TYPE_18__** %418, align 8
  %419 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %420 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %419, i32 0, i32 1
  store %struct.TYPE_18__** %420, %struct.TYPE_18__*** %12, align 8
  %421 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %422 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_19__*, %struct.TYPE_19__** %422, align 8
  store %struct.TYPE_19__* %423, %struct.TYPE_19__** %9, align 8
  %424 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %425 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %424, i32 0, i32 2
  store i32 1, i32* %425, align 8
  %426 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %427 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %426, i32 0, i32 3
  store i32 1, i32* %427, align 4
  %428 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %429 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %428, i32 0, i32 0
  %430 = load i8*, i8** %429, align 8
  %431 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %432 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %431, i32 0, i32 0
  store i8* %430, i8** %432, align 8
  %433 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %434 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %438 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %437, i32 0, i32 4
  store i32 %436, i32* %438, align 8
  %439 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %440 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %441 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %440, i32 0, i32 0
  %442 = load %struct.TYPE_14__*, %struct.TYPE_14__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %446 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %445, i32 0, i32 0
  %447 = load i8*, i8** %446, align 8
  %448 = call i32 @ngx_log_debug1(i32 %439, i32 %444, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %447)
  %449 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %450 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %449, i32 0, i32 0
  %451 = load i8*, i8** %450, align 8
  %452 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %453 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %452, i32 0, i32 4
  %454 = load i64, i64* %453, align 8
  %455 = getelementptr inbounds i8, i8* %451, i64 %454
  %456 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %457 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %456, i32 0, i32 1
  %458 = load i8*, i8** %457, align 8
  %459 = icmp ule i8* %455, %458
  br i1 %459, label %460, label %476

460:                                              ; preds = %416
  %461 = load i64, i64* @ngx_http_fastcgi_st_padding, align 8
  %462 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %463 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %462, i32 0, i32 2
  store i64 %461, i64* %463, align 8
  %464 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %465 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %464, i32 0, i32 4
  %466 = load i64, i64* %465, align 8
  %467 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %468 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %467, i32 0, i32 0
  %469 = load i8*, i8** %468, align 8
  %470 = getelementptr inbounds i8, i8* %469, i64 %466
  store i8* %470, i8** %468, align 8
  %471 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %472 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %471, i32 0, i32 0
  %473 = load i8*, i8** %472, align 8
  %474 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %475 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %474, i32 0, i32 1
  store i8* %473, i8** %475, align 8
  br label %62

476:                                              ; preds = %416
  %477 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %478 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %477, i32 0, i32 1
  %479 = load i8*, i8** %478, align 8
  %480 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %481 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %480, i32 0, i32 0
  %482 = load i8*, i8** %481, align 8
  %483 = ptrtoint i8* %479 to i64
  %484 = ptrtoint i8* %482 to i64
  %485 = sub i64 %483, %484
  %486 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %487 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %486, i32 0, i32 4
  %488 = load i64, i64* %487, align 8
  %489 = sub nsw i64 %488, %485
  store i64 %489, i64* %487, align 8
  %490 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %491 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %490, i32 0, i32 1
  %492 = load i8*, i8** %491, align 8
  %493 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %494 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %493, i32 0, i32 1
  store i8* %492, i8** %494, align 8
  br label %495

495:                                              ; preds = %476, %404, %382, %246, %211, %206, %151, %146, %130, %75
  %496 = load i64, i64* @NGX_OK, align 8
  store i64 %496, i64* %3, align 8
  br label %497

497:                                              ; preds = %495, %414, %80
  %498 = load i64, i64* %3, align 8
  ret i64 %498
}

declare dso_local %struct.TYPE_17__* @ngx_http_get_module_ctx(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @ngx_http_fastcgi_process_record(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i8*) #1

declare dso_local %struct.TYPE_18__* @ngx_chain_get_free_buf(i32, i32*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
