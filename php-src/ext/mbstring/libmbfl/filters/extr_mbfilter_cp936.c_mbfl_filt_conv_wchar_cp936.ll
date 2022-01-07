; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp936.c_mbfl_filt_conv_wchar_cp936.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp936.c_mbfl_filt_conv_wchar_cp936.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }

@ucs_a1_cp936_table_min = common dso_local global i32 0, align 4
@ucs_a1_cp936_table_max = common dso_local global i32 0, align 4
@ucs_a1_cp936_table = common dso_local global i32* null, align 8
@ucs_a2_cp936_table_min = common dso_local global i32 0, align 4
@ucs_a2_cp936_table_max = common dso_local global i32 0, align 4
@ucs_a2_cp936_table = common dso_local global i32* null, align 8
@ucs_a3_cp936_table_min = common dso_local global i32 0, align 4
@ucs_a3_cp936_table_max = common dso_local global i32 0, align 4
@ucs_a3_cp936_table = common dso_local global i32* null, align 8
@ucs_i_cp936_table_min = common dso_local global i32 0, align 4
@ucs_i_cp936_table_max = common dso_local global i32 0, align 4
@ucs_i_cp936_table = common dso_local global i32* null, align 8
@mbfl_cp936_pua_tbl_max = common dso_local global i32 0, align 4
@mbfl_cp936_pua_tbl = common dso_local global i32** null, align 8
@ucs_ci_cp936_table_min = common dso_local global i32 0, align 4
@ucs_ci_cp936_table_max = common dso_local global i32 0, align 4
@ucs_ci_cp936_table = common dso_local global i32* null, align 8
@ucs_cf_cp936_table_min = common dso_local global i32 0, align 4
@ucs_cf_cp936_table_max = common dso_local global i32 0, align 4
@ucs_cf_cp936_table = common dso_local global i32* null, align 8
@ucs_sfv_cp936_table_min = common dso_local global i32 0, align 4
@ucs_sfv_cp936_table_max = common dso_local global i32 0, align 4
@ucs_sfv_cp936_table = common dso_local global i32* null, align 8
@ucs_hff_cp936_table_min = common dso_local global i32 0, align 4
@ucs_hff_cp936_table_max = common dso_local global i32 0, align 4
@ucs_hff_s_cp936_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_WINCP936 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_cp936(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @ucs_a1_cp936_table_min, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @ucs_a1_cp936_table_max, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load i32*, i32** @ucs_a1_cp936_table, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ucs_a1_cp936_table_min, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  br label %300

25:                                               ; preds = %13, %2
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @ucs_a2_cp936_table_min, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @ucs_a2_cp936_table_max, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 8254
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 41982, i32* %9, align 4
  br label %55

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 8728
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 41443, i32* %9, align 4
  br label %54

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 8764
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 41387, i32* %9, align 4
  br label %53

45:                                               ; preds = %41
  %46 = load i32*, i32** @ucs_a2_cp936_table, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @ucs_a2_cp936_table_min, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %45, %44
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54, %36
  br label %299

56:                                               ; preds = %29, %25
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @ucs_a3_cp936_table_min, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @ucs_a3_cp936_table_max, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32*, i32** @ucs_a3_cp936_table, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @ucs_a3_cp936_table_min, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  br label %298

72:                                               ; preds = %60, %56
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @ucs_i_cp936_table_min, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @ucs_i_cp936_table_max, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %76
  %81 = load i32*, i32** @ucs_i_cp936_table, align 8
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @ucs_i_cp936_table_min, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %9, align 4
  br label %297

88:                                               ; preds = %76, %72
  %89 = load i32, i32* %3, align 4
  %90 = icmp sge i32 %89, 57344
  br i1 %90, label %91, label %196

91:                                               ; preds = %88
  %92 = load i32, i32* %3, align 4
  %93 = icmp sle i32 %92, 59492
  br i1 %93, label %94, label %196

94:                                               ; preds = %91
  %95 = load i32, i32* %3, align 4
  %96 = icmp slt i32 %95, 59238
  br i1 %96, label %97, label %139

97:                                               ; preds = %94
  %98 = load i32, i32* %3, align 4
  %99 = icmp slt i32 %98, 58566
  br i1 %99, label %100, label %121

100:                                              ; preds = %97
  %101 = load i32, i32* %3, align 4
  %102 = sub nsw i32 %101, 57344
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = srem i32 %103, 94
  %105 = add nsw i32 %104, 161
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = sdiv i32 %106, 94
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp slt i32 %108, 6
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 170
  br label %116

113:                                              ; preds = %100
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 242
  br label %116

116:                                              ; preds = %113, %110
  %117 = phi i32 [ %112, %110 ], [ %115, %113 ]
  %118 = shl i32 %117, 8
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  br label %138

121:                                              ; preds = %97
  %122 = load i32, i32* %3, align 4
  %123 = sub nsw i32 %122, 58566
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = sdiv i32 %124, 96
  %126 = add nsw i32 %125, 161
  %127 = shl i32 %126, 8
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = srem i32 %128, 96
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp sge i32 %131, 63
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 65, i32 64
  %135 = add nsw i32 %130, %134
  %136 = load i32, i32* %9, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %121, %116
  br label %195

139:                                              ; preds = %94
  store i32 0, i32* %6, align 4
  %140 = load i32, i32* @mbfl_cp936_pua_tbl_max, align 4
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %193, %139
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %194

145:                                              ; preds = %141
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %146, %147
  %149 = ashr i32 %148, 1
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %3, align 4
  %151 = load i32**, i32*** @mbfl_cp936_pua_tbl, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %150, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %145
  %160 = load i32, i32* %5, align 4
  store i32 %160, i32* %7, align 4
  br label %193

161:                                              ; preds = %145
  %162 = load i32, i32* %3, align 4
  %163 = load i32**, i32*** @mbfl_cp936_pua_tbl, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %163, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp sgt i32 %162, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %161
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  br label %192

174:                                              ; preds = %161
  %175 = load i32, i32* %3, align 4
  %176 = load i32**, i32*** @mbfl_cp936_pua_tbl, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %175, %182
  %184 = load i32**, i32*** @mbfl_cp936_pua_tbl, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32*, i32** %184, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %183, %190
  store i32 %191, i32* %9, align 4
  br label %194

192:                                              ; preds = %171
  br label %193

193:                                              ; preds = %192, %159
  br label %141

194:                                              ; preds = %174, %141
  br label %195

195:                                              ; preds = %194, %138
  br label %296

196:                                              ; preds = %91, %88
  %197 = load i32, i32* %3, align 4
  %198 = icmp eq i32 %197, 63733
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store i32 255, i32* %9, align 4
  br label %295

200:                                              ; preds = %196
  %201 = load i32, i32* %3, align 4
  %202 = load i32, i32* @ucs_ci_cp936_table_min, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %200
  %205 = load i32, i32* %3, align 4
  %206 = load i32, i32* @ucs_ci_cp936_table_max, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %204
  %209 = load i32*, i32** @ucs_ci_cp936_table, align 8
  %210 = load i32, i32* %3, align 4
  %211 = load i32, i32* @ucs_ci_cp936_table_min, align 4
  %212 = sub nsw i32 %210, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %9, align 4
  br label %294

216:                                              ; preds = %204, %200
  %217 = load i32, i32* %3, align 4
  %218 = load i32, i32* @ucs_cf_cp936_table_min, align 4
  %219 = icmp sge i32 %217, %218
  br i1 %219, label %220, label %232

220:                                              ; preds = %216
  %221 = load i32, i32* %3, align 4
  %222 = load i32, i32* @ucs_cf_cp936_table_max, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %220
  %225 = load i32*, i32** @ucs_cf_cp936_table, align 8
  %226 = load i32, i32* %3, align 4
  %227 = load i32, i32* @ucs_cf_cp936_table_min, align 4
  %228 = sub nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %225, i64 %229
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %9, align 4
  br label %293

232:                                              ; preds = %220, %216
  %233 = load i32, i32* %3, align 4
  %234 = load i32, i32* @ucs_sfv_cp936_table_min, align 4
  %235 = icmp sge i32 %233, %234
  br i1 %235, label %236, label %248

236:                                              ; preds = %232
  %237 = load i32, i32* %3, align 4
  %238 = load i32, i32* @ucs_sfv_cp936_table_max, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %248

240:                                              ; preds = %236
  %241 = load i32*, i32** @ucs_sfv_cp936_table, align 8
  %242 = load i32, i32* %3, align 4
  %243 = load i32, i32* @ucs_sfv_cp936_table_min, align 4
  %244 = sub nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %241, i64 %245
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %9, align 4
  br label %292

248:                                              ; preds = %236, %232
  %249 = load i32, i32* %3, align 4
  %250 = load i32, i32* @ucs_hff_cp936_table_min, align 4
  %251 = icmp sge i32 %249, %250
  br i1 %251, label %252, label %291

252:                                              ; preds = %248
  %253 = load i32, i32* %3, align 4
  %254 = load i32, i32* @ucs_hff_cp936_table_max, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %291

256:                                              ; preds = %252
  %257 = load i32, i32* %3, align 4
  %258 = icmp eq i32 %257, 65284
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  store i32 41447, i32* %9, align 4
  br label %290

260:                                              ; preds = %256
  %261 = load i32, i32* %3, align 4
  %262 = icmp eq i32 %261, 65374
  br i1 %262, label %263, label %264

263:                                              ; preds = %260
  store i32 41387, i32* %9, align 4
  br label %289

264:                                              ; preds = %260
  %265 = load i32, i32* %3, align 4
  %266 = icmp sge i32 %265, 65281
  br i1 %266, label %267, label %274

267:                                              ; preds = %264
  %268 = load i32, i32* %3, align 4
  %269 = icmp sle i32 %268, 65373
  br i1 %269, label %270, label %274

270:                                              ; preds = %267
  %271 = load i32, i32* %3, align 4
  %272 = sub nsw i32 %271, 65281
  %273 = add nsw i32 %272, 41889
  store i32 %273, i32* %9, align 4
  br label %288

274:                                              ; preds = %267, %264
  %275 = load i32, i32* %3, align 4
  %276 = icmp sge i32 %275, 65504
  br i1 %276, label %277, label %287

277:                                              ; preds = %274
  %278 = load i32, i32* %3, align 4
  %279 = icmp sle i32 %278, 65509
  br i1 %279, label %280, label %287

280:                                              ; preds = %277
  %281 = load i32*, i32** @ucs_hff_s_cp936_table, align 8
  %282 = load i32, i32* %3, align 4
  %283 = sub nsw i32 %282, 65504
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %9, align 4
  br label %287

287:                                              ; preds = %280, %277, %274
  br label %288

288:                                              ; preds = %287, %270
  br label %289

289:                                              ; preds = %288, %263
  br label %290

290:                                              ; preds = %289, %259
  br label %291

291:                                              ; preds = %290, %252, %248
  br label %292

292:                                              ; preds = %291, %240
  br label %293

293:                                              ; preds = %292, %224
  br label %294

294:                                              ; preds = %293, %208
  br label %295

295:                                              ; preds = %294, %199
  br label %296

296:                                              ; preds = %295, %195
  br label %297

297:                                              ; preds = %296, %80
  br label %298

298:                                              ; preds = %297, %64
  br label %299

299:                                              ; preds = %298, %55
  br label %300

300:                                              ; preds = %299, %17
  %301 = load i32, i32* %9, align 4
  %302 = icmp sle i32 %301, 0
  br i1 %302, label %303, label %325

303:                                              ; preds = %300
  %304 = load i32, i32* %3, align 4
  %305 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %306 = xor i32 %305, -1
  %307 = and i32 %304, %306
  store i32 %307, i32* %8, align 4
  %308 = load i32, i32* %8, align 4
  %309 = load i32, i32* @MBFL_WCSPLANE_WINCP936, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %303
  %312 = load i32, i32* %3, align 4
  %313 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %314 = and i32 %312, %313
  store i32 %314, i32* %9, align 4
  br label %315

315:                                              ; preds = %311, %303
  %316 = load i32, i32* %3, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  store i32 0, i32* %9, align 4
  br label %324

319:                                              ; preds = %315
  %320 = load i32, i32* %9, align 4
  %321 = icmp sle i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  store i32 -1, i32* %9, align 4
  br label %323

323:                                              ; preds = %322, %319
  br label %324

324:                                              ; preds = %323, %318
  br label %325

325:                                              ; preds = %324, %300
  %326 = load i32, i32* %9, align 4
  %327 = icmp sge i32 %326, 0
  br i1 %327, label %328, label %367

328:                                              ; preds = %325
  %329 = load i32, i32* %9, align 4
  %330 = icmp sle i32 %329, 128
  br i1 %330, label %334, label %331

331:                                              ; preds = %328
  %332 = load i32, i32* %9, align 4
  %333 = icmp eq i32 %332, 255
  br i1 %333, label %334, label %344

334:                                              ; preds = %331, %328
  %335 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = load i32 (i32, i32)*, i32 (i32, i32)** %336, align 8
  %338 = load i32, i32* %9, align 4
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = call i32 %337(i32 %338, i32 %341)
  %343 = call i32 @CK(i32 %342)
  br label %366

344:                                              ; preds = %331
  %345 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 1
  %347 = load i32 (i32, i32)*, i32 (i32, i32)** %346, align 8
  %348 = load i32, i32* %9, align 4
  %349 = ashr i32 %348, 8
  %350 = and i32 %349, 255
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = call i32 %347(i32 %350, i32 %353)
  %355 = call i32 @CK(i32 %354)
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 1
  %358 = load i32 (i32, i32)*, i32 (i32, i32)** %357, align 8
  %359 = load i32, i32* %9, align 4
  %360 = and i32 %359, 255
  %361 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = call i32 %358(i32 %360, i32 %363)
  %365 = call i32 @CK(i32 %364)
  br label %366

366:                                              ; preds = %344, %334
  br label %372

367:                                              ; preds = %325
  %368 = load i32, i32* %3, align 4
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %370 = call i32 @mbfl_filt_conv_illegal_output(i32 %368, %struct.TYPE_4__* %369)
  %371 = call i32 @CK(i32 %370)
  br label %372

372:                                              ; preds = %367, %366
  %373 = load i32, i32* %3, align 4
  ret i32 %373
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
