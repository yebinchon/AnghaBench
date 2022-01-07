; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_img_format.c_mp_get_regular_imgfmt.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_img_format.c_mp_get_regular_imgfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_regular_imgfmt = type { i32, i32, i32, i32, i32, i32, %struct.mp_regular_imgfmt_plane*, i32, i32 }
%struct.mp_regular_imgfmt_plane = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i64, i32, i32 }

@AV_PIX_FMT_FLAG_BITSTREAM = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_HWACCEL = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_PAL = common dso_local global i32 0, align 4
@MP_NUM_COMPONENTS = common dso_local global i32 0, align 4
@MP_MAX_PLANES = common dso_local global i64 0, align 8
@AV_PIX_FMT_FLAG_ALPHA = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_BAYER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_get_regular_imgfmt(%struct.mp_regular_imgfmt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_regular_imgfmt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_regular_imgfmt, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mp_regular_imgfmt_plane*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mp_regular_imgfmt* %0, %struct.mp_regular_imgfmt** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = bitcast %struct.mp_regular_imgfmt* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 40, i1 false)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @imgfmt2pixfmt(i32 %18)
  %20 = call %struct.TYPE_5__* @av_pix_fmt_desc_get(i32 %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %7, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %23, label %59

23:                                               ; preds = %2
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @AV_PIX_FMT_FLAG_BITSTREAM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %59, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 1
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MP_NUM_COMPONENTS, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = call i32 @is_native_endian(%struct.TYPE_5__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55, %49, %44, %37, %30, %23, %2
  store i32 0, i32* %3, align 4
  br label %334

60:                                               ; preds = %55
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @mp_imgfmt_get_component_type(i32 %61)
  %63 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 7
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %334

68:                                               ; preds = %60
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 0
  store %struct.TYPE_6__* %72, %struct.TYPE_6__** %8, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %85, label %82

82:                                               ; preds = %68
  %83 = load i32, i32* %9, align 4
  %84 = icmp sgt i32 %83, 64
  br i1 %84, label %85, label %86

85:                                               ; preds = %82, %68
  store i32 0, i32* %3, align 4
  br label %334

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 7
  %89 = sdiv i32 %88, 8
  %90 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 0
  store i32 %89, i32* %90, align 8
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %217, %86
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %220

97:                                               ; preds = %91
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 %102
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %11, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ult i64 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %97
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @MP_MAX_PLANES, align 8
  %113 = icmp uge i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108, %97
  store i32 0, i32* %3, align 4
  br label %334

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, 1
  %122 = call i32 @MPMAX(i32 %117, i64 %121)
  %123 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %126, %129
  br i1 %130, label %139, label %131

131:                                              ; preds = %115
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %131, %115
  store i32 0, i32* %3, align 4
  br label %334

140:                                              ; preds = %131
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sdiv i32 %143, %145
  store i32 %146, i32* %12, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %140
  %150 = load i32, i32* %12, align 4
  %151 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = mul nsw i32 %150, %152
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %153, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %149, %140
  store i32 0, i32* %3, align 4
  br label %334

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 6
  %161 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %160, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %161, i64 %164
  store %struct.mp_regular_imgfmt_plane* %165, %struct.mp_regular_imgfmt_plane** %13, align 8
  %166 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %13, align 8
  %167 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %159
  %171 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %13, align 8
  %172 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  store i32 0, i32* %3, align 4
  br label %334

177:                                              ; preds = %170, %159
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %13, align 8
  %180 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sdiv i32 %183, %185
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* %14, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %177
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* @MP_NUM_COMPONENTS, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %193, %189, %177
  store i32 0, i32* %3, align 4
  br label %334

198:                                              ; preds = %193
  %199 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %13, align 8
  %200 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %198
  store i32 0, i32* %3, align 4
  br label %334

208:                                              ; preds = %198
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, 1
  %211 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %13, align 8
  %212 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %14, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %210, i32* %216, align 4
  br label %217

217:                                              ; preds = %208
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %91

220:                                              ; preds = %91
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %282

225:                                              ; preds = %220
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @AV_PIX_FMT_FLAG_ALPHA, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %282

232:                                              ; preds = %225
  store i32 0, i32* %15, align 4
  br label %233

233:                                              ; preds = %278, %232
  %234 = load i32, i32* %15, align 4
  %235 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp slt i32 %234, %236
  br i1 %237, label %238, label %281

238:                                              ; preds = %233
  store i32 0, i32* %16, align 4
  br label %239

239:                                              ; preds = %274, %238
  %240 = load i32, i32* %16, align 4
  %241 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 6
  %242 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %241, align 8
  %243 = load i32, i32* %15, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %242, i64 %244
  %246 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp slt i32 %240, %247
  br i1 %248, label %249, label %277

249:                                              ; preds = %239
  %250 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 6
  %251 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %250, align 8
  %252 = load i32, i32* %15, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %251, i64 %253
  %255 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %16, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %260, 2
  br i1 %261, label %262, label %273

262:                                              ; preds = %249
  %263 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 6
  %264 = load %struct.mp_regular_imgfmt_plane*, %struct.mp_regular_imgfmt_plane** %263, align 8
  %265 = load i32, i32* %15, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %264, i64 %266
  %268 = getelementptr inbounds %struct.mp_regular_imgfmt_plane, %struct.mp_regular_imgfmt_plane* %267, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %16, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  store i32 4, i32* %272, align 4
  br label %273

273:                                              ; preds = %262, %249
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %16, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %16, align 4
  br label %239

277:                                              ; preds = %239
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %15, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %15, align 4
  br label %233

281:                                              ; preds = %233
  br label %282

282:                                              ; preds = %281, %225, %220
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = mul nsw i32 %287, 8
  %289 = sub nsw i32 %285, %288
  %290 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 2
  store i32 %289, i32* %290, align 8
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %313

295:                                              ; preds = %282
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = add nsw i32 %298, %301
  %303 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = mul nsw i32 %304, 8
  %306 = icmp ne i32 %302, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %295
  store i32 0, i32* %3, align 4
  br label %334

308:                                              ; preds = %295
  %309 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 2
  %310 = load i32, i32* %309, align 8
  %311 = sub nsw i32 0, %310
  %312 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 2
  store i32 %311, i32* %312, align 8
  br label %313

313:                                              ; preds = %308, %282
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = shl i32 1, %316
  %318 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 3
  store i32 %317, i32* %318, align 4
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = shl i32 1, %321
  %323 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 4
  store i32 %322, i32* %323, align 8
  %324 = load i32, i32* %5, align 4
  %325 = call i32 @mp_imgfmt_get_forced_csp(i32 %324)
  %326 = getelementptr inbounds %struct.mp_regular_imgfmt, %struct.mp_regular_imgfmt* %6, i32 0, i32 5
  store i32 %325, i32* %326, align 4
  %327 = call i32 @validate_regular_imgfmt(%struct.mp_regular_imgfmt* %6)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %313
  store i32 0, i32* %3, align 4
  br label %334

330:                                              ; preds = %313
  %331 = load %struct.mp_regular_imgfmt*, %struct.mp_regular_imgfmt** %4, align 8
  %332 = bitcast %struct.mp_regular_imgfmt* %331 to i8*
  %333 = bitcast %struct.mp_regular_imgfmt* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %332, i8* align 8 %333, i64 40, i1 false)
  store i32 1, i32* %3, align 4
  br label %334

334:                                              ; preds = %330, %329, %307, %207, %197, %176, %158, %139, %114, %85, %67, %59
  %335 = load i32, i32* %3, align 4
  ret i32 %335
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_5__* @av_pix_fmt_desc_get(i32) #2

declare dso_local i32 @imgfmt2pixfmt(i32) #2

declare dso_local i32 @is_native_endian(%struct.TYPE_5__*) #2

declare dso_local i32 @mp_imgfmt_get_component_type(i32) #2

declare dso_local i32 @MPMAX(i32, i64) #2

declare dso_local i32 @mp_imgfmt_get_forced_csp(i32) #2

declare dso_local i32 @validate_regular_imgfmt(%struct.mp_regular_imgfmt*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
