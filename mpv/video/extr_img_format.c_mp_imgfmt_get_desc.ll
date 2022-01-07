; ModuleID = '/home/carl/AnghaBench/mpv/video/extr_img_format.c_mp_imgfmt_get_desc.c'
source_filename = "/home/carl/AnghaBench/mpv/video/extr_img_format.c_mp_imgfmt_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_imgfmt_desc = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }

@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@AV_PIX_FMT_UYYVYY411 = common dso_local global i32 0, align 4
@MP_COMPONENT_TYPE_UINT = common dso_local global i64 0, align 8
@AV_PIX_FMT_FLAG_BITSTREAM = common dso_local global i32 0, align 4
@MP_IMGFLAG_LE = common dso_local global i32 0, align 4
@MP_IMGFLAG_BE = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_BE = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_HWACCEL = common dso_local global i32 0, align 4
@MP_IMGFLAG_HWACCEL = common dso_local global i32 0, align 4
@AV_PIX_FMT_XYZ12LE = common dso_local global i32 0, align 4
@AV_PIX_FMT_XYZ12BE = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_RGB = common dso_local global i32 0, align 4
@AV_PIX_FMT_MONOBLACK = common dso_local global i32 0, align 4
@AV_PIX_FMT_PAL8 = common dso_local global i32 0, align 4
@MP_IMGFLAG_YUV = common dso_local global i32 0, align 4
@MP_IMGFLAG_RGB = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_ALPHA = common dso_local global i32 0, align 4
@MP_IMGFLAG_ALPHA = common dso_local global i32 0, align 4
@MP_IMGFLAG_BYTE_ALIGNED = common dso_local global i32 0, align 4
@AV_PIX_FMT_FLAG_PAL = common dso_local global i32 0, align 4
@MP_IMGFLAG_PAL = common dso_local global i32 0, align 4
@MP_IMGFLAG_YUV_P = common dso_local global i32 0, align 4
@MP_IMGFLAG_RGB_P = common dso_local global i32 0, align 4
@MP_IMGFLAG_YUV_NV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_imgfmt_get_desc(%struct.mp_imgfmt_desc* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mp_imgfmt_desc, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @imgfmt2pixfmt(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call %struct.TYPE_4__* @av_pix_fmt_desc_get(i32 %24)
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %5, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 4
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @AV_PIX_FMT_UYYVYY411, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %33, %28, %2
  %42 = load i32, i32* %3, align 4
  call void @mp_only_imgfmt_desc(%struct.mp_imgfmt_desc* sret %0, i32 %42)
  br label %573

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @mp_imgfmt_get_component_type(i32 %44)
  %46 = load i64, i64* @MP_COMPONENT_TYPE_UINT, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = bitcast %struct.mp_imgfmt_desc* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %49, i8 0, i64 72, i1 false)
  %50 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 0
  %51 = load i32, i32* %3, align 4
  store i32 %51, i32* %50, align 8
  %52 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 1
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %52, align 4
  %54 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 2
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %54, align 8
  %58 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 3
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %58, align 4
  %62 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %62, i8 0, i64 16, i1 false)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AV_PIX_FMT_FLAG_BITSTREAM, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 8
  store i32 %70, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %147, %43
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %150

77:                                               ; preds = %71
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = bitcast %struct.TYPE_5__* %13 to i8*
  %85 = bitcast %struct.TYPE_5__* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 24, i1 false)
  %86 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %77
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = mul nsw i32 %95, %96
  %98 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %93, %77
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, %105
  store i32 %110, i32* %108, align 4
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %112, %114
  %116 = icmp sgt i32 %115, 8
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %103
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 5
  store i32 %124, i32* %125, align 8
  br label %126

126:                                              ; preds = %122, %103
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 5
  store i32 0, i32* %133, align 8
  br label %134

134:                                              ; preds = %132, %126
  %135 = load i32, i32* %12, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %11, align 4
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %141, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 -1, i32* %11, align 4
  br label %146

146:                                              ; preds = %145, %140
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %71

150:                                              ; preds = %71
  store i32 0, i32* %14, align 4
  br label %151

151:                                              ; preds = %167, %150
  %152 = load i32, i32* %14, align 4
  %153 = icmp slt i32 %152, 4
  br i1 %153, label %154, label %170

154:                                              ; preds = %151
  %155 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %162, %154
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %151

170:                                              ; preds = %151
  %171 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %172 = load i32, i32* %171, align 16
  %173 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 7
  store i32 %172, i32* %173, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %174

174:                                              ; preds = %207, %170
  %175 = load i32, i32* %16, align 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %210

180:                                              ; preds = %174
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = load i32, i32* %16, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i64 %185
  %187 = bitcast %struct.TYPE_5__* %17 to i8*
  %188 = bitcast %struct.TYPE_5__* %186 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 24, i1 false)
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %180
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp sgt i32 %196, 8
  br i1 %197, label %198, label %202

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = icmp slt i32 %200, 8
  br label %202

202:                                              ; preds = %198, %192, %180
  %203 = phi i1 [ false, %192 ], [ false, %180 ], [ %201, %198 ]
  %204 = zext i1 %203 to i32
  %205 = load i32, i32* %15, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %15, align 4
  br label %207

207:                                              ; preds = %202
  %208 = load i32, i32* %16, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %16, align 4
  br label %174

210:                                              ; preds = %174
  %211 = load i32, i32* %15, align 4
  %212 = load i32, i32* %10, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %210
  %217 = load i32, i32* @MP_IMGFLAG_LE, align 4
  %218 = load i32, i32* @MP_IMGFLAG_BE, align 4
  %219 = or i32 %217, %218
  %220 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %219
  store i32 %222, i32* %220, align 4
  br label %239

223:                                              ; preds = %210
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @AV_PIX_FMT_FLAG_BE, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %223
  %231 = load i32, i32* @MP_IMGFLAG_BE, align 4
  br label %234

232:                                              ; preds = %223
  %233 = load i32, i32* @MP_IMGFLAG_LE, align 4
  br label %234

234:                                              ; preds = %232, %230
  %235 = phi i32 [ %231, %230 ], [ %233, %232 ]
  %236 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %235
  store i32 %238, i32* %236, align 4
  br label %239

239:                                              ; preds = %234, %216
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %239
  %247 = load i32, i32* @MP_IMGFLAG_HWACCEL, align 4
  %248 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %247
  store i32 %250, i32* %248, align 4
  br label %287

251:                                              ; preds = %239
  %252 = load i32, i32* %4, align 4
  %253 = load i32, i32* @AV_PIX_FMT_XYZ12LE, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %259, label %255

255:                                              ; preds = %251
  %256 = load i32, i32* %4, align 4
  %257 = load i32, i32* @AV_PIX_FMT_XYZ12BE, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %255, %251
  br label %286

260:                                              ; preds = %255
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %280, label %267

267:                                              ; preds = %260
  %268 = load i32, i32* %4, align 4
  %269 = load i32, i32* @AV_PIX_FMT_MONOBLACK, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %280

271:                                              ; preds = %267
  %272 = load i32, i32* %4, align 4
  %273 = load i32, i32* @AV_PIX_FMT_PAL8, align 4
  %274 = icmp ne i32 %272, %273
  br i1 %274, label %275, label %280

275:                                              ; preds = %271
  %276 = load i32, i32* @MP_IMGFLAG_YUV, align 4
  %277 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %278 = load i32, i32* %277, align 4
  %279 = or i32 %278, %276
  store i32 %279, i32* %277, align 4
  br label %285

280:                                              ; preds = %271, %267, %260
  %281 = load i32, i32* @MP_IMGFLAG_RGB, align 4
  %282 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %281
  store i32 %284, i32* %282, align 4
  br label %285

285:                                              ; preds = %280, %275
  br label %286

286:                                              ; preds = %285, %259
  br label %287

287:                                              ; preds = %286, %246
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @AV_PIX_FMT_FLAG_ALPHA, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %287
  %295 = load i32, i32* @MP_IMGFLAG_ALPHA, align 4
  %296 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %297 = load i32, i32* %296, align 4
  %298 = or i32 %297, %295
  store i32 %298, i32* %296, align 4
  br label %299

299:                                              ; preds = %294, %287
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @AV_PIX_FMT_FLAG_HWACCEL, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %340, label %306

306:                                              ; preds = %299
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @AV_PIX_FMT_FLAG_BITSTREAM, align 4
  %311 = and i32 %309, %310
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %340, label %313

313:                                              ; preds = %306
  %314 = load i32, i32* @MP_IMGFLAG_BYTE_ALIGNED, align 4
  %315 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %314
  store i32 %317, i32* %315, align 4
  store i32 0, i32* %18, align 4
  br label %318

318:                                              ; preds = %336, %313
  %319 = load i32, i32* %18, align 4
  %320 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 6
  %321 = load i32, i32* %320, align 4
  %322 = icmp slt i32 %319, %321
  br i1 %322, label %323, label %339

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 4
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %18, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = sdiv i32 %329, 8
  %331 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 9
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %18, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  store i32 %330, i32* %335, align 4
  br label %336

336:                                              ; preds = %323
  %337 = load i32, i32* %18, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %18, align 4
  br label %318

339:                                              ; preds = %318
  br label %340

340:                                              ; preds = %339, %306, %299
  %341 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %340
  %348 = load i32, i32* @MP_IMGFLAG_PAL, align 4
  %349 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %350 = load i32, i32* %349, align 4
  %351 = or i32 %350, %348
  store i32 %351, i32* %349, align 4
  br label %352

352:                                              ; preds = %347, %340
  %353 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @MP_IMGFLAG_YUV, align 4
  %356 = load i32, i32* @MP_IMGFLAG_RGB, align 4
  %357 = or i32 %355, %356
  %358 = and i32 %354, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %497

360:                                              ; preds = %352
  %361 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @MP_IMGFLAG_BYTE_ALIGNED, align 4
  %364 = and i32 %362, %363
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %497

366:                                              ; preds = %360
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @AV_PIX_FMT_FLAG_PAL, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %497, label %373

373:                                              ; preds = %366
  %374 = load i32, i32* %15, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %497, label %376

376:                                              ; preds = %373
  %377 = load i32, i32* %11, align 4
  %378 = icmp sge i32 %377, 0
  br i1 %378, label %379, label %497

379:                                              ; preds = %376
  %380 = load i32, i32* %6, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %497

382:                                              ; preds = %379
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %383

383:                                              ; preds = %413, %382
  %384 = load i32, i32* %20, align 4
  %385 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 6
  %386 = load i32, i32* %385, align 4
  %387 = icmp slt i32 %384, %386
  br i1 %387, label %388, label %416

388:                                              ; preds = %383
  %389 = load i32, i32* %20, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %394 = load i32, i32* %393, align 16
  %395 = icmp eq i32 %392, %394
  br i1 %395, label %396, label %408

396:                                              ; preds = %388
  %397 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 4
  %398 = load i32*, i32** %397, align 8
  %399 = load i32, i32* %20, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 4
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 0
  %406 = load i32, i32* %405, align 4
  %407 = icmp eq i32 %402, %406
  br label %408

408:                                              ; preds = %396, %388
  %409 = phi i1 [ false, %388 ], [ %407, %396 ]
  %410 = zext i1 %409 to i32
  %411 = load i32, i32* %19, align 4
  %412 = and i32 %411, %410
  store i32 %412, i32* %19, align 4
  br label %413

413:                                              ; preds = %408
  %414 = load i32, i32* %20, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %20, align 4
  br label %383

416:                                              ; preds = %383
  %417 = load i32, i32* %19, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %443

419:                                              ; preds = %416
  %420 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 6
  %424 = load i32, i32* %423, align 4
  %425 = icmp eq i32 %422, %424
  br i1 %425, label %426, label %443

426:                                              ; preds = %419
  %427 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @MP_IMGFLAG_YUV, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %426
  %433 = load i32, i32* @MP_IMGFLAG_YUV_P, align 4
  %434 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %435 = load i32, i32* %434, align 4
  %436 = or i32 %435, %433
  store i32 %436, i32* %434, align 4
  br label %442

437:                                              ; preds = %426
  %438 = load i32, i32* @MP_IMGFLAG_RGB_P, align 4
  %439 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %440 = load i32, i32* %439, align 4
  %441 = or i32 %440, %438
  store i32 %441, i32* %439, align 4
  br label %442

442:                                              ; preds = %437, %432
  br label %443

443:                                              ; preds = %442, %419, %416
  %444 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = icmp eq i32 %446, 3
  br i1 %447, label %448, label %481

448:                                              ; preds = %443
  %449 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 6
  %450 = load i32, i32* %449, align 4
  %451 = icmp eq i32 %450, 2
  br i1 %451, label %452, label %481

452:                                              ; preds = %448
  %453 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %454 = load i32, i32* %453, align 4
  %455 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %456 = load i32, i32* %455, align 16
  %457 = mul nsw i32 %456, 2
  %458 = icmp eq i32 %454, %457
  br i1 %458, label %459, label %481

459:                                              ; preds = %452
  %460 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 4
  %461 = load i32*, i32** %460, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 1
  %463 = load i32, i32* %462, align 4
  %464 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 4
  %465 = load i32*, i32** %464, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 0
  %467 = load i32, i32* %466, align 4
  %468 = mul nsw i32 %467, 2
  %469 = icmp eq i32 %463, %468
  br i1 %469, label %470, label %481

470:                                              ; preds = %459
  %471 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* @MP_IMGFLAG_YUV, align 4
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %481

476:                                              ; preds = %470
  %477 = load i32, i32* @MP_IMGFLAG_YUV_NV, align 4
  %478 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %479 = load i32, i32* %478, align 4
  %480 = or i32 %479, %477
  store i32 %480, i32* %478, align 4
  br label %481

481:                                              ; preds = %476, %470, %459, %452, %448, %443
  %482 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %483 = load i32, i32* %482, align 4
  %484 = load i32, i32* @MP_IMGFLAG_YUV_P, align 4
  %485 = load i32, i32* @MP_IMGFLAG_RGB_P, align 4
  %486 = or i32 %484, %485
  %487 = load i32, i32* @MP_IMGFLAG_YUV_NV, align 4
  %488 = or i32 %486, %487
  %489 = and i32 %483, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %496

491:                                              ; preds = %481
  %492 = load i32, i32* %11, align 4
  %493 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 5
  %494 = load i32, i32* %493, align 8
  %495 = add nsw i32 %494, %492
  store i32 %495, i32* %493, align 8
  br label %496

496:                                              ; preds = %491, %481
  br label %497

497:                                              ; preds = %496, %379, %376, %373, %366, %360, %352
  store i32 0, i32* %21, align 4
  br label %498

498:                                              ; preds = %536, %497
  %499 = load i32, i32* %21, align 4
  %500 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 6
  %501 = load i32, i32* %500, align 4
  %502 = icmp slt i32 %499, %501
  br i1 %502, label %503, label %539

503:                                              ; preds = %498
  %504 = load i32, i32* %21, align 4
  %505 = icmp eq i32 %504, 1
  br i1 %505, label %509, label %506

506:                                              ; preds = %503
  %507 = load i32, i32* %21, align 4
  %508 = icmp eq i32 %507, 2
  br i1 %508, label %509, label %512

509:                                              ; preds = %506, %503
  %510 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 2
  %511 = load i32, i32* %510, align 8
  br label %513

512:                                              ; preds = %506
  br label %513

513:                                              ; preds = %512, %509
  %514 = phi i32 [ %511, %509 ], [ 0, %512 ]
  %515 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 10
  %516 = load i32*, i32** %515, align 8
  %517 = load i32, i32* %21, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %516, i64 %518
  store i32 %514, i32* %519, align 4
  %520 = load i32, i32* %21, align 4
  %521 = icmp eq i32 %520, 1
  br i1 %521, label %525, label %522

522:                                              ; preds = %513
  %523 = load i32, i32* %21, align 4
  %524 = icmp eq i32 %523, 2
  br i1 %524, label %525, label %528

525:                                              ; preds = %522, %513
  %526 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 3
  %527 = load i32, i32* %526, align 4
  br label %529

528:                                              ; preds = %522
  br label %529

529:                                              ; preds = %528, %525
  %530 = phi i32 [ %527, %525 ], [ 0, %528 ]
  %531 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 11
  %532 = load i32*, i32** %531, align 8
  %533 = load i32, i32* %21, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i32, i32* %532, i64 %534
  store i32 %530, i32* %535, align 4
  br label %536

536:                                              ; preds = %529
  %537 = load i32, i32* %21, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %21, align 4
  br label %498

539:                                              ; preds = %498
  %540 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 2
  %541 = load i32, i32* %540, align 8
  %542 = shl i32 1, %541
  %543 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 12
  store i32 %542, i32* %543, align 8
  %544 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 3
  %545 = load i32, i32* %544, align 4
  %546 = shl i32 1, %545
  %547 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 13
  store i32 %546, i32* %547, align 4
  %548 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 4
  %549 = load i32*, i32** %548, align 8
  %550 = getelementptr inbounds i32, i32* %549, i64 0
  %551 = load i32, i32* %550, align 4
  %552 = srem i32 %551, 8
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %554, label %561

554:                                              ; preds = %539
  %555 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 4
  %556 = load i32*, i32** %555, align 8
  %557 = getelementptr inbounds i32, i32* %556, i64 0
  %558 = load i32, i32* %557, align 4
  %559 = sdiv i32 8, %558
  %560 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 12
  store i32 %559, i32* %560, align 8
  br label %561

561:                                              ; preds = %554, %539
  %562 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 8
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* @MP_IMGFLAG_HWACCEL, align 4
  %565 = and i32 %563, %564
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %570

567:                                              ; preds = %561
  %568 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 5
  store i32 0, i32* %568, align 8
  %569 = getelementptr inbounds %struct.mp_imgfmt_desc, %struct.mp_imgfmt_desc* %7, i32 0, i32 7
  store i32 0, i32* %569, align 8
  br label %570

570:                                              ; preds = %567, %561
  %571 = bitcast %struct.mp_imgfmt_desc* %0 to i8*
  %572 = bitcast %struct.mp_imgfmt_desc* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %571, i8* align 8 %572, i64 72, i1 false)
  br label %573

573:                                              ; preds = %570, %41
  ret void
}

declare dso_local i32 @imgfmt2pixfmt(i32) #1

declare dso_local %struct.TYPE_4__* @av_pix_fmt_desc_get(i32) #1

declare dso_local void @mp_only_imgfmt_desc(%struct.mp_imgfmt_desc* sret, i32) #1

declare dso_local i64 @mp_imgfmt_get_component_type(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
