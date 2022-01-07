; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_merge_loc_conf.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_merge_loc_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__, i32*, %struct.TYPE_17__, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_17__ = type { i32, i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i8*, i32 }
%struct.TYPE_15__ = type { i32*, i64, i64 }

@ngx_pagesize = common dso_local global i64 0, align 8
@NGX_CONF_BITMASK_SET = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_FT_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_FT_TIMEOUT = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_FT_OFF = common dso_local global i32 0, align 4
@ngx_cacheline_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"grpc_headers_hash\00", align 1
@ngx_http_grpc_hide_headers = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@ngx_http_grpc_handler = common dso_local global i32* null, align 8
@ngx_http_grpc_headers = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_SSL_TLSv1 = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1_1 = common dso_local global i32 0, align 4
@NGX_SSL_TLSv1_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*)* @ngx_http_grpc_merge_loc_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_grpc_merge_loc_conf(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %9, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 16
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 16
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ngx_conf_merge_ptr_value(i32 %20, i32 %24, i32* null)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 15
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 15
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ngx_conf_merge_value(i32 %29, i32 %33, i32 0)
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 14
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ngx_conf_merge_uint_value(i32 %38, i32 %42, i32 0)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ngx_conf_merge_msec_value(i32 %47, i32 %51, i32 60000)
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 12
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 12
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ngx_conf_merge_msec_value(i32 %56, i32 %60, i32 60000)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ngx_conf_merge_msec_value(i32 %65, i32 %69, i32 60000)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ngx_conf_merge_msec_value(i32 %74, i32 %78, i32 0)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* @ngx_pagesize, align 8
  %89 = call i32 @ngx_conf_merge_size_value(i32 %83, i32 %87, i64 %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @NGX_CONF_BITMASK_SET, align 4
  %99 = call i32 @ngx_conf_merge_bitmask_value(i32 %93, i32 %97, i32 %98)
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @NGX_CONF_BITMASK_SET, align 4
  %109 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_ERROR, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_TIMEOUT, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @ngx_conf_merge_bitmask_value(i32 %103, i32 %107, i32 %112)
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_OFF, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %3
  %122 = load i32, i32* @NGX_CONF_BITMASK_SET, align 4
  %123 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_OFF, align 4
  %124 = or i32 %122, %123
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  br label %128

128:                                              ; preds = %121, %3
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ngx_conf_merge_value(i32 %132, i32 %136, i32 0)
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  store i32 512, i32* %138, align 8
  %139 = load i32, i32* @ngx_cacheline_size, align 4
  %140 = call i32 @ngx_align(i32 64, i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  store i32 %140, i32* %141, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %142, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 4
  %148 = load i32, i32* @ngx_http_grpc_hide_headers, align 4
  %149 = call i64 @ngx_http_upstream_hide_headers_hash(i32* %143, %struct.TYPE_17__* %145, %struct.TYPE_17__* %147, i32 %148, %struct.TYPE_16__* %11)
  %150 = load i64, i64* @NGX_OK, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %128
  %153 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %153, i8** %4, align 8
  br label %264

154:                                              ; preds = %128
  %155 = load i32*, i32** %5, align 8
  %156 = load i32, i32* @ngx_http_core_module, align 4
  %157 = call %struct.TYPE_15__* @ngx_http_conf_get_module_loc_conf(i32* %155, i32 %156)
  store %struct.TYPE_15__* %157, %struct.TYPE_15__** %12, align 8
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %181

162:                                              ; preds = %154
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = icmp eq i32* %166, null
  br i1 %167, label %168, label %181

168:                                              ; preds = %162
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 2
  store i32* %172, i32** %175, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %168, %162, %154
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %181
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = icmp eq i32* %189, null
  br i1 %190, label %191, label %201

191:                                              ; preds = %186
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load i32*, i32** @ngx_http_grpc_handler, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  store i32* %198, i32** %200, align 8
  br label %201

201:                                              ; preds = %197, %191, %186, %181
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %223

206:                                              ; preds = %201
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 2
  %211 = bitcast %struct.TYPE_12__* %208 to i8*
  %212 = bitcast %struct.TYPE_12__* %210 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %211, i8* align 8 %212, i64 8, i1 false)
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 3
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 3
  store i32* %215, i32** %217, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %206, %201
  %224 = load i32*, i32** %5, align 8
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 2
  %228 = load i32, i32* @ngx_http_grpc_headers, align 4
  %229 = call i64 @ngx_http_grpc_init_headers(i32* %224, %struct.TYPE_14__* %225, %struct.TYPE_12__* %227, i32 %228)
  store i64 %229, i64* %10, align 8
  %230 = load i64, i64* %10, align 8
  %231 = load i64, i64* @NGX_OK, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %223
  %234 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %234, i8** %4, align 8
  br label %264

235:                                              ; preds = %223
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = icmp eq i32* %240, null
  br i1 %241, label %242, label %262

242:                                              ; preds = %235
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 3
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 3
  %248 = load i32*, i32** %247, align 8
  %249 = icmp eq i32* %245, %248
  br i1 %249, label %250, label %262

250:                                              ; preds = %242
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 2
  %255 = bitcast %struct.TYPE_12__* %252 to i8*
  %256 = bitcast %struct.TYPE_12__* %254 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %255, i8* align 8 %256, i64 8, i1 false)
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 1
  store i32 %259, i32* %261, align 4
  br label %262

262:                                              ; preds = %250, %242, %235
  %263 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %263, i8** %4, align 8
  br label %264

264:                                              ; preds = %262, %233, %152
  %265 = load i8*, i8** %4, align 8
  ret i8* %265
}

declare dso_local i32 @ngx_conf_merge_ptr_value(i32, i32, i32*) #1

declare dso_local i32 @ngx_conf_merge_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_uint_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_msec_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_size_value(i32, i32, i64) #1

declare dso_local i32 @ngx_conf_merge_bitmask_value(i32, i32, i32) #1

declare dso_local i32 @ngx_align(i32, i32) #1

declare dso_local i64 @ngx_http_upstream_hide_headers_hash(i32*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @ngx_http_conf_get_module_loc_conf(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_http_grpc_init_headers(i32*, %struct.TYPE_14__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
