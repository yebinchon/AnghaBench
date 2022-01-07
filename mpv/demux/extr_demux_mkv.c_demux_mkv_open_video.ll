; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_demux_mkv_open_video.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_mkv.c_demux_mkv_open_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.sh_stream = type { %struct.mp_codec_params* }
%struct.mp_codec_params = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mp_image_params = type { i32, i32, i32, i32 }

@STREAM_VIDEO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"V_MS/VFW/FOURCC\00", align 1
@RVPROPERTIES_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"V_REAL/RV10\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"V_REAL/RV20\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"V_REAL/RV30\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"V_REAL/RV40\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"rv10\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"rv20\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"rv30\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"rv40\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"V_UNCOMPRESSED\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"rawvideo\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"V_QUICKTIME\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"svq3\00", align 1
@mkv_video_tags = common dso_local global i8*** null, align 8
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"mjpeg\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Invalid CodecPrivate\0A\00", align 1
@.str.16 = private unnamed_addr constant [79 x i8] c"Unknown/unsupported CodecID (%s) or missing/bad CodecPrivate data (track %d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*)* @demux_mkv_open_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demux_mkv_open_video(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sh_stream*, align 8
  %8 = alloca %struct.mp_codec_params*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mp_image_params, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %20 = load i32, i32* @STREAM_VIDEO, align 4
  %21 = call %struct.sh_stream* @demux_alloc_sh_stream(i32 %20)
  store %struct.sh_stream* %21, %struct.sh_stream** %7, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %25 = call i32 @init_track(i32* %22, %struct.TYPE_4__* %23, %struct.sh_stream* %24)
  %26 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %27 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %26, i32 0, i32 0
  %28 = load %struct.mp_codec_params*, %struct.mp_codec_params** %27, align 8
  store %struct.mp_codec_params* %28, %struct.mp_codec_params** %8, align 8
  %29 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %30 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %29, i32 0, i32 0
  store i32 24, i32* %30, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %98, label %36

36:                                               ; preds = %2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 40
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %36
  br label %418

47:                                               ; preds = %41
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %9, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  %58 = call i8* @AV_RL32(i8* %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %47
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 8
  %70 = call i8* @AV_RL32(i8* %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %67, %62
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 14
  %77 = call i32 @AV_RL16(i8* %76)
  %78 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %79 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 16
  %82 = call i8* @AV_RL32(i8* %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %85 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 40
  store i8* %89, i8** %5, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 40
  store i32 %93, i32* %6, align 4
  %94 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %95 = call i32 @mp_set_codec_from_tag(%struct.mp_codec_params* %94)
  %96 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %97 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %96, i32 0, i32 2
  store i32 1, i32* %97, align 8
  br label %293

98:                                               ; preds = %2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @RVPROPERTIES_SIZE, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %179

104:                                              ; preds = %98
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @strcmp(i8* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %104
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %110
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i64 @strcmp(i8* %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %179, label %128

128:                                              ; preds = %122, %116, %110, %104
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* @RVPROPERTIES_SIZE, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8* %134, i8** %10, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @RVPROPERTIES_SIZE, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %11, align 4
  %140 = load i8*, i8** %10, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 -4
  %142 = call i32 @AV_RB32(i8* %141)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp eq i32 %143, 268447744
  br i1 %144, label %148, label %145

145:                                              ; preds = %128
  %146 = load i32, i32* %12, align 4
  %147 = icmp eq i32 %146, 268447745
  br i1 %147, label %148, label %149

148:                                              ; preds = %145, %128
  br label %156

149:                                              ; preds = %145
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 9
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  br label %156

156:                                              ; preds = %149, %148
  %157 = phi i32 [ 49, %148 ], [ %155, %149 ]
  switch i32 %157, label %170 [
    i32 49, label %158
    i32 50, label %161
    i32 51, label %164
    i32 52, label %167
  ]

158:                                              ; preds = %156
  %159 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %160 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %159, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %160, align 8
  br label %170

161:                                              ; preds = %156
  %162 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %163 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %162, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %163, align 8
  br label %170

164:                                              ; preds = %156
  %165 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %166 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %165, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %166, align 8
  br label %170

167:                                              ; preds = %156
  %168 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %169 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %168, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %169, align 8
  br label %170

170:                                              ; preds = %156, %167, %164, %161, %158
  %171 = load i32, i32* %11, align 4
  %172 = add i32 %171, 8
  store i32 %172, i32* %6, align 4
  %173 = load i8*, i8** %10, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 -8
  store i8* %174, i8** %5, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 5
  store i32 1, i32* %176, align 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 6
  store i32 1000, i32* %178, align 8
  br label %292

179:                                              ; preds = %122, %98
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i64 @strcmp(i8* %182, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %179
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %190 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %192 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %191, i32 0, i32 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8** %192, align 8
  br label %291

193:                                              ; preds = %179
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = call i64 @strcmp(i8* %196, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %235

199:                                              ; preds = %193
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp sge i32 %202, 8
  br i1 %203, label %204, label %217

204:                                              ; preds = %199
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = call i8* @AV_RL32(i8* %208)
  %210 = ptrtoint i8* %209 to i32
  store i32 %210, i32* %13, align 4
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 4
  %215 = call i8* @AV_RL32(i8* %214)
  %216 = ptrtoint i8* %215 to i32
  store i32 %216, i32* %14, align 4
  br label %217

217:                                              ; preds = %204, %199
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @MKTAG(i8 signext 83, i8 signext 86, i8 signext 81, i8 signext 51)
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %225, label %221

221:                                              ; preds = %217
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @MKTAG(i8 signext 83, i8 signext 86, i8 signext 81, i8 signext 51)
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %234

225:                                              ; preds = %221, %217
  %226 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %227 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %226, i32 0, i32 3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %227, align 8
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  store i8* %230, i8** %5, align 8
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  store i32 %233, i32* %6, align 4
  br label %234

234:                                              ; preds = %225, %221
  br label %290

235:                                              ; preds = %193
  store i32 0, i32* %15, align 4
  br label %236

236:                                              ; preds = %269, %235
  %237 = load i8***, i8**** @mkv_video_tags, align 8
  %238 = load i32, i32* %15, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8**, i8*** %237, i64 %239
  %241 = load i8**, i8*** %240, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i64 0
  %243 = load i8*, i8** %242, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %272

245:                                              ; preds = %236
  %246 = load i8***, i8**** @mkv_video_tags, align 8
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8**, i8*** %246, i64 %248
  %250 = load i8**, i8*** %249, align 8
  %251 = getelementptr inbounds i8*, i8** %250, i64 0
  %252 = load i8*, i8** %251, align 8
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = call i64 @strcmp(i8* %252, i8* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %268, label %258

258:                                              ; preds = %245
  %259 = load i8***, i8**** @mkv_video_tags, align 8
  %260 = load i32, i32* %15, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8**, i8*** %259, i64 %261
  %263 = load i8**, i8*** %262, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 1
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %267 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %266, i32 0, i32 3
  store i8* %265, i8** %267, align 8
  br label %272

268:                                              ; preds = %245
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %15, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %15, align 4
  br label %236

272:                                              ; preds = %258, %236
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  %275 = load i8*, i8** %274, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %289

277:                                              ; preds = %272
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %277
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 1
  %285 = load i8*, i8** %284, align 8
  store i8* %285, i8** %5, align 8
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  store i32 %288, i32* %6, align 4
  br label %289

289:                                              ; preds = %282, %277, %272
  br label %290

290:                                              ; preds = %289, %234
  br label %291

291:                                              ; preds = %290, %185
  br label %292

292:                                              ; preds = %291, %170
  br label %293

293:                                              ; preds = %292, %74
  %294 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %295 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %294, i32 0, i32 3
  %296 = load i8*, i8** %295, align 8
  %297 = icmp ne i8* %296, null
  br i1 %297, label %298, label %302

298:                                              ; preds = %293
  %299 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %300 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %299, i32 0, i32 3
  %301 = load i8*, i8** %300, align 8
  br label %303

302:                                              ; preds = %293
  br label %303

303:                                              ; preds = %302, %298
  %304 = phi i8* [ %301, %298 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %302 ]
  store i8* %304, i8** %16, align 8
  %305 = load i8*, i8** %16, align 8
  %306 = call i64 @strcmp(i8* %305, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %314, label %308

308:                                              ; preds = %303
  %309 = call i32 @MKTAG(i8 signext 109, i8 signext 106, i8 signext 112, i8 signext 103)
  %310 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %311 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 8
  store i32 1, i32* %313, align 8
  br label %314

314:                                              ; preds = %308, %303
  %315 = load i32, i32* %6, align 4
  %316 = icmp ugt i32 %315, 16777216
  br i1 %316, label %317, label %320

317:                                              ; preds = %314
  %318 = load i32*, i32** %3, align 8
  %319 = call i32 (i32*, i8*, ...) @MP_WARN(i32* %318, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  br label %418

320:                                              ; preds = %314
  %321 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %322 = load i8*, i8** %5, align 8
  %323 = load i32, i32* %6, align 4
  %324 = call i32 @talloc_memdup(%struct.mp_codec_params* %321, i8* %322, i32 %323)
  %325 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %326 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %325, i32 0, i32 12
  store i32 %324, i32* %326, align 8
  %327 = load i32, i32* %6, align 4
  %328 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %329 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %328, i32 0, i32 4
  store i32 %327, i32* %329, align 8
  %330 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %331 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %330, i32 0, i32 3
  %332 = load i8*, i8** %331, align 8
  %333 = icmp ne i8* %332, null
  br i1 %333, label %343, label %334

334:                                              ; preds = %320
  %335 = load i32*, i32** %3, align 8
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  %338 = load i8*, i8** %337, align 8
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 16
  %341 = load i32, i32* %340, align 4
  %342 = call i32 (i32*, i8*, ...) @MP_WARN(i32* %335, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.16, i64 0, i64 0), i8* %338, i32 %341)
  br label %343

343:                                              ; preds = %334, %320
  %344 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 15
  %346 = load i32, i32* %345, align 8
  %347 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %348 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %347, i32 0, i32 11
  store i32 %346, i32* %348, align 4
  %349 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 3
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %353 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %352, i32 0, i32 5
  store i32 %351, i32* %353, align 4
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %358 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %357, i32 0, i32 6
  store i32 %356, i32* %358, align 8
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 14
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %343
  %364 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 9
  %366 = load i32, i32* %365, align 4
  br label %371

367:                                              ; preds = %343
  %368 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 4
  br label %371

371:                                              ; preds = %367, %363
  %372 = phi i32 [ %366, %363 ], [ %370, %367 ]
  store i32 %372, i32* %17, align 4
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 13
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %371
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 10
  %380 = load i32, i32* %379, align 8
  br label %385

381:                                              ; preds = %371
  %382 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  br label %385

385:                                              ; preds = %381, %377
  %386 = phi i32 [ %380, %377 ], [ %384, %381 ]
  store i32 %386, i32* %18, align 4
  %387 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %19, i32 0, i32 0
  %388 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 4
  store i32 %390, i32* %387, align 4
  %391 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %19, i32 0, i32 1
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 8
  store i32 %394, i32* %391, align 4
  %395 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %19, i32 0, i32 2
  store i32 0, i32* %395, align 4
  %396 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %19, i32 0, i32 3
  store i32 0, i32* %396, align 4
  %397 = load i32, i32* %17, align 4
  %398 = load i32, i32* %18, align 4
  %399 = call i32 @mp_image_params_set_dsize(%struct.mp_image_params* %19, i32 %397, i32 %398)
  %400 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %19, i32 0, i32 3
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %403 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %402, i32 0, i32 10
  store i32 %401, i32* %403, align 8
  %404 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %19, i32 0, i32 2
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %407 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %406, i32 0, i32 9
  store i32 %405, i32* %407, align 4
  %408 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 12
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %412 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %411, i32 0, i32 8
  store i32 %410, i32* %412, align 8
  %413 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i32 0, i32 11
  %415 = load i32, i32* %414, align 4
  %416 = load %struct.mp_codec_params*, %struct.mp_codec_params** %8, align 8
  %417 = getelementptr inbounds %struct.mp_codec_params, %struct.mp_codec_params* %416, i32 0, i32 7
  store i32 %415, i32* %417, align 4
  br label %418

418:                                              ; preds = %385, %317, %46
  %419 = load i32*, i32** %3, align 8
  %420 = load %struct.sh_stream*, %struct.sh_stream** %7, align 8
  %421 = call i32 @demux_add_sh_stream(i32* %419, %struct.sh_stream* %420)
  ret i32 0
}

declare dso_local %struct.sh_stream* @demux_alloc_sh_stream(i32) #1

declare dso_local i32 @init_track(i32*, %struct.TYPE_4__*, %struct.sh_stream*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @AV_RL32(i8*) #1

declare dso_local i32 @AV_RL16(i8*) #1

declare dso_local i32 @mp_set_codec_from_tag(%struct.mp_codec_params*) #1

declare dso_local i32 @AV_RB32(i8*) #1

declare dso_local i32 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @MP_WARN(i32*, i8*, ...) #1

declare dso_local i32 @talloc_memdup(%struct.mp_codec_params*, i8*, i32) #1

declare dso_local i32 @mp_image_params_set_dsize(%struct.mp_image_params*, i32, i32) #1

declare dso_local i32 @demux_add_sh_stream(i32*, %struct.sh_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
