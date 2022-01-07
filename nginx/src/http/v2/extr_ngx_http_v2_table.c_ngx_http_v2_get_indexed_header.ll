; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2_table.c_ngx_http_v2_get_indexed_header.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2_table.c_ngx_http_v2_get_indexed_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_13__ = type { i32, i8* }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64, %struct.TYPE_20__** }
%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_14__ }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_12__, i32 }

@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"client sent invalid hpack table index 0\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"http2 get indexed %s: %ui\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@NGX_HTTP_V2_STATIC_TABLE_ENTRIES = common dso_local global i64 0, align 8
@ngx_http_v2_static_table = common dso_local global %struct.TYPE_12__* null, align 8
@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_V2_TABLE_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"client sent out of bound hpack table index: %ui\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_v2_get_indexed_header(%struct.TYPE_21__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32, i32* @NGX_LOG_INFO, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %14, i32 %19, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @NGX_ERROR, align 4
  store i32 %21, i32* %4, align 4
  br label %267

22:                                               ; preds = %3
  %23 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @ngx_log_debug2(i32 %23, i32 %28, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %32, i64 %33)
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @NGX_HTTP_V2_STATIC_TABLE_ENTRIES, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %22
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ngx_http_v2_static_table, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i64 %45
  %47 = bitcast %struct.TYPE_12__* %43 to i8*
  %48 = bitcast %struct.TYPE_12__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 32, i1 false)
  %49 = load i32, i32* @NGX_OK, align 4
  store i32 %49, i32* %4, align 4
  br label %267

50:                                               ; preds = %22
  %51 = load i64, i64* @NGX_HTTP_V2_STATIC_TABLE_ENTRIES, align 8
  %52 = load i64, i64* %6, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %58, %62
  %64 = icmp ult i64 %54, %63
  br i1 %64, label %65, label %257

65:                                               ; preds = %50
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = sub i64 %69, %70
  %72 = sub i64 %71, 1
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = urem i64 %72, %76
  store i64 %77, i64* %6, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %81, i64 %82
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  store %struct.TYPE_20__* %84, %struct.TYPE_20__** %10, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  %94 = call i8* @ngx_pnalloc(i32 %88, i32 %93)
  store i8* %94, i8** %8, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %65
  %98 = load i32, i32* @NGX_ERROR, align 4
  store i32 %98, i32* %4, align 4
  br label %267

99:                                               ; preds = %65
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  store i32 %103, i32* %108, align 8
  %109 = load i8*, i8** %8, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 1
  store i8* %109, i8** %114, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @NGX_HTTP_V2_TABLE_SIZE, align 8
  %120 = add i64 %118, %119
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = sub i64 %120, %124
  store i64 %125, i64* %9, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %9, align 8
  %132 = icmp ugt i64 %130, %131
  br i1 %132, label %133, label %154

133:                                              ; preds = %99
  %134 = load i8*, i8** %8, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %9, align 8
  %140 = call i8* @ngx_cpymem(i8* %134, i64 %138, i64 %139)
  store i8* %140, i8** %8, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* %9, align 8
  %152 = sub i64 %150, %151
  %153 = call i8* @ngx_cpymem(i8* %141, i64 %145, i64 %152)
  store i8* %153, i8** %8, align 8
  br label %166

154:                                              ; preds = %99
  %155 = load i8*, i8** %8, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = call i8* @ngx_cpymem(i8* %155, i64 %159, i64 %164)
  store i8* %165, i8** %8, align 8
  br label %166

166:                                              ; preds = %154, %133
  %167 = load i8*, i8** %8, align 8
  store i8 0, i8* %167, align 1
  %168 = load i64, i64* %7, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i32, i32* @NGX_OK, align 4
  store i32 %171, i32* %4, align 4
  br label %267

172:                                              ; preds = %166
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  %182 = call i8* @ngx_pnalloc(i32 %176, i32 %181)
  store i8* %182, i8** %8, align 8
  %183 = load i8*, i8** %8, align 8
  %184 = icmp eq i8* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %172
  %186 = load i32, i32* @NGX_ERROR, align 4
  store i32 %186, i32* %4, align 4
  br label %267

187:                                              ; preds = %172
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  store i32 %191, i32* %196, align 8
  %197 = load i8*, i8** %8, align 8
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 1
  store i8* %197, i8** %202, align 8
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @NGX_HTTP_V2_TABLE_SIZE, align 8
  %208 = add i64 %206, %207
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = sub i64 %208, %212
  store i64 %213, i64* %9, align 8
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = load i64, i64* %9, align 8
  %220 = icmp ugt i64 %218, %219
  br i1 %220, label %221, label %242

221:                                              ; preds = %187
  %222 = load i8*, i8** %8, align 8
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* %9, align 8
  %228 = call i8* @ngx_cpymem(i8* %222, i64 %226, i64 %227)
  store i8* %228, i8** %8, align 8
  %229 = load i8*, i8** %8, align 8
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %231 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* %9, align 8
  %240 = sub i64 %238, %239
  %241 = call i8* @ngx_cpymem(i8* %229, i64 %233, i64 %240)
  store i8* %241, i8** %8, align 8
  br label %254

242:                                              ; preds = %187
  %243 = load i8*, i8** %8, align 8
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = call i8* @ngx_cpymem(i8* %243, i64 %247, i64 %252)
  store i8* %253, i8** %8, align 8
  br label %254

254:                                              ; preds = %242, %221
  %255 = load i8*, i8** %8, align 8
  store i8 0, i8* %255, align 1
  %256 = load i32, i32* @NGX_OK, align 4
  store i32 %256, i32* %4, align 4
  br label %267

257:                                              ; preds = %50
  %258 = load i32, i32* @NGX_LOG_INFO, align 4
  %259 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i64, i64* %6, align 8
  %265 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %258, i32 %263, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i64 %264)
  %266 = load i32, i32* @NGX_ERROR, align 4
  store i32 %266, i32* %4, align 4
  br label %267

267:                                              ; preds = %257, %254, %185, %170, %97, %40, %13
  %268 = load i32, i32* %4, align 4
  ret i32 %268
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_pnalloc(i32, i32) #1

declare dso_local i8* @ngx_cpymem(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
