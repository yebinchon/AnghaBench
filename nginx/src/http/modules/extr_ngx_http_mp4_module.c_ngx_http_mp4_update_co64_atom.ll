; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_update_co64_atom.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_mp4_module.c_ngx_http_mp4_update_co64_atom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, %struct.TYPE_15__, %struct.TYPE_13__, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64, i64, i64, %struct.TYPE_16__*, i8*, i8*, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"mp4 co64 atom update\00", align 1
@NGX_HTTP_MP4_CO64_DATA = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"no mp4 co64 atoms were found in \22%s\22\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"start time is out mp4 co64 chunks in \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"start chunk offset:%O\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"end time is out mp4 co64 chunks in \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"end chunk offset:%O\00", align 1
@NGX_HTTP_MP4_CO64_ATOM = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @ngx_http_mp4_update_co64_atom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_mp4_update_co64_atom(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %11 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ngx_log_debug0(i32 %11, i32 %15, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = load i64, i64* @NGX_HTTP_MP4_CO64_DATA, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %22, align 8
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %9, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %25 = icmp eq %struct.TYPE_20__* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load i32, i32* @NGX_LOG_ERR, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ngx_log_error(i32 %27, i32 %31, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @NGX_ERROR, align 4
  store i32 %38, i32* %3, align 4
  br label %241

39:                                               ; preds = %2
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %39
  %48 = load i32, i32* @NGX_LOG_ERR, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ngx_log_error(i32 %48, i32 %52, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @NGX_ERROR, align 4
  store i32 %59, i32* %3, align 4
  br label %241

60:                                               ; preds = %39
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = mul i64 %63, 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, %64
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %66, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @ngx_mp4_get_64value(i32 %73)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 6
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr i8, i8* %82, i64 %79
  store i8* %83, i8** %81, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 6
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @ngx_mp4_set_64value(i32 %86, i8* %89)
  %91 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 6
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @ngx_log_debug1(i32 %91, i32 %95, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %174

104:                                              ; preds = %60
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %107, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %104
  %113 = load i32, i32* @NGX_LOG_ERR, align 4
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ngx_log_error(i32 %113, i32 %117, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @NGX_ERROR, align 4
  store i32 %124, i32* %3, align 4
  br label %241

125:                                              ; preds = %104
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %128, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %7, align 4
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 %139, 4
  %141 = add i64 %137, %140
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %125
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = sub i64 %151, 4
  %153 = trunc i64 %152 to i32
  %154 = call i8* @ngx_mp4_get_64value(i32 %153)
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 5
  store i8* %154, i8** %156, align 8
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 7
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 5
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr i8, i8* %162, i64 %159
  store i8* %163, i8** %161, align 8
  %164 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 5
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @ngx_log_debug1(i32 %164, i32 %168, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %171)
  br label %173

173:                                              ; preds = %147, %125
  br label %191

174:                                              ; preds = %60
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = sub nsw i64 %177, %180
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %7, align 4
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 5
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %174, %173
  %192 = load i32, i32* %7, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %191
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 6
  store i8* %197, i8** %199, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 5
  store i8* null, i8** %201, align 8
  br label %202

202:                                              ; preds = %194, %191
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %205, %208
  %210 = sext i32 %209 to i64
  %211 = add i64 8, %210
  store i64 %211, i64* %6, align 8
  %212 = load i64, i64* %6, align 8
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = add i64 %215, %212
  store i64 %216, i64* %214, align 8
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 4
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %218, align 8
  %220 = load i64, i64* @NGX_HTTP_MP4_CO64_ATOM, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %222, align 8
  store %struct.TYPE_20__* %223, %struct.TYPE_20__** %8, align 8
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = inttoptr i64 %227 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %228, %struct.TYPE_17__** %10, align 8
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i64, i64* %6, align 8
  %233 = trunc i64 %232 to i32
  %234 = call i32 @ngx_mp4_set_32value(i32 %231, i32 %233)
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %7, align 4
  %239 = call i32 @ngx_mp4_set_32value(i32 %237, i32 %238)
  %240 = load i32, i32* @NGX_OK, align 4
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %202, %112, %47, %26
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i8* @ngx_mp4_get_64value(i32) #1

declare dso_local i32 @ngx_mp4_set_64value(i32, i8*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @ngx_mp4_set_32value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
