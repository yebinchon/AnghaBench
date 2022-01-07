; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_merge_app_conf.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_merge_app_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i32, %struct.TYPE_19__, %struct.TYPE_19__, %struct.TYPE_12__*, i64, i64, i64, %struct.TYPE_19__, i64, %struct.TYPE_19__, i32, i64, i64 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_19__, i8* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i8* }

@NGX_RTMP_HLS_NAMING_SEQUENTIAL = common dso_local global i32 0, align 4
@NGX_RTMP_HLS_SLICING_PLAIN = common dso_local global i32 0, align 4
@NGX_RTMP_HLS_TYPE_LIVE = common dso_local global i32 0, align 4
@NGX_RTMP_HLS_BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NGX_RTMP_HLS_TYPE_EVENT = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_rtmp_hls_cleanup = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*, i8*, i8*)* @ngx_rtmp_hls_merge_app_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_hls_merge_app_conf(%struct.TYPE_18__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %9, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 16
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 16
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @ngx_conf_merge_value(i64 %17, i64 %20, i32 0)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ngx_conf_merge_msec_value(i32 %24, i32 %27, i32 5000)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %37, 10
  %39 = call i32 @ngx_conf_merge_msec_value(i32 %31, i32 %34, i32 %38)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ngx_conf_merge_msec_value(i32 %42, i32 %45, i32 700)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ngx_conf_merge_msec_value(i32 %49, i32 %52, i32 2)
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ngx_conf_merge_msec_value(i32 %56, i32 %59, i32 30000)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 22
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 22
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @ngx_conf_merge_value(i64 %63, i64 %66, i32 1)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 21
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 21
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ngx_conf_merge_value(i64 %70, i64 %73, i32 0)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @NGX_RTMP_HLS_NAMING_SEQUENTIAL, align 4
  %82 = call i32 @ngx_conf_merge_uint_value(i64 %77, i64 %80, i32 %81)
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @NGX_RTMP_HLS_SLICING_PLAIN, align 4
  %90 = call i32 @ngx_conf_merge_uint_value(i64 %85, i64 %88, i32 %89)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 7
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @NGX_RTMP_HLS_TYPE_LIVE, align 4
  %98 = call i32 @ngx_conf_merge_uint_value(i64 %93, i64 %96, i32 %97)
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ngx_conf_merge_msec_value(i32 %101, i32 %104, i32 300)
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 20
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 20
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @NGX_RTMP_HLS_BUFSIZE, align 4
  %113 = call i32 @ngx_conf_merge_size_value(i32 %108, i32 %111, i32 %112)
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 14
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 14
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @ngx_conf_merge_value(i64 %116, i64 %119, i32 1)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 19
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 19
  %125 = bitcast %struct.TYPE_19__* %122 to { i32, i8* }*
  %126 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %125, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = bitcast %struct.TYPE_19__* %124 to { i32, i8* }*
  %131 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %130, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @ngx_conf_merge_str_value(i32 %127, i8* %129, i32 %132, i8* %134, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 18
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 18
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @ngx_conf_merge_value(i64 %138, i64 %141, i32 0)
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 15
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 15
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @ngx_conf_merge_value(i64 %145, i64 %148, i32 0)
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 12
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 12
  %154 = bitcast %struct.TYPE_19__* %151 to { i32, i8* }*
  %155 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %154, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = bitcast %struct.TYPE_19__* %153 to { i32, i8* }*
  %160 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %159, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 @ngx_conf_merge_str_value(i32 %156, i8* %158, i32 %161, i8* %163, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 17
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 17
  %169 = bitcast %struct.TYPE_19__* %166 to { i32, i8* }*
  %170 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %169, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = bitcast %struct.TYPE_19__* %168 to { i32, i8* }*
  %175 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %174, i32 0, i32 1
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @ngx_conf_merge_str_value(i32 %171, i8* %173, i32 %176, i8* %178, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 9
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 9
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @ngx_conf_merge_uint_value(i64 %182, i64 %185, i32 0)
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %3
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = sdiv i32 %194, %197
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 10
  store i32 %198, i32* %200, align 8
  br label %201

201:                                              ; preds = %191, %3
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 16
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %327

206:                                              ; preds = %201
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 11
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %327

212:                                              ; preds = %206
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 14
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %327

217:                                              ; preds = %212
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 7
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @NGX_RTMP_HLS_TYPE_EVENT, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %327

223:                                              ; preds = %217
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 11
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 1
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 11
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = sub nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i8, i8* %227, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 47
  br i1 %237, label %238, label %244

238:                                              ; preds = %223
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 11
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = add nsw i32 %242, -1
  store i32 %243, i32* %241, align 8
  br label %244

244:                                              ; preds = %238, %223
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i8* @ngx_pcalloc(i32 %247, i32 24)
  %249 = bitcast i8* %248 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %249, %struct.TYPE_16__** %10, align 8
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %251 = icmp eq %struct.TYPE_16__* %250, null
  br i1 %251, label %252, label %254

252:                                              ; preds = %244
  %253 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %253, i8** %4, align 8
  br label %509

254:                                              ; preds = %244
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 11
  %259 = bitcast %struct.TYPE_19__* %256 to i8*
  %260 = bitcast %struct.TYPE_19__* %258 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %259, i8* align 8 %260, i64 16, i1 false)
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = call i8* @ngx_pcalloc(i32 %268, i32 40)
  %270 = bitcast i8* %269 to %struct.TYPE_12__*
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 13
  store %struct.TYPE_12__* %270, %struct.TYPE_12__** %272, align 8
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 13
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %274, align 8
  %276 = icmp eq %struct.TYPE_12__* %275, null
  br i1 %276, label %277, label %279

277:                                              ; preds = %254
  %278 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %278, i8** %4, align 8
  br label %509

279:                                              ; preds = %254
  %280 = load i8*, i8** @ngx_rtmp_hls_cleanup, align 8
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 13
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 4
  store i8* %280, i8** %284, align 8
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 13
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 3
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 11
  %291 = bitcast %struct.TYPE_19__* %288 to i8*
  %292 = bitcast %struct.TYPE_19__* %290 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %291, i8* align 8 %292, i64 16, i1 false)
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 13
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 2
  store %struct.TYPE_16__* %293, %struct.TYPE_16__** %297, align 8
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 13
  %307 = load %struct.TYPE_12__*, %struct.TYPE_12__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %307, i32 0, i32 1
  store i32 %304, i32* %308, align 4
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 13
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 0
  store i32 %313, i32* %317, align 8
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 13
  %321 = call i64 @ngx_add_path(%struct.TYPE_18__* %318, %struct.TYPE_12__** %320)
  %322 = load i64, i64* @NGX_OK, align 8
  %323 = icmp ne i64 %321, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %279
  %325 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %325, i8** %4, align 8
  br label %509

326:                                              ; preds = %279
  br label %327

327:                                              ; preds = %326, %217, %212, %206, %201
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 11
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 11
  %332 = bitcast %struct.TYPE_19__* %329 to { i32, i8* }*
  %333 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %332, i32 0, i32 1
  %336 = load i8*, i8** %335, align 8
  %337 = bitcast %struct.TYPE_19__* %331 to { i32, i8* }*
  %338 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %337, i32 0, i32 1
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 @ngx_conf_merge_str_value(i32 %334, i8* %336, i32 %339, i8* %341, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %343 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %343, i32 0, i32 15
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %479

347:                                              ; preds = %327
  %348 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %348, i32 0, i32 14
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %479

352:                                              ; preds = %347
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 12
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %479

358:                                              ; preds = %352
  %359 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i32 0, i32 12
  %361 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %360, i32 0, i32 1
  %362 = load i8*, i8** %361, align 8
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 11
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %364, i32 0, i32 1
  %366 = load i8*, i8** %365, align 8
  %367 = call i64 @ngx_strcmp(i8* %362, i8* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %479

369:                                              ; preds = %358
  %370 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %371 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %370, i32 0, i32 7
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @NGX_RTMP_HLS_TYPE_EVENT, align 8
  %374 = icmp ne i64 %372, %373
  br i1 %374, label %375, label %479

375:                                              ; preds = %369
  %376 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %377 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %376, i32 0, i32 12
  %378 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %377, i32 0, i32 1
  %379 = load i8*, i8** %378, align 8
  %380 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %381 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %380, i32 0, i32 12
  %382 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = sub nsw i32 %383, 1
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, i8* %379, i64 %385
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp eq i32 %388, 47
  br i1 %389, label %390, label %396

390:                                              ; preds = %375
  %391 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %392 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %391, i32 0, i32 12
  %393 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = add nsw i32 %394, -1
  store i32 %395, i32* %393, align 8
  br label %396

396:                                              ; preds = %390, %375
  %397 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = call i8* @ngx_pcalloc(i32 %399, i32 24)
  %401 = bitcast i8* %400 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %401, %struct.TYPE_16__** %10, align 8
  %402 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %403 = icmp eq %struct.TYPE_16__* %402, null
  br i1 %403, label %404, label %406

404:                                              ; preds = %396
  %405 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %405, i8** %4, align 8
  br label %509

406:                                              ; preds = %396
  %407 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %408 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %407, i32 0, i32 1
  %409 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 12
  %411 = bitcast %struct.TYPE_19__* %408 to i8*
  %412 = bitcast %struct.TYPE_19__* %410 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %411, i8* align 8 %412, i64 16, i1 false)
  %413 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %414 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %417 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %416, i32 0, i32 0
  store i32 %415, i32* %417, align 8
  %418 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = call i8* @ngx_pcalloc(i32 %420, i32 40)
  %422 = bitcast i8* %421 to %struct.TYPE_12__*
  %423 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %424 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %423, i32 0, i32 13
  store %struct.TYPE_12__* %422, %struct.TYPE_12__** %424, align 8
  %425 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %426 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %425, i32 0, i32 13
  %427 = load %struct.TYPE_12__*, %struct.TYPE_12__** %426, align 8
  %428 = icmp eq %struct.TYPE_12__* %427, null
  br i1 %428, label %429, label %431

429:                                              ; preds = %406
  %430 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %430, i8** %4, align 8
  br label %509

431:                                              ; preds = %406
  %432 = load i8*, i8** @ngx_rtmp_hls_cleanup, align 8
  %433 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %434 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %433, i32 0, i32 13
  %435 = load %struct.TYPE_12__*, %struct.TYPE_12__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %435, i32 0, i32 4
  store i8* %432, i8** %436, align 8
  %437 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %438 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %437, i32 0, i32 13
  %439 = load %struct.TYPE_12__*, %struct.TYPE_12__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %439, i32 0, i32 3
  %441 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %442 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %441, i32 0, i32 12
  %443 = bitcast %struct.TYPE_19__* %440 to i8*
  %444 = bitcast %struct.TYPE_19__* %442 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %443, i8* align 8 %444, i64 16, i1 false)
  %445 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %446 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %447 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %446, i32 0, i32 13
  %448 = load %struct.TYPE_12__*, %struct.TYPE_12__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %448, i32 0, i32 2
  store %struct.TYPE_16__* %445, %struct.TYPE_16__** %449, align 8
  %450 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %450, i32 0, i32 0
  %452 = load %struct.TYPE_14__*, %struct.TYPE_14__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %452, i32 0, i32 1
  %454 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %458 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %457, i32 0, i32 13
  %459 = load %struct.TYPE_12__*, %struct.TYPE_12__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %459, i32 0, i32 1
  store i32 %456, i32* %460, align 4
  %461 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %462 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %461, i32 0, i32 0
  %463 = load %struct.TYPE_14__*, %struct.TYPE_14__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %467 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %466, i32 0, i32 13
  %468 = load %struct.TYPE_12__*, %struct.TYPE_12__** %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %468, i32 0, i32 0
  store i32 %465, i32* %469, align 8
  %470 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %471 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %472 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %471, i32 0, i32 13
  %473 = call i64 @ngx_add_path(%struct.TYPE_18__* %470, %struct.TYPE_12__** %472)
  %474 = load i64, i64* @NGX_OK, align 8
  %475 = icmp ne i64 %473, %474
  br i1 %475, label %476, label %478

476:                                              ; preds = %431
  %477 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %477, i8** %4, align 8
  br label %509

478:                                              ; preds = %431
  br label %479

479:                                              ; preds = %478, %369, %358, %352, %347, %327
  %480 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %481 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %480, i32 0, i32 12
  %482 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %483 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %482, i32 0, i32 12
  %484 = bitcast %struct.TYPE_19__* %481 to { i32, i8* }*
  %485 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %484, i32 0, i32 1
  %488 = load i8*, i8** %487, align 8
  %489 = bitcast %struct.TYPE_19__* %483 to { i32, i8* }*
  %490 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %489, i32 0, i32 0
  %491 = load i32, i32* %490, align 8
  %492 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %489, i32 0, i32 1
  %493 = load i8*, i8** %492, align 8
  %494 = call i32 @ngx_conf_merge_str_value(i32 %486, i8* %488, i32 %491, i8* %493, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %495 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %496 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %495, i32 0, i32 12
  %497 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 8
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %507

500:                                              ; preds = %479
  %501 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %502 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %501, i32 0, i32 12
  %503 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %504 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %503, i32 0, i32 11
  %505 = bitcast %struct.TYPE_19__* %502 to i8*
  %506 = bitcast %struct.TYPE_19__* %504 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %505, i8* align 8 %506, i64 16, i1 false)
  br label %507

507:                                              ; preds = %500, %479
  %508 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %508, i8** %4, align 8
  br label %509

509:                                              ; preds = %507, %476, %429, %404, %324, %277, %252
  %510 = load i8*, i8** %4, align 8
  ret i8* %510
}

declare dso_local i32 @ngx_conf_merge_value(i64, i64, i32) #1

declare dso_local i32 @ngx_conf_merge_msec_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_uint_value(i64, i64, i32) #1

declare dso_local i32 @ngx_conf_merge_size_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_str_value(i32, i8*, i32, i8*, i8*) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_add_path(%struct.TYPE_18__*, %struct.TYPE_12__**) #1

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
