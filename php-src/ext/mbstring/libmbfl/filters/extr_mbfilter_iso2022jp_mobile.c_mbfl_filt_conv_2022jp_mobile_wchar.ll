; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022jp_mobile.c_mbfl_filt_conv_2022jp_mobile_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022jp_mobile.c_mbfl_filt_conv_2022jp_mobile_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 (i32, i32)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext1_ucs_table = common dso_local global i32* null, align 8
@jisx0208_ucs_table_size = common dso_local global i32 0, align 4
@jisx0208_ucs_table = common dso_local global i32* null, align 8
@mbfl_no_encoding_2022jp_kddi = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0208 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_2022jp_mobile_wchar(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %447, %399, %367, %335, %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 15
  switch i32 %13, label %471 [
    i32 0, label %14
    i32 1, label %117
    i32 2, label %319
    i32 3, label %350
    i32 4, label %390
    i32 5, label %429
  ]

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 27
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 2
  store i32 %21, i32* %19, align 8
  br label %116

22:                                               ; preds = %14
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = icmp sgt i32 %28, 32
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 96
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i32 (i32, i32)*, i32 (i32, i32)** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 65344, %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %36(i32 %38, i32 %41)
  %43 = call i32 @CK(i32 %42)
  br label %115

44:                                               ; preds = %30, %27, %22
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 128
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load i32, i32* %3, align 4
  %51 = icmp sgt i32 %50, 32
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 128
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %114

63:                                               ; preds = %52, %49, %44
  %64 = load i32, i32* %3, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 128
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  %72 = load i32 (i32, i32)*, i32 (i32, i32)** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %72(i32 %73, i32 %76)
  %78 = call i32 @CK(i32 %77)
  br label %113

79:                                               ; preds = %66, %63
  %80 = load i32, i32* %3, align 4
  %81 = icmp sgt i32 %80, 160
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = load i32, i32* %3, align 4
  %84 = icmp slt i32 %83, 224
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load i32 (i32, i32)*, i32 (i32, i32)** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 65216, %89
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 %88(i32 %90, i32 %93)
  %95 = call i32 @CK(i32 %94)
  br label %112

96:                                               ; preds = %82, %79
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %101 = load i32, i32* %7, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load i32 (i32, i32)*, i32 (i32, i32)** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 %105(i32 %106, i32 %109)
  %111 = call i32 @CK(i32 %110)
  br label %112

112:                                              ; preds = %96, %85
  br label %113

113:                                              ; preds = %112, %69
  br label %114

114:                                              ; preds = %113, %55
  br label %115

115:                                              ; preds = %114, %33
  br label %116

116:                                              ; preds = %115, %17
  br label %474

117:                                              ; preds = %9
  store i32 0, i32* %7, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, -16
  store i32 %121, i32* %119, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %3, align 4
  %126 = icmp sgt i32 %125, 32
  br i1 %126, label %127, label %269

127:                                              ; preds = %117
  %128 = load i32, i32* %3, align 4
  %129 = icmp slt i32 %128, 127
  br i1 %129, label %130, label %269

130:                                              ; preds = %127
  %131 = load i32, i32* %5, align 4
  %132 = sub nsw i32 %131, 33
  %133 = mul nsw i32 %132, 94
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %133, %134
  %136 = sub nsw i32 %135, 33
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp sle i32 %137, 137
  br i1 %138, label %139, label %174

139:                                              ; preds = %130
  %140 = load i32, i32* %6, align 4
  %141 = icmp eq i32 %140, 31
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 65340, i32* %7, align 4
  br label %173

143:                                              ; preds = %139
  %144 = load i32, i32* %6, align 4
  %145 = icmp eq i32 %144, 32
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  store i32 65374, i32* %7, align 4
  br label %172

147:                                              ; preds = %143
  %148 = load i32, i32* %6, align 4
  %149 = icmp eq i32 %148, 33
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  store i32 8741, i32* %7, align 4
  br label %171

151:                                              ; preds = %147
  %152 = load i32, i32* %6, align 4
  %153 = icmp eq i32 %152, 60
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  store i32 65293, i32* %7, align 4
  br label %170

155:                                              ; preds = %151
  %156 = load i32, i32* %6, align 4
  %157 = icmp eq i32 %156, 80
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 65504, i32* %7, align 4
  br label %169

159:                                              ; preds = %155
  %160 = load i32, i32* %6, align 4
  %161 = icmp eq i32 %160, 81
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  store i32 65505, i32* %7, align 4
  br label %168

163:                                              ; preds = %159
  %164 = load i32, i32* %6, align 4
  %165 = icmp eq i32 %164, 137
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 65506, i32* %7, align 4
  br label %167

167:                                              ; preds = %166, %163
  br label %168

168:                                              ; preds = %167, %162
  br label %169

169:                                              ; preds = %168, %158
  br label %170

170:                                              ; preds = %169, %154
  br label %171

171:                                              ; preds = %170, %150
  br label %172

172:                                              ; preds = %171, %146
  br label %173

173:                                              ; preds = %172, %142
  br label %174

174:                                              ; preds = %173, %130
  %175 = load i32, i32* %7, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %209

177:                                              ; preds = %174
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %180 = icmp sge i32 %178, %179
  br i1 %180, label %181, label %193

181:                                              ; preds = %177
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @cp932ext1_ucs_table_max, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %181
  %186 = load i32*, i32** @cp932ext1_ucs_table, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %189 = sub nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %7, align 4
  br label %208

193:                                              ; preds = %181, %177
  %194 = load i32, i32* %6, align 4
  %195 = icmp sge i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %193
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @jisx0208_ucs_table_size, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = load i32*, i32** @jisx0208_ucs_table, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %7, align 4
  br label %207

206:                                              ; preds = %196, %193
  store i32 0, i32* %7, align 4
  br label %207

207:                                              ; preds = %206, %200
  br label %208

208:                                              ; preds = %207, %185
  br label %209

209:                                              ; preds = %208, %174
  %210 = load i32, i32* %6, align 4
  %211 = icmp sge i32 %210, 7896
  br i1 %211, label %212, label %245

212:                                              ; preds = %209
  %213 = load i32, i32* %6, align 4
  %214 = icmp slt i32 %213, 8554
  br i1 %214, label %215, label %245

215:                                              ; preds = %212
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 2068
  store i32 %217, i32* %6, align 4
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @mbfl_no_encoding_2022jp_kddi, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %215
  %226 = load i32, i32* %6, align 4
  %227 = call i32 @mbfilter_sjis_emoji_kddi2unicode(i32 %226, i32* %8)
  store i32 %227, i32* %7, align 4
  br label %228

228:                                              ; preds = %225, %215
  %229 = load i32, i32* %7, align 4
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %228
  %232 = load i32, i32* %8, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %231
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 3
  %237 = load i32 (i32, i32)*, i32 (i32, i32)** %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i32 %237(i32 %238, i32 %241)
  %243 = call i32 @CK(i32 %242)
  br label %244

244:                                              ; preds = %234, %231, %228
  br label %245

245:                                              ; preds = %244, %212, %209
  %246 = load i32, i32* %7, align 4
  %247 = icmp sle i32 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %245
  %249 = load i32, i32* %5, align 4
  %250 = shl i32 %249, 8
  %251 = load i32, i32* %3, align 4
  %252 = or i32 %250, %251
  store i32 %252, i32* %7, align 4
  %253 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %254 = load i32, i32* %7, align 4
  %255 = and i32 %254, %253
  store i32 %255, i32* %7, align 4
  %256 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %257 = load i32, i32* %7, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %7, align 4
  br label %259

259:                                              ; preds = %248, %245
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 3
  %262 = load i32 (i32, i32)*, i32 (i32, i32)** %261, align 8
  %263 = load i32, i32* %7, align 4
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 %262(i32 %263, i32 %266)
  %268 = call i32 @CK(i32 %267)
  br label %318

269:                                              ; preds = %127, %117
  %270 = load i32, i32* %3, align 4
  %271 = icmp eq i32 %270, 27
  br i1 %271, label %272, label %277

272:                                              ; preds = %269
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, 2
  store i32 %276, i32* %274, align 8
  br label %317

277:                                              ; preds = %269
  %278 = load i32, i32* %3, align 4
  %279 = icmp sge i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %277
  %281 = load i32, i32* %3, align 4
  %282 = icmp slt i32 %281, 33
  br i1 %282, label %286, label %283

283:                                              ; preds = %280, %277
  %284 = load i32, i32* %3, align 4
  %285 = icmp eq i32 %284, 127
  br i1 %285, label %286, label %296

286:                                              ; preds = %283, %280
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 3
  %289 = load i32 (i32, i32)*, i32 (i32, i32)** %288, align 8
  %290 = load i32, i32* %3, align 4
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = call i32 %289(i32 %290, i32 %293)
  %295 = call i32 @CK(i32 %294)
  br label %316

296:                                              ; preds = %283
  %297 = load i32, i32* %5, align 4
  %298 = shl i32 %297, 8
  %299 = load i32, i32* %3, align 4
  %300 = or i32 %298, %299
  store i32 %300, i32* %7, align 4
  %301 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %302 = load i32, i32* %7, align 4
  %303 = and i32 %302, %301
  store i32 %303, i32* %7, align 4
  %304 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %305 = load i32, i32* %7, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %7, align 4
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 3
  %309 = load i32 (i32, i32)*, i32 (i32, i32)** %308, align 8
  %310 = load i32, i32* %7, align 4
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = call i32 %309(i32 %310, i32 %313)
  %315 = call i32 @CK(i32 %314)
  br label %316

316:                                              ; preds = %296, %286
  br label %317

317:                                              ; preds = %316, %272
  br label %318

318:                                              ; preds = %317, %259
  br label %474

319:                                              ; preds = %9
  %320 = load i32, i32* %3, align 4
  %321 = icmp eq i32 %320, 36
  br i1 %321, label %322, label %327

322:                                              ; preds = %319
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %324, align 8
  br label %349

327:                                              ; preds = %319
  %328 = load i32, i32* %3, align 4
  %329 = icmp eq i32 %328, 40
  br i1 %329, label %330, label %335

330:                                              ; preds = %327
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = add nsw i32 %333, 3
  store i32 %334, i32* %332, align 8
  br label %348

335:                                              ; preds = %327
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = and i32 %338, -16
  store i32 %339, i32* %337, align 8
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 3
  %342 = load i32 (i32, i32)*, i32 (i32, i32)** %341, align 8
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = call i32 %342(i32 27, i32 %345)
  %347 = call i32 @CK(i32 %346)
  br label %9

348:                                              ; preds = %330
  br label %349

349:                                              ; preds = %348, %322
  br label %474

350:                                              ; preds = %9
  %351 = load i32, i32* %3, align 4
  %352 = icmp eq i32 %351, 64
  br i1 %352, label %356, label %353

353:                                              ; preds = %350
  %354 = load i32, i32* %3, align 4
  %355 = icmp eq i32 %354, 66
  br i1 %355, label %356, label %359

356:                                              ; preds = %353, %350
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 0
  store i32 128, i32* %358, align 8
  br label %389

359:                                              ; preds = %353
  %360 = load i32, i32* %3, align 4
  %361 = icmp eq i32 %360, 40
  br i1 %361, label %362, label %367

362:                                              ; preds = %359
  %363 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %364, align 8
  br label %388

367:                                              ; preds = %359
  %368 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = and i32 %370, -16
  store i32 %371, i32* %369, align 8
  %372 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %372, i32 0, i32 3
  %374 = load i32 (i32, i32)*, i32 (i32, i32)** %373, align 8
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = call i32 %374(i32 27, i32 %377)
  %379 = call i32 @CK(i32 %378)
  %380 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 3
  %382 = load i32 (i32, i32)*, i32 (i32, i32)** %381, align 8
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 8
  %386 = call i32 %382(i32 36, i32 %385)
  %387 = call i32 @CK(i32 %386)
  br label %9

388:                                              ; preds = %362
  br label %389

389:                                              ; preds = %388, %356
  br label %474

390:                                              ; preds = %9
  %391 = load i32, i32* %3, align 4
  %392 = icmp eq i32 %391, 64
  br i1 %392, label %396, label %393

393:                                              ; preds = %390
  %394 = load i32, i32* %3, align 4
  %395 = icmp eq i32 %394, 66
  br i1 %395, label %396, label %399

396:                                              ; preds = %393, %390
  %397 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 0
  store i32 128, i32* %398, align 8
  br label %428

399:                                              ; preds = %393
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = and i32 %402, -16
  store i32 %403, i32* %401, align 8
  %404 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %404, i32 0, i32 3
  %406 = load i32 (i32, i32)*, i32 (i32, i32)** %405, align 8
  %407 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = call i32 %406(i32 27, i32 %409)
  %411 = call i32 @CK(i32 %410)
  %412 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %412, i32 0, i32 3
  %414 = load i32 (i32, i32)*, i32 (i32, i32)** %413, align 8
  %415 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %416 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = call i32 %414(i32 36, i32 %417)
  %419 = call i32 @CK(i32 %418)
  %420 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i32 0, i32 3
  %422 = load i32 (i32, i32)*, i32 (i32, i32)** %421, align 8
  %423 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = call i32 %422(i32 40, i32 %425)
  %427 = call i32 @CK(i32 %426)
  br label %9

428:                                              ; preds = %396
  br label %474

429:                                              ; preds = %9
  %430 = load i32, i32* %3, align 4
  %431 = icmp eq i32 %430, 66
  br i1 %431, label %432, label %435

432:                                              ; preds = %429
  %433 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 0
  store i32 0, i32* %434, align 8
  br label %470

435:                                              ; preds = %429
  %436 = load i32, i32* %3, align 4
  %437 = icmp eq i32 %436, 74
  br i1 %437, label %438, label %441

438:                                              ; preds = %435
  %439 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %439, i32 0, i32 0
  store i32 0, i32* %440, align 8
  br label %469

441:                                              ; preds = %435
  %442 = load i32, i32* %3, align 4
  %443 = icmp eq i32 %442, 73
  br i1 %443, label %444, label %447

444:                                              ; preds = %441
  %445 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 0
  store i32 32, i32* %446, align 8
  br label %468

447:                                              ; preds = %441
  %448 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = and i32 %450, -16
  store i32 %451, i32* %449, align 8
  %452 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %452, i32 0, i32 3
  %454 = load i32 (i32, i32)*, i32 (i32, i32)** %453, align 8
  %455 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 8
  %458 = call i32 %454(i32 27, i32 %457)
  %459 = call i32 @CK(i32 %458)
  %460 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %461 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %460, i32 0, i32 3
  %462 = load i32 (i32, i32)*, i32 (i32, i32)** %461, align 8
  %463 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  %466 = call i32 %462(i32 40, i32 %465)
  %467 = call i32 @CK(i32 %466)
  br label %9

468:                                              ; preds = %444
  br label %469

469:                                              ; preds = %468, %438
  br label %470

470:                                              ; preds = %469, %432
  br label %474

471:                                              ; preds = %9
  %472 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %473 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %472, i32 0, i32 0
  store i32 0, i32* %473, align 8
  br label %474

474:                                              ; preds = %471, %470, %428, %389, %349, %318, %116
  %475 = load i32, i32* %3, align 4
  ret i32 %475
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfilter_sjis_emoji_kddi2unicode(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
