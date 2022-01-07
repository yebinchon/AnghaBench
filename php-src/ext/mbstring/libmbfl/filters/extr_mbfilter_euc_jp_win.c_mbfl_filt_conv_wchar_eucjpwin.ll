; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_jp_win.c_mbfl_filt_conv_wchar_eucjpwin.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_jp_win.c_mbfl_filt_conv_wchar_eucjpwin.c"
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
@MBFL_WCSPLANE_JIS0212 = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext1_ucs_table = common dso_local global i32* null, align 8
@cp932ext3_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext3_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext3_ucs_table = common dso_local global i32* null, align 8
@cp932ext3_eucjp_table_size = common dso_local global i32 0, align 4
@cp932ext3_eucjp_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_eucjpwin(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %7, align 4
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
  br label %115

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
  br label %114

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
  br label %113

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
  br label %112

72:                                               ; preds = %60, %56
  %73 = load i32, i32* %3, align 4
  %74 = icmp sge i32 %73, 57344
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load i32, i32* %3, align 4
  %77 = icmp slt i32 %76, 58284
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = sub nsw i32 %79, 57344
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sdiv i32 %81, 94
  %83 = add nsw i32 %82, 117
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
  br label %111

91:                                               ; preds = %75, %72
  %92 = load i32, i32* %3, align 4
  %93 = icmp sge i32 %92, 58284
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load i32, i32* %3, align 4
  %96 = icmp slt i32 %95, 59224
  br i1 %96, label %97, label %110

97:                                               ; preds = %94
  %98 = load i32, i32* %3, align 4
  %99 = sub nsw i32 %98, 58284
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = sdiv i32 %100, 94
  %102 = add nsw i32 %101, 245
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %7, align 4
  %104 = srem i32 %103, 94
  %105 = add nsw i32 %104, 161
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %5, align 4
  %107 = shl i32 %106, 8
  %108 = load i32, i32* %6, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %97, %94, %91
  br label %111

111:                                              ; preds = %110, %78
  br label %112

112:                                              ; preds = %111, %64
  br label %113

113:                                              ; preds = %112, %48
  br label %114

114:                                              ; preds = %113, %32
  br label %115

115:                                              ; preds = %114, %16
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %116, 41713
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 11618, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %115
  %120 = load i32, i32* %7, align 4
  %121 = icmp sle i32 %120, 0
  br i1 %121, label %122, label %294

122:                                              ; preds = %119
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %125 = xor i32 %124, -1
  %126 = and i32 %123, %125
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @MBFL_WCSPLANE_WINCP932, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %138

130:                                              ; preds = %122
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %133 = and i32 %131, %132
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp sge i32 %134, 29952
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  store i32 -1, i32* %7, align 4
  br label %137

137:                                              ; preds = %136, %130
  br label %284

138:                                              ; preds = %122
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = load i32, i32* %3, align 4
  %144 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %145 = and i32 %143, %144
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp sge i32 %146, 29952
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  store i32 -1, i32* %7, align 4
  br label %149

149:                                              ; preds = %148, %142
  br label %283

150:                                              ; preds = %138
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* @MBFL_WCSPLANE_JIS0212, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %150
  %155 = load i32, i32* %3, align 4
  %156 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %157 = and i32 %155, %156
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp sge i32 %158, 29440
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i32 -1, i32* %7, align 4
  br label %164

161:                                              ; preds = %154
  %162 = load i32, i32* %7, align 4
  %163 = or i32 %162, 32896
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %161, %160
  br label %282

165:                                              ; preds = %150
  %166 = load i32, i32* %3, align 4
  %167 = icmp eq i32 %166, 165
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 8559, i32* %7, align 4
  br label %281

169:                                              ; preds = %165
  %170 = load i32, i32* %3, align 4
  %171 = icmp eq i32 %170, 8254
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  store i32 8497, i32* %7, align 4
  br label %280

173:                                              ; preds = %169
  %174 = load i32, i32* %3, align 4
  %175 = icmp eq i32 %174, 65340
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  store i32 8512, i32* %7, align 4
  br label %279

177:                                              ; preds = %173
  %178 = load i32, i32* %3, align 4
  %179 = icmp eq i32 %178, 65374
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 8513, i32* %7, align 4
  br label %278

181:                                              ; preds = %177
  %182 = load i32, i32* %3, align 4
  %183 = icmp eq i32 %182, 8741
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 8514, i32* %7, align 4
  br label %277

185:                                              ; preds = %181
  %186 = load i32, i32* %3, align 4
  %187 = icmp eq i32 %186, 65293
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 8541, i32* %7, align 4
  br label %276

189:                                              ; preds = %185
  %190 = load i32, i32* %3, align 4
  %191 = icmp eq i32 %190, 65504
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 8561, i32* %7, align 4
  br label %275

193:                                              ; preds = %189
  %194 = load i32, i32* %3, align 4
  %195 = icmp eq i32 %194, 65505
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  store i32 8562, i32* %7, align 4
  br label %274

197:                                              ; preds = %193
  %198 = load i32, i32* %3, align 4
  %199 = icmp eq i32 %198, 65506
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  store i32 8780, i32* %7, align 4
  br label %273

201:                                              ; preds = %197
  %202 = load i32, i32* %3, align 4
  %203 = icmp eq i32 %202, 65374
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i32 8513, i32* %7, align 4
  br label %272

205:                                              ; preds = %201
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %206 = load i32, i32* @cp932ext1_ucs_table_max, align 4
  %207 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %208 = sub nsw i32 %206, %207
  store i32 %208, i32* %6, align 4
  br label %209

209:                                              ; preds = %234, %205
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %237

213:                                              ; preds = %209
  %214 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %215 = sdiv i32 %214, 94
  store i32 %215, i32* %8, align 4
  %216 = load i32, i32* %3, align 4
  %217 = load i32*, i32** @cp932ext1_ucs_table, align 8
  %218 = load i32, i32* %5, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %216, %221
  br i1 %222, label %223, label %234

223:                                              ; preds = %213
  %224 = load i32, i32* %5, align 4
  %225 = sdiv i32 %224, 94
  %226 = load i32, i32* %8, align 4
  %227 = add nsw i32 %225, %226
  %228 = add nsw i32 %227, 33
  %229 = shl i32 %228, 8
  %230 = load i32, i32* %5, align 4
  %231 = srem i32 %230, 94
  %232 = add nsw i32 %231, 33
  %233 = add nsw i32 %229, %232
  store i32 %233, i32* %7, align 4
  br label %237

234:                                              ; preds = %213
  %235 = load i32, i32* %5, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %5, align 4
  br label %209

237:                                              ; preds = %223, %209
  %238 = load i32, i32* %7, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %271

240:                                              ; preds = %237
  store i32 0, i32* %5, align 4
  %241 = load i32, i32* @cp932ext3_ucs_table_max, align 4
  %242 = load i32, i32* @cp932ext3_ucs_table_min, align 4
  %243 = sub nsw i32 %241, %242
  store i32 %243, i32* %6, align 4
  br label %244

244:                                              ; preds = %267, %240
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* %6, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %270

248:                                              ; preds = %244
  %249 = load i32, i32* %3, align 4
  %250 = load i32*, i32** @cp932ext3_ucs_table, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %249, %254
  br i1 %255, label %256, label %267

256:                                              ; preds = %248
  %257 = load i32, i32* %5, align 4
  %258 = load i32, i32* @cp932ext3_eucjp_table_size, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %256
  %261 = load i32*, i32** @cp932ext3_eucjp_table, align 8
  %262 = load i32, i32* %5, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %7, align 4
  br label %266

266:                                              ; preds = %260, %256
  br label %270

267:                                              ; preds = %248
  %268 = load i32, i32* %5, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %5, align 4
  br label %244

270:                                              ; preds = %266, %244
  br label %271

271:                                              ; preds = %270, %237
  br label %272

272:                                              ; preds = %271, %204
  br label %273

273:                                              ; preds = %272, %200
  br label %274

274:                                              ; preds = %273, %196
  br label %275

275:                                              ; preds = %274, %192
  br label %276

276:                                              ; preds = %275, %188
  br label %277

277:                                              ; preds = %276, %184
  br label %278

278:                                              ; preds = %277, %180
  br label %279

279:                                              ; preds = %278, %176
  br label %280

280:                                              ; preds = %279, %172
  br label %281

281:                                              ; preds = %280, %168
  br label %282

282:                                              ; preds = %281, %164
  br label %283

283:                                              ; preds = %282, %149
  br label %284

284:                                              ; preds = %283, %137
  %285 = load i32, i32* %3, align 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %284
  store i32 0, i32* %7, align 4
  br label %293

288:                                              ; preds = %284
  %289 = load i32, i32* %7, align 4
  %290 = icmp sle i32 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  store i32 -1, i32* %7, align 4
  br label %292

292:                                              ; preds = %291, %288
  br label %293

293:                                              ; preds = %292, %287
  br label %294

294:                                              ; preds = %293, %119
  %295 = load i32, i32* %7, align 4
  %296 = icmp sge i32 %295, 0
  br i1 %296, label %297, label %393

297:                                              ; preds = %294
  %298 = load i32, i32* %7, align 4
  %299 = icmp slt i32 %298, 128
  br i1 %299, label %300, label %310

300:                                              ; preds = %297
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 1
  %303 = load i32 (i32, i32)*, i32 (i32, i32)** %302, align 8
  %304 = load i32, i32* %7, align 4
  %305 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = call i32 %303(i32 %304, i32 %307)
  %309 = call i32 @CK(i32 %308)
  br label %392

310:                                              ; preds = %297
  %311 = load i32, i32* %7, align 4
  %312 = icmp slt i32 %311, 256
  br i1 %312, label %313, label %331

313:                                              ; preds = %310
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 1
  %316 = load i32 (i32, i32)*, i32 (i32, i32)** %315, align 8
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = call i32 %316(i32 142, i32 %319)
  %321 = call i32 @CK(i32 %320)
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 1
  %324 = load i32 (i32, i32)*, i32 (i32, i32)** %323, align 8
  %325 = load i32, i32* %7, align 4
  %326 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = call i32 %324(i32 %325, i32 %328)
  %330 = call i32 @CK(i32 %329)
  br label %391

331:                                              ; preds = %310
  %332 = load i32, i32* %7, align 4
  %333 = icmp slt i32 %332, 32896
  br i1 %333, label %334, label %358

334:                                              ; preds = %331
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = load i32 (i32, i32)*, i32 (i32, i32)** %336, align 8
  %338 = load i32, i32* %7, align 4
  %339 = ashr i32 %338, 8
  %340 = and i32 %339, 255
  %341 = or i32 %340, 128
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = call i32 %337(i32 %341, i32 %344)
  %346 = call i32 @CK(i32 %345)
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 1
  %349 = load i32 (i32, i32)*, i32 (i32, i32)** %348, align 8
  %350 = load i32, i32* %7, align 4
  %351 = and i32 %350, 255
  %352 = or i32 %351, 128
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = call i32 %349(i32 %352, i32 %355)
  %357 = call i32 @CK(i32 %356)
  br label %390

358:                                              ; preds = %331
  %359 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 1
  %361 = load i32 (i32, i32)*, i32 (i32, i32)** %360, align 8
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = call i32 %361(i32 143, i32 %364)
  %366 = call i32 @CK(i32 %365)
  %367 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 1
  %369 = load i32 (i32, i32)*, i32 (i32, i32)** %368, align 8
  %370 = load i32, i32* %7, align 4
  %371 = ashr i32 %370, 8
  %372 = and i32 %371, 255
  %373 = or i32 %372, 128
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = call i32 %369(i32 %373, i32 %376)
  %378 = call i32 @CK(i32 %377)
  %379 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 1
  %381 = load i32 (i32, i32)*, i32 (i32, i32)** %380, align 8
  %382 = load i32, i32* %7, align 4
  %383 = and i32 %382, 255
  %384 = or i32 %383, 128
  %385 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = call i32 %381(i32 %384, i32 %387)
  %389 = call i32 @CK(i32 %388)
  br label %390

390:                                              ; preds = %358, %334
  br label %391

391:                                              ; preds = %390, %313
  br label %392

392:                                              ; preds = %391, %300
  br label %398

393:                                              ; preds = %294
  %394 = load i32, i32* %3, align 4
  %395 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %396 = call i32 @mbfl_filt_conv_illegal_output(i32 %394, %struct.TYPE_4__* %395)
  %397 = call i32 @CK(i32 %396)
  br label %398

398:                                              ; preds = %393, %392
  %399 = load i32, i32* %3, align 4
  ret i32 %399
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
