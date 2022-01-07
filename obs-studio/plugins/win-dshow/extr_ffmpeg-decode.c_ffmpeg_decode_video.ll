; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-dshow/extr_ffmpeg-decode.c_ffmpeg_decode_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-dshow/extr_ffmpeg-decode.c_ffmpeg_decode_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_decode = type { %struct.TYPE_11__*, i64, i32, %struct.TYPE_11__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i32, i32*, i32* }
%struct.TYPE_9__ = type { i64 }
%struct.obs_source_frame2 = type { i64, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i32 }

@AV_CODEC_ID_H264 = common dso_local global i64 0, align 8
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MAX_AV_PLANES = common dso_local global i64 0, align 8
@VIDEO_RANGE_DEFAULT = common dso_local global i32 0, align 4
@AVCOL_RANGE_JPEG = common dso_local global i64 0, align 8
@VIDEO_RANGE_FULL = common dso_local global i32 0, align 4
@VIDEO_RANGE_PARTIAL = common dso_local global i32 0, align 4
@VIDEO_CS_601 = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Failed to get video format parameters for video format %u\00", align 1
@VIDEO_FORMAT_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ffmpeg_decode_video(%struct.ffmpeg_decode* %0, i32* %1, i64 %2, i64* %3, i32 %4, %struct.obs_source_frame2* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ffmpeg_decode*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.obs_source_frame2*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.ffmpeg_decode* %0, %struct.ffmpeg_decode** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.obs_source_frame2* %5, %struct.obs_source_frame2** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = bitcast %struct.TYPE_10__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 32, i1 false)
  store i32 0, i32* %17, align 4
  %23 = load i32*, i32** %15, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @copy_data(%struct.ffmpeg_decode* %24, i32* %25, i64 %26)
  %28 = call i32 @av_init_packet(%struct.TYPE_10__* %16)
  %29 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %30 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load i64, i64* %11, align 8
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i64*, i64** %12, align 8
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  %39 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %40 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %39, i32 0, i32 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AV_CODEC_ID_H264, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %7
  %47 = load i32*, i32** %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @obs_avc_keyframe(i32* %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %51, %46, %7
  %57 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %58 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = icmp ne %struct.TYPE_11__* %59, null
  br i1 %60, label %93, label %61

61:                                               ; preds = %56
  %62 = call i8* (...) @av_frame_alloc()
  %63 = bitcast i8* %62 to %struct.TYPE_11__*
  %64 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %65 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %64, i32 0, i32 0
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %65, align 8
  %66 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %67 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = icmp ne %struct.TYPE_11__* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  store i32 0, i32* %8, align 4
  br label %263

71:                                               ; preds = %61
  %72 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %73 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %78 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %77, i32 0, i32 3
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = icmp ne %struct.TYPE_11__* %79, null
  br i1 %80, label %92, label %81

81:                                               ; preds = %76
  %82 = call i8* (...) @av_frame_alloc()
  %83 = bitcast i8* %82 to %struct.TYPE_11__*
  %84 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %85 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %84, i32 0, i32 3
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %85, align 8
  %86 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %87 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %86, i32 0, i32 3
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = icmp ne %struct.TYPE_11__* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %263

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %76, %71
  br label %93

93:                                               ; preds = %92, %56
  %94 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %95 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %100 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %99, i32 0, i32 3
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  br label %106

102:                                              ; preds = %93
  %103 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %104 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %103, i32 0, i32 0
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi %struct.TYPE_11__* [ %101, %98 ], [ %105, %102 ]
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %18, align 8
  %108 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %109 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @avcodec_send_packet(i32 %110, %struct.TYPE_10__* %16)
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %19, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %116 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %119 = call i32 @avcodec_receive_frame(i32 %117, %struct.TYPE_11__* %118)
  store i32 %119, i32* %19, align 4
  br label %120

120:                                              ; preds = %114, %106
  %121 = load i32, i32* %19, align 4
  %122 = icmp eq i32 %121, 0
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %17, align 4
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* @AVERROR_EOF, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %132, label %127

127:                                              ; preds = %120
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* @EAGAIN, align 4
  %130 = call i32 @AVERROR(i32 %129)
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %127, %120
  store i32 0, i32* %19, align 4
  br label %133

133:                                              ; preds = %132, %127
  %134 = load i32, i32* %19, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 0, i32* %8, align 4
  br label %263

137:                                              ; preds = %133
  %138 = load i32, i32* %17, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  store i32 1, i32* %8, align 4
  br label %263

141:                                              ; preds = %137
  br label %142

142:                                              ; preds = %141
  store i64 0, i64* %20, align 8
  br label %143

143:                                              ; preds = %174, %142
  %144 = load i64, i64* %20, align 8
  %145 = load i64, i64* @MAX_AV_PLANES, align 8
  %146 = icmp ult i64 %144, %145
  br i1 %146, label %147, label %177

147:                                              ; preds = %143
  %148 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %149 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %148, i32 0, i32 0
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 6
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* %20, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %14, align 8
  %157 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %156, i32 0, i32 9
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* %20, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32 %155, i32* %160, align 4
  %161 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %162 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %161, i32 0, i32 0
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %20, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %14, align 8
  %170 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %169, i32 0, i32 8
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* %20, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32 %168, i32* %173, align 4
  br label %174

174:                                              ; preds = %147
  %175 = load i64, i64* %20, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %20, align 8
  br label %143

177:                                              ; preds = %143
  %178 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %179 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %178, i32 0, i32 0
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @convert_pixel_format(i32 %182)
  %184 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %14, align 8
  %185 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %184, i32 0, i32 0
  store i64 %183, i64* %185, align 8
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* @VIDEO_RANGE_DEFAULT, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %177
  %190 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %191 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %190, i32 0, i32 0
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @AVCOL_RANGE_JPEG, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* @VIDEO_RANGE_FULL, align 4
  br label %201

199:                                              ; preds = %189
  %200 = load i32, i32* @VIDEO_RANGE_PARTIAL, align 4
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i32 [ %198, %197 ], [ %200, %199 ]
  store i32 %202, i32* %13, align 4
  br label %203

203:                                              ; preds = %201, %177
  %204 = load i32, i32* %13, align 4
  %205 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %14, align 8
  %206 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %204, %207
  br i1 %208, label %209, label %232

209:                                              ; preds = %203
  %210 = load i32, i32* @VIDEO_CS_601, align 4
  %211 = load i32, i32* %13, align 4
  %212 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %14, align 8
  %213 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %14, align 8
  %216 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %14, align 8
  %219 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @video_format_get_parameters(i32 %210, i32 %211, i32 %214, i32 %217, i32 %220)
  store i32 %221, i32* %21, align 4
  %222 = load i32, i32* %21, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %228, label %224

224:                                              ; preds = %209
  %225 = load i32, i32* @LOG_ERROR, align 4
  %226 = load i32, i32* @VIDEO_CS_601, align 4
  %227 = call i32 @blog(i32 %225, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %226)
  store i32 0, i32* %8, align 4
  br label %263

228:                                              ; preds = %209
  %229 = load i32, i32* %13, align 4
  %230 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %14, align 8
  %231 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 8
  br label %232

232:                                              ; preds = %228, %203
  %233 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %234 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %233, i32 0, i32 0
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64*, i64** %12, align 8
  store i64 %237, i64* %238, align 8
  %239 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %240 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %239, i32 0, i32 0
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %14, align 8
  %245 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %244, i32 0, i32 4
  store i32 %243, i32* %245, align 4
  %246 = load %struct.ffmpeg_decode*, %struct.ffmpeg_decode** %9, align 8
  %247 = getelementptr inbounds %struct.ffmpeg_decode, %struct.ffmpeg_decode* %246, i32 0, i32 0
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %14, align 8
  %252 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %251, i32 0, i32 3
  store i32 %250, i32* %252, align 8
  %253 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %14, align 8
  %254 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %253, i32 0, i32 2
  store i32 0, i32* %254, align 4
  %255 = load %struct.obs_source_frame2*, %struct.obs_source_frame2** %14, align 8
  %256 = getelementptr inbounds %struct.obs_source_frame2, %struct.obs_source_frame2* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @VIDEO_FORMAT_NONE, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %232
  store i32 0, i32* %8, align 4
  br label %263

261:                                              ; preds = %232
  %262 = load i32*, i32** %15, align 8
  store i32 1, i32* %262, align 4
  store i32 1, i32* %8, align 4
  br label %263

263:                                              ; preds = %261, %260, %224, %140, %136, %90, %70
  %264 = load i32, i32* %8, align 4
  ret i32 %264
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @copy_data(%struct.ffmpeg_decode*, i32*, i64) #2

declare dso_local i32 @av_init_packet(%struct.TYPE_10__*) #2

declare dso_local i64 @obs_avc_keyframe(i32*, i64) #2

declare dso_local i8* @av_frame_alloc(...) #2

declare dso_local i32 @avcodec_send_packet(i32, %struct.TYPE_10__*) #2

declare dso_local i32 @avcodec_receive_frame(i32, %struct.TYPE_11__*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i64 @convert_pixel_format(i32) #2

declare dso_local i32 @video_format_get_parameters(i32, i32, i32, i32, i32) #2

declare dso_local i32 @blog(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
