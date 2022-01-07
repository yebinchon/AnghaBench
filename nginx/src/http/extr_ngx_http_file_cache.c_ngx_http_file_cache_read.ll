; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_read.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_26__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_29__*, i32, i64, i32, %struct.TYPE_24__*, %struct.TYPE_27__, i32, i32, i32, %struct.TYPE_35__*, i32*, %struct.TYPE_33__, %struct.TYPE_31__ }
%struct.TYPE_29__ = type { i32, i32, i64, i32, i32, i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_30__*, %struct.TYPE_28__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32, i32* }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64 }

@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"cache file \22%s\22 is too small\00", align 1
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_HTTP_CACHE_VERSION = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"cache file \22%s\22 version mismatch\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"cache file \22%s\22 has md5 collision\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"cache file \22%s\22 has too long header\00", align 1
@NGX_HTTP_CACHE_VARY_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"cache file \22%s\22 has incorrect vary length\00", align 1
@NGX_HTTP_CACHE_KEY_LEN = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"http file cache vary mismatch\00", align 1
@NGX_HTTP_CACHE_UPDATING = common dso_local global i64 0, align 8
@NGX_HTTP_CACHE_STALE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"http file cache expired: %i %T %T\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, %struct.TYPE_26__*)* @ngx_http_file_cache_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_file_cache_read(%struct.TYPE_23__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %16 = call i64 @ngx_http_file_cache_aio_read(%struct.TYPE_23__* %14, %struct.TYPE_26__* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %3, align 8
  br label %444

21:                                               ; preds = %2
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i32, i32* @NGX_LOG_CRIT, align 4
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 20
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ngx_log_error(i32 %28, i32 %33, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %40, i64* %3, align 8
  br label %444

41:                                               ; preds = %21
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 18
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = bitcast i32* %46 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %47, %struct.TYPE_25__** %13, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NGX_HTTP_CACHE_VERSION, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %41
  %54 = load i32, i32* @NGX_LOG_INFO, align 4
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 20
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ngx_log_error(i32 %54, i32 %59, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %66, i64* %3, align 8
  br label %444

67:                                               ; preds = %41
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 14
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %75, %67
  %84 = load i32, i32* @NGX_LOG_CRIT, align 4
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_34__*, %struct.TYPE_34__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 20
  %92 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ngx_log_error(i32 %84, i32 %89, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %96, i64* %3, align 8
  br label %444

97:                                               ; preds = %75
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 18
  %100 = load %struct.TYPE_35__*, %struct.TYPE_35__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 96
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  store i32* %104, i32** %6, align 8
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 21
  %107 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %107, align 8
  store %struct.TYPE_22__* %108, %struct.TYPE_22__** %9, align 8
  store i64 0, i64* %11, align 8
  br label %109

109:                                              ; preds = %153, %97
  %110 = load i64, i64* %11, align 8
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 21
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %110, %114
  br i1 %115, label %116, label %156

116:                                              ; preds = %109
  %117 = load i32*, i32** %6, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %119 = load i64, i64* %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @ngx_memcmp(i32* %117, i32 %122, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %116
  %131 = load i32, i32* @NGX_LOG_CRIT, align 4
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 20
  %139 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ngx_log_error(i32 %131, i32 %136, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %143, i64* %3, align 8
  br label %444

144:                                              ; preds = %116
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %146 = load i64, i64* %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %6, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32* %152, i32** %6, align 8
  br label %153

153:                                              ; preds = %144
  %154 = load i64, i64* %11, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %11, align 8
  br label %109

156:                                              ; preds = %109
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ugt i64 %159, %162
  br i1 %163, label %164, label %178

164:                                              ; preds = %156
  %165 = load i32, i32* @NGX_LOG_CRIT, align 4
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 20
  %173 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @ngx_log_error(i32 %165, i32 %170, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %175)
  %177 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %177, i64* %3, align 8
  br label %444

178:                                              ; preds = %156
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @NGX_HTTP_CACHE_VARY_LEN, align 8
  %183 = icmp sgt i64 %181, %182
  br i1 %183, label %184, label %198

184:                                              ; preds = %178
  %185 = load i32, i32* @NGX_LOG_CRIT, align 4
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_34__*, %struct.TYPE_34__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 20
  %193 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @ngx_log_error(i32 %185, i32 %190, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %195)
  %197 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %197, i64* %3, align 8
  br label %444

198:                                              ; preds = %178
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %236

203:                                              ; preds = %198
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %205, i32 0, i32 13
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 19
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @ngx_http_file_cache_vary(%struct.TYPE_23__* %204, i32 %207, i64 %210, i32* %213)
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %215, i32 0, i32 19
  %217 = load i32*, i32** %216, align 8
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 12
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @NGX_HTTP_CACHE_KEY_LEN, align 4
  %222 = call i64 @ngx_memcmp(i32* %217, i32 %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %235

224:                                              ; preds = %203
  %225 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_34__*, %struct.TYPE_34__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @ngx_log_debug0(i32 %225, i32 %230, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %234 = call i64 @ngx_http_file_cache_reopen(%struct.TYPE_23__* %232, %struct.TYPE_26__* %233)
  store i64 %234, i64* %3, align 8
  br label %444

235:                                              ; preds = %203
  br label %236

236:                                              ; preds = %235, %198
  %237 = load i64, i64* %8, align 8
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 18
  %240 = load %struct.TYPE_35__*, %struct.TYPE_35__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %243, %237
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %241, align 8
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 4
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 3
  store i64 %248, i64* %250, align 8
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 5
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %254, i32 0, i32 4
  store i64 %253, i64* %255, align 8
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %256, i32 0, i32 6
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i32 0, i32 5
  store i64 %258, i64* %260, align 8
  %261 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %261, i32 0, i32 11
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %264, i32 0, i32 17
  store i32 %263, i32* %265, align 8
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 10
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 16
  store i32 %268, i32* %270, align 4
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %271, i32 0, i32 9
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 15
  store i32 %273, i32* %275, align 8
  %276 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %277 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i32 0, i32 2
  store i64 %278, i64* %280, align 8
  %281 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %282 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %281, i32 0, i32 8
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %284, i32 0, i32 14
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 1
  store i32 %283, i32* %286, align 4
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 7
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %290, i32 0, i32 14
  %292 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %291, i32 0, i32 0
  store i32 %289, i32* %292, align 8
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 0
  store i32 1, i32* %294, align 8
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 13
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %296, align 8
  store %struct.TYPE_24__* %297, %struct.TYPE_24__** %12, align 8
  %298 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %299 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_28__*, %struct.TYPE_28__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %363

304:                                              ; preds = %236
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %306 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_30__*, %struct.TYPE_30__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %307, i32 0, i32 0
  %309 = call i32 @ngx_shmtx_lock(i32* %308)
  %310 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %310, i32 0, i32 9
  %312 = load %struct.TYPE_29__*, %struct.TYPE_29__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %357, label %316

316:                                              ; preds = %304
  %317 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %317, i32 0, i32 9
  %319 = load %struct.TYPE_29__*, %struct.TYPE_29__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %319, i32 0, i32 1
  store i32 1, i32* %320, align 4
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %321, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %324, i32 0, i32 9
  %326 = load %struct.TYPE_29__*, %struct.TYPE_29__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %326, i32 0, i32 2
  store i64 %323, i64* %327, align 8
  %328 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 9
  %330 = load %struct.TYPE_29__*, %struct.TYPE_29__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %330, i32 0, i32 0
  store i32 1, i32* %331, align 8
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %332, i32 0, i32 12
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %335, i32 0, i32 9
  %337 = load %struct.TYPE_29__*, %struct.TYPE_29__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %337, i32 0, i32 6
  store i32 %334, i32* %338, align 8
  %339 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %339, i32 0, i32 11
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %342, i32 0, i32 9
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %344, i32 0, i32 5
  store i64 %341, i64* %345, align 8
  %346 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %346, i32 0, i32 11
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_28__*, %struct.TYPE_28__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = sext i32 %353 to i64
  %355 = add nsw i64 %354, %348
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* %352, align 8
  br label %357

357:                                              ; preds = %316, %304
  %358 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %359 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %358, i32 0, i32 0
  %360 = load %struct.TYPE_30__*, %struct.TYPE_30__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %360, i32 0, i32 0
  %362 = call i32 @ngx_shmtx_unlock(i32* %361)
  br label %363

363:                                              ; preds = %357, %236
  %364 = call i64 (...) @ngx_time()
  store i64 %364, i64* %7, align 8
  %365 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %365, i32 0, i32 3
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* %7, align 8
  %369 = icmp slt i64 %367, %368
  br i1 %369, label %370, label %442

370:                                              ; preds = %363
  %371 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %372 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %371, i32 0, i32 3
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %374, i32 0, i32 4
  %376 = load i64, i64* %375, align 8
  %377 = add nsw i64 %373, %376
  %378 = load i64, i64* %7, align 8
  %379 = icmp sge i64 %377, %378
  %380 = zext i1 %379 to i32
  %381 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %381, i32 0, i32 6
  store i32 %380, i32* %382, align 8
  %383 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %383, i32 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %387 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %386, i32 0, i32 5
  %388 = load i64, i64* %387, align 8
  %389 = add nsw i64 %385, %388
  %390 = load i64, i64* %7, align 8
  %391 = icmp sge i64 %389, %390
  %392 = zext i1 %391 to i32
  %393 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %393, i32 0, i32 7
  store i32 %392, i32* %394, align 4
  %395 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %396 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %395, i32 0, i32 0
  %397 = load %struct.TYPE_30__*, %struct.TYPE_30__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %397, i32 0, i32 0
  %399 = call i32 @ngx_shmtx_lock(i32* %398)
  %400 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %400, i32 0, i32 9
  %402 = load %struct.TYPE_29__*, %struct.TYPE_29__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 8
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %408

406:                                              ; preds = %370
  %407 = load i64, i64* @NGX_HTTP_CACHE_UPDATING, align 8
  store i64 %407, i64* %10, align 8
  br label %423

408:                                              ; preds = %370
  %409 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %409, i32 0, i32 9
  %411 = load %struct.TYPE_29__*, %struct.TYPE_29__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %411, i32 0, i32 3
  store i32 1, i32* %412, align 8
  %413 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %413, i32 0, i32 8
  store i32 1, i32* %414, align 8
  %415 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %415, i32 0, i32 9
  %417 = load %struct.TYPE_29__*, %struct.TYPE_29__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 4
  %420 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %420, i32 0, i32 10
  store i32 %419, i32* %421, align 8
  %422 = load i64, i64* @NGX_HTTP_CACHE_STALE, align 8
  store i64 %422, i64* %10, align 8
  br label %423

423:                                              ; preds = %408, %406
  %424 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %425 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %424, i32 0, i32 0
  %426 = load %struct.TYPE_30__*, %struct.TYPE_30__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %426, i32 0, i32 0
  %428 = call i32 @ngx_shmtx_unlock(i32* %427)
  %429 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %430 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %431 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %430, i32 0, i32 1
  %432 = load %struct.TYPE_34__*, %struct.TYPE_34__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = load i64, i64* %10, align 8
  %436 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %437 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %436, i32 0, i32 3
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* %7, align 8
  %440 = call i32 @ngx_log_debug3(i32 %429, i32 %434, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i64 %435, i64 %438, i64 %439)
  %441 = load i64, i64* %10, align 8
  store i64 %441, i64* %3, align 8
  br label %444

442:                                              ; preds = %363
  %443 = load i64, i64* @NGX_OK, align 8
  store i64 %443, i64* %3, align 8
  br label %444

444:                                              ; preds = %442, %423, %224, %184, %164, %130, %83, %53, %27, %19
  %445 = load i64, i64* %3, align 8
  ret i64 %445
}

declare dso_local i64 @ngx_http_file_cache_aio_read(%struct.TYPE_23__*, %struct.TYPE_26__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ngx_memcmp(i32*, i32, i32) #1

declare dso_local i32 @ngx_http_file_cache_vary(%struct.TYPE_23__*, i32, i64, i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_file_cache_reopen(%struct.TYPE_23__*, %struct.TYPE_26__*) #1

declare dso_local i32 @ngx_shmtx_lock(i32*) #1

declare dso_local i32 @ngx_shmtx_unlock(i32*) #1

declare dso_local i64 @ngx_time(...) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
