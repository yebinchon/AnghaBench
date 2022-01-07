; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp51932.c_mbfl_filt_conv_wchar_cp51932.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp51932.c_mbfl_filt_conv_wchar_cp51932.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }

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
@cp932ext1_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext1_ucs_table = common dso_local global i32* null, align 8
@cp932ext2_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext2_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext2_ucs_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_cp51932(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ucs_a1_jis_table_max, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32*, i32** @ucs_a1_jis_table, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  br label %74

23:                                               ; preds = %11, %2
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ucs_a2_jis_table_max, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32*, i32** @ucs_a2_jis_table, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  br label %73

39:                                               ; preds = %27, %23
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ucs_i_jis_table_min, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @ucs_i_jis_table_max, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32*, i32** @ucs_i_jis_table, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @ucs_i_jis_table_min, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  br label %72

55:                                               ; preds = %43, %39
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @ucs_r_jis_table_min, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @ucs_r_jis_table_max, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32*, i32** @ucs_r_jis_table, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @ucs_r_jis_table_min, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %63, %59, %55
  br label %72

72:                                               ; preds = %71, %47
  br label %73

73:                                               ; preds = %72, %31
  br label %74

74:                                               ; preds = %73, %15
  %75 = load i32, i32* %7, align 4
  %76 = icmp sge i32 %75, 32896
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 -1, i32* %7, align 4
  br label %78

78:                                               ; preds = %77, %74
  %79 = load i32, i32* %7, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %81, label %235

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @MBFL_WCSPLANE_WINCP932, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %81
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp sge i32 %93, 29952
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 -1, i32* %7, align 4
  br label %96

96:                                               ; preds = %95, %89
  br label %225

97:                                               ; preds = %81
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %97
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %104 = and i32 %102, %103
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp sge i32 %105, 29952
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* %7, align 4
  %109 = icmp sle i32 %108, 30720
  br i1 %109, label %116, label %110

110:                                              ; preds = %107, %101
  %111 = load i32, i32* %7, align 4
  %112 = icmp sge i32 %111, 32000
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i32, i32* %7, align 4
  %115 = icmp sle i32 %114, 32256
  br i1 %115, label %116, label %117

116:                                              ; preds = %113, %107
  store i32 -1, i32* %7, align 4
  br label %117

117:                                              ; preds = %116, %113, %110
  br label %224

118:                                              ; preds = %97
  %119 = load i32, i32* %3, align 4
  %120 = icmp eq i32 %119, 165
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store i32 92, i32* %7, align 4
  br label %223

122:                                              ; preds = %118
  %123 = load i32, i32* %3, align 4
  %124 = icmp eq i32 %123, 8254
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 126, i32* %7, align 4
  br label %222

126:                                              ; preds = %122
  %127 = load i32, i32* %3, align 4
  %128 = icmp eq i32 %127, 65340
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 8512, i32* %7, align 4
  br label %221

130:                                              ; preds = %126
  %131 = load i32, i32* %3, align 4
  %132 = icmp eq i32 %131, 65374
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 8513, i32* %7, align 4
  br label %220

134:                                              ; preds = %130
  %135 = load i32, i32* %3, align 4
  %136 = icmp eq i32 %135, 8741
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 8514, i32* %7, align 4
  br label %219

138:                                              ; preds = %134
  %139 = load i32, i32* %3, align 4
  %140 = icmp eq i32 %139, 65293
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 8541, i32* %7, align 4
  br label %218

142:                                              ; preds = %138
  %143 = load i32, i32* %3, align 4
  %144 = icmp eq i32 %143, 65504
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 8561, i32* %7, align 4
  br label %217

146:                                              ; preds = %142
  %147 = load i32, i32* %3, align 4
  %148 = icmp eq i32 %147, 65505
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 8562, i32* %7, align 4
  br label %216

150:                                              ; preds = %146
  %151 = load i32, i32* %3, align 4
  %152 = icmp eq i32 %151, 65506
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 8780, i32* %7, align 4
  br label %215

154:                                              ; preds = %150
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %155 = load i32, i32* @cp932ext1_ucs_table_max, align 4
  %156 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %157 = sub nsw i32 %155, %156
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %179, %154
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %6, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %182

162:                                              ; preds = %158
  %163 = load i32, i32* %3, align 4
  %164 = load i32*, i32** @cp932ext1_ucs_table, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %163, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %162
  %171 = load i32, i32* %5, align 4
  %172 = sdiv i32 %171, 94
  %173 = add nsw i32 %172, 45
  %174 = shl i32 %173, 8
  %175 = load i32, i32* %5, align 4
  %176 = srem i32 %175, 94
  %177 = add nsw i32 %176, 33
  %178 = add nsw i32 %174, %177
  store i32 %178, i32* %7, align 4
  br label %182

179:                                              ; preds = %162
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %158

182:                                              ; preds = %170, %158
  %183 = load i32, i32* %7, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %214

185:                                              ; preds = %182
  store i32 0, i32* %5, align 4
  %186 = load i32, i32* @cp932ext2_ucs_table_max, align 4
  %187 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %188 = sub nsw i32 %186, %187
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %210, %185
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %213

193:                                              ; preds = %189
  %194 = load i32, i32* %3, align 4
  %195 = load i32*, i32** @cp932ext2_ucs_table, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %194, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %193
  %202 = load i32, i32* %5, align 4
  %203 = sdiv i32 %202, 94
  %204 = add nsw i32 %203, 121
  %205 = shl i32 %204, 8
  %206 = load i32, i32* %5, align 4
  %207 = srem i32 %206, 94
  %208 = add nsw i32 %207, 33
  %209 = add nsw i32 %205, %208
  store i32 %209, i32* %7, align 4
  br label %213

210:                                              ; preds = %193
  %211 = load i32, i32* %5, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %5, align 4
  br label %189

213:                                              ; preds = %201, %189
  br label %214

214:                                              ; preds = %213, %182
  br label %215

215:                                              ; preds = %214, %153
  br label %216

216:                                              ; preds = %215, %149
  br label %217

217:                                              ; preds = %216, %145
  br label %218

218:                                              ; preds = %217, %141
  br label %219

219:                                              ; preds = %218, %137
  br label %220

220:                                              ; preds = %219, %133
  br label %221

221:                                              ; preds = %220, %129
  br label %222

222:                                              ; preds = %221, %125
  br label %223

223:                                              ; preds = %222, %121
  br label %224

224:                                              ; preds = %223, %117
  br label %225

225:                                              ; preds = %224, %96
  %226 = load i32, i32* %3, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  store i32 0, i32* %7, align 4
  br label %234

229:                                              ; preds = %225
  %230 = load i32, i32* %7, align 4
  %231 = icmp sle i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  store i32 -1, i32* %7, align 4
  br label %233

233:                                              ; preds = %232, %229
  br label %234

234:                                              ; preds = %233, %228
  br label %235

235:                                              ; preds = %234, %78
  %236 = load i32, i32* %7, align 4
  %237 = icmp sge i32 %236, 0
  br i1 %237, label %238, label %307

238:                                              ; preds = %235
  %239 = load i32, i32* %7, align 4
  %240 = icmp slt i32 %239, 128
  br i1 %240, label %241, label %251

241:                                              ; preds = %238
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 1
  %244 = load i32 (i32, i32)*, i32 (i32, i32)** %243, align 8
  %245 = load i32, i32* %7, align 4
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 %244(i32 %245, i32 %248)
  %250 = call i32 @CK(i32 %249)
  br label %306

251:                                              ; preds = %238
  %252 = load i32, i32* %7, align 4
  %253 = icmp slt i32 %252, 256
  br i1 %253, label %254, label %272

254:                                              ; preds = %251
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 1
  %257 = load i32 (i32, i32)*, i32 (i32, i32)** %256, align 8
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 %257(i32 142, i32 %260)
  %262 = call i32 @CK(i32 %261)
  %263 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  %265 = load i32 (i32, i32)*, i32 (i32, i32)** %264, align 8
  %266 = load i32, i32* %7, align 4
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 %265(i32 %266, i32 %269)
  %271 = call i32 @CK(i32 %270)
  br label %305

272:                                              ; preds = %251
  %273 = load i32, i32* %7, align 4
  %274 = icmp slt i32 %273, 32896
  br i1 %274, label %275, label %299

275:                                              ; preds = %272
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 1
  %278 = load i32 (i32, i32)*, i32 (i32, i32)** %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = ashr i32 %279, 8
  %281 = and i32 %280, 255
  %282 = or i32 %281, 128
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 %278(i32 %282, i32 %285)
  %287 = call i32 @CK(i32 %286)
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 1
  %290 = load i32 (i32, i32)*, i32 (i32, i32)** %289, align 8
  %291 = load i32, i32* %7, align 4
  %292 = and i32 %291, 255
  %293 = or i32 %292, 128
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i32 %290(i32 %293, i32 %296)
  %298 = call i32 @CK(i32 %297)
  br label %304

299:                                              ; preds = %272
  %300 = load i32, i32* %3, align 4
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %302 = call i32 @mbfl_filt_conv_illegal_output(i32 %300, %struct.TYPE_4__* %301)
  %303 = call i32 @CK(i32 %302)
  br label %304

304:                                              ; preds = %299, %275
  br label %305

305:                                              ; preds = %304, %254
  br label %306

306:                                              ; preds = %305, %241
  br label %312

307:                                              ; preds = %235
  %308 = load i32, i32* %3, align 4
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %310 = call i32 @mbfl_filt_conv_illegal_output(i32 %308, %struct.TYPE_4__* %309)
  %311 = call i32 @CK(i32 %310)
  br label %312

312:                                              ; preds = %307, %306
  %313 = load i32, i32* %3, align 4
  ret i32 %313
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
