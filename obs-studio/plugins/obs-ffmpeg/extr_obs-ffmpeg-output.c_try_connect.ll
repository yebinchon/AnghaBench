; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_try_connect.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-ffmpeg/extr_obs-ffmpeg-output.c_try_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffmpeg_output = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.video_output_info = type { i64, i64, i32 }
%struct.ffmpeg_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.audio_convert_info = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"gop_size\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"format_name\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"format_mime_type\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"muxer_settings\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"video_bitrate\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"audio_bitrate\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"video_encoder\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"video_encoder_id\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"audio_encoder\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"audio_encoder_id\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"video_settings\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"audio_settings\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"scale_width\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"scale_height\00", align 1
@VIDEO_RANGE_FULL = common dso_local global i64 0, align 8
@AVCOL_RANGE_JPEG = common dso_local global i32 0, align 4
@AVCOL_RANGE_MPEG = common dso_local global i32 0, align 4
@VIDEO_CS_709 = common dso_local global i64 0, align 8
@AVCOL_SPC_BT709 = common dso_local global i32 0, align 4
@AVCOL_SPC_BT470BG = common dso_local global i32 0, align 4
@AVCOL_RANGE_UNSPECIFIED = common dso_local global i32 0, align 4
@AVCOL_SPC_RGB = common dso_local global i32 0, align 4
@AV_PIX_FMT_NONE = common dso_local global i64 0, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [44 x i8] c"invalid pixel format used for FFmpeg output\00", align 1
@write_thread = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [52 x i8] c"ffmpeg_output_start: failed to create write thread.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ffmpeg_output*)* @try_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_connect(%struct.ffmpeg_output* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ffmpeg_output*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.video_output_info*, align 8
  %6 = alloca %struct.ffmpeg_cfg, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.audio_convert_info, align 4
  store %struct.ffmpeg_output* %0, %struct.ffmpeg_output** %3, align 8
  %11 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %12 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @obs_output_video(i32 %13)
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.video_output_info* @video_output_get_info(i32* %15)
  store %struct.video_output_info* %16, %struct.video_output_info** %5, align 8
  %17 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %18 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32* @obs_output_get_settings(i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @obs_data_set_default_int(i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 120)
  %23 = load i32*, i32** %7, align 8
  %24 = call i8* @obs_data_get_string(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 21
  store i8* %24, i8** %25, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i8* @get_string_or_null(i32* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 20
  store i8* %27, i8** %28, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i8* @get_string_or_null(i32* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 19
  store i8* %30, i8** %31, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i8* @obs_data_get_string(i32* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %34 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 18
  store i8* %33, i8** %34, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @obs_data_get_int(i32* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @obs_data_get_int(i32* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @obs_data_get_int(i32* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i8* @get_string_or_null(i32* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %49 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 17
  store i8* %48, i8** %49, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i64 @obs_data_get_int(i32* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i8* @get_string_or_null(i32* %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %56 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 16
  store i8* %55, i8** %56, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i64 @obs_data_get_int(i32* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 4
  store i32 %59, i32* %60, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i8* @obs_data_get_string(i32* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %63 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 15
  store i8* %62, i8** %63, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i8* @obs_data_get_string(i32* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %66 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 14
  store i8* %65, i8** %66, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = call i64 @obs_data_get_int(i32* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 5
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call i64 @obs_data_get_int(i32* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 6
  store i32 %73, i32* %74, align 8
  %75 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %76 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @obs_output_get_width(i32 %77)
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 7
  store i32 %79, i32* %80, align 4
  %81 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %82 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @obs_output_get_height(i32 %83)
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 8
  store i32 %85, i32* %86, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @video_output_get_format(i32* %87)
  %89 = call i64 @obs_to_ffmpeg_video_format(i32 %88)
  %90 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 9
  store i64 %89, i64* %90, align 8
  %91 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %92 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @obs_output_get_mixers(i32 %93)
  %95 = trunc i64 %94 to i32
  %96 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 10
  store i32 %95, i32* %96, align 8
  %97 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 10
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @get_audio_mix_count(i32 %98)
  %100 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 13
  store i32 %99, i32* %100, align 4
  %101 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %102 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @format_is_yuv(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %1
  %107 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %108 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @VIDEO_RANGE_FULL, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @AVCOL_RANGE_JPEG, align 4
  br label %116

114:                                              ; preds = %106
  %115 = load i32, i32* @AVCOL_RANGE_MPEG, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  %118 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 12
  store i32 %117, i32* %118, align 8
  %119 = load %struct.video_output_info*, %struct.video_output_info** %5, align 8
  %120 = getelementptr inbounds %struct.video_output_info, %struct.video_output_info* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @VIDEO_CS_709, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i32, i32* @AVCOL_SPC_BT709, align 4
  br label %128

126:                                              ; preds = %116
  %127 = load i32, i32* @AVCOL_SPC_BT470BG, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 11
  store i32 %129, i32* %130, align 4
  br label %136

131:                                              ; preds = %1
  %132 = load i32, i32* @AVCOL_RANGE_UNSPECIFIED, align 4
  %133 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 12
  store i32 %132, i32* %133, align 8
  %134 = load i32, i32* @AVCOL_SPC_RGB, align 4
  %135 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 11
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %131, %128
  %137 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 9
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @AV_PIX_FMT_NONE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* @LOG_DEBUG, align 4
  %143 = call i32 @blog(i32 %142, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %231

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 5
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %148, %144
  %153 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 8
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.ffmpeg_cfg, %struct.ffmpeg_cfg* %6, i32 0, i32 6
  store i32 %158, i32* %159, align 8
  br label %160

160:                                              ; preds = %156, %152
  %161 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %162 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %161, i32 0, i32 3
  %163 = call i32 @ffmpeg_data_init(%struct.TYPE_4__* %162, %struct.ffmpeg_cfg* %6)
  store i32 %163, i32* %8, align 4
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @obs_data_release(i32* %164)
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %187, label %168

168:                                              ; preds = %160
  %169 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %170 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %168
  %175 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %176 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %179 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @obs_output_set_last_error(i32 %177, i64 %181)
  br label %183

183:                                              ; preds = %174, %168
  %184 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %185 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %184, i32 0, i32 3
  %186 = call i32 @ffmpeg_data_free(%struct.TYPE_4__* %185)
  store i32 0, i32* %2, align 4
  br label %231

187:                                              ; preds = %160
  %188 = getelementptr inbounds %struct.audio_convert_info, %struct.audio_convert_info* %10, i32 0, i32 0
  %189 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %190 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %188, align 4
  %193 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %194 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %193, i32 0, i32 0
  store i32 1, i32* %194, align 8
  %195 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %196 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @obs_output_can_begin_data_capture(i32 %197, i32 0)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %187
  store i32 0, i32* %2, align 4
  br label %231

201:                                              ; preds = %187
  %202 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %203 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %202, i32 0, i32 4
  %204 = load i32, i32* @write_thread, align 4
  %205 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %206 = call i32 @pthread_create(i32* %203, i32* null, i32 %204, %struct.ffmpeg_output* %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %201
  %210 = load i32, i32* @LOG_WARNING, align 4
  %211 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %212 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %211, i32 0, i32 3
  %213 = call i32 @ffmpeg_log_error(i32 %210, %struct.TYPE_4__* %212, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0))
  %214 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %215 = call i32 @ffmpeg_output_full_stop(%struct.ffmpeg_output* %214)
  store i32 0, i32* %2, align 4
  br label %231

216:                                              ; preds = %201
  %217 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %218 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @obs_output_set_video_conversion(i32 %219, i32* null)
  %221 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %222 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @obs_output_set_audio_conversion(i32 %223, %struct.audio_convert_info* %10)
  %225 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %226 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @obs_output_begin_data_capture(i32 %227, i32 0)
  %229 = load %struct.ffmpeg_output*, %struct.ffmpeg_output** %3, align 8
  %230 = getelementptr inbounds %struct.ffmpeg_output, %struct.ffmpeg_output* %229, i32 0, i32 1
  store i32 1, i32* %230, align 4
  store i32 1, i32* %2, align 4
  br label %231

231:                                              ; preds = %216, %209, %200, %183, %141
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local i32* @obs_output_video(i32) #1

declare dso_local %struct.video_output_info* @video_output_get_info(i32*) #1

declare dso_local i32* @obs_output_get_settings(i32) #1

declare dso_local i32 @obs_data_set_default_int(i32*, i8*, i32) #1

declare dso_local i8* @obs_data_get_string(i32*, i8*) #1

declare dso_local i8* @get_string_or_null(i32*, i8*) #1

declare dso_local i64 @obs_data_get_int(i32*, i8*) #1

declare dso_local i64 @obs_output_get_width(i32) #1

declare dso_local i64 @obs_output_get_height(i32) #1

declare dso_local i64 @obs_to_ffmpeg_video_format(i32) #1

declare dso_local i32 @video_output_get_format(i32*) #1

declare dso_local i64 @obs_output_get_mixers(i32) #1

declare dso_local i32 @get_audio_mix_count(i32) #1

declare dso_local i64 @format_is_yuv(i32) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @ffmpeg_data_init(%struct.TYPE_4__*, %struct.ffmpeg_cfg*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @obs_output_set_last_error(i32, i64) #1

declare dso_local i32 @ffmpeg_data_free(%struct.TYPE_4__*) #1

declare dso_local i32 @obs_output_can_begin_data_capture(i32, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.ffmpeg_output*) #1

declare dso_local i32 @ffmpeg_log_error(i32, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @ffmpeg_output_full_stop(%struct.ffmpeg_output*) #1

declare dso_local i32 @obs_output_set_video_conversion(i32, i32*) #1

declare dso_local i32 @obs_output_set_audio_conversion(i32, %struct.audio_convert_info*) #1

declare dso_local i32 @obs_output_begin_data_capture(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
