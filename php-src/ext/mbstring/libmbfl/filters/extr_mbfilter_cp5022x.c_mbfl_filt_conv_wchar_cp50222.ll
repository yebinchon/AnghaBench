; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp5022x.c_mbfl_filt_conv_wchar_cp50222.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp5022x.c_mbfl_filt_conv_wchar_cp50222.c"
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
define dso_local i32 @mbfl_filt_conv_wchar_cp50222(i32 %0, %struct.TYPE_4__* %1) #0 {
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
  %205 = icmp sle i32 %204, 0
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
  %242 = icmp sle i32 %241, 0
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
  br i1 %291, label %292, label %538

292:                                              ; preds = %289
  %293 = load i32, i32* %5, align 4
  %294 = icmp slt i32 %293, 128
  br i1 %294, label %295, label %356

295:                                              ; preds = %292
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = and i32 %298, 65280
  %300 = icmp eq i32 %299, 1280
  br i1 %300, label %301, label %312

301:                                              ; preds = %295
  %302 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 2
  %304 = load i32 (i32, i32)*, i32 (i32, i32)** %303, align 8
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = call i32 %304(i32 15, i32 %307)
  %309 = call i32 @CK(i32 %308)
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 0
  store i32 0, i32* %311, align 8
  br label %346

312:                                              ; preds = %295
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = and i32 %315, 65280
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %345

318:                                              ; preds = %312
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 2
  %321 = load i32 (i32, i32)*, i32 (i32, i32)** %320, align 8
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = call i32 %321(i32 27, i32 %324)
  %326 = call i32 @CK(i32 %325)
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 2
  %329 = load i32 (i32, i32)*, i32 (i32, i32)** %328, align 8
  %330 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call i32 %329(i32 40, i32 %332)
  %334 = call i32 @CK(i32 %333)
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 2
  %337 = load i32 (i32, i32)*, i32 (i32, i32)** %336, align 8
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = call i32 %337(i32 66, i32 %340)
  %342 = call i32 @CK(i32 %341)
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i32 0, i32 0
  store i32 0, i32* %344, align 8
  br label %345

345:                                              ; preds = %318, %312
  br label %346

346:                                              ; preds = %345, %301
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 2
  %349 = load i32 (i32, i32)*, i32 (i32, i32)** %348, align 8
  %350 = load i32, i32* %5, align 4
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = call i32 %349(i32 %350, i32 %353)
  %355 = call i32 @CK(i32 %354)
  br label %537

356:                                              ; preds = %292
  %357 = load i32, i32* %5, align 4
  %358 = icmp sge i32 %357, 160
  br i1 %358, label %359, label %390

359:                                              ; preds = %356
  %360 = load i32, i32* %5, align 4
  %361 = icmp slt i32 %360, 224
  br i1 %361, label %362, label %390

362:                                              ; preds = %359
  %363 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = and i32 %365, 65280
  %367 = icmp ne i32 %366, 1280
  br i1 %367, label %368, label %379

368:                                              ; preds = %362
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 2
  %371 = load i32 (i32, i32)*, i32 (i32, i32)** %370, align 8
  %372 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = call i32 %371(i32 14, i32 %374)
  %376 = call i32 @CK(i32 %375)
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %377, i32 0, i32 0
  store i32 1280, i32* %378, align 8
  br label %379

379:                                              ; preds = %368, %362
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i32 0, i32 2
  %382 = load i32 (i32, i32)*, i32 (i32, i32)** %381, align 8
  %383 = load i32, i32* %5, align 4
  %384 = sub nsw i32 %383, 128
  %385 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = call i32 %382(i32 %384, i32 %387)
  %389 = call i32 @CK(i32 %388)
  br label %536

390:                                              ; preds = %359, %356
  %391 = load i32, i32* %5, align 4
  %392 = icmp slt i32 %391, 32896
  br i1 %392, label %393, label %465

393:                                              ; preds = %390
  %394 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = and i32 %396, 65280
  %398 = icmp eq i32 %397, 1280
  br i1 %398, label %399, label %410

399:                                              ; preds = %393
  %400 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 2
  %402 = load i32 (i32, i32)*, i32 (i32, i32)** %401, align 8
  %403 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = call i32 %402(i32 15, i32 %405)
  %407 = call i32 @CK(i32 %406)
  %408 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 0
  store i32 0, i32* %409, align 8
  br label %410

410:                                              ; preds = %399, %393
  %411 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = and i32 %413, 65280
  %415 = icmp ne i32 %414, 512
  br i1 %415, label %416, label %443

416:                                              ; preds = %410
  %417 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 2
  %419 = load i32 (i32, i32)*, i32 (i32, i32)** %418, align 8
  %420 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = call i32 %419(i32 27, i32 %422)
  %424 = call i32 @CK(i32 %423)
  %425 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 2
  %427 = load i32 (i32, i32)*, i32 (i32, i32)** %426, align 8
  %428 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = call i32 %427(i32 36, i32 %430)
  %432 = call i32 @CK(i32 %431)
  %433 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %433, i32 0, i32 2
  %435 = load i32 (i32, i32)*, i32 (i32, i32)** %434, align 8
  %436 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = call i32 %435(i32 66, i32 %438)
  %440 = call i32 @CK(i32 %439)
  %441 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %442 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i32 0, i32 0
  store i32 512, i32* %442, align 8
  br label %443

443:                                              ; preds = %416, %410
  %444 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 2
  %446 = load i32 (i32, i32)*, i32 (i32, i32)** %445, align 8
  %447 = load i32, i32* %5, align 4
  %448 = ashr i32 %447, 8
  %449 = and i32 %448, 127
  %450 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %451 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = call i32 %446(i32 %449, i32 %452)
  %454 = call i32 @CK(i32 %453)
  %455 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %456 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %455, i32 0, i32 2
  %457 = load i32 (i32, i32)*, i32 (i32, i32)** %456, align 8
  %458 = load i32, i32* %5, align 4
  %459 = and i32 %458, 127
  %460 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = call i32 %457(i32 %459, i32 %462)
  %464 = call i32 @CK(i32 %463)
  br label %535

465:                                              ; preds = %390
  %466 = load i32, i32* %5, align 4
  %467 = icmp slt i32 %466, 65536
  br i1 %467, label %468, label %473

468:                                              ; preds = %465
  %469 = load i32, i32* %3, align 4
  %470 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %471 = call i32 @mbfl_filt_conv_illegal_output(i32 %469, %struct.TYPE_4__* %470)
  %472 = call i32 @CK(i32 %471)
  br label %534

473:                                              ; preds = %465
  %474 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = and i32 %476, 65280
  %478 = icmp eq i32 %477, 1280
  br i1 %478, label %479, label %490

479:                                              ; preds = %473
  %480 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %481 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %480, i32 0, i32 2
  %482 = load i32 (i32, i32)*, i32 (i32, i32)** %481, align 8
  %483 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = call i32 %482(i32 15, i32 %485)
  %487 = call i32 @CK(i32 %486)
  %488 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %488, i32 0, i32 0
  store i32 0, i32* %489, align 8
  br label %490

490:                                              ; preds = %479, %473
  %491 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %492 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = and i32 %493, 65280
  %495 = icmp ne i32 %494, 1024
  br i1 %495, label %496, label %521

496:                                              ; preds = %490
  %497 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %498 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %497, i32 0, i32 2
  %499 = load i32 (i32, i32)*, i32 (i32, i32)** %498, align 8
  %500 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %501 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 4
  %503 = call i32 %499(i32 27, i32 %502)
  %504 = call i32 @CK(i32 %503)
  %505 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %506 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %505, i32 0, i32 2
  %507 = load i32 (i32, i32)*, i32 (i32, i32)** %506, align 8
  %508 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %509 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 4
  %511 = call i32 %507(i32 40, i32 %510)
  %512 = call i32 @CK(i32 %511)
  %513 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %514 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %513, i32 0, i32 2
  %515 = load i32 (i32, i32)*, i32 (i32, i32)** %514, align 8
  %516 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %517 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 4
  %519 = call i32 %515(i32 74, i32 %518)
  %520 = call i32 @CK(i32 %519)
  br label %521

521:                                              ; preds = %496, %490
  %522 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %523 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %522, i32 0, i32 0
  store i32 1024, i32* %523, align 8
  %524 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %525 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %524, i32 0, i32 2
  %526 = load i32 (i32, i32)*, i32 (i32, i32)** %525, align 8
  %527 = load i32, i32* %5, align 4
  %528 = and i32 %527, 127
  %529 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %530 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = call i32 %526(i32 %528, i32 %531)
  %533 = call i32 @CK(i32 %532)
  br label %534

534:                                              ; preds = %521, %468
  br label %535

535:                                              ; preds = %534, %443
  br label %536

536:                                              ; preds = %535, %379
  br label %537

537:                                              ; preds = %536, %346
  br label %543

538:                                              ; preds = %289
  %539 = load i32, i32* %3, align 4
  %540 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %541 = call i32 @mbfl_filt_conv_illegal_output(i32 %539, %struct.TYPE_4__* %540)
  %542 = call i32 @CK(i32 %541)
  br label %543

543:                                              ; preds = %538, %537
  %544 = load i32, i32* %3, align 4
  ret i32 %544
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
