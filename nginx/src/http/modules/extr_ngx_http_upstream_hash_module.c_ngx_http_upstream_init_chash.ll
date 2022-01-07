; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_upstream_hash_module.c_ngx_http_upstream_init_chash.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_upstream_hash_module.c_ngx_http_upstream_init_chash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_18__, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32, i8* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%union.anon = type { i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_upstream_init_chash_peer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"unix:\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ngx_http_upstream_chash_cmp_points = common dso_local global i32 0, align 4
@ngx_http_upstream_hash_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_24__*, %struct.TYPE_19__*)* @ngx_http_upstream_init_chash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_init_chash(%struct.TYPE_24__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca %struct.TYPE_23__*, align 8
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca %union.anon, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %25 = call i64 @ngx_http_upstream_init_round_robin(%struct.TYPE_24__* %23, %struct.TYPE_19__* %24)
  %26 = load i64, i64* @NGX_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i64, i64* @NGX_ERROR, align 8
  store i64 %29, i64* %3, align 8
  br label %306

30:                                               ; preds = %2
  %31 = load i32, i32* @ngx_http_upstream_init_chash_peer, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %37, align 8
  store %struct.TYPE_20__* %38, %struct.TYPE_20__** %19, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 160
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = add i64 16, %46
  store i64 %47, i64* %11, align 8
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %11, align 8
  %52 = call %struct.TYPE_23__* @ngx_palloc(i32 %50, i64 %51)
  store %struct.TYPE_23__* %52, %struct.TYPE_23__** %20, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %54 = icmp eq %struct.TYPE_23__* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %30
  %56 = load i64, i64* @NGX_ERROR, align 8
  store i64 %56, i64* %3, align 8
  br label %306

57:                                               ; preds = %30
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %61, align 8
  store %struct.TYPE_21__* %62, %struct.TYPE_21__** %18, align 8
  br label %63

63:                                               ; preds = %235, %57
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %65 = icmp ne %struct.TYPE_21__* %64, null
  br i1 %65, label %66, label %239

66:                                               ; preds = %63
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %14, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 5
  br i1 %72, label %73, label %89

73:                                               ; preds = %66
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @ngx_strncasecmp(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 5
  store i8* %83, i8** %6, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %86, 5
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %9, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %10, align 8
  br label %158

89:                                               ; preds = %73, %66
  store i32 0, i32* %17, align 4
  br label %90

90:                                               ; preds = %147, %89
  %91 = load i32, i32* %17, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %150

96:                                               ; preds = %90
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sub nsw i32 %102, %103
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %99, i64 %106
  %108 = load i8, i8* %107, align 1
  store i8 %108, i8* %8, align 1
  %109 = load i8, i8* %8, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 58
  br i1 %111, label %112, label %137

112:                                              ; preds = %96
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  store i8* %115, i8** %6, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %17, align 4
  %120 = sub nsw i32 %118, %119
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %9, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %125, i64 %129
  %131 = load i32, i32* %17, align 4
  %132 = sext i32 %131 to i64
  %133 = sub i64 0, %132
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  store i8* %134, i8** %7, align 8
  %135 = load i32, i32* %17, align 4
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %10, align 8
  br label %158

137:                                              ; preds = %96
  %138 = load i8, i8* %8, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp slt i32 %139, 48
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load i8, i8* %8, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp sgt i32 %143, 57
  br i1 %144, label %145, label %146

145:                                              ; preds = %141, %137
  br label %150

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %17, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %17, align 4
  br label %90

150:                                              ; preds = %145, %90
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %6, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %9, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* %10, align 8
  br label %158

158:                                              ; preds = %150, %112, %79
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @ngx_crc32_init(i32 %159)
  %161 = load i8*, i8** %6, align 8
  %162 = load i64, i64* %9, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 @ngx_crc32_update(i32* %13, i8* %161, i32 %163)
  %165 = call i32 @ngx_crc32_update(i32* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %166 = load i8*, i8** %7, align 8
  %167 = load i64, i64* %10, align 8
  %168 = trunc i64 %167 to i32
  %169 = call i32 @ngx_crc32_update(i32* %13, i8* %166, i32 %168)
  %170 = bitcast %union.anon* %22 to i32*
  store i32 0, i32* %170, align 4
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = mul nsw i32 %173, 160
  store i32 %174, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %175

175:                                              ; preds = %231, %158
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %15, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %234

179:                                              ; preds = %175
  %180 = load i32, i32* %13, align 4
  store i32 %180, i32* %12, align 4
  %181 = bitcast %union.anon* %22 to [4 x i8]*
  %182 = getelementptr inbounds [4 x i8], [4 x i8]* %181, i64 0, i64 0
  %183 = call i32 @ngx_crc32_update(i32* %12, i8* %182, i32 4)
  %184 = load i32, i32* %12, align 4
  %185 = call i32 @ngx_crc32_final(i32 %184)
  %186 = load i32, i32* %12, align 4
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %188, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 0
  store i32 %186, i32* %194, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %197, align 8
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 1
  store %struct.TYPE_18__* %195, %struct.TYPE_18__** %203, align 8
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %205, align 8
  %208 = load i32, i32* %12, align 4
  %209 = and i32 %208, 255
  %210 = trunc i32 %209 to i8
  %211 = bitcast %union.anon* %22 to [4 x i8]*
  %212 = getelementptr inbounds [4 x i8], [4 x i8]* %211, i64 0, i64 0
  store i8 %210, i8* %212, align 4
  %213 = load i32, i32* %12, align 4
  %214 = ashr i32 %213, 8
  %215 = and i32 %214, 255
  %216 = trunc i32 %215 to i8
  %217 = bitcast %union.anon* %22 to [4 x i8]*
  %218 = getelementptr inbounds [4 x i8], [4 x i8]* %217, i64 0, i64 1
  store i8 %216, i8* %218, align 1
  %219 = load i32, i32* %12, align 4
  %220 = ashr i32 %219, 16
  %221 = and i32 %220, 255
  %222 = trunc i32 %221 to i8
  %223 = bitcast %union.anon* %22 to [4 x i8]*
  %224 = getelementptr inbounds [4 x i8], [4 x i8]* %223, i64 0, i64 2
  store i8 %222, i8* %224, align 2
  %225 = load i32, i32* %12, align 4
  %226 = ashr i32 %225, 24
  %227 = and i32 %226, 255
  %228 = trunc i32 %227 to i8
  %229 = bitcast %union.anon* %22 to [4 x i8]*
  %230 = getelementptr inbounds [4 x i8], [4 x i8]* %229, i64 0, i64 3
  store i8 %228, i8* %230, align 1
  br label %231

231:                                              ; preds = %179
  %232 = load i32, i32* %17, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %17, align 4
  br label %175

234:                                              ; preds = %175
  br label %235

235:                                              ; preds = %234
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %237 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %237, align 8
  store %struct.TYPE_21__* %238, %struct.TYPE_21__** %18, align 8
  br label %63

239:                                              ; preds = %63
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %241, align 8
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* @ngx_http_upstream_chash_cmp_points, align 4
  %247 = call i32 @ngx_qsort(%struct.TYPE_25__* %242, i64 %245, i32 4, i32 %246)
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %248

248:                                              ; preds = %290, %239
  %249 = load i32, i32* %17, align 4
  %250 = sext i32 %249 to i64
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = icmp ult i64 %250, %253
  br i1 %254, label %255, label %293

255:                                              ; preds = %248
  %256 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %257 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %257, align 8
  %259 = load i32, i32* %16, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %265, align 8
  %267 = load i32, i32* %17, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %263, %271
  br i1 %272, label %273, label %289

273:                                              ; preds = %255
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %275, align 8
  %277 = load i32, i32* %16, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %16, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %276, i64 %279
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %281, i32 0, i32 1
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %282, align 8
  %284 = load i32, i32* %17, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i64 %285
  %287 = bitcast %struct.TYPE_25__* %280 to i8*
  %288 = bitcast %struct.TYPE_25__* %286 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %287, i8* align 8 %288, i64 16, i1 false)
  br label %289

289:                                              ; preds = %273, %255
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %17, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %17, align 4
  br label %248

293:                                              ; preds = %248
  %294 = load i32, i32* %16, align 4
  %295 = add nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 0
  store i64 %296, i64* %298, align 8
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %300 = load i32, i32* @ngx_http_upstream_hash_module, align 4
  %301 = call %struct.TYPE_22__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_19__* %299, i32 %300)
  store %struct.TYPE_22__* %301, %struct.TYPE_22__** %21, align 8
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %303 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 0
  store %struct.TYPE_23__* %302, %struct.TYPE_23__** %304, align 8
  %305 = load i64, i64* @NGX_OK, align 8
  store i64 %305, i64* %3, align 8
  br label %306

306:                                              ; preds = %293, %55, %28
  %307 = load i64, i64* %3, align 8
  ret i64 %307
}

declare dso_local i64 @ngx_http_upstream_init_round_robin(%struct.TYPE_24__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_23__* @ngx_palloc(i32, i64) #1

declare dso_local i64 @ngx_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @ngx_crc32_init(i32) #1

declare dso_local i32 @ngx_crc32_update(i32*, i8*, i32) #1

declare dso_local i32 @ngx_crc32_final(i32) #1

declare dso_local i32 @ngx_qsort(%struct.TYPE_25__*, i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_22__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
