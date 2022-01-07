; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mac.c_mbfl_filt_conv_sjis_mac_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mac.c_mbfl_filt_conv_sjis_mac_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@code_tbl = common dso_local global i32** null, align 8
@code_tbl_m_len = common dso_local global i32 0, align 4
@code_tbl_m = common dso_local global i32** null, align 8
@code_ofst_tbl = common dso_local global i32** null, align 8
@code_map = common dso_local global i32** null, align 8
@jisx0208_ucs_table_size = common dso_local global i32 0, align 4
@jisx0208_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_WINCP932 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_sjis_mac_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %579 [
    i32 0, label %16
    i32 1, label %172
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 128
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 92
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %28(i32 %29, i32 %32)
  %34 = call i32 @CK(i32 %33)
  br label %171

35:                                               ; preds = %22, %19, %16
  %36 = load i32, i32* %3, align 4
  %37 = icmp sgt i32 %36, 160
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 224
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 65216, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %44(i32 %46, i32 %49)
  %51 = call i32 @CK(i32 %50)
  br label %170

52:                                               ; preds = %38, %35
  %53 = load i32, i32* %3, align 4
  %54 = icmp sgt i32 %53, 128
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 253
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 160
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %169

67:                                               ; preds = %58, %55, %52
  %68 = load i32, i32* %3, align 4
  %69 = icmp eq i32 %68, 92
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i32 (i32, i32)*, i32 (i32, i32)** %72, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %73(i32 165, i32 %76)
  %78 = call i32 @CK(i32 %77)
  br label %168

79:                                               ; preds = %67
  %80 = load i32, i32* %3, align 4
  %81 = icmp eq i32 %80, 128
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32 (i32, i32)*, i32 (i32, i32)** %84, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 %85(i32 92, i32 %88)
  %90 = call i32 @CK(i32 %89)
  br label %167

91:                                               ; preds = %79
  %92 = load i32, i32* %3, align 4
  %93 = icmp eq i32 %92, 160
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 3
  %97 = load i32 (i32, i32)*, i32 (i32, i32)** %96, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 %97(i32 160, i32 %100)
  %102 = call i32 @CK(i32 %101)
  br label %166

103:                                              ; preds = %91
  %104 = load i32, i32* %3, align 4
  %105 = icmp eq i32 %104, 253
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load i32 (i32, i32)*, i32 (i32, i32)** %108, align 8
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 %109(i32 169, i32 %112)
  %114 = call i32 @CK(i32 %113)
  br label %165

115:                                              ; preds = %103
  %116 = load i32, i32* %3, align 4
  %117 = icmp eq i32 %116, 254
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  %121 = load i32 (i32, i32)*, i32 (i32, i32)** %120, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 %121(i32 8482, i32 %124)
  %126 = call i32 @CK(i32 %125)
  br label %164

127:                                              ; preds = %115
  %128 = load i32, i32* %3, align 4
  %129 = icmp eq i32 %128, 255
  br i1 %129, label %130, label %147

130:                                              ; preds = %127
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 3
  %133 = load i32 (i32, i32)*, i32 (i32, i32)** %132, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 %133(i32 8230, i32 %136)
  %138 = call i32 @CK(i32 %137)
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = load i32 (i32, i32)*, i32 (i32, i32)** %140, align 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 %141(i32 63615, i32 %144)
  %146 = call i32 @CK(i32 %145)
  br label %163

147:                                              ; preds = %127
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %150 = and i32 %148, %149
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %152 = load i32, i32* %12, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %12, align 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 3
  %156 = load i32 (i32, i32)*, i32 (i32, i32)** %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 %156(i32 %157, i32 %160)
  %162 = call i32 @CK(i32 %161)
  br label %163

163:                                              ; preds = %147, %130
  br label %164

164:                                              ; preds = %163, %118
  br label %165

165:                                              ; preds = %164, %106
  br label %166

166:                                              ; preds = %165, %94
  br label %167

167:                                              ; preds = %166, %82
  br label %168

168:                                              ; preds = %167, %70
  br label %169

169:                                              ; preds = %168, %61
  br label %170

170:                                              ; preds = %169, %41
  br label %171

171:                                              ; preds = %170, %25
  br label %582

172:                                              ; preds = %2
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store i32 0, i32* %174, align 8
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %3, align 4
  %179 = icmp sge i32 %178, 64
  br i1 %179, label %180, label %538

180:                                              ; preds = %172
  %181 = load i32, i32* %3, align 4
  %182 = icmp sle i32 %181, 252
  br i1 %182, label %183, label %538

183:                                              ; preds = %180
  %184 = load i32, i32* %3, align 4
  %185 = icmp ne i32 %184, 127
  br i1 %185, label %186, label %538

186:                                              ; preds = %183
  store i32 0, i32* %12, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %3, align 4
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @SJIS_DECODE(i32 %187, i32 %188, i32 %189, i32 %190)
  %192 = load i32, i32* %10, align 4
  %193 = sub nsw i32 %192, 33
  %194 = mul nsw i32 %193, 94
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %194, %195
  %197 = sub nsw i32 %196, 33
  store i32 %197, i32* %9, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp sle i32 %198, 137
  br i1 %199, label %200, label %240

200:                                              ; preds = %186
  %201 = load i32, i32* %9, align 4
  %202 = icmp eq i32 %201, 28
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 8212, i32* %12, align 4
  br label %239

204:                                              ; preds = %200
  %205 = load i32, i32* %9, align 4
  %206 = icmp eq i32 %205, 31
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  store i32 65340, i32* %12, align 4
  br label %238

208:                                              ; preds = %204
  %209 = load i32, i32* %9, align 4
  %210 = icmp eq i32 %209, 32
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 12316, i32* %12, align 4
  br label %237

212:                                              ; preds = %208
  %213 = load i32, i32* %9, align 4
  %214 = icmp eq i32 %213, 33
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  store i32 8214, i32* %12, align 4
  br label %236

216:                                              ; preds = %212
  %217 = load i32, i32* %9, align 4
  %218 = icmp eq i32 %217, 60
  br i1 %218, label %219, label %220

219:                                              ; preds = %216
  store i32 8722, i32* %12, align 4
  br label %235

220:                                              ; preds = %216
  %221 = load i32, i32* %9, align 4
  %222 = icmp eq i32 %221, 80
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  store i32 162, i32* %12, align 4
  br label %234

224:                                              ; preds = %220
  %225 = load i32, i32* %9, align 4
  %226 = icmp eq i32 %225, 81
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  store i32 163, i32* %12, align 4
  br label %233

228:                                              ; preds = %224
  %229 = load i32, i32* %9, align 4
  %230 = icmp eq i32 %229, 137
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  store i32 172, i32* %12, align 4
  br label %232

232:                                              ; preds = %231, %228
  br label %233

233:                                              ; preds = %232, %227
  br label %234

234:                                              ; preds = %233, %223
  br label %235

235:                                              ; preds = %234, %219
  br label %236

236:                                              ; preds = %235, %215
  br label %237

237:                                              ; preds = %236, %211
  br label %238

238:                                              ; preds = %237, %207
  br label %239

239:                                              ; preds = %238, %203
  br label %240

240:                                              ; preds = %239, %186
  %241 = load i32, i32* %12, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %290

243:                                              ; preds = %240
  store i32 0, i32* %5, align 4
  br label %244

244:                                              ; preds = %286, %243
  %245 = load i32, i32* %5, align 4
  %246 = icmp slt i32 %245, 7
  br i1 %246, label %247, label %289

247:                                              ; preds = %244
  %248 = load i32, i32* %9, align 4
  %249 = load i32**, i32*** @code_tbl, align 8
  %250 = load i32, i32* %5, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 0
  %255 = load i32, i32* %254, align 4
  %256 = icmp sge i32 %248, %255
  br i1 %256, label %257, label %285

257:                                              ; preds = %247
  %258 = load i32, i32* %9, align 4
  %259 = load i32**, i32*** @code_tbl, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32*, i32** %259, i64 %261
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = icmp sle i32 %258, %265
  br i1 %266, label %267, label %285

267:                                              ; preds = %257
  %268 = load i32, i32* %9, align 4
  %269 = load i32**, i32*** @code_tbl, align 8
  %270 = load i32, i32* %5, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32*, i32** %269, i64 %271
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 0
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 %268, %275
  %277 = load i32**, i32*** @code_tbl, align 8
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32*, i32** %277, i64 %279
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 2
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %276, %283
  store i32 %284, i32* %12, align 4
  br label %289

285:                                              ; preds = %257, %247
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %5, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %5, align 4
  br label %244

289:                                              ; preds = %267, %244
  br label %290

290:                                              ; preds = %289, %240
  %291 = load i32, i32* %12, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %373

293:                                              ; preds = %290
  store i32 0, i32* %5, align 4
  br label %294

294:                                              ; preds = %369, %293
  %295 = load i32, i32* %5, align 4
  %296 = load i32, i32* @code_tbl_m_len, align 4
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %298, label %372

298:                                              ; preds = %294
  %299 = load i32, i32* %9, align 4
  %300 = load i32**, i32*** @code_tbl_m, align 8
  %301 = load i32, i32* %5, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32*, i32** %300, i64 %302
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %299, %306
  br i1 %307, label %308, label %368

308:                                              ; preds = %298
  %309 = load i32**, i32*** @code_tbl_m, align 8
  %310 = load i32, i32* %5, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32*, i32** %309, i64 %311
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  %315 = load i32, i32* %314, align 4
  %316 = icmp eq i32 %315, 63584
  br i1 %316, label %317, label %318

317:                                              ; preds = %308
  store i32 4, i32* %7, align 4
  br label %330

318:                                              ; preds = %308
  %319 = load i32**, i32*** @code_tbl_m, align 8
  %320 = load i32, i32* %5, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32*, i32** %319, i64 %321
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %325, 63585
  br i1 %326, label %327, label %328

327:                                              ; preds = %318
  store i32 5, i32* %7, align 4
  br label %329

328:                                              ; preds = %318
  store i32 6, i32* %7, align 4
  br label %329

329:                                              ; preds = %328, %327
  br label %330

330:                                              ; preds = %329, %317
  store i32 1, i32* %6, align 4
  br label %331

331:                                              ; preds = %354, %330
  %332 = load i32, i32* %6, align 4
  %333 = load i32, i32* %7, align 4
  %334 = sub nsw i32 %333, 1
  %335 = icmp slt i32 %332, %334
  br i1 %335, label %336, label %357

336:                                              ; preds = %331
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 3
  %339 = load i32 (i32, i32)*, i32 (i32, i32)** %338, align 8
  %340 = load i32**, i32*** @code_tbl_m, align 8
  %341 = load i32, i32* %5, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32*, i32** %340, i64 %342
  %344 = load i32*, i32** %343, align 8
  %345 = load i32, i32* %6, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %344, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = call i32 %339(i32 %348, i32 %351)
  %353 = call i32 @CK(i32 %352)
  br label %354

354:                                              ; preds = %336
  %355 = load i32, i32* %6, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %6, align 4
  br label %331

357:                                              ; preds = %331
  %358 = load i32**, i32*** @code_tbl_m, align 8
  %359 = load i32, i32* %5, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32*, i32** %358, i64 %360
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %7, align 4
  %364 = sub nsw i32 %363, 1
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %362, i64 %365
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* %12, align 4
  br label %372

368:                                              ; preds = %298
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %5, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %5, align 4
  br label %294

372:                                              ; preds = %357, %294
  br label %373

373:                                              ; preds = %372, %290
  %374 = load i32, i32* %12, align 4
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %498

376:                                              ; preds = %373
  store i32 0, i32* %5, align 4
  br label %377

377:                                              ; preds = %494, %376
  %378 = load i32, i32* %5, align 4
  %379 = icmp slt i32 %378, 8
  br i1 %379, label %380, label %497

380:                                              ; preds = %377
  %381 = load i32, i32* %9, align 4
  %382 = load i32**, i32*** @code_ofst_tbl, align 8
  %383 = load i32, i32* %5, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32*, i32** %382, i64 %384
  %386 = load i32*, i32** %385, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 0
  %388 = load i32, i32* %387, align 4
  %389 = icmp sge i32 %381, %388
  br i1 %389, label %390, label %493

390:                                              ; preds = %380
  %391 = load i32, i32* %9, align 4
  %392 = load i32**, i32*** @code_ofst_tbl, align 8
  %393 = load i32, i32* %5, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32*, i32** %392, i64 %394
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 1
  %398 = load i32, i32* %397, align 4
  %399 = icmp sle i32 %391, %398
  br i1 %399, label %400, label %493

400:                                              ; preds = %390
  %401 = load i32**, i32*** @code_map, align 8
  %402 = load i32, i32* %5, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32*, i32** %401, i64 %403
  %405 = load i32*, i32** %404, align 8
  %406 = load i32, i32* %9, align 4
  %407 = load i32**, i32*** @code_ofst_tbl, align 8
  %408 = load i32, i32* %5, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32*, i32** %407, i64 %409
  %411 = load i32*, i32** %410, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 0
  %413 = load i32, i32* %412, align 4
  %414 = sub nsw i32 %406, %413
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %405, i64 %415
  %417 = load i32, i32* %416, align 4
  store i32 %417, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %418 = load i32, i32* %9, align 4
  %419 = icmp sge i32 %418, 1086
  br i1 %419, label %420, label %424

420:                                              ; preds = %400
  %421 = load i32, i32* %9, align 4
  %422 = icmp sle i32 %421, 1089
  br i1 %422, label %423, label %424

423:                                              ; preds = %420
  store i32 63610, i32* %11, align 4
  br label %478

424:                                              ; preds = %420, %400
  %425 = load i32, i32* %9, align 4
  %426 = icmp eq i32 %425, 945
  br i1 %426, label %430, label %427

427:                                              ; preds = %424
  %428 = load i32, i32* %9, align 4
  %429 = icmp eq i32 %428, 951
  br i1 %429, label %430, label %431

430:                                              ; preds = %427, %424
  store i32 63615, i32* %11, align 4
  br label %477

431:                                              ; preds = %427
  %432 = load i32, i32* %9, align 4
  %433 = icmp eq i32 %432, 1208
  br i1 %433, label %440, label %434

434:                                              ; preds = %431
  %435 = load i32, i32* %9, align 4
  %436 = icmp eq i32 %435, 1209
  br i1 %436, label %440, label %437

437:                                              ; preds = %434
  %438 = load i32, i32* %9, align 4
  %439 = icmp eq i32 %438, 1220
  br i1 %439, label %440, label %441

440:                                              ; preds = %437, %434, %431
  store i32 8413, i32* %11, align 4
  br label %476

441:                                              ; preds = %437
  %442 = load i32, i32* %9, align 4
  %443 = icmp eq i32 %442, 7897
  br i1 %443, label %474, label %444

444:                                              ; preds = %441
  %445 = load i32, i32* %9, align 4
  %446 = icmp eq i32 %445, 7898
  br i1 %446, label %474, label %447

447:                                              ; preds = %444
  %448 = load i32, i32* %9, align 4
  %449 = icmp eq i32 %448, 7912
  br i1 %449, label %474, label %450

450:                                              ; preds = %447
  %451 = load i32, i32* %9, align 4
  %452 = icmp eq i32 %451, 7923
  br i1 %452, label %474, label %453

453:                                              ; preds = %450
  %454 = load i32, i32* %9, align 4
  %455 = icmp sge i32 %454, 7925
  br i1 %455, label %456, label %459

456:                                              ; preds = %453
  %457 = load i32, i32* %9, align 4
  %458 = icmp sle i32 %457, 7931
  br i1 %458, label %474, label %459

459:                                              ; preds = %456, %453
  %460 = load i32, i32* %9, align 4
  %461 = icmp eq i32 %460, 7941
  br i1 %461, label %474, label %462

462:                                              ; preds = %459
  %463 = load i32, i32* %9, align 4
  %464 = icmp eq i32 %463, 7942
  br i1 %464, label %474, label %465

465:                                              ; preds = %462
  %466 = load i32, i32* %9, align 4
  %467 = icmp eq i32 %466, 7960
  br i1 %467, label %474, label %468

468:                                              ; preds = %465
  %469 = load i32, i32* %9, align 4
  %470 = icmp sge i32 %469, 8178
  br i1 %470, label %471, label %475

471:                                              ; preds = %468
  %472 = load i32, i32* %9, align 4
  %473 = icmp sle i32 %472, 8357
  br i1 %473, label %474, label %475

474:                                              ; preds = %471, %465, %462, %459, %456, %450, %447, %444, %441
  store i32 63614, i32* %11, align 4
  br label %475

475:                                              ; preds = %474, %471, %468
  br label %476

476:                                              ; preds = %475, %440
  br label %477

477:                                              ; preds = %476, %430
  br label %478

478:                                              ; preds = %477, %423
  %479 = load i32, i32* %11, align 4
  %480 = icmp sgt i32 %479, 0
  br i1 %480, label %481, label %492

481:                                              ; preds = %478
  %482 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %483 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %482, i32 0, i32 3
  %484 = load i32 (i32, i32)*, i32 (i32, i32)** %483, align 8
  %485 = load i32, i32* %12, align 4
  %486 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %487 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 8
  %489 = call i32 %484(i32 %485, i32 %488)
  %490 = call i32 @CK(i32 %489)
  %491 = load i32, i32* %11, align 4
  store i32 %491, i32* %12, align 4
  br label %492

492:                                              ; preds = %481, %478
  br label %497

493:                                              ; preds = %390, %380
  br label %494

494:                                              ; preds = %493
  %495 = load i32, i32* %5, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %5, align 4
  br label %377

497:                                              ; preds = %492, %377
  br label %498

498:                                              ; preds = %497, %373
  %499 = load i32, i32* %12, align 4
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %514

501:                                              ; preds = %498
  %502 = load i32, i32* %9, align 4
  %503 = icmp sge i32 %502, 0
  br i1 %503, label %504, label %514

504:                                              ; preds = %501
  %505 = load i32, i32* %9, align 4
  %506 = load i32, i32* @jisx0208_ucs_table_size, align 4
  %507 = icmp slt i32 %505, %506
  br i1 %507, label %508, label %514

508:                                              ; preds = %504
  %509 = load i32*, i32** @jisx0208_ucs_table, align 8
  %510 = load i32, i32* %9, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32, i32* %509, i64 %511
  %513 = load i32, i32* %512, align 4
  store i32 %513, i32* %12, align 4
  br label %514

514:                                              ; preds = %508, %504, %501, %498
  %515 = load i32, i32* %12, align 4
  %516 = icmp sle i32 %515, 0
  br i1 %516, label %517, label %528

517:                                              ; preds = %514
  %518 = load i32, i32* %10, align 4
  %519 = shl i32 %518, 8
  %520 = load i32, i32* %11, align 4
  %521 = or i32 %519, %520
  store i32 %521, i32* %12, align 4
  %522 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %523 = load i32, i32* %12, align 4
  %524 = and i32 %523, %522
  store i32 %524, i32* %12, align 4
  %525 = load i32, i32* @MBFL_WCSPLANE_WINCP932, align 4
  %526 = load i32, i32* %12, align 4
  %527 = or i32 %526, %525
  store i32 %527, i32* %12, align 4
  br label %528

528:                                              ; preds = %517, %514
  %529 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %530 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %529, i32 0, i32 3
  %531 = load i32 (i32, i32)*, i32 (i32, i32)** %530, align 8
  %532 = load i32, i32* %12, align 4
  %533 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %534 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 8
  %536 = call i32 %531(i32 %532, i32 %535)
  %537 = call i32 @CK(i32 %536)
  br label %578

538:                                              ; preds = %183, %180, %172
  %539 = load i32, i32* %3, align 4
  %540 = icmp sge i32 %539, 0
  br i1 %540, label %541, label %544

541:                                              ; preds = %538
  %542 = load i32, i32* %3, align 4
  %543 = icmp slt i32 %542, 33
  br i1 %543, label %547, label %544

544:                                              ; preds = %541, %538
  %545 = load i32, i32* %3, align 4
  %546 = icmp eq i32 %545, 127
  br i1 %546, label %547, label %557

547:                                              ; preds = %544, %541
  %548 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %549 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %548, i32 0, i32 3
  %550 = load i32 (i32, i32)*, i32 (i32, i32)** %549, align 8
  %551 = load i32, i32* %3, align 4
  %552 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %553 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %552, i32 0, i32 2
  %554 = load i32, i32* %553, align 8
  %555 = call i32 %550(i32 %551, i32 %554)
  %556 = call i32 @CK(i32 %555)
  br label %577

557:                                              ; preds = %544
  %558 = load i32, i32* %8, align 4
  %559 = shl i32 %558, 8
  %560 = load i32, i32* %3, align 4
  %561 = or i32 %559, %560
  store i32 %561, i32* %12, align 4
  %562 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %563 = load i32, i32* %12, align 4
  %564 = and i32 %563, %562
  store i32 %564, i32* %12, align 4
  %565 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %566 = load i32, i32* %12, align 4
  %567 = or i32 %566, %565
  store i32 %567, i32* %12, align 4
  %568 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %569 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %568, i32 0, i32 3
  %570 = load i32 (i32, i32)*, i32 (i32, i32)** %569, align 8
  %571 = load i32, i32* %12, align 4
  %572 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %573 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %572, i32 0, i32 2
  %574 = load i32, i32* %573, align 8
  %575 = call i32 %570(i32 %571, i32 %574)
  %576 = call i32 @CK(i32 %575)
  br label %577

577:                                              ; preds = %557, %547
  br label %578

578:                                              ; preds = %577, %528
  br label %582

579:                                              ; preds = %2
  %580 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %581 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %580, i32 0, i32 0
  store i32 0, i32* %581, align 8
  br label %582

582:                                              ; preds = %579, %578, %171
  %583 = load i32, i32* %3, align 4
  ret i32 %583
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @SJIS_DECODE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
