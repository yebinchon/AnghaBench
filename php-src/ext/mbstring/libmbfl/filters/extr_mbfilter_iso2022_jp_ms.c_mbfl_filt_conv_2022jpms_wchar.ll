; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022_jp_ms.c_mbfl_filt_conv_2022jpms_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022_jp_ms.c_mbfl_filt_conv_2022jpms_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext1_ucs_table = common dso_local global i32* null, align 8
@jisx0208_ucs_table_size = common dso_local global i32 0, align 4
@jisx0208_ucs_table = common dso_local global i32* null, align 8
@cp932ext2_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext2_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext2_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0208 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_2022jpms_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  br label %8

8:                                                ; preds = %485, %436, %398, %366, %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 15
  switch i32 %12, label %509 [
    i32 0, label %13
    i32 1, label %121
    i32 2, label %350
    i32 3, label %381
    i32 4, label %421
    i32 5, label %467
  ]

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 27
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 2
  store i32 %20, i32* %18, align 8
  br label %120

21:                                               ; preds = %13
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 32
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = icmp sgt i32 %27, 32
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 96
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i32 (i32, i32)*, i32 (i32, i32)** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 65344, %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %35(i32 %37, i32 %40)
  %42 = call i32 @CK(i32 %41)
  br label %119

43:                                               ; preds = %29, %26, %21
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 128
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 160
  br i1 %52, label %53, label %67

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %3, align 4
  %55 = icmp sgt i32 %54, 32
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = icmp slt i32 %57, 128
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %118

67:                                               ; preds = %56, %53, %48
  %68 = load i32, i32* %3, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = icmp slt i32 %71, 128
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32 (i32, i32)*, i32 (i32, i32)** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 %76(i32 %77, i32 %80)
  %82 = call i32 @CK(i32 %81)
  br label %117

83:                                               ; preds = %70, %67
  %84 = load i32, i32* %3, align 4
  %85 = icmp sgt i32 %84, 160
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  %87 = load i32, i32* %3, align 4
  %88 = icmp slt i32 %87, 224
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32 (i32, i32)*, i32 (i32, i32)** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 65216, %93
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 %92(i32 %94, i32 %97)
  %99 = call i32 @CK(i32 %98)
  br label %116

100:                                              ; preds = %86, %83
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %105 = load i32, i32* %7, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %7, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  %109 = load i32 (i32, i32)*, i32 (i32, i32)** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 %109(i32 %110, i32 %113)
  %115 = call i32 @CK(i32 %114)
  br label %116

116:                                              ; preds = %100, %89
  br label %117

117:                                              ; preds = %116, %73
  br label %118

118:                                              ; preds = %117, %59
  br label %119

119:                                              ; preds = %118, %32
  br label %120

120:                                              ; preds = %119, %16
  br label %512

121:                                              ; preds = %8
  store i32 0, i32* %7, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, -16
  store i32 %125, i32* %123, align 8
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %3, align 4
  %130 = icmp sgt i32 %129, 32
  br i1 %130, label %131, label %300

131:                                              ; preds = %121
  %132 = load i32, i32* %3, align 4
  %133 = icmp slt i32 %132, 127
  br i1 %133, label %134, label %300

134:                                              ; preds = %131
  %135 = load i32, i32* %5, align 4
  %136 = sub nsw i32 %135, 33
  %137 = mul nsw i32 %136, 94
  %138 = load i32, i32* %3, align 4
  %139 = add nsw i32 %137, %138
  %140 = sub nsw i32 %139, 33
  store i32 %140, i32* %6, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 128
  br i1 %144, label %145, label %259

145:                                              ; preds = %134
  %146 = load i32, i32* %6, align 4
  %147 = icmp sle i32 %146, 137
  br i1 %147, label %148, label %183

148:                                              ; preds = %145
  %149 = load i32, i32* %6, align 4
  %150 = icmp eq i32 %149, 31
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 65340, i32* %7, align 4
  br label %182

152:                                              ; preds = %148
  %153 = load i32, i32* %6, align 4
  %154 = icmp eq i32 %153, 32
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 65374, i32* %7, align 4
  br label %181

156:                                              ; preds = %152
  %157 = load i32, i32* %6, align 4
  %158 = icmp eq i32 %157, 33
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 8741, i32* %7, align 4
  br label %180

160:                                              ; preds = %156
  %161 = load i32, i32* %6, align 4
  %162 = icmp eq i32 %161, 60
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 65293, i32* %7, align 4
  br label %179

164:                                              ; preds = %160
  %165 = load i32, i32* %6, align 4
  %166 = icmp eq i32 %165, 80
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 65504, i32* %7, align 4
  br label %178

168:                                              ; preds = %164
  %169 = load i32, i32* %6, align 4
  %170 = icmp eq i32 %169, 81
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 65505, i32* %7, align 4
  br label %177

172:                                              ; preds = %168
  %173 = load i32, i32* %6, align 4
  %174 = icmp eq i32 %173, 137
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 65506, i32* %7, align 4
  br label %176

176:                                              ; preds = %175, %172
  br label %177

177:                                              ; preds = %176, %171
  br label %178

178:                                              ; preds = %177, %167
  br label %179

179:                                              ; preds = %178, %163
  br label %180

180:                                              ; preds = %179, %159
  br label %181

181:                                              ; preds = %180, %155
  br label %182

182:                                              ; preds = %181, %151
  br label %183

183:                                              ; preds = %182, %145
  %184 = load i32, i32* %7, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %235

186:                                              ; preds = %183
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %189 = icmp sge i32 %187, %188
  br i1 %189, label %190, label %202

190:                                              ; preds = %186
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @cp932ext1_ucs_table_max, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %190
  %195 = load i32*, i32** @cp932ext1_ucs_table, align 8
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %198 = sub nsw i32 %196, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %195, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %7, align 4
  br label %234

202:                                              ; preds = %190, %186
  %203 = load i32, i32* %6, align 4
  %204 = icmp sge i32 %203, 0
  br i1 %204, label %205, label %215

205:                                              ; preds = %202
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @jisx0208_ucs_table_size, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load i32*, i32** @jisx0208_ucs_table, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %7, align 4
  br label %233

215:                                              ; preds = %205, %202
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %218 = icmp sge i32 %216, %217
  br i1 %218, label %219, label %231

219:                                              ; preds = %215
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* @cp932ext2_ucs_table_max, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %231

223:                                              ; preds = %219
  %224 = load i32*, i32** @cp932ext2_ucs_table, align 8
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %227 = sub nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %224, i64 %228
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %7, align 4
  br label %232

231:                                              ; preds = %219, %215
  store i32 0, i32* %7, align 4
  br label %232

232:                                              ; preds = %231, %223
  br label %233

233:                                              ; preds = %232, %209
  br label %234

234:                                              ; preds = %233, %194
  br label %235

235:                                              ; preds = %234, %183
  %236 = load i32, i32* %7, align 4
  %237 = icmp sle i32 %236, 0
  br i1 %237, label %238, label %249

238:                                              ; preds = %235
  %239 = load i32, i32* %5, align 4
  %240 = shl i32 %239, 8
  %241 = load i32, i32* %3, align 4
  %242 = or i32 %240, %241
  store i32 %242, i32* %7, align 4
  %243 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %244 = load i32, i32* %7, align 4
  %245 = and i32 %244, %243
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %247 = load i32, i32* %7, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %7, align 4
  br label %249

249:                                              ; preds = %238, %235
  %250 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 3
  %252 = load i32 (i32, i32)*, i32 (i32, i32)** %251, align 8
  %253 = load i32, i32* %7, align 4
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = call i32 %252(i32 %253, i32 %256)
  %258 = call i32 @CK(i32 %257)
  br label %299

259:                                              ; preds = %134
  %260 = load i32, i32* %5, align 4
  %261 = icmp sgt i32 %260, 32
  br i1 %261, label %262, label %273

262:                                              ; preds = %259
  %263 = load i32, i32* %5, align 4
  %264 = icmp slt i32 %263, 53
  br i1 %264, label %265, label %273

265:                                              ; preds = %262
  %266 = load i32, i32* %5, align 4
  %267 = sub nsw i32 %266, 33
  %268 = mul nsw i32 %267, 94
  %269 = add nsw i32 57344, %268
  %270 = load i32, i32* %3, align 4
  %271 = add nsw i32 %269, %270
  %272 = sub nsw i32 %271, 33
  store i32 %272, i32* %7, align 4
  br label %273

273:                                              ; preds = %265, %262, %259
  %274 = load i32, i32* %7, align 4
  %275 = icmp sle i32 %274, 0
  br i1 %275, label %276, label %289

276:                                              ; preds = %273
  %277 = load i32, i32* %5, align 4
  %278 = sub nsw i32 %277, 33
  %279 = add nsw i32 %278, 127
  %280 = shl i32 %279, 8
  %281 = load i32, i32* %3, align 4
  %282 = or i32 %280, %281
  store i32 %282, i32* %7, align 4
  %283 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %284 = load i32, i32* %7, align 4
  %285 = and i32 %284, %283
  store i32 %285, i32* %7, align 4
  %286 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %287 = load i32, i32* %7, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %7, align 4
  br label %289

289:                                              ; preds = %276, %273
  %290 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %290, i32 0, i32 3
  %292 = load i32 (i32, i32)*, i32 (i32, i32)** %291, align 8
  %293 = load i32, i32* %7, align 4
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = call i32 %292(i32 %293, i32 %296)
  %298 = call i32 @CK(i32 %297)
  br label %299

299:                                              ; preds = %289, %249
  br label %349

300:                                              ; preds = %131, %121
  %301 = load i32, i32* %3, align 4
  %302 = icmp eq i32 %301, 27
  br i1 %302, label %303, label %308

303:                                              ; preds = %300
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = add nsw i32 %306, 2
  store i32 %307, i32* %305, align 8
  br label %348

308:                                              ; preds = %300
  %309 = load i32, i32* %3, align 4
  %310 = icmp sge i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = load i32, i32* %3, align 4
  %313 = icmp slt i32 %312, 33
  br i1 %313, label %317, label %314

314:                                              ; preds = %311, %308
  %315 = load i32, i32* %3, align 4
  %316 = icmp eq i32 %315, 127
  br i1 %316, label %317, label %327

317:                                              ; preds = %314, %311
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 3
  %320 = load i32 (i32, i32)*, i32 (i32, i32)** %319, align 8
  %321 = load i32, i32* %3, align 4
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = call i32 %320(i32 %321, i32 %324)
  %326 = call i32 @CK(i32 %325)
  br label %347

327:                                              ; preds = %314
  %328 = load i32, i32* %5, align 4
  %329 = shl i32 %328, 8
  %330 = load i32, i32* %3, align 4
  %331 = or i32 %329, %330
  store i32 %331, i32* %7, align 4
  %332 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %333 = load i32, i32* %7, align 4
  %334 = and i32 %333, %332
  store i32 %334, i32* %7, align 4
  %335 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %336 = load i32, i32* %7, align 4
  %337 = or i32 %336, %335
  store i32 %337, i32* %7, align 4
  %338 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 3
  %340 = load i32 (i32, i32)*, i32 (i32, i32)** %339, align 8
  %341 = load i32, i32* %7, align 4
  %342 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = call i32 %340(i32 %341, i32 %344)
  %346 = call i32 @CK(i32 %345)
  br label %347

347:                                              ; preds = %327, %317
  br label %348

348:                                              ; preds = %347, %303
  br label %349

349:                                              ; preds = %348, %299
  br label %512

350:                                              ; preds = %8
  %351 = load i32, i32* %3, align 4
  %352 = icmp eq i32 %351, 36
  br i1 %352, label %353, label %358

353:                                              ; preds = %350
  %354 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %355, align 8
  br label %380

358:                                              ; preds = %350
  %359 = load i32, i32* %3, align 4
  %360 = icmp eq i32 %359, 40
  br i1 %360, label %361, label %366

361:                                              ; preds = %358
  %362 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = add nsw i32 %364, 3
  store i32 %365, i32* %363, align 8
  br label %379

366:                                              ; preds = %358
  %367 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = and i32 %369, -16
  store i32 %370, i32* %368, align 8
  %371 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 3
  %373 = load i32 (i32, i32)*, i32 (i32, i32)** %372, align 8
  %374 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = call i32 %373(i32 27, i32 %376)
  %378 = call i32 @CK(i32 %377)
  br label %8

379:                                              ; preds = %361
  br label %380

380:                                              ; preds = %379, %353
  br label %512

381:                                              ; preds = %8
  %382 = load i32, i32* %3, align 4
  %383 = icmp eq i32 %382, 64
  br i1 %383, label %387, label %384

384:                                              ; preds = %381
  %385 = load i32, i32* %3, align 4
  %386 = icmp eq i32 %385, 66
  br i1 %386, label %387, label %390

387:                                              ; preds = %384, %381
  %388 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %389 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %388, i32 0, i32 0
  store i32 128, i32* %389, align 8
  br label %420

390:                                              ; preds = %384
  %391 = load i32, i32* %3, align 4
  %392 = icmp eq i32 %391, 40
  br i1 %392, label %393, label %398

393:                                              ; preds = %390
  %394 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %395, align 8
  br label %419

398:                                              ; preds = %390
  %399 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = and i32 %401, -16
  store i32 %402, i32* %400, align 8
  %403 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i32 0, i32 3
  %405 = load i32 (i32, i32)*, i32 (i32, i32)** %404, align 8
  %406 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 8
  %409 = call i32 %405(i32 27, i32 %408)
  %410 = call i32 @CK(i32 %409)
  %411 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %411, i32 0, i32 3
  %413 = load i32 (i32, i32)*, i32 (i32, i32)** %412, align 8
  %414 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = call i32 %413(i32 36, i32 %416)
  %418 = call i32 @CK(i32 %417)
  br label %8

419:                                              ; preds = %393
  br label %420

420:                                              ; preds = %419, %387
  br label %512

421:                                              ; preds = %8
  %422 = load i32, i32* %3, align 4
  %423 = icmp eq i32 %422, 64
  br i1 %423, label %427, label %424

424:                                              ; preds = %421
  %425 = load i32, i32* %3, align 4
  %426 = icmp eq i32 %425, 66
  br i1 %426, label %427, label %430

427:                                              ; preds = %424, %421
  %428 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i32 0, i32 0
  store i32 128, i32* %429, align 8
  br label %466

430:                                              ; preds = %424
  %431 = load i32, i32* %3, align 4
  %432 = icmp eq i32 %431, 63
  br i1 %432, label %433, label %436

433:                                              ; preds = %430
  %434 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %434, i32 0, i32 0
  store i32 160, i32* %435, align 8
  br label %465

436:                                              ; preds = %430
  %437 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = and i32 %439, -16
  store i32 %440, i32* %438, align 8
  %441 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %442 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %441, i32 0, i32 3
  %443 = load i32 (i32, i32)*, i32 (i32, i32)** %442, align 8
  %444 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 8
  %447 = call i32 %443(i32 27, i32 %446)
  %448 = call i32 @CK(i32 %447)
  %449 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 3
  %451 = load i32 (i32, i32)*, i32 (i32, i32)** %450, align 8
  %452 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 8
  %455 = call i32 %451(i32 36, i32 %454)
  %456 = call i32 @CK(i32 %455)
  %457 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %457, i32 0, i32 3
  %459 = load i32 (i32, i32)*, i32 (i32, i32)** %458, align 8
  %460 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %461 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  %463 = call i32 %459(i32 40, i32 %462)
  %464 = call i32 @CK(i32 %463)
  br label %8

465:                                              ; preds = %433
  br label %466

466:                                              ; preds = %465, %427
  br label %512

467:                                              ; preds = %8
  %468 = load i32, i32* %3, align 4
  %469 = icmp eq i32 %468, 66
  br i1 %469, label %470, label %473

470:                                              ; preds = %467
  %471 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %472 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %471, i32 0, i32 0
  store i32 0, i32* %472, align 8
  br label %508

473:                                              ; preds = %467
  %474 = load i32, i32* %3, align 4
  %475 = icmp eq i32 %474, 74
  br i1 %475, label %476, label %479

476:                                              ; preds = %473
  %477 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %477, i32 0, i32 0
  store i32 0, i32* %478, align 8
  br label %507

479:                                              ; preds = %473
  %480 = load i32, i32* %3, align 4
  %481 = icmp eq i32 %480, 73
  br i1 %481, label %482, label %485

482:                                              ; preds = %479
  %483 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %483, i32 0, i32 0
  store i32 32, i32* %484, align 8
  br label %506

485:                                              ; preds = %479
  %486 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %487 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = and i32 %488, -16
  store i32 %489, i32* %487, align 8
  %490 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %491 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %490, i32 0, i32 3
  %492 = load i32 (i32, i32)*, i32 (i32, i32)** %491, align 8
  %493 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %494 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %493, i32 0, i32 2
  %495 = load i32, i32* %494, align 8
  %496 = call i32 %492(i32 27, i32 %495)
  %497 = call i32 @CK(i32 %496)
  %498 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %499 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %498, i32 0, i32 3
  %500 = load i32 (i32, i32)*, i32 (i32, i32)** %499, align 8
  %501 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %502 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %501, i32 0, i32 2
  %503 = load i32, i32* %502, align 8
  %504 = call i32 %500(i32 40, i32 %503)
  %505 = call i32 @CK(i32 %504)
  br label %8

506:                                              ; preds = %482
  br label %507

507:                                              ; preds = %506, %476
  br label %508

508:                                              ; preds = %507, %470
  br label %512

509:                                              ; preds = %8
  %510 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %511 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %510, i32 0, i32 0
  store i32 0, i32* %511, align 8
  br label %512

512:                                              ; preds = %509, %508, %466, %420, %380, %349, %120
  %513 = load i32, i32* %3, align 4
  ret i32 %513
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
