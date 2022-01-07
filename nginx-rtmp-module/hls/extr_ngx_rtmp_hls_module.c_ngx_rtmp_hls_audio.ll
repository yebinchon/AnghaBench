; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_audio.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_21__*, %struct.TYPE_28__* }
%struct.TYPE_21__ = type { i64, i64 }
%struct.TYPE_25__ = type { i32, i64, i32 }
%struct.TYPE_24__ = type { i32, i32, i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_27__ = type { i64, i32, i32*, i32* }

@ngx_rtmp_hls_module = common dso_local global i32 0, align 4
@ngx_rtmp_codec_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_RTMP_AUDIO_AAC = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"hls: too big audio frame\00", align 1
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"hls: audio pts=%uL\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"hls: not enough buffer for audio header\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"hls: aac header error\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"hls: audio sync dpts=%L (%.5fs)\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"hls: audio sync gap dpts=%L (%.5fs)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*, %struct.TYPE_26__*, %struct.TYPE_28__*)* @ngx_rtmp_hls_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_hls_audio(%struct.TYPE_23__* %0, %struct.TYPE_26__* %1, %struct.TYPE_28__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %7, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = load i32, i32* @ngx_rtmp_hls_module, align 4
  %23 = call %struct.TYPE_25__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_23__* %21, i32 %22)
  store %struct.TYPE_25__* %23, %struct.TYPE_25__** %8, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %25 = load i32, i32* @ngx_rtmp_hls_module, align 4
  %26 = call i8* @ngx_rtmp_get_module_ctx(%struct.TYPE_23__* %24, i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %9, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %29 = load i32, i32* @ngx_rtmp_codec_module, align 4
  %30 = call i8* @ngx_rtmp_get_module_ctx(%struct.TYPE_23__* %28, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %31, %struct.TYPE_27__** %10, align 8
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %33 = icmp eq %struct.TYPE_25__* %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %3
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %41 = icmp eq %struct.TYPE_24__* %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %44 = icmp eq %struct.TYPE_27__* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %42, %39, %34, %3
  %51 = load i64, i64* @NGX_OK, align 8
  store i64 %51, i64* %4, align 8
  br label %422

52:                                               ; preds = %45
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NGX_RTMP_AUDIO_AAC, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %65 = call i64 @ngx_rtmp_is_codec_header(%struct.TYPE_28__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %58, %52
  %68 = load i64, i64* @NGX_OK, align 8
  store i64 %68, i64* %4, align 8
  br label %422

69:                                               ; preds = %63
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %71, align 8
  store %struct.TYPE_29__* %72, %struct.TYPE_29__** %15, align 8
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %74 = icmp eq %struct.TYPE_29__* %73, null
  br i1 %74, label %75, label %125

75:                                               ; preds = %69
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.TYPE_29__* @ngx_pcalloc(i32 %80, i32 32)
  store %struct.TYPE_29__* %81, %struct.TYPE_29__** %15, align 8
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %83 = icmp eq %struct.TYPE_29__* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i64, i64* @NGX_ERROR, align 8
  store i64 %85, i64* %4, align 8
  br label %422

86:                                               ; preds = %75
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 3
  store %struct.TYPE_29__* %87, %struct.TYPE_29__** %89, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32* @ngx_palloc(i32 %94, i32 %97)
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 0
  store i32* %98, i32** %100, align 8
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %86
  %106 = load i64, i64* @NGX_ERROR, align 8
  store i64 %106, i64* %4, align 8
  br label %422

107:                                              ; preds = %86
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %117 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %116, i32 0, i32 1
  store i32* %115, i32** %117, align 8
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 3
  store i32* %120, i32** %122, align 8
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 2
  store i32* %120, i32** %124, align 8
  br label %125

125:                                              ; preds = %107, %69
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, 2
  %130 = add nsw i32 %129, 7
  store i32 %130, i32* %20, align 4
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = mul nsw i32 %134, 90
  store i32 %135, i32* %11, align 4
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %20, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ugt i32* %141, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %125
  %147 = load i32, i32* @NGX_LOG_ERR, align 4
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ngx_log_error(i32 %147, i32 %152, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %154 = load i64, i64* @NGX_OK, align 8
  store i64 %154, i64* %4, align 8
  br label %422

155:                                              ; preds = %125
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = icmp eq i32* %160, null
  %162 = zext i1 %161 to i32
  %163 = call i32 @ngx_rtmp_hls_update_fragment(%struct.TYPE_23__* %156, i32 %157, i32 %162, i32 2)
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %20, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = icmp ugt i32* %169, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %155
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %176 = call i32 @ngx_rtmp_hls_flush_audio(%struct.TYPE_23__* %175)
  br label %177

177:                                              ; preds = %174, %155
  %178 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @ngx_log_debug1(i32 %178, i32 %183, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %184)
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 7
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %191 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ugt i32* %189, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %177
  %195 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @ngx_log_debug0(i32 %195, i32 %200, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %202 = load i64, i64* @NGX_OK, align 8
  store i64 %202, i64* %4, align 8
  br label %422

203:                                              ; preds = %177
  %204 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  store i32* %206, i32** %16, align 8
  %207 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %208 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %207, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 5
  store i32* %210, i32** %208, align 8
  br label %211

211:                                              ; preds = %269, %203
  %212 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %213 = icmp ne %struct.TYPE_28__* %212, null
  br i1 %213, label %214, label %222

214:                                              ; preds = %211
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = icmp ult i32* %217, %220
  br label %222

222:                                              ; preds = %214, %211
  %223 = phi i1 [ false, %211 ], [ %221, %214 ]
  br i1 %223, label %224, label %273

224:                                              ; preds = %222
  %225 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = sub i64 %229, %234
  store i64 %235, i64* %14, align 8
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  %239 = load i64, i64* %14, align 8
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = icmp ugt i32* %240, %243
  br i1 %244, label %245, label %256

245:                                              ; preds = %224
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %247 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %250 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %249, i32 0, i32 3
  %251 = load i32*, i32** %250, align 8
  %252 = ptrtoint i32* %248 to i64
  %253 = ptrtoint i32* %251 to i64
  %254 = sub i64 %252, %253
  %255 = sdiv exact i64 %254, 4
  store i64 %255, i64* %14, align 8
  br label %256

256:                                              ; preds = %245, %224
  %257 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %258 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %257, i32 0, i32 3
  %259 = load i32*, i32** %258, align 8
  %260 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* %14, align 8
  %266 = call i32* @ngx_cpymem(i32* %259, i64 %264, i64 %265)
  %267 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %268 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %267, i32 0, i32 3
  store i32* %266, i32** %268, align 8
  br label %269

269:                                              ; preds = %256
  %270 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %271, align 8
  store %struct.TYPE_28__* %272, %struct.TYPE_28__** %7, align 8
  br label %211

273:                                              ; preds = %222
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %275 = call i64 @ngx_rtmp_hls_parse_aac_header(%struct.TYPE_23__* %274, i32* %17, i32* %18, i32* %19)
  %276 = load i64, i64* @NGX_OK, align 8
  %277 = icmp ne i64 %275, %276
  br i1 %277, label %278, label %287

278:                                              ; preds = %273
  %279 = load i32, i32* @NGX_LOG_ERR, align 4
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @ngx_log_error(i32 %279, i32 %284, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %286 = load i64, i64* @NGX_OK, align 8
  store i64 %286, i64* %4, align 8
  br label %422

287:                                              ; preds = %273
  %288 = load i32*, i32** %16, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  store i32 255, i32* %289, align 4
  %290 = load i32*, i32** %16, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  store i32 241, i32* %291, align 4
  %292 = load i32, i32* %17, align 4
  %293 = sub nsw i32 %292, 1
  %294 = shl i32 %293, 6
  %295 = load i32, i32* %18, align 4
  %296 = shl i32 %295, 2
  %297 = or i32 %294, %296
  %298 = load i32, i32* %19, align 4
  %299 = and i32 %298, 4
  %300 = ashr i32 %299, 2
  %301 = or i32 %297, %300
  %302 = load i32*, i32** %16, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 2
  store i32 %301, i32* %303, align 4
  %304 = load i32, i32* %19, align 4
  %305 = and i32 %304, 3
  %306 = shl i32 %305, 6
  %307 = load i32, i32* %20, align 4
  %308 = ashr i32 %307, 11
  %309 = and i32 %308, 3
  %310 = or i32 %306, %309
  %311 = load i32*, i32** %16, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 3
  store i32 %310, i32* %312, align 4
  %313 = load i32, i32* %20, align 4
  %314 = ashr i32 %313, 3
  %315 = load i32*, i32** %16, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 4
  store i32 %314, i32* %316, align 4
  %317 = load i32, i32* %20, align 4
  %318 = shl i32 %317, 5
  %319 = or i32 %318, 31
  %320 = load i32*, i32** %16, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 5
  store i32 %319, i32* %321, align 4
  %322 = load i32*, i32** %16, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 6
  store i32 252, i32* %323, align 4
  %324 = load i32*, i32** %16, align 8
  %325 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %326 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %325, i32 0, i32 0
  %327 = load i32*, i32** %326, align 8
  %328 = icmp ne i32* %324, %327
  br i1 %328, label %329, label %335

329:                                              ; preds = %287
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 8
  %334 = load i64, i64* @NGX_OK, align 8
  store i64 %334, i64* %4, align 8
  br label %422

335:                                              ; preds = %287
  %336 = load i32, i32* %11, align 4
  %337 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 1
  store i32 %336, i32* %338, align 4
  %339 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %335
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %343, %335
  %349 = load i64, i64* @NGX_OK, align 8
  store i64 %349, i64* %4, align 8
  br label %422

350:                                              ; preds = %343
  %351 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %352 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = mul nsw i32 %356, 90000
  %358 = mul nsw i32 %357, 1024
  %359 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %360 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = sdiv i32 %358, %361
  %363 = add nsw i32 %353, %362
  store i32 %363, i32* %12, align 4
  %364 = load i32, i32* %12, align 4
  %365 = load i32, i32* %11, align 4
  %366 = sub nsw i32 %364, %365
  store i32 %366, i32* %13, align 4
  %367 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %368 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %368, i32 0, i32 0
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = load i32, i32* %13, align 4
  %374 = load i32, i32* %13, align 4
  %375 = sitofp i32 %374 to double
  %376 = fdiv double %375, 9.000000e+04
  %377 = fptosi double %376 to i32
  %378 = call i32 @ngx_log_debug2(i32 %367, i32 %372, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %373, i32 %377)
  %379 = load i32, i32* %13, align 4
  %380 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %381 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %380, i32 0, i32 1
  %382 = load i64, i64* %381, align 8
  %383 = trunc i64 %382 to i32
  %384 = mul nsw i32 %383, 90
  %385 = icmp sle i32 %379, %384
  br i1 %385, label %386, label %403

386:                                              ; preds = %350
  %387 = load i32, i32* %13, align 4
  %388 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %389 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = trunc i64 %390 to i32
  %392 = mul nsw i32 %391, -90
  %393 = icmp sge i32 %387, %392
  br i1 %393, label %394, label %403

394:                                              ; preds = %386
  %395 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %396, align 8
  %399 = load i32, i32* %12, align 4
  %400 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %401 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %400, i32 0, i32 1
  store i32 %399, i32* %401, align 4
  %402 = load i64, i64* @NGX_OK, align 8
  store i64 %402, i64* %4, align 8
  br label %422

403:                                              ; preds = %386, %350
  %404 = load i32, i32* %11, align 4
  %405 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %406 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %405, i32 0, i32 2
  store i32 %404, i32* %406, align 8
  %407 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %408 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %407, i32 0, i32 0
  store i32 1, i32* %408, align 8
  %409 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %410 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %410, i32 0, i32 0
  %412 = load %struct.TYPE_22__*, %struct.TYPE_22__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* %13, align 4
  %416 = load i32, i32* %13, align 4
  %417 = sitofp i32 %416 to double
  %418 = fdiv double %417, 9.000000e+04
  %419 = fptosi double %418 to i32
  %420 = call i32 @ngx_log_debug2(i32 %409, i32 %414, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %415, i32 %419)
  %421 = load i64, i64* @NGX_OK, align 8
  store i64 %421, i64* %4, align 8
  br label %422

422:                                              ; preds = %403, %394, %348, %329, %278, %194, %146, %105, %84, %67, %50
  %423 = load i64, i64* %4, align 8
  ret i64 %423
}

declare dso_local %struct.TYPE_25__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_23__*, i32) #1

declare dso_local i8* @ngx_rtmp_get_module_ctx(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @ngx_rtmp_is_codec_header(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_rtmp_hls_update_fragment(%struct.TYPE_23__*, i32, i32, i32) #1

declare dso_local i32 @ngx_rtmp_hls_flush_audio(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32* @ngx_cpymem(i32*, i64, i64) #1

declare dso_local i64 @ngx_rtmp_hls_parse_aac_header(%struct.TYPE_23__*, i32*, i32*, i32*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
