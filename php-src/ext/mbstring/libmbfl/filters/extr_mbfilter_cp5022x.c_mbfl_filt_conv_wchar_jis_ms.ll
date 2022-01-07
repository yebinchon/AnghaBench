; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp5022x.c_mbfl_filt_conv_wchar_jis_ms.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp5022x.c_mbfl_filt_conv_wchar_jis_ms.c"
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
@MBFL_WCSPLANE_JIS0208 = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0212 = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext1_ucs_table = common dso_local global i32* null, align 8
@cp932ext2_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext2_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext2_ucs_table = common dso_local global i32* null, align 8
@cp932ext3_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext3_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext3_eucjp_table_size = common dso_local global i32 0, align 4
@cp932ext3_ucs_table = common dso_local global i32* null, align 8
@cp932ext3_eucjp_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_jis_ms(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ucs_a1_jis_table_max, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32*, i32** @ucs_a1_jis_table, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %24 = sub nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  br label %115

28:                                               ; preds = %16, %2
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @ucs_a2_jis_table_max, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32*, i32** @ucs_a2_jis_table, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %6, align 4
  br label %114

44:                                               ; preds = %32, %28
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @ucs_i_jis_table_min, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @ucs_i_jis_table_max, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32*, i32** @ucs_i_jis_table, align 8
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @ucs_i_jis_table_min, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %6, align 4
  br label %113

60:                                               ; preds = %48, %44
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @ucs_r_jis_table_min, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @ucs_r_jis_table_max, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32*, i32** @ucs_r_jis_table, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @ucs_r_jis_table_min, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %6, align 4
  br label %112

76:                                               ; preds = %64, %60
  %77 = load i32, i32* %3, align 4
  %78 = icmp sge i32 %77, 57344
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load i32, i32* %3, align 4
  %81 = icmp slt i32 %80, 58284
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i32, i32* %3, align 4
  %84 = sub nsw i32 %83, 57344
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sdiv i32 %85, 94
  %87 = add nsw i32 %86, 117
  %88 = shl i32 %87, 8
  %89 = load i32, i32* %6, align 4
  %90 = srem i32 %89, 94
  %91 = add nsw i32 %90, 33
  %92 = or i32 %88, %91
  store i32 %92, i32* %6, align 4
  br label %111

93:                                               ; preds = %79, %76
  %94 = load i32, i32* %3, align 4
  %95 = icmp sge i32 %94, 58284
  br i1 %95, label %96, label %110

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = icmp sle i32 %97, 59224
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load i32, i32* %3, align 4
  %101 = sub nsw i32 %100, 58284
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = sdiv i32 %102, 94
  %104 = add nsw i32 %103, 245
  %105 = shl i32 %104, 8
  %106 = load i32, i32* %6, align 4
  %107 = srem i32 %106, 94
  %108 = add nsw i32 %107, 161
  %109 = or i32 %105, %108
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %99, %96, %93
  br label %111

111:                                              ; preds = %110, %82
  br label %112

112:                                              ; preds = %111, %68
  br label %113

113:                                              ; preds = %112, %52
  br label %114

114:                                              ; preds = %113, %36
  br label %115

115:                                              ; preds = %114, %20
  %116 = load i32, i32* %6, align 4
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %118, label %187

118:                                              ; preds = %115
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = load i32, i32* %3, align 4
  %128 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %129 = and i32 %127, %128
  store i32 %129, i32* %6, align 4
  br label %186

130:                                              ; preds = %118
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @MBFL_WCSPLANE_JIS0212, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %137 = and i32 %135, %136
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = or i32 %138, 32896
  store i32 %139, i32* %6, align 4
  br label %185

140:                                              ; preds = %130
  %141 = load i32, i32* %3, align 4
  %142 = icmp eq i32 %141, 165
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 65628, i32* %6, align 4
  br label %184

144:                                              ; preds = %140
  %145 = load i32, i32* %3, align 4
  %146 = icmp eq i32 %145, 8254
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 65662, i32* %6, align 4
  br label %183

148:                                              ; preds = %144
  %149 = load i32, i32* %3, align 4
  %150 = icmp eq i32 %149, 65340
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 8512, i32* %6, align 4
  br label %182

152:                                              ; preds = %148
  %153 = load i32, i32* %3, align 4
  %154 = icmp eq i32 %153, 65374
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 8513, i32* %6, align 4
  br label %181

156:                                              ; preds = %152
  %157 = load i32, i32* %3, align 4
  %158 = icmp eq i32 %157, 8741
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 8514, i32* %6, align 4
  br label %180

160:                                              ; preds = %156
  %161 = load i32, i32* %3, align 4
  %162 = icmp eq i32 %161, 65293
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 8541, i32* %6, align 4
  br label %179

164:                                              ; preds = %160
  %165 = load i32, i32* %3, align 4
  %166 = icmp eq i32 %165, 65504
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 8561, i32* %6, align 4
  br label %178

168:                                              ; preds = %164
  %169 = load i32, i32* %3, align 4
  %170 = icmp eq i32 %169, 65505
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 8562, i32* %6, align 4
  br label %177

172:                                              ; preds = %168
  %173 = load i32, i32* %3, align 4
  %174 = icmp eq i32 %173, 65506
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 8780, i32* %6, align 4
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

183:                                              ; preds = %182, %147
  br label %184

184:                                              ; preds = %183, %143
  br label %185

185:                                              ; preds = %184, %134
  br label %186

186:                                              ; preds = %185, %126
  br label %187

187:                                              ; preds = %186, %115
  %188 = load i32, i32* %6, align 4
  %189 = icmp sle i32 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %6, align 4
  %192 = icmp sge i32 %191, 32896
  br i1 %192, label %193, label %314

193:                                              ; preds = %190
  %194 = load i32, i32* %6, align 4
  %195 = icmp slt i32 %194, 65536
  br i1 %195, label %196, label %314

196:                                              ; preds = %193, %187
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %197

197:                                              ; preds = %225, %196
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @cp932ext1_ucs_table_max, align 4
  %200 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %201 = sub nsw i32 %199, %200
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %228

203:                                              ; preds = %197
  %204 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %205 = sdiv i32 %204, 94
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %3, align 4
  %207 = load i32*, i32** @cp932ext1_ucs_table, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %206, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %203
  %214 = load i32, i32* %7, align 4
  %215 = sdiv i32 %214, 94
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %215, %216
  %218 = add nsw i32 %217, 33
  %219 = shl i32 %218, 8
  %220 = load i32, i32* %7, align 4
  %221 = srem i32 %220, 94
  %222 = add nsw i32 %221, 33
  %223 = add nsw i32 %219, %222
  store i32 %223, i32* %6, align 4
  br label %228

224:                                              ; preds = %203
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %7, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %7, align 4
  br label %197

228:                                              ; preds = %213, %197
  %229 = load i32, i32* %6, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %265

231:                                              ; preds = %228
  %232 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %233 = sdiv i32 %232, 94
  store i32 %233, i32* %9, align 4
  %234 = load i32, i32* @cp932ext2_ucs_table_max, align 4
  %235 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %236 = sub nsw i32 %234, %235
  store i32 %236, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %237

237:                                              ; preds = %261, %231
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %264

241:                                              ; preds = %237
  %242 = load i32, i32* %3, align 4
  %243 = load i32*, i32** @cp932ext2_ucs_table, align 8
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %242, %247
  br i1 %248, label %249, label %260

249:                                              ; preds = %241
  %250 = load i32, i32* %7, align 4
  %251 = sdiv i32 %250, 94
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %251, %252
  %254 = add nsw i32 %253, 33
  %255 = shl i32 %254, 8
  %256 = load i32, i32* %7, align 4
  %257 = srem i32 %256, 94
  %258 = add nsw i32 %257, 33
  %259 = add nsw i32 %255, %258
  store i32 %259, i32* %6, align 4
  br label %264

260:                                              ; preds = %241
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %7, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %7, align 4
  br label %237

264:                                              ; preds = %249, %237
  br label %265

265:                                              ; preds = %264, %228
  %266 = load i32, i32* %6, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %304

268:                                              ; preds = %265
  %269 = load i32, i32* @cp932ext3_ucs_table_max, align 4
  %270 = load i32, i32* @cp932ext3_ucs_table_min, align 4
  %271 = sub nsw i32 %269, %270
  store i32 %271, i32* %11, align 4
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* @cp932ext3_eucjp_table_size, align 4
  %274 = icmp sgt i32 %272, %273
  br i1 %274, label %275, label %277

275:                                              ; preds = %268
  %276 = load i32, i32* @cp932ext3_eucjp_table_size, align 4
  br label %279

277:                                              ; preds = %268
  %278 = load i32, i32* %11, align 4
  br label %279

279:                                              ; preds = %277, %275
  %280 = phi i32 [ %276, %275 ], [ %278, %277 ]
  store i32 %280, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %281

281:                                              ; preds = %300, %279
  %282 = load i32, i32* %7, align 4
  %283 = load i32, i32* %12, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %303

285:                                              ; preds = %281
  %286 = load i32, i32* %3, align 4
  %287 = load i32*, i32** @cp932ext3_ucs_table, align 8
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %286, %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %285
  %294 = load i32*, i32** @cp932ext3_eucjp_table, align 8
  %295 = load i32, i32* %7, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %6, align 4
  br label %303

299:                                              ; preds = %285
  br label %300

300:                                              ; preds = %299
  %301 = load i32, i32* %7, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %7, align 4
  br label %281

303:                                              ; preds = %293, %281
  br label %304

304:                                              ; preds = %303, %265
  %305 = load i32, i32* %3, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  store i32 0, i32* %6, align 4
  br label %313

308:                                              ; preds = %304
  %309 = load i32, i32* %6, align 4
  %310 = icmp sle i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %308
  store i32 -1, i32* %6, align 4
  br label %312

312:                                              ; preds = %311, %308
  br label %313

313:                                              ; preds = %312, %307
  br label %314

314:                                              ; preds = %313, %193, %190
  %315 = load i32, i32* %6, align 4
  %316 = icmp sge i32 %315, 0
  br i1 %316, label %317, label %582

317:                                              ; preds = %314
  %318 = load i32, i32* %6, align 4
  %319 = icmp slt i32 %318, 128
  br i1 %319, label %320, label %363

320:                                              ; preds = %317
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = and i32 %323, 65280
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %351

326:                                              ; preds = %320
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 2
  %329 = load i32 (i32, i32)*, i32 (i32, i32)** %328, align 8
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call i32 %329(i32 27, i32 %332)
  %334 = call i32 @CK(i32 %333)
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 2
  %337 = load i32 (i32, i32)*, i32 (i32, i32)** %336, align 8
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = call i32 %337(i32 40, i32 %340)
  %342 = call i32 @CK(i32 %341)
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 2
  %345 = load i32 (i32, i32)*, i32 (i32, i32)** %344, align 8
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = call i32 %345(i32 66, i32 %348)
  %350 = call i32 @CK(i32 %349)
  br label %351

351:                                              ; preds = %326, %320
  %352 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 0
  store i32 0, i32* %353, align 8
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 2
  %356 = load i32 (i32, i32)*, i32 (i32, i32)** %355, align 8
  %357 = load i32, i32* %6, align 4
  %358 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = call i32 %356(i32 %357, i32 %360)
  %362 = call i32 @CK(i32 %361)
  br label %581

363:                                              ; preds = %317
  %364 = load i32, i32* %6, align 4
  %365 = icmp slt i32 %364, 256
  br i1 %365, label %366, label %410

366:                                              ; preds = %363
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = and i32 %369, 65280
  %371 = icmp ne i32 %370, 256
  br i1 %371, label %372, label %397

372:                                              ; preds = %366
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 2
  %375 = load i32 (i32, i32)*, i32 (i32, i32)** %374, align 8
  %376 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = call i32 %375(i32 27, i32 %378)
  %380 = call i32 @CK(i32 %379)
  %381 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 2
  %383 = load i32 (i32, i32)*, i32 (i32, i32)** %382, align 8
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = call i32 %383(i32 40, i32 %386)
  %388 = call i32 @CK(i32 %387)
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 2
  %391 = load i32 (i32, i32)*, i32 (i32, i32)** %390, align 8
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = call i32 %391(i32 73, i32 %394)
  %396 = call i32 @CK(i32 %395)
  br label %397

397:                                              ; preds = %372, %366
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 0
  store i32 256, i32* %399, align 8
  %400 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 2
  %402 = load i32 (i32, i32)*, i32 (i32, i32)** %401, align 8
  %403 = load i32, i32* %6, align 4
  %404 = and i32 %403, 127
  %405 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = call i32 %402(i32 %404, i32 %407)
  %409 = call i32 @CK(i32 %408)
  br label %580

410:                                              ; preds = %363
  %411 = load i32, i32* %6, align 4
  %412 = icmp slt i32 %411, 32896
  br i1 %412, label %413, label %468

413:                                              ; preds = %410
  %414 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = and i32 %416, 65280
  %418 = icmp ne i32 %417, 512
  br i1 %418, label %419, label %444

419:                                              ; preds = %413
  %420 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 2
  %422 = load i32 (i32, i32)*, i32 (i32, i32)** %421, align 8
  %423 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = call i32 %422(i32 27, i32 %425)
  %427 = call i32 @CK(i32 %426)
  %428 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 2
  %430 = load i32 (i32, i32)*, i32 (i32, i32)** %429, align 8
  %431 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = call i32 %430(i32 36, i32 %433)
  %435 = call i32 @CK(i32 %434)
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 2
  %438 = load i32 (i32, i32)*, i32 (i32, i32)** %437, align 8
  %439 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = call i32 %438(i32 66, i32 %441)
  %443 = call i32 @CK(i32 %442)
  br label %444

444:                                              ; preds = %419, %413
  %445 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 0
  store i32 512, i32* %446, align 8
  %447 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %448 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %447, i32 0, i32 2
  %449 = load i32 (i32, i32)*, i32 (i32, i32)** %448, align 8
  %450 = load i32, i32* %6, align 4
  %451 = ashr i32 %450, 8
  %452 = and i32 %451, 127
  %453 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = call i32 %449(i32 %452, i32 %455)
  %457 = call i32 @CK(i32 %456)
  %458 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %458, i32 0, i32 2
  %460 = load i32 (i32, i32)*, i32 (i32, i32)** %459, align 8
  %461 = load i32, i32* %6, align 4
  %462 = and i32 %461, 127
  %463 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %464 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = call i32 %460(i32 %462, i32 %465)
  %467 = call i32 @CK(i32 %466)
  br label %579

468:                                              ; preds = %410
  %469 = load i32, i32* %6, align 4
  %470 = icmp slt i32 %469, 65536
  br i1 %470, label %471, label %534

471:                                              ; preds = %468
  %472 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = and i32 %474, 65280
  %476 = icmp ne i32 %475, 768
  br i1 %476, label %477, label %510

477:                                              ; preds = %471
  %478 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %479 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %478, i32 0, i32 2
  %480 = load i32 (i32, i32)*, i32 (i32, i32)** %479, align 8
  %481 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %482 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 4
  %484 = call i32 %480(i32 27, i32 %483)
  %485 = call i32 @CK(i32 %484)
  %486 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %487 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %486, i32 0, i32 2
  %488 = load i32 (i32, i32)*, i32 (i32, i32)** %487, align 8
  %489 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %490 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = call i32 %488(i32 36, i32 %491)
  %493 = call i32 @CK(i32 %492)
  %494 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %495 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %494, i32 0, i32 2
  %496 = load i32 (i32, i32)*, i32 (i32, i32)** %495, align 8
  %497 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %498 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 4
  %500 = call i32 %496(i32 40, i32 %499)
  %501 = call i32 @CK(i32 %500)
  %502 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %503 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %502, i32 0, i32 2
  %504 = load i32 (i32, i32)*, i32 (i32, i32)** %503, align 8
  %505 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %506 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  %508 = call i32 %504(i32 68, i32 %507)
  %509 = call i32 @CK(i32 %508)
  br label %510

510:                                              ; preds = %477, %471
  %511 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %512 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %511, i32 0, i32 0
  store i32 768, i32* %512, align 8
  %513 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %514 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %513, i32 0, i32 2
  %515 = load i32 (i32, i32)*, i32 (i32, i32)** %514, align 8
  %516 = load i32, i32* %6, align 4
  %517 = ashr i32 %516, 8
  %518 = and i32 %517, 127
  %519 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %520 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = call i32 %515(i32 %518, i32 %521)
  %523 = call i32 @CK(i32 %522)
  %524 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %525 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %524, i32 0, i32 2
  %526 = load i32 (i32, i32)*, i32 (i32, i32)** %525, align 8
  %527 = load i32, i32* %6, align 4
  %528 = and i32 %527, 127
  %529 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %530 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = call i32 %526(i32 %528, i32 %531)
  %533 = call i32 @CK(i32 %532)
  br label %578

534:                                              ; preds = %468
  %535 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %536 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = and i32 %537, 65280
  %539 = icmp ne i32 %538, 1024
  br i1 %539, label %540, label %565

540:                                              ; preds = %534
  %541 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %542 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %541, i32 0, i32 2
  %543 = load i32 (i32, i32)*, i32 (i32, i32)** %542, align 8
  %544 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %545 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 4
  %547 = call i32 %543(i32 27, i32 %546)
  %548 = call i32 @CK(i32 %547)
  %549 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %550 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %549, i32 0, i32 2
  %551 = load i32 (i32, i32)*, i32 (i32, i32)** %550, align 8
  %552 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %553 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 4
  %555 = call i32 %551(i32 40, i32 %554)
  %556 = call i32 @CK(i32 %555)
  %557 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %558 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %557, i32 0, i32 2
  %559 = load i32 (i32, i32)*, i32 (i32, i32)** %558, align 8
  %560 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %561 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 4
  %563 = call i32 %559(i32 74, i32 %562)
  %564 = call i32 @CK(i32 %563)
  br label %565

565:                                              ; preds = %540, %534
  %566 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %567 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %566, i32 0, i32 0
  store i32 1024, i32* %567, align 8
  %568 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %569 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %568, i32 0, i32 2
  %570 = load i32 (i32, i32)*, i32 (i32, i32)** %569, align 8
  %571 = load i32, i32* %6, align 4
  %572 = and i32 %571, 127
  %573 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %574 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 4
  %576 = call i32 %570(i32 %572, i32 %575)
  %577 = call i32 @CK(i32 %576)
  br label %578

578:                                              ; preds = %565, %510
  br label %579

579:                                              ; preds = %578, %444
  br label %580

580:                                              ; preds = %579, %397
  br label %581

581:                                              ; preds = %580, %351
  br label %587

582:                                              ; preds = %314
  %583 = load i32, i32* %3, align 4
  %584 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %585 = call i32 @mbfl_filt_conv_illegal_output(i32 %583, %struct.TYPE_4__* %584)
  %586 = call i32 @CK(i32 %585)
  br label %587

587:                                              ; preds = %582, %581
  %588 = load i32, i32* %3, align 4
  ret i32 %588
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
