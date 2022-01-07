; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_browser_module.c_ngx_http_browser.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_browser_module.c_ngx_http_browser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__*, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8*, i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_19__*, i64, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i64, i32, i32 }

@NGX_HTTP_MODERN_BROWSER = common dso_local global i64 0, align 8
@NGX_HTTP_ANCIENT_BROWSER = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"browser: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"version: \22%ui\22 \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"version: \22%ui\22 \22%ui\22\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Mozilla/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_13__*)* @ngx_http_browser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_browser(%struct.TYPE_21__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %21 = icmp eq %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @NGX_HTTP_MODERN_BROWSER, align 8
  store i64 %28, i64* %3, align 8
  br label %306

29:                                               ; preds = %22
  %30 = load i64, i64* @NGX_HTTP_ANCIENT_BROWSER, align 8
  store i64 %30, i64* %3, align 8
  br label %306

31:                                               ; preds = %2
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %8, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %6, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %9, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = icmp ne %struct.TYPE_17__* %51, null
  br i1 %52, label %53, label %227

53:                                               ; preds = %31
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  store %struct.TYPE_22__* %58, %struct.TYPE_22__** %16, align 8
  store i64 0, i64* %12, align 8
  br label %59

59:                                               ; preds = %216, %53
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %60, %65
  br i1 %66, label %67, label %219

67:                                               ; preds = %59
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %68, i64 %74
  store i8* %75, i8** %7, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = icmp uge i8* %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %67
  br label %216

80:                                               ; preds = %67
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32* @ngx_strstr(i8* %81, i32 %86)
  %88 = bitcast i32* %87 to i8*
  store i8* %88, i8** %7, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = icmp eq i8* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %216

92:                                               ; preds = %80
  %93 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @ngx_log_debug1(i32 %93, i32 %98, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %99)
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %7, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = icmp uge i8* %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %92
  br label %216

113:                                              ; preds = %92
  %114 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_debug2(i32 %114, i32 %119, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %124, i8* %125)
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 1000000, i64* %15, align 8
  br label %127

127:                                              ; preds = %182, %142, %113
  %128 = load i8*, i8** %7, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = icmp ult i8* %128, %129
  br i1 %130, label %131, label %186

131:                                              ; preds = %127
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %7, align 8
  %134 = load i8, i8* %132, align 1
  store i8 %134, i8* %10, align 1
  %135 = load i8, i8* %10, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp sge i32 %136, 48
  br i1 %137, label %138, label %150

138:                                              ; preds = %131
  %139 = load i8, i8* %10, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp sle i32 %140, 57
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load i64, i64* %14, align 8
  %144 = mul i64 %143, 10
  %145 = load i8, i8* %10, align 1
  %146 = sext i8 %145 to i32
  %147 = sub nsw i32 %146, 48
  %148 = sext i32 %147 to i64
  %149 = add i64 %144, %148
  store i64 %149, i64* %14, align 8
  br label %127

150:                                              ; preds = %138, %131
  %151 = load i8, i8* %10, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 46
  br i1 %153, label %154, label %185

154:                                              ; preds = %150
  %155 = load i64, i64* %14, align 8
  %156 = load i64, i64* %15, align 8
  %157 = mul i64 %155, %156
  %158 = load i64, i64* %13, align 8
  %159 = add i64 %158, %157
  store i64 %159, i64* %13, align 8
  %160 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %167 = load i64, i64* %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %13, align 8
  %172 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_debug2(i32 %160, i32 %165, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %170, i64 %171)
  %173 = load i64, i64* %13, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %175 = load i64, i64* %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ugt i64 %173, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %154
  %181 = load i64, i64* @NGX_HTTP_MODERN_BROWSER, align 8
  store i64 %181, i64* %3, align 8
  br label %306

182:                                              ; preds = %154
  store i64 0, i64* %14, align 8
  %183 = load i64, i64* %15, align 8
  %184 = udiv i64 %183, 100
  store i64 %184, i64* %15, align 8
  br label %127

185:                                              ; preds = %150
  br label %186

186:                                              ; preds = %185, %127
  %187 = load i64, i64* %14, align 8
  %188 = load i64, i64* %15, align 8
  %189 = mul i64 %187, %188
  %190 = load i64, i64* %13, align 8
  %191 = add i64 %190, %189
  store i64 %191, i64* %13, align 8
  %192 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %199 = load i64, i64* %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* %13, align 8
  %204 = call i32 (i32, i32, i32, i8*, i64, ...) @ngx_log_debug2(i32 %192, i32 %197, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i64 %202, i64 %203)
  %205 = load i64, i64* %13, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %207 = load i64, i64* %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = icmp uge i64 %205, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %186
  %213 = load i64, i64* @NGX_HTTP_MODERN_BROWSER, align 8
  store i64 %213, i64* %3, align 8
  br label %306

214:                                              ; preds = %186
  %215 = load i64, i64* @NGX_HTTP_ANCIENT_BROWSER, align 8
  store i64 %215, i64* %3, align 8
  br label %306

216:                                              ; preds = %112, %91, %79
  %217 = load i64, i64* %12, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %12, align 8
  br label %59

219:                                              ; preds = %59
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %219
  %225 = load i64, i64* @NGX_HTTP_ANCIENT_BROWSER, align 8
  store i64 %225, i64* %3, align 8
  br label %306

226:                                              ; preds = %219
  br label %227

227:                                              ; preds = %226, %31
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %254

232:                                              ; preds = %227
  %233 = load i64, i64* %6, align 8
  %234 = icmp ugt i64 %233, 13
  br i1 %234, label %235, label %253

235:                                              ; preds = %232
  %236 = load i8*, i8** %8, align 8
  %237 = call i64 @ngx_strncmp(i8* %236, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %253

239:                                              ; preds = %235
  %240 = load i8*, i8** %8, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp sgt i32 %243, 48
  br i1 %244, label %245, label %253

245:                                              ; preds = %239
  %246 = load i8*, i8** %8, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 8
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp slt i32 %249, 53
  br i1 %250, label %251, label %253

251:                                              ; preds = %245
  %252 = load i64, i64* @NGX_HTTP_ANCIENT_BROWSER, align 8
  store i64 %252, i64* %3, align 8
  br label %306

253:                                              ; preds = %245, %239, %235, %232
  br label %254

254:                                              ; preds = %253, %227
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %256, align 8
  %258 = icmp ne %struct.TYPE_19__* %257, null
  br i1 %258, label %259, label %297

259:                                              ; preds = %254
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 1
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 1
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %263, align 8
  store %struct.TYPE_20__* %264, %struct.TYPE_20__** %11, align 8
  store i64 0, i64* %12, align 8
  br label %265

265:                                              ; preds = %293, %259
  %266 = load i64, i64* %12, align 8
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = icmp ult i64 %266, %271
  br i1 %272, label %273, label %296

273:                                              ; preds = %265
  %274 = load i64, i64* %6, align 8
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %276 = load i64, i64* %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = icmp uge i64 %274, %279
  br i1 %280, label %281, label %292

281:                                              ; preds = %273
  %282 = load i8*, i8** %8, align 8
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %284 = load i64, i64* %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %283, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = call i32* @ngx_strstr(i8* %282, i32 %287)
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %292

290:                                              ; preds = %281
  %291 = load i64, i64* @NGX_HTTP_ANCIENT_BROWSER, align 8
  store i64 %291, i64* %3, align 8
  br label %306

292:                                              ; preds = %281, %273
  br label %293

293:                                              ; preds = %292
  %294 = load i64, i64* %12, align 8
  %295 = add i64 %294, 1
  store i64 %295, i64* %12, align 8
  br label %265

296:                                              ; preds = %265
  br label %297

297:                                              ; preds = %296, %254
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = load i64, i64* @NGX_HTTP_MODERN_BROWSER, align 8
  store i64 %303, i64* %3, align 8
  br label %306

304:                                              ; preds = %297
  %305 = load i64, i64* @NGX_HTTP_ANCIENT_BROWSER, align 8
  store i64 %305, i64* %3, align 8
  br label %306

306:                                              ; preds = %304, %302, %290, %251, %224, %214, %212, %180, %29, %27
  %307 = load i64, i64* %3, align 8
  ret i64 %307
}

declare dso_local i32* @ngx_strstr(i8*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, ...) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
