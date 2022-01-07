; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfl_filt_conv_wchar_sjis_mobile.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfl_filt_conv_wchar_sjis_mobile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i32, i32 (i32, i32)*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@ucs_a1_jis_table_min = common dso_local global i32 0, align 4
@ucs_a1_jis_table_max = common dso_local global i32 0, align 4
@ucs_a1_jis_table = common dso_local global i32* null, align 8
@ucs_a2_jis_table_min = common dso_local global i32 0, align 4
@ucs_a2_jis_table_max = common dso_local global i32 0, align 4
@ucs_a2_jis_table = common dso_local global i32* null, align 8
@ucs_i_jis_table_min = common dso_local global i32 0, align 4
@ucs_i_jis_table_max = common dso_local global i32 0, align 4
@ucs_i_jis_table = common dso_local global i32* null, align 8
@ucs_r_jis_table_min = common dso_local global i32 0, align 4
@ucs_r_jis_table_max = common dso_local global i32 0, align 4
@ucs_r_jis_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_WINCP932 = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0208 = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0212 = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext1_ucs_table = common dso_local global i32* null, align 8
@cp932ext2_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext2_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext2_ucs_table = common dso_local global i32* null, align 8
@cp932ext3_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext3_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext3_ucs_table = common dso_local global i32* null, align 8
@mbfl_no_encoding_sjis_docomo = common dso_local global i64 0, align 8
@mbfl_no_encoding_sjis_kddi = common dso_local global i64 0, align 8
@mbfl_no_encoding_sjis_sb = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_sjis_mobile(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @ucs_a1_jis_table_max, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32*, i32** @ucs_a1_jis_table, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  br label %96

25:                                               ; preds = %13, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @ucs_a2_jis_table_max, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32*, i32** @ucs_a2_jis_table, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  br label %95

41:                                               ; preds = %29, %25
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @ucs_i_jis_table_min, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @ucs_i_jis_table_max, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32*, i32** @ucs_i_jis_table, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @ucs_i_jis_table_min, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %8, align 4
  br label %94

57:                                               ; preds = %45, %41
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @ucs_r_jis_table_min, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @ucs_r_jis_table_max, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32*, i32** @ucs_r_jis_table, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @ucs_r_jis_table_min, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  br label %93

73:                                               ; preds = %61, %57
  %74 = load i32, i32* %4, align 4
  %75 = icmp sge i32 %74, 57344
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 59224
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i32, i32* %4, align 4
  %81 = sub nsw i32 %80, 57344
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sdiv i32 %82, 94
  %84 = add nsw i32 %83, 127
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %8, align 4
  %86 = srem i32 %85, 94
  %87 = add nsw i32 %86, 33
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %6, align 4
  %89 = shl i32 %88, 8
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %79, %76, %73
  br label %93

93:                                               ; preds = %92, %65
  br label %94

94:                                               ; preds = %93, %49
  br label %95

95:                                               ; preds = %94, %33
  br label %96

96:                                               ; preds = %95, %17
  %97 = load i32, i32* %8, align 4
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %99, label %177

99:                                               ; preds = %96
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @MBFL_WCSPLANE_WINCP932, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %110 = and i32 %108, %109
  store i32 %110, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %176

111:                                              ; preds = %99
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %8, align 4
  br label %175

119:                                              ; preds = %111
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @MBFL_WCSPLANE_JIS0212, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %126 = and i32 %124, %125
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, 32896
  store i32 %128, i32* %8, align 4
  br label %174

129:                                              ; preds = %119
  %130 = load i32, i32* %4, align 4
  %131 = icmp eq i32 %130, 165
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 8559, i32* %8, align 4
  br label %173

133:                                              ; preds = %129
  %134 = load i32, i32* %4, align 4
  %135 = icmp eq i32 %134, 8254
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 8497, i32* %8, align 4
  br label %172

137:                                              ; preds = %133
  %138 = load i32, i32* %4, align 4
  %139 = icmp eq i32 %138, 65340
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 8512, i32* %8, align 4
  br label %171

141:                                              ; preds = %137
  %142 = load i32, i32* %4, align 4
  %143 = icmp eq i32 %142, 65374
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 8513, i32* %8, align 4
  br label %170

145:                                              ; preds = %141
  %146 = load i32, i32* %4, align 4
  %147 = icmp eq i32 %146, 8741
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 8514, i32* %8, align 4
  br label %169

149:                                              ; preds = %145
  %150 = load i32, i32* %4, align 4
  %151 = icmp eq i32 %150, 65293
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 8541, i32* %8, align 4
  br label %168

153:                                              ; preds = %149
  %154 = load i32, i32* %4, align 4
  %155 = icmp eq i32 %154, 65504
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 8561, i32* %8, align 4
  br label %167

157:                                              ; preds = %153
  %158 = load i32, i32* %4, align 4
  %159 = icmp eq i32 %158, 65505
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 8562, i32* %8, align 4
  br label %166

161:                                              ; preds = %157
  %162 = load i32, i32* %4, align 4
  %163 = icmp eq i32 %162, 65506
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 8780, i32* %8, align 4
  br label %165

165:                                              ; preds = %164, %161
  br label %166

166:                                              ; preds = %165, %160
  br label %167

167:                                              ; preds = %166, %156
  br label %168

168:                                              ; preds = %167, %152
  br label %169

169:                                              ; preds = %168, %148
  br label %170

170:                                              ; preds = %169, %144
  br label %171

171:                                              ; preds = %170, %140
  br label %172

172:                                              ; preds = %171, %136
  br label %173

173:                                              ; preds = %172, %132
  br label %174

174:                                              ; preds = %173, %123
  br label %175

175:                                              ; preds = %174, %115
  br label %176

176:                                              ; preds = %175, %107
  br label %177

177:                                              ; preds = %176, %96
  %178 = load i32, i32* %8, align 4
  %179 = icmp sle i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %8, align 4
  %182 = icmp sge i32 %181, 32896
  br i1 %182, label %183, label %288

183:                                              ; preds = %180
  %184 = load i32, i32* %9, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %288

186:                                              ; preds = %183, %177
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %187 = load i32, i32* @cp932ext1_ucs_table_max, align 4
  %188 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %189 = sub nsw i32 %187, %188
  store i32 %189, i32* %7, align 4
  br label %190

190:                                              ; preds = %211, %186
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %7, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %214

194:                                              ; preds = %190
  %195 = load i32, i32* %4, align 4
  %196 = load i32*, i32** @cp932ext1_ucs_table, align 8
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %195, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %194
  %203 = load i32, i32* %6, align 4
  %204 = sdiv i32 %203, 94
  %205 = add nsw i32 %204, 45
  %206 = shl i32 %205, 8
  %207 = load i32, i32* %6, align 4
  %208 = srem i32 %207, 94
  %209 = add nsw i32 %208, 33
  %210 = add nsw i32 %206, %209
  store i32 %210, i32* %8, align 4
  br label %214

211:                                              ; preds = %194
  %212 = load i32, i32* %6, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %6, align 4
  br label %190

214:                                              ; preds = %202, %190
  %215 = load i32, i32* %8, align 4
  %216 = icmp sle i32 %215, 0
  br i1 %216, label %217, label %246

217:                                              ; preds = %214
  store i32 0, i32* %6, align 4
  %218 = load i32, i32* @cp932ext2_ucs_table_max, align 4
  %219 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %220 = sub nsw i32 %218, %219
  store i32 %220, i32* %7, align 4
  br label %221

221:                                              ; preds = %242, %217
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %245

225:                                              ; preds = %221
  %226 = load i32, i32* %4, align 4
  %227 = load i32*, i32** @cp932ext2_ucs_table, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = icmp eq i32 %226, %231
  br i1 %232, label %233, label %242

233:                                              ; preds = %225
  %234 = load i32, i32* %6, align 4
  %235 = sdiv i32 %234, 94
  %236 = add nsw i32 %235, 147
  %237 = shl i32 %236, 8
  %238 = load i32, i32* %6, align 4
  %239 = srem i32 %238, 94
  %240 = add nsw i32 %239, 33
  %241 = add nsw i32 %237, %240
  store i32 %241, i32* %8, align 4
  br label %245

242:                                              ; preds = %225
  %243 = load i32, i32* %6, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %6, align 4
  br label %221

245:                                              ; preds = %233, %221
  br label %246

246:                                              ; preds = %245, %214
  %247 = load i32, i32* %8, align 4
  %248 = icmp sle i32 %247, 0
  br i1 %248, label %249, label %278

249:                                              ; preds = %246
  store i32 0, i32* %6, align 4
  %250 = load i32, i32* @cp932ext3_ucs_table_max, align 4
  %251 = load i32, i32* @cp932ext3_ucs_table_min, align 4
  %252 = sub nsw i32 %250, %251
  store i32 %252, i32* %7, align 4
  br label %253

253:                                              ; preds = %274, %249
  %254 = load i32, i32* %6, align 4
  %255 = load i32, i32* %7, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %277

257:                                              ; preds = %253
  %258 = load i32, i32* %4, align 4
  %259 = load i32*, i32** @cp932ext3_ucs_table, align 8
  %260 = load i32, i32* %6, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %258, %263
  br i1 %264, label %265, label %274

265:                                              ; preds = %257
  %266 = load i32, i32* %6, align 4
  %267 = sdiv i32 %266, 94
  %268 = add nsw i32 %267, 147
  %269 = shl i32 %268, 8
  %270 = load i32, i32* %6, align 4
  %271 = srem i32 %270, 94
  %272 = add nsw i32 %271, 33
  %273 = add nsw i32 %269, %272
  store i32 %273, i32* %8, align 4
  br label %277

274:                                              ; preds = %257
  %275 = load i32, i32* %6, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %6, align 4
  br label %253

277:                                              ; preds = %265, %253
  br label %278

278:                                              ; preds = %277, %246
  %279 = load i32, i32* %4, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  store i32 0, i32* %8, align 4
  br label %287

282:                                              ; preds = %278
  %283 = load i32, i32* %8, align 4
  %284 = icmp sle i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i32 -1, i32* %8, align 4
  br label %286

286:                                              ; preds = %285, %282
  br label %287

287:                                              ; preds = %286, %281
  br label %288

288:                                              ; preds = %287, %183, %180
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %289, i32 0, i32 4
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @mbfl_no_encoding_sjis_docomo, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %288
  %297 = load i32, i32* %4, align 4
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %299 = call i64 @mbfilter_unicode2sjis_emoji_docomo(i32 %297, i32* %8, %struct.TYPE_9__* %298)
  %300 = icmp sgt i64 %299, 0
  br i1 %300, label %327, label %301

301:                                              ; preds = %296, %288
  %302 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %302, i32 0, i32 4
  %304 = load %struct.TYPE_8__*, %struct.TYPE_8__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @mbfl_no_encoding_sjis_kddi, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %309, label %314

309:                                              ; preds = %301
  %310 = load i32, i32* %4, align 4
  %311 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %312 = call i64 @mbfilter_unicode2sjis_emoji_kddi(i32 %310, i32* %8, %struct.TYPE_9__* %311)
  %313 = icmp sgt i64 %312, 0
  br i1 %313, label %327, label %314

314:                                              ; preds = %309, %301
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %315, i32 0, i32 4
  %317 = load %struct.TYPE_8__*, %struct.TYPE_8__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @mbfl_no_encoding_sjis_sb, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %333

322:                                              ; preds = %314
  %323 = load i32, i32* %4, align 4
  %324 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %325 = call i64 @mbfilter_unicode2sjis_emoji_sb(i32 %323, i32* %8, %struct.TYPE_9__* %324)
  %326 = icmp sgt i64 %325, 0
  br i1 %326, label %327, label %333

327:                                              ; preds = %322, %309, %296
  %328 = load i32, i32* %6, align 4
  %329 = load i32, i32* %7, align 4
  %330 = load i32, i32* %8, align 4
  %331 = load i32, i32* %9, align 4
  %332 = call i32 @CODE2JIS(i32 %328, i32 %329, i32 %330, i32 %331)
  br label %333

333:                                              ; preds = %327, %322, %314
  %334 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp eq i32 %336, 1
  br i1 %337, label %338, label %345

338:                                              ; preds = %333
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = icmp sgt i64 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %338
  %344 = load i32, i32* %4, align 4
  store i32 %344, i32* %3, align 4
  br label %398

345:                                              ; preds = %338, %333
  %346 = load i32, i32* %8, align 4
  %347 = icmp sge i32 %346, 0
  br i1 %347, label %348, label %391

348:                                              ; preds = %345
  %349 = load i32, i32* %8, align 4
  %350 = icmp slt i32 %349, 256
  br i1 %350, label %351, label %361

351:                                              ; preds = %348
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 3
  %354 = load i32 (i32, i32)*, i32 (i32, i32)** %353, align 8
  %355 = load i32, i32* %8, align 4
  %356 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = call i32 %354(i32 %355, i32 %358)
  %360 = call i32 @CK(i32 %359)
  br label %390

361:                                              ; preds = %348
  %362 = load i32, i32* %8, align 4
  %363 = ashr i32 %362, 8
  %364 = and i32 %363, 255
  store i32 %364, i32* %6, align 4
  %365 = load i32, i32* %8, align 4
  %366 = and i32 %365, 255
  store i32 %366, i32* %7, align 4
  %367 = load i32, i32* %6, align 4
  %368 = load i32, i32* %7, align 4
  %369 = load i32, i32* %8, align 4
  %370 = load i32, i32* %9, align 4
  %371 = call i32 @SJIS_ENCODE(i32 %367, i32 %368, i32 %369, i32 %370)
  %372 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %372, i32 0, i32 3
  %374 = load i32 (i32, i32)*, i32 (i32, i32)** %373, align 8
  %375 = load i32, i32* %8, align 4
  %376 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = call i32 %374(i32 %375, i32 %378)
  %380 = call i32 @CK(i32 %379)
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 3
  %383 = load i32 (i32, i32)*, i32 (i32, i32)** %382, align 8
  %384 = load i32, i32* %9, align 4
  %385 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 8
  %388 = call i32 %383(i32 %384, i32 %387)
  %389 = call i32 @CK(i32 %388)
  br label %390

390:                                              ; preds = %361, %351
  br label %396

391:                                              ; preds = %345
  %392 = load i32, i32* %4, align 4
  %393 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %394 = call i32 @mbfl_filt_conv_illegal_output(i32 %392, %struct.TYPE_9__* %393)
  %395 = call i32 @CK(i32 %394)
  br label %396

396:                                              ; preds = %391, %390
  %397 = load i32, i32* %4, align 4
  store i32 %397, i32* %3, align 4
  br label %398

398:                                              ; preds = %396, %343
  %399 = load i32, i32* %3, align 4
  ret i32 %399
}

declare dso_local i64 @mbfilter_unicode2sjis_emoji_docomo(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @mbfilter_unicode2sjis_emoji_kddi(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @mbfilter_unicode2sjis_emoji_sb(i32, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @CODE2JIS(i32, i32, i32, i32) #1

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @SJIS_ENCODE(i32, i32, i32, i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
