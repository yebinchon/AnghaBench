; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_upstream_ip_hash_module.c_ngx_http_upstream_get_ip_hash_peer.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_upstream_ip_hash_module.c_ngx_http_upstream_get_ip_hash_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32, i32, i32, i32*, i64, i32 }
%struct.TYPE_17__ = type { i32, i32 (%struct.TYPE_15__*, %struct.TYPE_18__*)*, i32, i32*, %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i64*, %struct.TYPE_19__*, %struct.TYPE_16__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i64, %struct.TYPE_16__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"get ip hash peer, try: %ui\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"get ip hash peer, hash: %ui %04XL\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*)* @ngx_http_upstream_get_ip_hash_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_upstream_get_ip_hash_peer(%struct.TYPE_15__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %6, align 8
  %17 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ngx_log_debug1(i32 %17, i32 %20, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %29 = call i32 @ngx_http_upstream_rr_peers_rlock(%struct.TYPE_19__* %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 20
  br i1 %33, label %42, label %34

34:                                               ; preds = %2
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %34, %2
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = call i32 @ngx_http_upstream_rr_peers_unlock(%struct.TYPE_19__* %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32 (%struct.TYPE_15__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_18__*)** %49, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 4
  %54 = call i32 %50(%struct.TYPE_15__* %51, %struct.TYPE_18__* %53)
  store i32 %54, i32* %3, align 4
  br label %299

55:                                               ; preds = %34
  %56 = call i64 (...) @ngx_time()
  store i64 %56, i64* %7, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 4
  store i32* null, i32** %60, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %236, %55
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %84, %64
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %65
  %73 = load i32, i32* %13, align 4
  %74 = mul nsw i32 %73, 113
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %74, %81
  %83 = srem i32 %82, 6271
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %65

87:                                               ; preds = %65
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = srem i32 %88, %94
  store i32 %95, i32* %8, align 4
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  store %struct.TYPE_16__* %101, %struct.TYPE_16__** %14, align 8
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %108, %87
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp sge i32 %103, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 11
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  store %struct.TYPE_16__* %116, %struct.TYPE_16__** %14, align 8
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %102

119:                                              ; preds = %102
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = udiv i64 %121, 64
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = urem i64 %125, 64
  %127 = shl i64 1, %126
  store i64 %127, i64* %9, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i64*, i64** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %9, align 8
  %137 = and i64 %135, %136
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %119
  br label %217

140:                                              ; preds = %119
  %141 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = load i64, i64* %9, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @ngx_log_debug2(i32 %141, i32 %144, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %145, i32 %147)
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %151, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %154 = call i32 @ngx_http_upstream_rr_peer_lock(%struct.TYPE_19__* %152, %struct.TYPE_16__* %153)
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 10
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %140
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %162, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %165 = call i32 @ngx_http_upstream_rr_peer_unlock(%struct.TYPE_19__* %163, %struct.TYPE_16__* %164)
  br label %217

166:                                              ; preds = %140
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %196

171:                                              ; preds = %166
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp sge i64 %174, %177
  br i1 %178, label %179, label %196

179:                                              ; preds = %171
  %180 = load i64, i64* %7, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %180, %183
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = icmp sle i64 %184, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %179
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %192, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %195 = call i32 @ngx_http_upstream_rr_peer_unlock(%struct.TYPE_19__* %193, %struct.TYPE_16__* %194)
  br label %217

196:                                              ; preds = %179, %171, %166
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %216

201:                                              ; preds = %196
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = icmp sge i64 %204, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %201
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %212, align 8
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %215 = call i32 @ngx_http_upstream_rr_peer_unlock(%struct.TYPE_19__* %213, %struct.TYPE_16__* %214)
  br label %217

216:                                              ; preds = %201, %196
  br label %237

217:                                              ; preds = %209, %189, %159, %139
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %219, align 8
  %222 = icmp sgt i32 %221, 20
  br i1 %222, label %223, label %236

223:                                              ; preds = %217
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %226, align 8
  %228 = call i32 @ngx_http_upstream_rr_peers_unlock(%struct.TYPE_19__* %227)
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 1
  %231 = load i32 (%struct.TYPE_15__*, %struct.TYPE_18__*)*, i32 (%struct.TYPE_15__*, %struct.TYPE_18__*)** %230, align 8
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 4
  %235 = call i32 %231(%struct.TYPE_15__* %232, %struct.TYPE_18__* %234)
  store i32 %235, i32* %3, align 4
  br label %299

236:                                              ; preds = %217
  br label %64

237:                                              ; preds = %216
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 2
  store %struct.TYPE_16__* %238, %struct.TYPE_16__** %241, align 8
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 9
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 4
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 8
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 8
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 7
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 0
  store i32* %253, i32** %255, align 8
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 6
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, 1
  store i64 %259, i64* %257, align 8
  %260 = load i64, i64* %7, align 8
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = sub nsw i64 %260, %263
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 4
  %267 = load i64, i64* %266, align 8
  %268 = icmp sgt i64 %264, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %237
  %270 = load i64, i64* %7, align 8
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 3
  store i64 %270, i64* %272, align 8
  br label %273

273:                                              ; preds = %269, %237
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %274, i32 0, i32 4
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %276, align 8
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %279 = call i32 @ngx_http_upstream_rr_peer_unlock(%struct.TYPE_19__* %277, %struct.TYPE_16__* %278)
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %282, align 8
  %284 = call i32 @ngx_http_upstream_rr_peers_unlock(%struct.TYPE_19__* %283)
  %285 = load i64, i64* %9, align 8
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 4
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = load i64*, i64** %288, align 8
  %290 = load i32, i32* %11, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i64, i64* %289, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = or i64 %293, %285
  store i64 %294, i64* %292, align 8
  %295 = load i32, i32* %13, align 4
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 2
  store i32 %295, i32* %297, align 8
  %298 = load i32, i32* @NGX_OK, align 4
  store i32 %298, i32* %3, align 4
  br label %299

299:                                              ; preds = %273, %223, %42
  %300 = load i32, i32* %3, align 4
  ret i32 %300
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_http_upstream_rr_peers_rlock(%struct.TYPE_19__*) #1

declare dso_local i32 @ngx_http_upstream_rr_peers_unlock(%struct.TYPE_19__*) #1

declare dso_local i64 @ngx_time(...) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_http_upstream_rr_peer_lock(%struct.TYPE_19__*, %struct.TYPE_16__*) #1

declare dso_local i32 @ngx_http_upstream_rr_peer_unlock(%struct.TYPE_19__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
