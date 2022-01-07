; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_record_module.c_ngx_rtmp_record_node_av.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_record_module.c_ngx_rtmp_record_node_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { i64, i32, i32, i32, i32, %struct.TYPE_30__, i64, i64, i32, %struct.TYPE_24__, %struct.TYPE_27__* }
%struct.TYPE_30__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_27__ = type { i32, i64, i32 }
%struct.TYPE_28__ = type { i64, i8*, i64 }
%struct.TYPE_29__ = type { i64, i64, i32*, i32* }

@NGX_RTMP_RECORD_OFF = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_RTMP_MSG_VIDEO = common dso_local global i64 0, align 8
@NGX_RTMP_VIDEO_KEY_FRAME = common dso_local global i64 0, align 8
@NGX_RTMP_RECORD_VIDEO = common dso_local global i32 0, align 4
@NGX_RTMP_RECORD_MANUAL = common dso_local global i32 0, align 4
@NGX_CONF_UNSET = common dso_local global i64 0, align 8
@ngx_cached_time = common dso_local global %struct.TYPE_23__* null, align 8
@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@NGX_RTMP_MSG_AUDIO = common dso_local global i64 0, align 8
@NGX_RTMP_RECORD_AUDIO = common dso_local global i32 0, align 4
@NGX_RTMP_RECORD_KEYFRAMES = common dso_local global i32 0, align 4
@ngx_rtmp_codec_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"record: %V writing AAC header\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"record: %V writing AVC header\00", align 1
@NGX_RTMP_VIDEO_H264 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"record: %V skipping until H264 header\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"record: %V skipping until keyframe\00", align 1
@NGX_RTMP_AUDIO_AAC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"record: %V skipping until AAC header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_26__*, %struct.TYPE_28__*, i32*)* @ngx_rtmp_record_node_av to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_record_node_av(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1, %struct.TYPE_28__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_24__, align 8
  %11 = alloca %struct.TYPE_28__, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 10
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %17, align 8
  store %struct.TYPE_27__* %18, %struct.TYPE_27__** %15, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %20 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NGX_RTMP_RECORD_OFF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %28 = call i32 @ngx_rtmp_record_node_close(%struct.TYPE_25__* %26, %struct.TYPE_26__* %27)
  %29 = load i32, i32* @NGX_OK, align 4
  store i32 %29, i32* %5, align 4
  br label %446

30:                                               ; preds = %4
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NGX_RTMP_MSG_VIDEO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @ngx_rtmp_get_video_frame_type(i32* %37)
  %39 = load i64, i64* @NGX_RTMP_VIDEO_KEY_FRAME, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  br label %43

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i32 [ %41, %36 ], [ 0, %42 ]
  store i32 %44, i32* %13, align 4
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NGX_RTMP_MSG_VIDEO, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %13, align 4
  br label %60

52:                                               ; preds = %43
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @NGX_RTMP_RECORD_VIDEO, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %52, %50
  %61 = phi i32 [ %51, %50 ], [ %59, %52 ]
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %139

64:                                               ; preds = %60
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NGX_RTMP_RECORD_MANUAL, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %139

71:                                               ; preds = %64
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NGX_CONF_UNSET, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %128

77:                                               ; preds = %71
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 9
  %80 = bitcast %struct.TYPE_24__* %10 to i8*
  %81 = bitcast %struct.TYPE_24__* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 16, i1 false)
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %84
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sdiv i32 %91, 1000
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %93
  store i64 %96, i64* %94, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = srem i32 %98, 1000
  store i32 %99, i32* %97, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** @ngx_cached_time, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %102, %104
  br i1 %105, label %120, label %106

106:                                              ; preds = %77
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** @ngx_cached_time, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %109, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %106
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** @ngx_cached_time, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp sgt i32 %116, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %113, %77
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %123 = call i32 @ngx_rtmp_record_node_close(%struct.TYPE_25__* %121, %struct.TYPE_26__* %122)
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %125 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %126 = call i32 @ngx_rtmp_record_node_open(%struct.TYPE_25__* %124, %struct.TYPE_26__* %125)
  br label %127

127:                                              ; preds = %120, %113, %106
  br label %138

128:                                              ; preds = %71
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %128
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %136 = call i32 @ngx_rtmp_record_node_open(%struct.TYPE_25__* %134, %struct.TYPE_26__* %135)
  br label %137

137:                                              ; preds = %133, %128
  br label %138

138:                                              ; preds = %137, %127
  br label %139

139:                                              ; preds = %138, %64, %60
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @NGX_RTMP_RECORD_MANUAL, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %146
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* @NGX_OK, align 4
  store i32 %155, i32* %5, align 4
  br label %446

156:                                              ; preds = %149, %146, %139
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @NGX_INVALID_FILE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  %164 = load i32, i32* @NGX_OK, align 4
  store i32 %164, i32* %5, align 4
  br label %446

165:                                              ; preds = %156
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @NGX_RTMP_MSG_AUDIO, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %165
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @NGX_RTMP_RECORD_AUDIO, align 4
  %176 = and i32 %174, %175
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load i32, i32* @NGX_OK, align 4
  store i32 %179, i32* %5, align 4
  br label %446

180:                                              ; preds = %171, %165
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @NGX_RTMP_MSG_VIDEO, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %205

186:                                              ; preds = %180
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @NGX_RTMP_RECORD_VIDEO, align 4
  %191 = and i32 %189, %190
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %186
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @NGX_RTMP_RECORD_KEYFRAMES, align 4
  %198 = and i32 %196, %197
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %193
  %201 = load i32, i32* %13, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %200, %193
  %204 = load i32, i32* @NGX_OK, align 4
  store i32 %204, i32* %5, align 4
  br label %446

205:                                              ; preds = %200, %186, %180
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %239, label %210

210:                                              ; preds = %205
  %211 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %211, i32 0, i32 1
  store i32 1, i32* %212, align 8
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %216, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = sub nsw i64 %215, %218
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 7
  store i64 %219, i64* %221, align 8
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %210
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 5
  %230 = call i32 @ngx_rtmp_record_write_header(%struct.TYPE_30__* %229)
  %231 = load i32, i32* @NGX_OK, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %238

233:                                              ; preds = %227
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %235 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %236 = call i32 @ngx_rtmp_record_node_close(%struct.TYPE_25__* %234, %struct.TYPE_26__* %235)
  %237 = load i32, i32* @NGX_OK, align 4
  store i32 %237, i32* %5, align 4
  br label %446

238:                                              ; preds = %227, %210
  br label %239

239:                                              ; preds = %238, %205
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %241 = load i32, i32* @ngx_rtmp_codec_module, align 4
  %242 = call %struct.TYPE_29__* @ngx_rtmp_get_module_ctx(%struct.TYPE_25__* %240, i32 %241)
  store %struct.TYPE_29__* %242, %struct.TYPE_29__** %12, align 8
  %243 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %244 = icmp ne %struct.TYPE_29__* %243, null
  br i1 %244, label %245, label %345

245:                                              ; preds = %239
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %247 = bitcast %struct.TYPE_28__* %11 to i8*
  %248 = bitcast %struct.TYPE_28__* %246 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %247, i8* align 8 %248, i64 24, i1 false)
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %295, label %253

253:                                              ; preds = %245
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %254, i32 0, i32 3
  %256 = load i32*, i32** %255, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %258, label %295

258:                                              ; preds = %253
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %260 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @NGX_RTMP_RECORD_AUDIO, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %295

265:                                              ; preds = %258
  %266 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 2
  %274 = call i32 @ngx_log_debug1(i32 %266, i32 %271, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %273)
  %275 = load i64, i64* @NGX_RTMP_MSG_AUDIO, align 8
  %276 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 0
  store i64 %275, i64* %276, align 8
  %277 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %277, i32 0, i32 3
  %279 = load i32*, i32** %278, align 8
  %280 = call i8* @ngx_rtmp_record_get_chain_mlen(i32* %279)
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 1
  store i8* %280, i8** %281, align 8
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %284, i32 0, i32 3
  %286 = load i32*, i32** %285, align 8
  %287 = call i32 @ngx_rtmp_record_write_frame(%struct.TYPE_25__* %282, %struct.TYPE_26__* %283, %struct.TYPE_28__* %11, i32* %286, i32 0)
  %288 = load i32, i32* @NGX_OK, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %265
  %291 = load i32, i32* @NGX_OK, align 4
  store i32 %291, i32* %5, align 4
  br label %446

292:                                              ; preds = %265
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %293, i32 0, i32 2
  store i32 1, i32* %294, align 4
  br label %295

295:                                              ; preds = %292, %258, %253, %245
  %296 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %297 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %344, label %300

300:                                              ; preds = %295
  %301 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = icmp ne i32* %303, null
  br i1 %304, label %305, label %344

305:                                              ; preds = %300
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @NGX_RTMP_RECORD_VIDEO, align 4
  %310 = load i32, i32* @NGX_RTMP_RECORD_KEYFRAMES, align 4
  %311 = or i32 %309, %310
  %312 = and i32 %308, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %344

314:                                              ; preds = %305
  %315 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 0
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %322 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %321, i32 0, i32 2
  %323 = call i32 @ngx_log_debug1(i32 %315, i32 %320, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %322)
  %324 = load i64, i64* @NGX_RTMP_MSG_VIDEO, align 8
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 0
  store i64 %324, i64* %325, align 8
  %326 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %327 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %326, i32 0, i32 2
  %328 = load i32*, i32** %327, align 8
  %329 = call i8* @ngx_rtmp_record_get_chain_mlen(i32* %328)
  %330 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %11, i32 0, i32 1
  store i8* %329, i8** %330, align 8
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %333 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %334 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %333, i32 0, i32 2
  %335 = load i32*, i32** %334, align 8
  %336 = call i32 @ngx_rtmp_record_write_frame(%struct.TYPE_25__* %331, %struct.TYPE_26__* %332, %struct.TYPE_28__* %11, i32* %335, i32 0)
  %337 = load i32, i32* @NGX_OK, align 4
  %338 = icmp ne i32 %336, %337
  br i1 %338, label %339, label %341

339:                                              ; preds = %314
  %340 = load i32, i32* @NGX_OK, align 4
  store i32 %340, i32* %5, align 4
  br label %446

341:                                              ; preds = %314
  %342 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %342, i32 0, i32 3
  store i32 1, i32* %343, align 8
  br label %344

344:                                              ; preds = %341, %305, %300, %295
  br label %345

345:                                              ; preds = %344, %239
  %346 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @NGX_RTMP_MSG_VIDEO, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %414

351:                                              ; preds = %345
  %352 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %353 = icmp ne %struct.TYPE_29__* %352, null
  br i1 %353, label %354, label %376

354:                                              ; preds = %351
  %355 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %356 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @NGX_RTMP_VIDEO_H264, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %376

360:                                              ; preds = %354
  %361 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %376, label %365

365:                                              ; preds = %360
  %366 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %367 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_22__*, %struct.TYPE_22__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %373 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %372, i32 0, i32 2
  %374 = call i32 @ngx_log_debug1(i32 %366, i32 %371, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32* %373)
  %375 = load i32, i32* @NGX_OK, align 4
  store i32 %375, i32* %5, align 4
  br label %446

376:                                              ; preds = %360, %354, %351
  %377 = load i32*, i32** %9, align 8
  %378 = call i64 @ngx_rtmp_get_video_frame_type(i32* %377)
  %379 = load i64, i64* @NGX_RTMP_VIDEO_KEY_FRAME, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %397

381:                                              ; preds = %376
  %382 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %383 = icmp ne %struct.TYPE_29__* %382, null
  br i1 %383, label %384, label %390

384:                                              ; preds = %381
  %385 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %386 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @NGX_RTMP_VIDEO_H264, align 8
  %389 = icmp ne i64 %387, %388
  br i1 %389, label %394, label %390

390:                                              ; preds = %384, %381
  %391 = load i32*, i32** %9, align 8
  %392 = call i32 @ngx_rtmp_is_codec_header(i32* %391)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %397, label %394

394:                                              ; preds = %390, %384
  %395 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %396 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %395, i32 0, i32 4
  store i32 1, i32* %396, align 4
  br label %397

397:                                              ; preds = %394, %390, %376
  %398 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %399 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %398, i32 0, i32 4
  %400 = load i32, i32* %399, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %413, label %402

402:                                              ; preds = %397
  %403 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %404 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %405 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %404, i32 0, i32 0
  %406 = load %struct.TYPE_22__*, %struct.TYPE_22__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %410 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %409, i32 0, i32 2
  %411 = call i32 @ngx_log_debug1(i32 %403, i32 %408, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32* %410)
  %412 = load i32, i32* @NGX_OK, align 4
  store i32 %412, i32* %5, align 4
  br label %446

413:                                              ; preds = %397
  br label %440

414:                                              ; preds = %345
  %415 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %416 = icmp ne %struct.TYPE_29__* %415, null
  br i1 %416, label %417, label %439

417:                                              ; preds = %414
  %418 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %419 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %418, i32 0, i32 1
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @NGX_RTMP_AUDIO_AAC, align 8
  %422 = icmp eq i64 %420, %421
  br i1 %422, label %423, label %439

423:                                              ; preds = %417
  %424 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %425 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %439, label %428

428:                                              ; preds = %423
  %429 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %430 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %431 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %430, i32 0, i32 0
  %432 = load %struct.TYPE_22__*, %struct.TYPE_22__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %436 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %435, i32 0, i32 2
  %437 = call i32 @ngx_log_debug1(i32 %429, i32 %434, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32* %436)
  %438 = load i32, i32* @NGX_OK, align 4
  store i32 %438, i32* %5, align 4
  br label %446

439:                                              ; preds = %423, %417, %414
  br label %440

440:                                              ; preds = %439, %413
  %441 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %442 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %443 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %444 = load i32*, i32** %9, align 8
  %445 = call i32 @ngx_rtmp_record_write_frame(%struct.TYPE_25__* %441, %struct.TYPE_26__* %442, %struct.TYPE_28__* %443, i32* %444, i32 1)
  store i32 %445, i32* %5, align 4
  br label %446

446:                                              ; preds = %440, %428, %402, %365, %339, %290, %233, %203, %178, %163, %154, %25
  %447 = load i32, i32* %5, align 4
  ret i32 %447
}

declare dso_local i32 @ngx_rtmp_record_node_close(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i64 @ngx_rtmp_get_video_frame_type(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_rtmp_record_node_open(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @ngx_rtmp_record_write_header(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_29__* @ngx_rtmp_get_module_ctx(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

declare dso_local i8* @ngx_rtmp_record_get_chain_mlen(i32*) #1

declare dso_local i32 @ngx_rtmp_record_write_frame(%struct.TYPE_25__*, %struct.TYPE_26__*, %struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @ngx_rtmp_is_codec_header(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
