; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_icmstream.c_AVIFILE_EncodeFrame.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/avifil32/extr_icmstream.c_AVIFILE_EncodeFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32, i32, i32, i32, i32*, i32*, i32, %struct.TYPE_8__*, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@AVIIF_KEYFRAME = common dso_local global i32 0, align 4
@ICCOMPRESS_KEYFRAME = common dso_local global i32 0, align 4
@MAX_FRAMESIZE = common dso_local global i32 0, align 4
@VIDCF_CRUNCH = common dso_local global i32 0, align 4
@VIDCF_QUALITY = common dso_local global i32 0, align 4
@ICQUALITY_LOW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VIDCF_FASTTEMPORALC = common dso_local global i32 0, align 4
@ICERR_NEWPALETTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c": codec has changed palette -- unhandled!\0A\00", align 1
@ICERR_OK = common dso_local global i32 0, align 4
@AVIERR_COMPRESSOR = common dso_local global i32 0, align 4
@MAX_FRAMESIZE_DIFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c": no new quality computed min=%u cur=%u max=%u last=%u\0A\00", align 1
@AVIERR_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32)* @AVIFILE_EncodeFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AVIFILE_EncodeFrame(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %27, %3
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 12
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39, %27
  %49 = load i32, i32* @AVIIF_KEYFRAME, align 4
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* @ICCOMPRESS_KEYFRAME, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %48, %39
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %126

56:                                               ; preds = %51
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 12
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %59, %63
  br i1 %64, label %65, label %123

65:                                               ; preds = %56
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @AVIIF_KEYFRAME, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %73, %76
  store i32 %77, i32* %11, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  store i32 0, i32* %79, align 4
  br label %122

80:                                               ; preds = %65
  store i32 0, i32* %17, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %80
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sdiv i64 %92, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %88, %80
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sdiv i64 %104, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %18, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %17, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %18, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %98, %70
  br label %125

123:                                              ; preds = %56
  %124 = load i32, i32* @MAX_FRAMESIZE, align 4
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %123, %122
  br label %148

126:                                              ; preds = %51
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 12
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %129, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %126
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %138, %141
  store i32 %142, i32* %11, align 4
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 4
  store i32 0, i32* %144, align 4
  br label %147

145:                                              ; preds = %126
  %146 = load i32, i32* @MAX_FRAMESIZE, align 4
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %145, %135
  br label %148

148:                                              ; preds = %147, %125
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @VIDCF_CRUNCH, align 4
  %156 = load i32, i32* @VIDCF_QUALITY, align 4
  %157 = or i32 %155, %156
  %158 = and i32 %154, %157
  %159 = icmp eq i32 %158, 0
  br label %160

160:                                              ; preds = %151, %148
  %161 = phi i1 [ false, %148 ], [ %159, %151 ]
  %162 = zext i1 %161 to i32
  store i32 %162, i32* %15, align 4
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 12
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  store i32 %166, i32* %10, align 4
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* @ICQUALITY_LOW, align 4
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* @TRUE, align 4
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @ICCOMPRESS_KEYFRAME, align 4
  %171 = and i32 %169, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %160
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @VIDCF_FASTTEMPORALC, align 4
  %178 = and i32 %176, %177
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %173
  %181 = load i32, i32* @FALSE, align 4
  store i32 %181, i32* %16, align 4
  br label %182

182:                                              ; preds = %180, %173, %160
  br label %183

183:                                              ; preds = %313, %182
  store i32 0, i32* %19, align 4
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 11
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 10
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 9
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %7, align 4
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %16, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %183
  br label %208

204:                                              ; preds = %183
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 8
  %207 = load i32*, i32** %206, align 8
  br label %208

208:                                              ; preds = %204, %203
  %209 = phi i32* [ null, %203 ], [ %207, %204 ]
  %210 = load i32, i32* %16, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  br label %217

213:                                              ; preds = %208
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 7
  %216 = load i32*, i32** %215, align 8
  br label %217

217:                                              ; preds = %213, %212
  %218 = phi i32* [ null, %212 ], [ %216, %213 ]
  %219 = call i32 @ICCompress(i32 %186, i32 %187, %struct.TYPE_8__* %190, i32 %193, i32 %194, i32 %195, i32* %19, i32* %13, i64 %198, i32 %199, i32 %200, i32* %209, i32* %218)
  store i32 %219, i32* %20, align 4
  %220 = load i32, i32* %20, align 4
  %221 = load i32, i32* @ICERR_NEWPALETTE, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %232

225:                                              ; preds = %217
  %226 = load i32, i32* %20, align 4
  %227 = load i32, i32* @ICERR_OK, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = load i32, i32* @AVIERR_COMPRESSOR, align 4
  store i32 %230, i32* %4, align 4
  br label %368

231:                                              ; preds = %225
  br label %232

232:                                              ; preds = %231, %223
  %233 = load i32, i32* %15, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %232
  br label %316

236:                                              ; preds = %232
  %237 = load i32, i32* %11, align 4
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 10
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp sge i32 %237, %242
  br i1 %243, label %244, label %280

244:                                              ; preds = %236
  %245 = load i32, i32* %9, align 4
  %246 = load i32, i32* %10, align 4
  %247 = sub nsw i32 %245, %246
  %248 = icmp sgt i32 %247, 10
  br i1 %248, label %249, label %278

249:                                              ; preds = %244
  %250 = load i32, i32* %11, align 4
  %251 = sdiv i32 %250, 8
  store i32 %251, i32* %21, align 4
  %252 = load i32, i32* %21, align 4
  %253 = load i32, i32* @MAX_FRAMESIZE_DIFF, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %249
  %256 = load i32, i32* @MAX_FRAMESIZE_DIFF, align 4
  store i32 %256, i32* %21, align 4
  br label %257

257:                                              ; preds = %255, %249
  %258 = load i32, i32* %21, align 4
  %259 = load i32, i32* %11, align 4
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 10
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = sub nsw i32 %259, %264
  %266 = icmp slt i32 %258, %265
  br i1 %266, label %267, label %277

267:                                              ; preds = %257
  %268 = load i32, i32* %14, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %267
  %271 = load i32, i32* %10, align 4
  store i32 %271, i32* %21, align 4
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %272, %273
  %275 = sdiv i32 %274, 2
  store i32 %275, i32* %10, align 4
  %276 = load i32, i32* %21, align 4
  store i32 %276, i32* %8, align 4
  br label %313

277:                                              ; preds = %267, %257
  br label %279

278:                                              ; preds = %244
  br label %316

279:                                              ; preds = %277
  br label %312

280:                                              ; preds = %236
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* %8, align 4
  %283 = sub nsw i32 %281, %282
  %284 = icmp sle i32 %283, 1
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  br label %316

286:                                              ; preds = %280
  %287 = load i32, i32* %10, align 4
  store i32 %287, i32* %9, align 4
  %288 = load i32, i32* %14, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %296, label %290

290:                                              ; preds = %286
  %291 = load i32, i32* %10, align 4
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 %291, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %290, %286
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* %9, align 4
  %299 = add nsw i32 %297, %298
  %300 = sdiv i32 %299, 2
  store i32 %300, i32* %10, align 4
  br label %309

301:                                              ; preds = %290
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* %10, align 4
  %304 = load i32, i32* %9, align 4
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 6
  %307 = load i32, i32* %306, align 4
  %308 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %302, i32 %303, i32 %304, i32 %307)
  br label %309

309:                                              ; preds = %301, %296
  %310 = load i32, i32* @TRUE, align 4
  store i32 %310, i32* %14, align 4
  br label %311

311:                                              ; preds = %309
  br label %312

312:                                              ; preds = %311, %279
  br label %313

313:                                              ; preds = %312, %270
  %314 = load i32, i32* @TRUE, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %183, label %316

316:                                              ; preds = %313, %285, %278, %235
  %317 = load i32, i32* %10, align 4
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 6
  store i32 %317, i32* %319, align 4
  %320 = load i32, i32* %11, align 4
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 10
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = sub nsw i32 %320, %325
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 4
  store i32 %326, i32* %328, align 4
  %329 = load i32, i32* %12, align 4
  %330 = load i32, i32* @ICCOMPRESS_KEYFRAME, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %339

333:                                              ; preds = %316
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %337, i32 0, i32 2
  store i64 %336, i64* %338, align 8
  br label %339

339:                                              ; preds = %333, %316
  %340 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 7
  %342 = load i32*, i32** %341, align 8
  %343 = icmp ne i32* %342, null
  br i1 %343, label %344, label %366

344:                                              ; preds = %339
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 1
  br i1 %348, label %349, label %366

349:                                              ; preds = %344
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 11
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 10
  %355 = load %struct.TYPE_8__*, %struct.TYPE_8__** %354, align 8
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 9
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 8
  %361 = load i32*, i32** %360, align 8
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 7
  %364 = load i32*, i32** %363, align 8
  %365 = call i32 @ICDecompress(i32 %352, i32 0, %struct.TYPE_8__* %355, i32 %358, i32* %361, i32* %364)
  br label %366

366:                                              ; preds = %349, %344, %339
  %367 = load i32, i32* @AVIERR_OK, align 4
  store i32 %367, i32* %4, align 4
  br label %368

368:                                              ; preds = %366, %229
  %369 = load i32, i32* %4, align 4
  ret i32 %369
}

declare dso_local i32 @ICCompress(i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32*, i32*, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @FIXME(i8*, ...) #1

declare dso_local i32 @ICDecompress(i32, i32, %struct.TYPE_8__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
