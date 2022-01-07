; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_crop_stsc_data.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_crop_stsc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_16__, %struct.TYPE_13__, %struct.TYPE_16__, %struct.TYPE_13__, i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32*, i32* }
%struct.TYPE_13__ = type { i32, i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"mp4 stsc crop start_sample:%uD\00", align 1
@NGX_HTTP_MP4_STSC_START = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"mp4 stsc crop end_sample:%uD, ext_samples:%uD\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_MP4_STSC_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"sample:%uD, chunk:%uD, chunks:%uD, samples:%uD, id:%uD\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"sample:%uD, chunk:%uD, chunks:%uD, samples:%uD\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"%s time is out mp4 stsc chunks in \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"zero number of samples in \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"start_chunk:%ui, start_chunk_samples:%ui\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"end_chunk:%ui, end_chunk_samples:%ui\00", align 1
@NGX_HTTP_MP4_STSC_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)* @ngx_http_mp4_crop_stsc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_mp4_crop_stsc_data(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %3
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 11
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ngx_log_debug1(i32 %34, i32 %38, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %101

41:                                               ; preds = %3
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %98

46:                                               ; preds = %41
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 12
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 11
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load i64, i64* @NGX_HTTP_MP4_STSC_START, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** %15, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %63 = icmp ne %struct.TYPE_16__* %62, null
  br i1 %63, label %64, label %89

64:                                               ; preds = %46
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = bitcast i32* %67 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %20, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ngx_mp4_get_32value(i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %17, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %64
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %10, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @ngx_mp4_set_32value(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %64
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %85, %46
  %90 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @ngx_log_debug2(i32 %90, i32 %94, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  br label %100

98:                                               ; preds = %41
  %99 = load i32, i32* @NGX_OK, align 4
  store i32 %99, i32* %4, align 4
  br label %481

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %29
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 6
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = load i64, i64* @NGX_HTTP_MP4_STSC_DATA, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  store %struct.TYPE_16__* %108, %struct.TYPE_16__** %15, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = bitcast i32* %111 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %112, %struct.TYPE_13__** %20, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = bitcast i32* %115 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %21, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ngx_mp4_get_32value(i32 %119)
  store i32 %120, i32* %9, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ngx_mp4_get_32value(i32 %123)
  store i32 %124, i32* %10, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ngx_mp4_get_32value(i32 %127)
  store i32 %128, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 1
  store %struct.TYPE_13__* %130, %struct.TYPE_13__** %20, align 8
  br label %131

131:                                              ; preds = %162, %101
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %134 = icmp ult %struct.TYPE_13__* %132, %133
  br i1 %134, label %135, label %180

135:                                              ; preds = %131
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ngx_mp4_get_32value(i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %9, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @ngx_log_debug5(i32 %140, i32 %144, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %145, i32 %146, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %9, align 4
  %155 = sub nsw i32 %153, %154
  %156 = load i32, i32* %10, align 4
  %157 = mul nsw i32 %155, %156
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %135
  br label %223

162:                                              ; preds = %135
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %8, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %12, align 4
  store i32 %167, i32* %9, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ngx_mp4_get_32value(i32 %170)
  store i32 %171, i32* %10, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @ngx_mp4_get_32value(i32 %174)
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %176, -1
  store i32 %177, i32* %17, align 4
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 1
  store %struct.TYPE_13__* %179, %struct.TYPE_13__** %20, align 8
  br label %131

180:                                              ; preds = %131
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %9, align 4
  %194 = sub nsw i32 %192, %193
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @ngx_log_debug4(i32 %185, i32 %189, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %190, i32 %191, i32 %194, i32 %195)
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %9, align 4
  %199 = sub nsw i32 %197, %198
  %200 = load i32, i32* %10, align 4
  %201 = mul nsw i32 %199, %200
  store i32 %201, i32* %13, align 4
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp sgt i32 %202, %203
  br i1 %204, label %205, label %222

205:                                              ; preds = %180
  %206 = load i32, i32* @NGX_LOG_ERR, align 4
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i32, i32, i32, i8*, i8*, ...) @ngx_log_error(i32 %206, i32 %210, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %214, i32 %219)
  %221 = load i32, i32* @NGX_ERROR, align 4
  store i32 %221, i32* %4, align 4
  br label %481

222:                                              ; preds = %180
  br label %223

223:                                              ; preds = %222, %161
  %224 = load i32, i32* %17, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %17, align 4
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 -1
  store %struct.TYPE_13__* %227, %struct.TYPE_13__** %20, align 8
  %228 = load i32, i32* %10, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %245

230:                                              ; preds = %223
  %231 = load i32, i32* @NGX_LOG_ERR, align 4
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  %243 = call i32 (i32, i32, i32, i8*, i8*, ...) @ngx_log_error(i32 %231, i32 %235, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %242)
  %244 = load i32, i32* @NGX_ERROR, align 4
  store i32 %244, i32* %4, align 4
  br label %481

245:                                              ; preds = %223
  %246 = load i32, i32* %9, align 4
  %247 = sub nsw i32 %246, 1
  store i32 %247, i32* %18, align 4
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* %10, align 4
  %250 = sdiv i32 %248, %249
  %251 = load i32, i32* %18, align 4
  %252 = add nsw i32 %251, %250
  store i32 %252, i32* %18, align 4
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* %10, align 4
  %255 = srem i32 %253, %254
  store i32 %255, i32* %19, align 4
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %295

258:                                              ; preds = %245
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %260 = bitcast %struct.TYPE_13__* %259 to i32*
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 2
  store i32* %260, i32** %262, align 8
  %263 = load i32, i32* %17, align 4
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load i32, i32* %18, align 4
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 8
  %269 = load i32, i32* %19, align 4
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 3
  store i32 %269, i32* %271, align 4
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = add nsw i32 %277, 1
  %279 = call i32 @ngx_mp4_set_32value(i32 %274, i32 %278)
  %280 = load i32, i32* %19, align 4
  %281 = load i32, i32* %10, align 4
  %282 = sub nsw i32 %281, %280
  store i32 %282, i32* %10, align 4
  %283 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @ngx_log_debug2(i32 %283, i32 %287, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %290, i32 %293)
  br label %357

295:                                              ; preds = %245
  %296 = load i32, i32* %8, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %313

298:                                              ; preds = %295
  %299 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i64 1
  %301 = bitcast %struct.TYPE_13__* %300 to i32*
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 1
  store i32* %301, i32** %303, align 8
  %304 = load i32, i32* %17, align 4
  %305 = sub nsw i32 %304, 1
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = sub nsw i32 %308, %305
  store i32 %309, i32* %307, align 8
  %310 = load i32, i32* %10, align 4
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 4
  store i32 %310, i32* %312, align 8
  br label %326

313:                                              ; preds = %295
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %315 = bitcast %struct.TYPE_13__* %314 to i32*
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 1
  store i32* %315, i32** %317, align 8
  %318 = load i32, i32* %17, align 4
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = sub nsw i32 %321, %318
  store i32 %322, i32* %320, align 8
  %323 = load i32, i32* %14, align 4
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 4
  store i32 %323, i32* %325, align 8
  br label %326

326:                                              ; preds = %313, %298
  %327 = load i32, i32* %19, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %337

329:                                              ; preds = %326
  %330 = load i32, i32* %18, align 4
  %331 = add nsw i32 %330, 1
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 5
  store i32 %331, i32* %333, align 4
  %334 = load i32, i32* %19, align 4
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 4
  store i32 %334, i32* %336, align 8
  br label %341

337:                                              ; preds = %326
  %338 = load i32, i32* %18, align 4
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %339, i32 0, i32 5
  store i32 %338, i32* %340, align 4
  br label %341

341:                                              ; preds = %337, %329
  %342 = load i32, i32* %19, align 4
  store i32 %342, i32* %10, align 4
  %343 = load i32, i32* %9, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %12, align 4
  %345 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @ngx_log_debug2(i32 %345, i32 %349, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %352, i32 %355)
  br label %357

357:                                              ; preds = %341, %258
  %358 = load i32, i32* %19, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %371

360:                                              ; preds = %357
  %361 = load i32, i32* %12, align 4
  %362 = load i32, i32* %18, align 4
  %363 = sub nsw i32 %361, %362
  %364 = icmp eq i32 %363, 2
  br i1 %364, label %365, label %371

365:                                              ; preds = %360
  %366 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %10, align 4
  %370 = call i32 @ngx_mp4_set_32value(i32 %368, i32 %369)
  br label %479

371:                                              ; preds = %360, %357
  %372 = load i32, i32* %19, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %426

374:                                              ; preds = %371
  %375 = load i32, i32* %7, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %426

377:                                              ; preds = %374
  %378 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 10
  store %struct.TYPE_13__* %379, %struct.TYPE_13__** %22, align 8
  %380 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %381 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 4
  %383 = call i32 @ngx_mp4_set_32value(i32 %382, i32 1)
  %384 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* %10, align 4
  %388 = call i32 @ngx_mp4_set_32value(i32 %386, i32 %387)
  %389 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* %11, align 4
  %393 = call i32 @ngx_mp4_set_32value(i32 %391, i32 %392)
  %394 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %394, i32 0, i32 9
  store %struct.TYPE_16__* %395, %struct.TYPE_16__** %16, align 8
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %396, i32 0, i32 0
  store i32 1, i32* %397, align 8
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %399 = bitcast %struct.TYPE_13__* %398 to i32*
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 2
  store i32* %399, i32** %401, align 8
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %403 = bitcast %struct.TYPE_13__* %402 to i32*
  %404 = getelementptr inbounds i32, i32* %403, i64 12
  %405 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %406 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %405, i32 0, i32 1
  store i32* %404, i32** %406, align 8
  %407 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %408 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %408, i32 0, i32 6
  %410 = load %struct.TYPE_10__*, %struct.TYPE_10__** %409, align 8
  %411 = load i64, i64* @NGX_HTTP_MP4_STSC_START, align 8
  %412 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 0
  store %struct.TYPE_16__* %407, %struct.TYPE_16__** %413, align 8
  %414 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %415 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = add nsw i32 %419, 2
  %421 = call i32 @ngx_mp4_set_32value(i32 %416, i32 %420)
  %422 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %423, align 8
  br label %478

426:                                              ; preds = %374, %371
  %427 = load i32, i32* %19, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %477

429:                                              ; preds = %426
  %430 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %431 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %430, i32 0, i32 8
  store %struct.TYPE_13__* %431, %struct.TYPE_13__** %22, align 8
  %432 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i32 0, i32 5
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = sub nsw i32 %437, %440
  %442 = call i32 @ngx_mp4_set_32value(i32 %434, i32 %441)
  %443 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %444 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* %10, align 4
  %447 = call i32 @ngx_mp4_set_32value(i32 %445, i32 %446)
  %448 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %449 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* %11, align 4
  %452 = call i32 @ngx_mp4_set_32value(i32 %450, i32 %451)
  %453 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %453, i32 0, i32 7
  store %struct.TYPE_16__* %454, %struct.TYPE_16__** %16, align 8
  %455 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %456 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %455, i32 0, i32 0
  store i32 1, i32* %456, align 8
  %457 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %458 = bitcast %struct.TYPE_13__* %457 to i32*
  %459 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %460 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %459, i32 0, i32 2
  store i32* %458, i32** %460, align 8
  %461 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %462 = bitcast %struct.TYPE_13__* %461 to i32*
  %463 = getelementptr inbounds i32, i32* %462, i64 12
  %464 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %465 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %464, i32 0, i32 1
  store i32* %463, i32** %465, align 8
  %466 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %467 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %468 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %467, i32 0, i32 6
  %469 = load %struct.TYPE_10__*, %struct.TYPE_10__** %468, align 8
  %470 = load i64, i64* @NGX_HTTP_MP4_STSC_END, align 8
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %469, i64 %470
  %472 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %471, i32 0, i32 0
  store %struct.TYPE_16__* %466, %struct.TYPE_16__** %472, align 8
  %473 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %474, align 8
  br label %477

477:                                              ; preds = %429, %426
  br label %478

478:                                              ; preds = %477, %377
  br label %479

479:                                              ; preds = %478, %365
  %480 = load i32, i32* @NGX_OK, align 4
  store i32 %480, i32* %4, align 4
  br label %481

481:                                              ; preds = %479, %230, %205, %98
  %482 = load i32, i32* %4, align 4
  ret i32 %482
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_mp4_get_32value(i32) #1

declare dso_local i32 @ngx_mp4_set_32value(i32, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_log_debug5(i32, i32, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
