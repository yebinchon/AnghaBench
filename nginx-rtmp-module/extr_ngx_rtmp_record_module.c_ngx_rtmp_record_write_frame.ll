; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_record_module.c_ngx_rtmp_record_write_frame.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_record_module.c_ngx_rtmp_record_write_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i64, %struct.TYPE_24__, %struct.TYPE_21__* }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_21__ = type { i64, i64, i32 }
%struct.TYPE_22__ = type { i32, i64, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_18__*, %struct.TYPE_23__* }
%struct.TYPE_18__ = type { i8**, i8** }

@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"record: %V frame: mlen=%uD\00", align 1
@NGX_RTMP_MSG_VIDEO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"record: %V cut timestamp=%D\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_23__*, i64)* @ngx_rtmp_record_write_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_record_write_frame(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, %struct.TYPE_22__* %2, %struct.TYPE_23__* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [11 x i8*], align 16
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %19, align 8
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %17, align 8
  %21 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ngx_log_debug2(i32 %21, i32 %26, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %28, i32 %31)
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NGX_RTMP_MSG_VIDEO, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %44

41:                                               ; preds = %5
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %47, %50
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %44
  %56 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 2
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @ngx_log_debug2(i32 %56, i32 %61, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32* %63, i32 %64)
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %55, %44
  %67 = getelementptr inbounds [11 x i8*], [11 x i8*]* %12, i64 0, i64 0
  store i8** %67, i8*** %14, align 8
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load i8**, i8*** %14, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i32 1
  store i8** %73, i8*** %14, align 8
  store i8* %71, i8** %72, align 8
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  %76 = bitcast i32* %75 to i8**
  store i8** %76, i8*** %13, align 8
  %77 = load i8**, i8*** %13, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i8**, i8*** %14, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i32 1
  store i8** %81, i8*** %14, align 8
  store i8* %79, i8** %80, align 8
  %82 = load i8**, i8*** %13, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** %14, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %86, i8*** %14, align 8
  store i8* %84, i8** %85, align 8
  %87 = load i8**, i8*** %13, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8**, i8*** %14, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %14, align 8
  store i8* %89, i8** %90, align 8
  %92 = bitcast i32* %15 to i8**
  store i8** %92, i8*** %13, align 8
  %93 = load i8**, i8*** %13, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 2
  %95 = load i8*, i8** %94, align 8
  %96 = load i8**, i8*** %14, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i32 1
  store i8** %97, i8*** %14, align 8
  store i8* %95, i8** %96, align 8
  %98 = load i8**, i8*** %13, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i8**, i8*** %14, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i32 1
  store i8** %102, i8*** %14, align 8
  store i8* %100, i8** %101, align 8
  %103 = load i8**, i8*** %13, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i8**, i8*** %14, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i32 1
  store i8** %107, i8*** %14, align 8
  store i8* %105, i8** %106, align 8
  %108 = load i8**, i8*** %13, align 8
  %109 = getelementptr inbounds i8*, i8** %108, i64 3
  %110 = load i8*, i8** %109, align 8
  %111 = load i8**, i8*** %14, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i32 1
  store i8** %112, i8*** %14, align 8
  store i8* %110, i8** %111, align 8
  %113 = load i8**, i8*** %14, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i32 1
  store i8** %114, i8*** %14, align 8
  store i8* null, i8** %113, align 8
  %115 = load i8**, i8*** %14, align 8
  %116 = getelementptr inbounds i8*, i8** %115, i32 1
  store i8** %116, i8*** %14, align 8
  store i8* null, i8** %115, align 8
  %117 = load i8**, i8*** %14, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i32 1
  store i8** %118, i8*** %14, align 8
  store i8* null, i8** %117, align 8
  %119 = load i8**, i8*** %14, align 8
  %120 = getelementptr inbounds [11 x i8*], [11 x i8*]* %12, i64 0, i64 0
  %121 = ptrtoint i8** %119 to i64
  %122 = ptrtoint i8** %120 to i64
  %123 = sub i64 %121, %122
  %124 = sdiv exact i64 %123, 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %124, %128
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %16, align 4
  %131 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 4
  %133 = getelementptr inbounds [11 x i8*], [11 x i8*]* %12, i64 0, i64 0
  %134 = load i8**, i8*** %14, align 8
  %135 = getelementptr inbounds [11 x i8*], [11 x i8*]* %12, i64 0, i64 0
  %136 = ptrtoint i8** %134 to i64
  %137 = ptrtoint i8** %135 to i64
  %138 = sub i64 %136, %137
  %139 = sdiv exact i64 %138, 8
  %140 = trunc i64 %139 to i32
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i64 @ngx_write_file(%struct.TYPE_24__* %132, i8** %133, i32 %140, i64 %144)
  %146 = load i64, i64* @NGX_ERROR, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %66
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %151 = call i32 @ngx_rtmp_record_notify_error(%struct.TYPE_19__* %149, %struct.TYPE_20__* %150)
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @ngx_close_file(i32 %155)
  %157 = load i64, i64* @NGX_ERROR, align 8
  store i64 %157, i64* %6, align 8
  br label %292

158:                                              ; preds = %66
  br label %159

159:                                              ; preds = %208, %158
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %161 = icmp ne %struct.TYPE_23__* %160, null
  br i1 %161, label %162, label %212

162:                                              ; preds = %159
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 0
  %167 = load i8**, i8*** %166, align 8
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 1
  %172 = load i8**, i8*** %171, align 8
  %173 = icmp eq i8** %167, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %162
  br label %208

175:                                              ; preds = %162
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = load i8**, i8*** %181, align 8
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load i8**, i8*** %186, align 8
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 0
  %192 = load i8**, i8*** %191, align 8
  %193 = ptrtoint i8** %187 to i64
  %194 = ptrtoint i8** %192 to i64
  %195 = sub i64 %193, %194
  %196 = sdiv exact i64 %195, 8
  %197 = trunc i64 %196 to i32
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i64 @ngx_write_file(%struct.TYPE_24__* %177, i8** %182, i32 %197, i64 %201)
  %203 = load i64, i64* @NGX_ERROR, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %175
  %206 = load i64, i64* @NGX_ERROR, align 8
  store i64 %206, i64* %6, align 8
  br label %292

207:                                              ; preds = %175
  br label %208

208:                                              ; preds = %207, %174
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %210, align 8
  store %struct.TYPE_23__* %211, %struct.TYPE_23__** %10, align 8
  br label %159

212:                                              ; preds = %159
  %213 = getelementptr inbounds [11 x i8*], [11 x i8*]* %12, i64 0, i64 0
  store i8** %213, i8*** %14, align 8
  %214 = bitcast i32* %16 to i8**
  store i8** %214, i8*** %13, align 8
  %215 = load i8**, i8*** %13, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 3
  %217 = load i8*, i8** %216, align 8
  %218 = load i8**, i8*** %14, align 8
  %219 = getelementptr inbounds i8*, i8** %218, i32 1
  store i8** %219, i8*** %14, align 8
  store i8* %217, i8** %218, align 8
  %220 = load i8**, i8*** %13, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 2
  %222 = load i8*, i8** %221, align 8
  %223 = load i8**, i8*** %14, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i32 1
  store i8** %224, i8*** %14, align 8
  store i8* %222, i8** %223, align 8
  %225 = load i8**, i8*** %13, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 1
  %227 = load i8*, i8** %226, align 8
  %228 = load i8**, i8*** %14, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i32 1
  store i8** %229, i8*** %14, align 8
  store i8* %227, i8** %228, align 8
  %230 = load i8**, i8*** %13, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 0
  %232 = load i8*, i8** %231, align 8
  %233 = load i8**, i8*** %14, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i32 1
  store i8** %234, i8*** %14, align 8
  store i8* %232, i8** %233, align 8
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 4
  %237 = getelementptr inbounds [11 x i8*], [11 x i8*]* %12, i64 0, i64 0
  %238 = load i8**, i8*** %14, align 8
  %239 = getelementptr inbounds [11 x i8*], [11 x i8*]* %12, i64 0, i64 0
  %240 = ptrtoint i8** %238 to i64
  %241 = ptrtoint i8** %239 to i64
  %242 = sub i64 %240, %241
  %243 = sdiv exact i64 %242, 8
  %244 = trunc i64 %243 to i32
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = call i64 @ngx_write_file(%struct.TYPE_24__* %236, i8** %237, i32 %244, i64 %248)
  %250 = load i64, i64* @NGX_ERROR, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %212
  %253 = load i64, i64* @NGX_ERROR, align 8
  store i64 %253, i64* %6, align 8
  br label %292

254:                                              ; preds = %212
  %255 = load i64, i64* %11, align 8
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = add nsw i64 %258, %255
  store i64 %259, i64* %257, align 8
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %273

264:                                              ; preds = %254
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 4
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = icmp sge i64 %268, %271
  br i1 %272, label %286, label %273

273:                                              ; preds = %264, %254
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %290

278:                                              ; preds = %273
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 3
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %17, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = icmp sge i64 %281, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %278, %264
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %288 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %289 = call i32 @ngx_rtmp_record_node_close(%struct.TYPE_19__* %287, %struct.TYPE_20__* %288)
  br label %290

290:                                              ; preds = %286, %278, %273
  %291 = load i64, i64* @NGX_OK, align 8
  store i64 %291, i64* %6, align 8
  br label %292

292:                                              ; preds = %290, %252, %205, %148
  %293 = load i64, i64* %6, align 8
  ret i64 %293
}

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i64 @ngx_write_file(%struct.TYPE_24__*, i8**, i32, i64) #1

declare dso_local i32 @ngx_rtmp_record_notify_error(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ngx_close_file(i32) #1

declare dso_local i32 @ngx_rtmp_record_node_close(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
