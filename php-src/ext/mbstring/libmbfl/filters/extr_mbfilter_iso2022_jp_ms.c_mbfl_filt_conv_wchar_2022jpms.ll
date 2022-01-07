; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022_jp_ms.c_mbfl_filt_conv_wchar_2022jpms.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022_jp_ms.c_mbfl_filt_conv_wchar_2022jpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 (i32, i32)* }

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
@cp932ext3_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext3_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext3_ucs_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_2022jpms(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ucs_a1_jis_table_max, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32*, i32** @ucs_a1_jis_table, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %95

24:                                               ; preds = %12, %2
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ucs_a2_jis_table_max, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32*, i32** @ucs_a2_jis_table, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  br label %94

40:                                               ; preds = %28, %24
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @ucs_i_jis_table_min, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @ucs_i_jis_table_max, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32*, i32** @ucs_i_jis_table, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @ucs_i_jis_table_min, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  br label %93

56:                                               ; preds = %44, %40
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @ucs_r_jis_table_min, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @ucs_r_jis_table_max, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32*, i32** @ucs_r_jis_table, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @ucs_r_jis_table_min, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  br label %92

72:                                               ; preds = %60, %56
  %73 = load i32, i32* %3, align 4
  %74 = icmp sge i32 %73, 57344
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load i32, i32* %3, align 4
  %77 = icmp slt i32 %76, 59224
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = sub nsw i32 %79, 57344
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sdiv i32 %81, 94
  %83 = add nsw i32 %82, 127
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %7, align 4
  %85 = srem i32 %84, 94
  %86 = add nsw i32 %85, 33
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %5, align 4
  %88 = shl i32 %87, 8
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %78, %75, %72
  br label %92

92:                                               ; preds = %91, %64
  br label %93

93:                                               ; preds = %92, %48
  br label %94

94:                                               ; preds = %93, %32
  br label %95

95:                                               ; preds = %94, %16
  %96 = load i32, i32* %7, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %176

98:                                               ; preds = %95
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @MBFL_WCSPLANE_WINCP932, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %175

110:                                              ; preds = %98
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %7, align 4
  br label %174

118:                                              ; preds = %110
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @MBFL_WCSPLANE_JIS0212, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %125 = and i32 %123, %124
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, 32896
  store i32 %127, i32* %7, align 4
  br label %173

128:                                              ; preds = %118
  %129 = load i32, i32* %3, align 4
  %130 = icmp eq i32 %129, 165
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 8559, i32* %7, align 4
  br label %172

132:                                              ; preds = %128
  %133 = load i32, i32* %3, align 4
  %134 = icmp eq i32 %133, 8254
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 8497, i32* %7, align 4
  br label %171

136:                                              ; preds = %132
  %137 = load i32, i32* %3, align 4
  %138 = icmp eq i32 %137, 65340
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 8512, i32* %7, align 4
  br label %170

140:                                              ; preds = %136
  %141 = load i32, i32* %3, align 4
  %142 = icmp eq i32 %141, 65374
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 8513, i32* %7, align 4
  br label %169

144:                                              ; preds = %140
  %145 = load i32, i32* %3, align 4
  %146 = icmp eq i32 %145, 8741
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 8514, i32* %7, align 4
  br label %168

148:                                              ; preds = %144
  %149 = load i32, i32* %3, align 4
  %150 = icmp eq i32 %149, 65293
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 8541, i32* %7, align 4
  br label %167

152:                                              ; preds = %148
  %153 = load i32, i32* %3, align 4
  %154 = icmp eq i32 %153, 65504
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 8561, i32* %7, align 4
  br label %166

156:                                              ; preds = %152
  %157 = load i32, i32* %3, align 4
  %158 = icmp eq i32 %157, 65505
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 8562, i32* %7, align 4
  br label %165

160:                                              ; preds = %156
  %161 = load i32, i32* %3, align 4
  %162 = icmp eq i32 %161, 65506
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 8780, i32* %7, align 4
  br label %164

164:                                              ; preds = %163, %160
  br label %165

165:                                              ; preds = %164, %159
  br label %166

166:                                              ; preds = %165, %155
  br label %167

167:                                              ; preds = %166, %151
  br label %168

168:                                              ; preds = %167, %147
  br label %169

169:                                              ; preds = %168, %143
  br label %170

170:                                              ; preds = %169, %139
  br label %171

171:                                              ; preds = %170, %135
  br label %172

172:                                              ; preds = %171, %131
  br label %173

173:                                              ; preds = %172, %122
  br label %174

174:                                              ; preds = %173, %114
  br label %175

175:                                              ; preds = %174, %106
  br label %176

176:                                              ; preds = %175, %95
  %177 = load i32, i32* %7, align 4
  %178 = icmp sle i32 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %7, align 4
  %181 = icmp sge i32 %180, 41377
  br i1 %181, label %182, label %249

182:                                              ; preds = %179
  %183 = load i32, i32* %8, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %249

185:                                              ; preds = %182, %176
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %186 = load i32, i32* @cp932ext1_ucs_table_max, align 4
  %187 = load i32, i32* @cp932ext1_ucs_table_min, align 4
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
  %195 = load i32*, i32** @cp932ext1_ucs_table, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %194, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %193
  %202 = load i32, i32* %5, align 4
  %203 = sdiv i32 %202, 94
  %204 = add nsw i32 %203, 45
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
  %214 = load i32, i32* %7, align 4
  %215 = icmp sle i32 %214, 0
  br i1 %215, label %216, label %239

216:                                              ; preds = %213
  store i32 0, i32* %5, align 4
  %217 = load i32, i32* @cp932ext3_ucs_table_max, align 4
  %218 = load i32, i32* @cp932ext3_ucs_table_min, align 4
  %219 = sub nsw i32 %217, %218
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %235, %216
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %238

224:                                              ; preds = %220
  %225 = load i32, i32* %3, align 4
  %226 = load i32*, i32** @cp932ext3_ucs_table, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %225, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %224
  %233 = load i32, i32* %5, align 4
  %234 = call i32 @cp932ext3_cp932ext2_jis(i32 %233)
  store i32 %234, i32* %7, align 4
  br label %238

235:                                              ; preds = %224
  %236 = load i32, i32* %5, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %5, align 4
  br label %220

238:                                              ; preds = %232, %220
  br label %239

239:                                              ; preds = %238, %213
  %240 = load i32, i32* %3, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  store i32 0, i32* %7, align 4
  br label %248

243:                                              ; preds = %239
  %244 = load i32, i32* %7, align 4
  %245 = icmp sle i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  store i32 -1, i32* %7, align 4
  br label %247

247:                                              ; preds = %246, %243
  br label %248

248:                                              ; preds = %247, %242
  br label %249

249:                                              ; preds = %248, %182, %179
  %250 = load i32, i32* %7, align 4
  %251 = icmp sge i32 %250, 0
  br i1 %251, label %252, label %477

252:                                              ; preds = %249
  %253 = load i32, i32* %7, align 4
  %254 = icmp slt i32 %253, 128
  br i1 %254, label %255, label %298

255:                                              ; preds = %252
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = and i32 %258, 65280
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %286

261:                                              ; preds = %255
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 2
  %264 = load i32 (i32, i32)*, i32 (i32, i32)** %263, align 8
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 %264(i32 27, i32 %267)
  %269 = call i32 @CK(i32 %268)
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 2
  %272 = load i32 (i32, i32)*, i32 (i32, i32)** %271, align 8
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 %272(i32 40, i32 %275)
  %277 = call i32 @CK(i32 %276)
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 2
  %280 = load i32 (i32, i32)*, i32 (i32, i32)** %279, align 8
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 %280(i32 66, i32 %283)
  %285 = call i32 @CK(i32 %284)
  br label %286

286:                                              ; preds = %261, %255
  %287 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 2
  %289 = load i32 (i32, i32)*, i32 (i32, i32)** %288, align 8
  %290 = load i32, i32* %7, align 4
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 %289(i32 %290, i32 %293)
  %295 = call i32 @CK(i32 %294)
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 0
  store i32 0, i32* %297, align 8
  br label %476

298:                                              ; preds = %252
  %299 = load i32, i32* %7, align 4
  %300 = icmp sgt i32 %299, 160
  br i1 %300, label %301, label %348

301:                                              ; preds = %298
  %302 = load i32, i32* %7, align 4
  %303 = icmp slt i32 %302, 224
  br i1 %303, label %304, label %348

304:                                              ; preds = %301
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = and i32 %307, 65280
  %309 = icmp ne i32 %308, 256
  br i1 %309, label %310, label %335

310:                                              ; preds = %304
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 2
  %313 = load i32 (i32, i32)*, i32 (i32, i32)** %312, align 8
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = call i32 %313(i32 27, i32 %316)
  %318 = call i32 @CK(i32 %317)
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 2
  %321 = load i32 (i32, i32)*, i32 (i32, i32)** %320, align 8
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = call i32 %321(i32 40, i32 %324)
  %326 = call i32 @CK(i32 %325)
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 2
  %329 = load i32 (i32, i32)*, i32 (i32, i32)** %328, align 8
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call i32 %329(i32 73, i32 %332)
  %334 = call i32 @CK(i32 %333)
  br label %335

335:                                              ; preds = %310, %304
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  store i32 256, i32* %337, align 8
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 2
  %340 = load i32 (i32, i32)*, i32 (i32, i32)** %339, align 8
  %341 = load i32, i32* %7, align 4
  %342 = and i32 %341, 127
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = call i32 %340(i32 %342, i32 %345)
  %347 = call i32 @CK(i32 %346)
  br label %475

348:                                              ; preds = %301, %298
  %349 = load i32, i32* %7, align 4
  %350 = icmp slt i32 %349, 32383
  br i1 %350, label %351, label %406

351:                                              ; preds = %348
  %352 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = and i32 %354, 65280
  %356 = icmp ne i32 %355, 512
  br i1 %356, label %357, label %382

357:                                              ; preds = %351
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 2
  %360 = load i32 (i32, i32)*, i32 (i32, i32)** %359, align 8
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = call i32 %360(i32 27, i32 %363)
  %365 = call i32 @CK(i32 %364)
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 2
  %368 = load i32 (i32, i32)*, i32 (i32, i32)** %367, align 8
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = call i32 %368(i32 36, i32 %371)
  %373 = call i32 @CK(i32 %372)
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 2
  %376 = load i32 (i32, i32)*, i32 (i32, i32)** %375, align 8
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = call i32 %376(i32 66, i32 %379)
  %381 = call i32 @CK(i32 %380)
  br label %382

382:                                              ; preds = %357, %351
  %383 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 0
  store i32 512, i32* %384, align 8
  %385 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 2
  %387 = load i32 (i32, i32)*, i32 (i32, i32)** %386, align 8
  %388 = load i32, i32* %7, align 4
  %389 = ashr i32 %388, 8
  %390 = and i32 %389, 255
  %391 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = call i32 %387(i32 %390, i32 %393)
  %395 = call i32 @CK(i32 %394)
  %396 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 2
  %398 = load i32 (i32, i32)*, i32 (i32, i32)** %397, align 8
  %399 = load i32, i32* %7, align 4
  %400 = and i32 %399, 127
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = call i32 %398(i32 %400, i32 %403)
  %405 = call i32 @CK(i32 %404)
  br label %474

406:                                              ; preds = %348
  %407 = load i32, i32* %7, align 4
  %408 = icmp slt i32 %407, 37503
  br i1 %408, label %409, label %473

409:                                              ; preds = %406
  %410 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = and i32 %412, 65280
  %414 = icmp ne i32 %413, 2048
  br i1 %414, label %415, label %448

415:                                              ; preds = %409
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i32 0, i32 2
  %418 = load i32 (i32, i32)*, i32 (i32, i32)** %417, align 8
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = call i32 %418(i32 27, i32 %421)
  %423 = call i32 @CK(i32 %422)
  %424 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 2
  %426 = load i32 (i32, i32)*, i32 (i32, i32)** %425, align 8
  %427 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %428 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = call i32 %426(i32 36, i32 %429)
  %431 = call i32 @CK(i32 %430)
  %432 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %433 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %432, i32 0, i32 2
  %434 = load i32 (i32, i32)*, i32 (i32, i32)** %433, align 8
  %435 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = call i32 %434(i32 40, i32 %437)
  %439 = call i32 @CK(i32 %438)
  %440 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i32 0, i32 2
  %442 = load i32 (i32, i32)*, i32 (i32, i32)** %441, align 8
  %443 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = call i32 %442(i32 63, i32 %445)
  %447 = call i32 @CK(i32 %446)
  br label %448

448:                                              ; preds = %415, %409
  %449 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %449, i32 0, i32 0
  store i32 2048, i32* %450, align 8
  %451 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %451, i32 0, i32 2
  %453 = load i32 (i32, i32)*, i32 (i32, i32)** %452, align 8
  %454 = load i32, i32* %7, align 4
  %455 = ashr i32 %454, 8
  %456 = sub nsw i32 %455, 94
  %457 = and i32 %456, 127
  %458 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = call i32 %453(i32 %457, i32 %460)
  %462 = call i32 @CK(i32 %461)
  %463 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i32 0, i32 2
  %465 = load i32 (i32, i32)*, i32 (i32, i32)** %464, align 8
  %466 = load i32, i32* %7, align 4
  %467 = and i32 %466, 127
  %468 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %469 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = call i32 %465(i32 %467, i32 %470)
  %472 = call i32 @CK(i32 %471)
  br label %473

473:                                              ; preds = %448, %406
  br label %474

474:                                              ; preds = %473, %382
  br label %475

475:                                              ; preds = %474, %335
  br label %476

476:                                              ; preds = %475, %286
  br label %482

477:                                              ; preds = %249
  %478 = load i32, i32* %3, align 4
  %479 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %480 = call i32 @mbfl_filt_conv_illegal_output(i32 %478, %struct.TYPE_4__* %479)
  %481 = call i32 @CK(i32 %480)
  br label %482

482:                                              ; preds = %477, %476
  %483 = load i32, i32* %3, align 4
  ret i32 %483
}

declare dso_local i32 @cp932ext3_cp932ext2_jis(i32) #1

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
