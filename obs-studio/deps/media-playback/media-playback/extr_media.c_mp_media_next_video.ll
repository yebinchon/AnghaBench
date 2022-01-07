; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/media-playback/media-playback/extr_media.c_mp_media_next_video.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/media-playback/media-playback/extr_media.c_mp_media_next_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64*, i32, i32, i32, i32, i32 (i32, %struct.obs_source_frame*)*, i32 (i32, %struct.obs_source_frame*)*, i32, i64, i64, i64, i32, i64, %struct.obs_source_frame, %struct.mp_decode }
%struct.obs_source_frame = type { i32*, i32*, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.mp_decode = type { i32, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i64*, i32, i32, i32, i32, i32 }

@MAX_AV_PLANES = common dso_local global i64 0, align 8
@VIDEO_RANGE_DEFAULT = common dso_local global i32 0, align 4
@VIDEO_RANGE_FULL = common dso_local global i32 0, align 4
@VIDEO_FORMAT_NONE = common dso_local global i64 0, align 8
@base_sys_ts = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @mp_media_next_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mp_media_next_video(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mp_decode*, align 8
  %6 = alloca %struct.obs_source_frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 15
  store %struct.mp_decode* %17, %struct.mp_decode** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 14
  store %struct.obs_source_frame* %19, %struct.obs_source_frame** %6, align 8
  %20 = load %struct.mp_decode*, %struct.mp_decode** %5, align 8
  %21 = getelementptr inbounds %struct.mp_decode, %struct.mp_decode* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %10, align 8
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = load %struct.mp_decode*, %struct.mp_decode** %5, align 8
  %28 = call i32 @mp_media_can_play_frame(%struct.TYPE_5__* %26, %struct.mp_decode* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %356

31:                                               ; preds = %25
  %32 = load %struct.mp_decode*, %struct.mp_decode** %5, align 8
  %33 = getelementptr inbounds %struct.mp_decode, %struct.mp_decode* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 6
  %36 = load i32 (i32, %struct.obs_source_frame*)*, i32 (i32, %struct.obs_source_frame*)** %35, align 8
  %37 = icmp ne i32 (i32, %struct.obs_source_frame*)* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %356

39:                                               ; preds = %31
  br label %47

40:                                               ; preds = %2
  %41 = load %struct.mp_decode*, %struct.mp_decode** %5, align 8
  %42 = getelementptr inbounds %struct.mp_decode, %struct.mp_decode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %356

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %39
  store i32 0, i32* %11, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 13
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %125

52:                                               ; preds = %47
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 13
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = bitcast i32* %58 to i32**
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = call i32 @sws_scale(i64 %55, i32** %59, i64* %62, i32 0, i32 %65, i32* %68, i64* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %52
  br label %356

76:                                               ; preds = %52
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br label %90

90:                                               ; preds = %83, %76
  %91 = phi i1 [ false, %76 ], [ %89, %83 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %11, align 4
  store i64 0, i64* %13, align 8
  br label %93

93:                                               ; preds = %121, %90
  %94 = load i64, i64* %13, align 8
  %95 = icmp ult i64 %94, 4
  br i1 %95, label %96, label %124

96:                                               ; preds = %93
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %13, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %104 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %102, i32* %107, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* %13, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = call i8* @abs(i64 %113)
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %117 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %13, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 %115, i32* %120, align 4
  br label %121

121:                                              ; preds = %96
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %13, align 8
  br label %93

124:                                              ; preds = %93
  br label %175

125:                                              ; preds = %47
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br label %139

139:                                              ; preds = %132, %125
  %140 = phi i1 [ false, %125 ], [ %138, %132 ]
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %11, align 4
  store i64 0, i64* %14, align 8
  br label %142

142:                                              ; preds = %171, %139
  %143 = load i64, i64* %14, align 8
  %144 = load i64, i64* @MAX_AV_PLANES, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %174

146:                                              ; preds = %142
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %154 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %14, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32 %152, i32* %157, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* %14, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = call i8* @abs(i64 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %167 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* %14, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32 %165, i32* %170, align 4
  br label %171

171:                                              ; preds = %146
  %172 = load i64, i64* %14, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %14, align 8
  br label %142

174:                                              ; preds = %142
  br label %175

175:                                              ; preds = %174, %124
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %175
  %179 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %180 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = sub nsw i32 %186, 1
  %188 = mul nsw i32 %183, %187
  %189 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %190 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = sub nsw i32 %193, %188
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %178, %175
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 12
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @convert_pixel_format(i32 %198)
  store i32 %199, i32* %7, align 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @convert_color_space(i32 %202)
  store i32 %203, i32* %8, align 4
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @VIDEO_RANGE_DEFAULT, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %195
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @convert_color_range(i32 %212)
  br label %218

214:                                              ; preds = %195
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  br label %218

218:                                              ; preds = %214, %209
  %219 = phi i32 [ %213, %209 ], [ %217, %214 ]
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %7, align 4
  %221 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %222 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %220, %223
  br i1 %224, label %237, label %225

225:                                              ; preds = %218
  %226 = load i32, i32* %8, align 4
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %226, %229
  br i1 %230, label %237, label %231

231:                                              ; preds = %225
  %232 = load i32, i32* %9, align 4
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %232, %235
  br i1 %236, label %237, label %276

237:                                              ; preds = %231, %225, %218
  %238 = load i32, i32* %7, align 4
  %239 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %240 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %239, i32 0, i32 2
  store i32 %238, i32* %240, align 8
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* @VIDEO_RANGE_FULL, align 4
  %243 = icmp eq i32 %241, %242
  %244 = zext i1 %243 to i32
  %245 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %246 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %245, i32 0, i32 3
  store i32 %244, i32* %246, align 4
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* %9, align 4
  %249 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %250 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %249, i32 0, i32 10
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %253 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %252, i32 0, i32 9
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %256 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @video_format_get_parameters(i32 %247, i32 %248, i32 %251, i32 %254, i32 %257)
  store i32 %258, i32* %15, align 4
  %259 = load i32, i32* %7, align 4
  %260 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %261 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 8
  %262 = load i32, i32* %8, align 4
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 3
  store i32 %262, i32* %264, align 4
  %265 = load i32, i32* %9, align 4
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 4
  store i32 %265, i32* %267, align 8
  %268 = load i32, i32* %15, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %275, label %270

270:                                              ; preds = %237
  %271 = load i64, i64* @VIDEO_FORMAT_NONE, align 8
  %272 = trunc i64 %271 to i32
  %273 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %274 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 8
  br label %356

275:                                              ; preds = %237
  br label %276

276:                                              ; preds = %275, %231
  %277 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %278 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = sext i32 %279 to i64
  %281 = load i64, i64* @VIDEO_FORMAT_NONE, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %276
  br label %356

284:                                              ; preds = %276
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 11
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.mp_decode*, %struct.mp_decode** %5, align 8
  %289 = getelementptr inbounds %struct.mp_decode, %struct.mp_decode* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %287, %290
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 10
  %294 = load i64, i64* %293, align 8
  %295 = sub nsw i64 %291, %294
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 9
  %298 = load i64, i64* %297, align 8
  %299 = add nsw i64 %295, %298
  %300 = load i64, i64* @base_sys_ts, align 8
  %301 = sub nsw i64 %299, %300
  %302 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %303 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %302, i32 0, i32 7
  store i64 %301, i64* %303, align 8
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 4
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %308 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %307, i32 0, i32 6
  store i32 %306, i32* %308, align 8
  %309 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %313 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %312, i32 0, i32 4
  store i32 %311, i32* %313, align 8
  %314 = load i32, i32* %11, align 4
  %315 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %316 = getelementptr inbounds %struct.obs_source_frame, %struct.obs_source_frame* %315, i32 0, i32 5
  store i32 %314, i32* %316, align 4
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 8
  %319 = load i32, i32* %318, align 8
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %335, label %321

321:                                              ; preds = %284
  %322 = load %struct.mp_decode*, %struct.mp_decode** %5, align 8
  %323 = getelementptr inbounds %struct.mp_decode, %struct.mp_decode* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %335, label %326

326:                                              ; preds = %321
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %332, label %331

331:                                              ; preds = %326
  br label %356

332:                                              ; preds = %326
  %333 = load %struct.mp_decode*, %struct.mp_decode** %5, align 8
  %334 = getelementptr inbounds %struct.mp_decode, %struct.mp_decode* %333, i32 0, i32 1
  store i32 1, i32* %334, align 4
  br label %335

335:                                              ; preds = %332, %321, %284
  %336 = load i32, i32* %4, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %347

338:                                              ; preds = %335
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 7
  %341 = load i32 (i32, %struct.obs_source_frame*)*, i32 (i32, %struct.obs_source_frame*)** %340, align 8
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 5
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %346 = call i32 %341(i32 %344, %struct.obs_source_frame* %345)
  br label %356

347:                                              ; preds = %335
  %348 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 6
  %350 = load i32 (i32, %struct.obs_source_frame*)*, i32 (i32, %struct.obs_source_frame*)** %349, align 8
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.obs_source_frame*, %struct.obs_source_frame** %6, align 8
  %355 = call i32 %350(i32 %353, %struct.obs_source_frame* %354)
  br label %356

356:                                              ; preds = %30, %38, %45, %75, %270, %283, %331, %347, %338
  ret void
}

declare dso_local i32 @mp_media_can_play_frame(%struct.TYPE_5__*, %struct.mp_decode*) #1

declare dso_local i32 @sws_scale(i64, i32**, i64*, i32, i32, i32*, i64*) #1

declare dso_local i8* @abs(i64) #1

declare dso_local i32 @convert_pixel_format(i32) #1

declare dso_local i32 @convert_color_space(i32) #1

declare dso_local i32 @convert_color_range(i32) #1

declare dso_local i32 @video_format_get_parameters(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
