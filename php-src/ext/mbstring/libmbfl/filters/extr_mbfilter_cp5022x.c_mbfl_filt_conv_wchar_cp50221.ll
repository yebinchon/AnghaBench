; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp5022x.c_mbfl_filt_conv_wchar_cp50221.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp5022x.c_mbfl_filt_conv_wchar_cp50221.c"
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
define dso_local i32 @mbfl_filt_conv_wchar_cp50221(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @ucs_a1_jis_table_max, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32*, i32** @ucs_a1_jis_table, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %23 = sub nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  br label %114

27:                                               ; preds = %15, %2
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @ucs_a2_jis_table_max, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32*, i32** @ucs_a2_jis_table, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %5, align 4
  br label %113

43:                                               ; preds = %31, %27
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @ucs_i_jis_table_min, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @ucs_i_jis_table_max, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32*, i32** @ucs_i_jis_table, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @ucs_i_jis_table_min, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %5, align 4
  br label %112

59:                                               ; preds = %47, %43
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @ucs_r_jis_table_min, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @ucs_r_jis_table_max, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load i32*, i32** @ucs_r_jis_table, align 8
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @ucs_r_jis_table_min, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %5, align 4
  br label %111

75:                                               ; preds = %63, %59
  %76 = load i32, i32* %3, align 4
  %77 = icmp sge i32 %76, 57344
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = icmp slt i32 %79, 58284
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = sub nsw i32 %82, 57344
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = sdiv i32 %84, 94
  %86 = add nsw i32 %85, 117
  %87 = shl i32 %86, 8
  %88 = load i32, i32* %5, align 4
  %89 = srem i32 %88, 94
  %90 = add nsw i32 %89, 33
  %91 = or i32 %87, %90
  store i32 %91, i32* %5, align 4
  br label %110

92:                                               ; preds = %78, %75
  %93 = load i32, i32* %3, align 4
  %94 = icmp sge i32 %93, 58284
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = load i32, i32* %3, align 4
  %97 = icmp sle i32 %96, 59224
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load i32, i32* %3, align 4
  %100 = sub nsw i32 %99, 58284
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = sdiv i32 %101, 94
  %103 = add nsw i32 %102, 245
  %104 = shl i32 %103, 8
  %105 = load i32, i32* %5, align 4
  %106 = srem i32 %105, 94
  %107 = add nsw i32 %106, 161
  %108 = or i32 %104, %107
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %98, %95, %92
  br label %110

110:                                              ; preds = %109, %81
  br label %111

111:                                              ; preds = %110, %67
  br label %112

112:                                              ; preds = %111, %51
  br label %113

113:                                              ; preds = %112, %35
  br label %114

114:                                              ; preds = %113, %19
  %115 = load i32, i32* %5, align 4
  %116 = icmp sle i32 %115, 0
  br i1 %116, label %117, label %162

117:                                              ; preds = %114
  %118 = load i32, i32* %3, align 4
  %119 = icmp eq i32 %118, 165
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 65628, i32* %5, align 4
  br label %161

121:                                              ; preds = %117
  %122 = load i32, i32* %3, align 4
  %123 = icmp eq i32 %122, 8254
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 65662, i32* %5, align 4
  br label %160

125:                                              ; preds = %121
  %126 = load i32, i32* %3, align 4
  %127 = icmp eq i32 %126, 65340
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 8512, i32* %5, align 4
  br label %159

129:                                              ; preds = %125
  %130 = load i32, i32* %3, align 4
  %131 = icmp eq i32 %130, 65374
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  store i32 8513, i32* %5, align 4
  br label %158

133:                                              ; preds = %129
  %134 = load i32, i32* %3, align 4
  %135 = icmp eq i32 %134, 8741
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 8514, i32* %5, align 4
  br label %157

137:                                              ; preds = %133
  %138 = load i32, i32* %3, align 4
  %139 = icmp eq i32 %138, 65293
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 8541, i32* %5, align 4
  br label %156

141:                                              ; preds = %137
  %142 = load i32, i32* %3, align 4
  %143 = icmp eq i32 %142, 65504
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  store i32 8561, i32* %5, align 4
  br label %155

145:                                              ; preds = %141
  %146 = load i32, i32* %3, align 4
  %147 = icmp eq i32 %146, 65505
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 8562, i32* %5, align 4
  br label %154

149:                                              ; preds = %145
  %150 = load i32, i32* %3, align 4
  %151 = icmp eq i32 %150, 65506
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 8780, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %149
  br label %154

154:                                              ; preds = %153, %148
  br label %155

155:                                              ; preds = %154, %144
  br label %156

156:                                              ; preds = %155, %140
  br label %157

157:                                              ; preds = %156, %136
  br label %158

158:                                              ; preds = %157, %132
  br label %159

159:                                              ; preds = %158, %128
  br label %160

160:                                              ; preds = %159, %124
  br label %161

161:                                              ; preds = %160, %120
  br label %162

162:                                              ; preds = %161, %114
  %163 = load i32, i32* %5, align 4
  %164 = icmp sle i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %5, align 4
  %167 = icmp sge i32 %166, 32896
  br i1 %167, label %168, label %289

168:                                              ; preds = %165
  %169 = load i32, i32* %5, align 4
  %170 = icmp slt i32 %169, 65536
  br i1 %170, label %171, label %289

171:                                              ; preds = %168, %162
  store i32 -1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %172

172:                                              ; preds = %200, %171
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @cp932ext1_ucs_table_max, align 4
  %175 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %176 = sub nsw i32 %174, %175
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %203

178:                                              ; preds = %172
  %179 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %180 = sdiv i32 %179, 94
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %3, align 4
  %182 = load i32*, i32** @cp932ext1_ucs_table, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %181, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %178
  %189 = load i32, i32* %6, align 4
  %190 = sdiv i32 %189, 94
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %190, %191
  %193 = add nsw i32 %192, 33
  %194 = shl i32 %193, 8
  %195 = load i32, i32* %6, align 4
  %196 = srem i32 %195, 94
  %197 = add nsw i32 %196, 33
  %198 = add nsw i32 %194, %197
  store i32 %198, i32* %5, align 4
  br label %203

199:                                              ; preds = %178
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %6, align 4
  br label %172

203:                                              ; preds = %188, %172
  %204 = load i32, i32* %5, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %240

206:                                              ; preds = %203
  %207 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %208 = sdiv i32 %207, 94
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* @cp932ext2_ucs_table_max, align 4
  %210 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %211 = sub nsw i32 %209, %210
  store i32 %211, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %212

212:                                              ; preds = %236, %206
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* %9, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %239

216:                                              ; preds = %212
  %217 = load i32, i32* %3, align 4
  %218 = load i32*, i32** @cp932ext2_ucs_table, align 8
  %219 = load i32, i32* %6, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %217, %222
  br i1 %223, label %224, label %235

224:                                              ; preds = %216
  %225 = load i32, i32* %6, align 4
  %226 = sdiv i32 %225, 94
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %226, %227
  %229 = add nsw i32 %228, 33
  %230 = shl i32 %229, 8
  %231 = load i32, i32* %6, align 4
  %232 = srem i32 %231, 94
  %233 = add nsw i32 %232, 33
  %234 = add nsw i32 %230, %233
  store i32 %234, i32* %5, align 4
  br label %239

235:                                              ; preds = %216
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %6, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %6, align 4
  br label %212

239:                                              ; preds = %224, %212
  br label %240

240:                                              ; preds = %239, %203
  %241 = load i32, i32* %5, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %279

243:                                              ; preds = %240
  %244 = load i32, i32* @cp932ext3_ucs_table_max, align 4
  %245 = load i32, i32* @cp932ext3_ucs_table_min, align 4
  %246 = sub nsw i32 %244, %245
  store i32 %246, i32* %10, align 4
  %247 = load i32, i32* %10, align 4
  %248 = load i32, i32* @cp932ext3_eucjp_table_size, align 4
  %249 = icmp sgt i32 %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %243
  %251 = load i32, i32* @cp932ext3_eucjp_table_size, align 4
  br label %254

252:                                              ; preds = %243
  %253 = load i32, i32* %10, align 4
  br label %254

254:                                              ; preds = %252, %250
  %255 = phi i32 [ %251, %250 ], [ %253, %252 ]
  store i32 %255, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %256

256:                                              ; preds = %275, %254
  %257 = load i32, i32* %6, align 4
  %258 = load i32, i32* %11, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %278

260:                                              ; preds = %256
  %261 = load i32, i32* %3, align 4
  %262 = load i32*, i32** @cp932ext3_ucs_table, align 8
  %263 = load i32, i32* %6, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %261, %266
  br i1 %267, label %268, label %274

268:                                              ; preds = %260
  %269 = load i32*, i32** @cp932ext3_eucjp_table, align 8
  %270 = load i32, i32* %6, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  store i32 %273, i32* %5, align 4
  br label %278

274:                                              ; preds = %260
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %6, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %6, align 4
  br label %256

278:                                              ; preds = %268, %256
  br label %279

279:                                              ; preds = %278, %240
  %280 = load i32, i32* %3, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %279
  store i32 0, i32* %5, align 4
  br label %288

283:                                              ; preds = %279
  %284 = load i32, i32* %5, align 4
  %285 = icmp sle i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  store i32 -1, i32* %5, align 4
  br label %287

287:                                              ; preds = %286, %283
  br label %288

288:                                              ; preds = %287, %282
  br label %289

289:                                              ; preds = %288, %168, %165
  %290 = load i32, i32* %5, align 4
  %291 = icmp sge i32 %290, 0
  br i1 %291, label %292, label %502

292:                                              ; preds = %289
  %293 = load i32, i32* %5, align 4
  %294 = icmp slt i32 %293, 128
  br i1 %294, label %295, label %338

295:                                              ; preds = %292
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = and i32 %298, 65280
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %328

301:                                              ; preds = %295
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 2
  %304 = load i32 (i32, i32)*, i32 (i32, i32)** %303, align 8
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 %304(i32 27, i32 %307)
  %309 = call i32 @CK(i32 %308)
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 2
  %312 = load i32 (i32, i32)*, i32 (i32, i32)** %311, align 8
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = call i32 %312(i32 40, i32 %315)
  %317 = call i32 @CK(i32 %316)
  %318 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 2
  %320 = load i32 (i32, i32)*, i32 (i32, i32)** %319, align 8
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i32 %320(i32 66, i32 %323)
  %325 = call i32 @CK(i32 %324)
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 0
  store i32 0, i32* %327, align 8
  br label %328

328:                                              ; preds = %301, %295
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i32 0, i32 2
  %331 = load i32 (i32, i32)*, i32 (i32, i32)** %330, align 8
  %332 = load i32, i32* %5, align 4
  %333 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i32 %331(i32 %332, i32 %335)
  %337 = call i32 @CK(i32 %336)
  br label %501

338:                                              ; preds = %292
  %339 = load i32, i32* %5, align 4
  %340 = icmp sge i32 %339, 160
  br i1 %340, label %341, label %388

341:                                              ; preds = %338
  %342 = load i32, i32* %5, align 4
  %343 = icmp slt i32 %342, 224
  br i1 %343, label %344, label %388

344:                                              ; preds = %341
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = and i32 %347, 65280
  %349 = icmp ne i32 %348, 1280
  br i1 %349, label %350, label %377

350:                                              ; preds = %344
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 2
  %353 = load i32 (i32, i32)*, i32 (i32, i32)** %352, align 8
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = call i32 %353(i32 27, i32 %356)
  %358 = call i32 @CK(i32 %357)
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 2
  %361 = load i32 (i32, i32)*, i32 (i32, i32)** %360, align 8
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = call i32 %361(i32 40, i32 %364)
  %366 = call i32 @CK(i32 %365)
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 2
  %369 = load i32 (i32, i32)*, i32 (i32, i32)** %368, align 8
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = call i32 %369(i32 73, i32 %372)
  %374 = call i32 @CK(i32 %373)
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 0
  store i32 1280, i32* %376, align 8
  br label %377

377:                                              ; preds = %350, %344
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 2
  %380 = load i32 (i32, i32)*, i32 (i32, i32)** %379, align 8
  %381 = load i32, i32* %5, align 4
  %382 = sub nsw i32 %381, 128
  %383 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = call i32 %380(i32 %382, i32 %385)
  %387 = call i32 @CK(i32 %386)
  br label %500

388:                                              ; preds = %341, %338
  %389 = load i32, i32* %5, align 4
  %390 = icmp slt i32 %389, 32896
  br i1 %390, label %391, label %446

391:                                              ; preds = %388
  %392 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = and i32 %394, 65280
  %396 = icmp ne i32 %395, 512
  br i1 %396, label %397, label %424

397:                                              ; preds = %391
  %398 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 2
  %400 = load i32 (i32, i32)*, i32 (i32, i32)** %399, align 8
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = call i32 %400(i32 27, i32 %403)
  %405 = call i32 @CK(i32 %404)
  %406 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 2
  %408 = load i32 (i32, i32)*, i32 (i32, i32)** %407, align 8
  %409 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = call i32 %408(i32 36, i32 %411)
  %413 = call i32 @CK(i32 %412)
  %414 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %414, i32 0, i32 2
  %416 = load i32 (i32, i32)*, i32 (i32, i32)** %415, align 8
  %417 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 1
  %419 = load i32, i32* %418, align 4
  %420 = call i32 %416(i32 66, i32 %419)
  %421 = call i32 @CK(i32 %420)
  %422 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i32 0, i32 0
  store i32 512, i32* %423, align 8
  br label %424

424:                                              ; preds = %397, %391
  %425 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 2
  %427 = load i32 (i32, i32)*, i32 (i32, i32)** %426, align 8
  %428 = load i32, i32* %5, align 4
  %429 = ashr i32 %428, 8
  %430 = and i32 %429, 127
  %431 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = call i32 %427(i32 %430, i32 %433)
  %435 = call i32 @CK(i32 %434)
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 2
  %438 = load i32 (i32, i32)*, i32 (i32, i32)** %437, align 8
  %439 = load i32, i32* %5, align 4
  %440 = and i32 %439, 127
  %441 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %442 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = call i32 %438(i32 %440, i32 %443)
  %445 = call i32 @CK(i32 %444)
  br label %499

446:                                              ; preds = %388
  %447 = load i32, i32* %5, align 4
  %448 = icmp slt i32 %447, 65536
  br i1 %448, label %449, label %454

449:                                              ; preds = %446
  %450 = load i32, i32* %3, align 4
  %451 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %452 = call i32 @mbfl_filt_conv_illegal_output(i32 %450, %struct.TYPE_4__* %451)
  %453 = call i32 @CK(i32 %452)
  br label %498

454:                                              ; preds = %446
  %455 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 8
  %458 = and i32 %457, 65280
  %459 = icmp ne i32 %458, 1024
  br i1 %459, label %460, label %485

460:                                              ; preds = %454
  %461 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %461, i32 0, i32 2
  %463 = load i32 (i32, i32)*, i32 (i32, i32)** %462, align 8
  %464 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = call i32 %463(i32 27, i32 %466)
  %468 = call i32 @CK(i32 %467)
  %469 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i32 0, i32 2
  %471 = load i32 (i32, i32)*, i32 (i32, i32)** %470, align 8
  %472 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 4
  %475 = call i32 %471(i32 40, i32 %474)
  %476 = call i32 @CK(i32 %475)
  %477 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %477, i32 0, i32 2
  %479 = load i32 (i32, i32)*, i32 (i32, i32)** %478, align 8
  %480 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %481 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = call i32 %479(i32 74, i32 %482)
  %484 = call i32 @CK(i32 %483)
  br label %485

485:                                              ; preds = %460, %454
  %486 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %487 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %486, i32 0, i32 0
  store i32 1024, i32* %487, align 8
  %488 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %488, i32 0, i32 2
  %490 = load i32 (i32, i32)*, i32 (i32, i32)** %489, align 8
  %491 = load i32, i32* %5, align 4
  %492 = and i32 %491, 127
  %493 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %494 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %493, i32 0, i32 1
  %495 = load i32, i32* %494, align 4
  %496 = call i32 %490(i32 %492, i32 %495)
  %497 = call i32 @CK(i32 %496)
  br label %498

498:                                              ; preds = %485, %449
  br label %499

499:                                              ; preds = %498, %424
  br label %500

500:                                              ; preds = %499, %377
  br label %501

501:                                              ; preds = %500, %328
  br label %507

502:                                              ; preds = %289
  %503 = load i32, i32* %3, align 4
  %504 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %505 = call i32 @mbfl_filt_conv_illegal_output(i32 %503, %struct.TYPE_4__* %504)
  %506 = call i32 @CK(i32 %505)
  br label %507

507:                                              ; preds = %502, %501
  %508 = load i32, i32* %3, align 4
  ret i32 %508
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
