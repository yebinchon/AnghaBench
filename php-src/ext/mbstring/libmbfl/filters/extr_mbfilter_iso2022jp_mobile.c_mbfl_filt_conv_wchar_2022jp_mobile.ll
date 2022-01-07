; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022jp_mobile.c_mbfl_filt_conv_wchar_2022jp_mobile.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022jp_mobile.c_mbfl_filt_conv_wchar_2022jp_mobile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32 (i32, i32)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

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
@mbfl_no_encoding_2022jp_kddi = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_2022jp_mobile(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
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
  %182 = icmp sge i32 %181, 41377
  br i1 %182, label %183, label %224

183:                                              ; preds = %180
  %184 = load i32, i32* %9, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %224

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
  %215 = load i32, i32* %4, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  store i32 0, i32* %8, align 4
  br label %223

218:                                              ; preds = %214
  %219 = load i32, i32* %8, align 4
  %220 = icmp sle i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store i32 -1, i32* %8, align 4
  br label %222

222:                                              ; preds = %221, %218
  br label %223

223:                                              ; preds = %222, %217
  br label %224

224:                                              ; preds = %223, %183, %180
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 4
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @mbfl_no_encoding_2022jp_kddi, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %245

232:                                              ; preds = %224
  %233 = load i32, i32* %4, align 4
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %235 = call i64 @mbfilter_unicode2sjis_emoji_kddi(i32 %233, i32* %8, %struct.TYPE_7__* %234)
  %236 = icmp sgt i64 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %232
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* %8, align 4
  %241 = load i32, i32* %9, align 4
  %242 = call i32 @CODE2JIS(i32 %238, i32 %239, i32 %240, i32 %241)
  %243 = load i32, i32* %8, align 4
  %244 = sub nsw i32 %243, 5632
  store i32 %244, i32* %8, align 4
  br label %245

245:                                              ; preds = %237, %232, %224
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp eq i32 %248, 1
  br i1 %249, label %250, label %257

250:                                              ; preds = %245
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp sgt i64 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %250
  %256 = load i32, i32* %4, align 4
  store i32 %256, i32* %3, align 4
  br label %424

257:                                              ; preds = %250, %245
  %258 = load i32, i32* %8, align 4
  %259 = icmp sge i32 %258, 0
  br i1 %259, label %260, label %417

260:                                              ; preds = %257
  %261 = load i32, i32* %8, align 4
  %262 = icmp slt i32 %261, 128
  br i1 %262, label %263, label %306

263:                                              ; preds = %260
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, 65280
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %294

269:                                              ; preds = %263
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 3
  %272 = load i32 (i32, i32)*, i32 (i32, i32)** %271, align 8
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = call i32 %272(i32 27, i32 %275)
  %277 = call i32 @CK(i32 %276)
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 3
  %280 = load i32 (i32, i32)*, i32 (i32, i32)** %279, align 8
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i32 %280(i32 40, i32 %283)
  %285 = call i32 @CK(i32 %284)
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 3
  %288 = load i32 (i32, i32)*, i32 (i32, i32)** %287, align 8
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = call i32 %288(i32 66, i32 %291)
  %293 = call i32 @CK(i32 %292)
  br label %294

294:                                              ; preds = %269, %263
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 3
  %297 = load i32 (i32, i32)*, i32 (i32, i32)** %296, align 8
  %298 = load i32, i32* %8, align 4
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = call i32 %297(i32 %298, i32 %301)
  %303 = call i32 @CK(i32 %302)
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 0
  store i32 0, i32* %305, align 8
  br label %416

306:                                              ; preds = %260
  %307 = load i32, i32* %8, align 4
  %308 = icmp sgt i32 %307, 160
  br i1 %308, label %309, label %356

309:                                              ; preds = %306
  %310 = load i32, i32* %8, align 4
  %311 = icmp slt i32 %310, 224
  br i1 %311, label %312, label %356

312:                                              ; preds = %309
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = and i32 %315, 65280
  %317 = icmp ne i32 %316, 256
  br i1 %317, label %318, label %343

318:                                              ; preds = %312
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 3
  %321 = load i32 (i32, i32)*, i32 (i32, i32)** %320, align 8
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = call i32 %321(i32 27, i32 %324)
  %326 = call i32 @CK(i32 %325)
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 3
  %329 = load i32 (i32, i32)*, i32 (i32, i32)** %328, align 8
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = call i32 %329(i32 40, i32 %332)
  %334 = call i32 @CK(i32 %333)
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 3
  %337 = load i32 (i32, i32)*, i32 (i32, i32)** %336, align 8
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = call i32 %337(i32 73, i32 %340)
  %342 = call i32 @CK(i32 %341)
  br label %343

343:                                              ; preds = %318, %312
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 0
  store i32 256, i32* %345, align 8
  %346 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 3
  %348 = load i32 (i32, i32)*, i32 (i32, i32)** %347, align 8
  %349 = load i32, i32* %8, align 4
  %350 = and i32 %349, 127
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = call i32 %348(i32 %350, i32 %353)
  %355 = call i32 @CK(i32 %354)
  br label %415

356:                                              ; preds = %309, %306
  %357 = load i32, i32* %8, align 4
  %358 = icmp slt i32 %357, 32383
  br i1 %358, label %359, label %414

359:                                              ; preds = %356
  %360 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = and i32 %362, 65280
  %364 = icmp ne i32 %363, 512
  br i1 %364, label %365, label %390

365:                                              ; preds = %359
  %366 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 3
  %368 = load i32 (i32, i32)*, i32 (i32, i32)** %367, align 8
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = call i32 %368(i32 27, i32 %371)
  %373 = call i32 @CK(i32 %372)
  %374 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 3
  %376 = load i32 (i32, i32)*, i32 (i32, i32)** %375, align 8
  %377 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = call i32 %376(i32 36, i32 %379)
  %381 = call i32 @CK(i32 %380)
  %382 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 3
  %384 = load i32 (i32, i32)*, i32 (i32, i32)** %383, align 8
  %385 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 2
  %387 = load i32, i32* %386, align 8
  %388 = call i32 %384(i32 66, i32 %387)
  %389 = call i32 @CK(i32 %388)
  br label %390

390:                                              ; preds = %365, %359
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 0
  store i32 512, i32* %392, align 8
  %393 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 3
  %395 = load i32 (i32, i32)*, i32 (i32, i32)** %394, align 8
  %396 = load i32, i32* %8, align 4
  %397 = ashr i32 %396, 8
  %398 = and i32 %397, 255
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = call i32 %395(i32 %398, i32 %401)
  %403 = call i32 @CK(i32 %402)
  %404 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 3
  %406 = load i32 (i32, i32)*, i32 (i32, i32)** %405, align 8
  %407 = load i32, i32* %8, align 4
  %408 = and i32 %407, 127
  %409 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = call i32 %406(i32 %408, i32 %411)
  %413 = call i32 @CK(i32 %412)
  br label %414

414:                                              ; preds = %390, %356
  br label %415

415:                                              ; preds = %414, %343
  br label %416

416:                                              ; preds = %415, %294
  br label %422

417:                                              ; preds = %257
  %418 = load i32, i32* %4, align 4
  %419 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %420 = call i32 @mbfl_filt_conv_illegal_output(i32 %418, %struct.TYPE_7__* %419)
  %421 = call i32 @CK(i32 %420)
  br label %422

422:                                              ; preds = %417, %416
  %423 = load i32, i32* %4, align 4
  store i32 %423, i32* %3, align 4
  br label %424

424:                                              ; preds = %422, %255
  %425 = load i32, i32* %3, align 4
  ret i32 %425
}

declare dso_local i64 @mbfilter_unicode2sjis_emoji_kddi(i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @CODE2JIS(i32, i32, i32, i32) #1

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
