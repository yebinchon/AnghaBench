; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp936.c_mbfl_filt_conv_cp936_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp936.c_mbfl_filt_conv_cp936_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@mbfl_cp936_pua_tbl_max = common dso_local global i32 0, align 4
@mbfl_cp936_pua_tbl = common dso_local global i32** null, align 8
@cp936_ucs_table_size = common dso_local global i32 0, align 4
@cp936_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_WINCP936 = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_cp936_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  store i32 -1, i32* %8, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %348 [
    i32 0, label %12
    i32 1, label %61
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 128
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32 (i32, i32)*, i32 (i32, i32)** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %21(i32 %22, i32 %25)
  %27 = call i32 @CK(i32 %26)
  br label %60

28:                                               ; preds = %15, %12
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 128
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(i32 8364, i32 %37)
  %39 = call i32 @CK(i32 %38)
  br label %59

40:                                               ; preds = %28
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 255
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %58

49:                                               ; preds = %40
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32 (i32, i32)*, i32 (i32, i32)** %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %52(i32 63733, i32 %55)
  %57 = call i32 @CK(i32 %56)
  br label %58

58:                                               ; preds = %49, %43
  br label %59

59:                                               ; preds = %58, %31
  br label %60

60:                                               ; preds = %59, %18
  br label %351

61:                                               ; preds = %2
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp sge i32 %67, 170
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = icmp sle i32 %70, 175
  br i1 %71, label %78, label %72

72:                                               ; preds = %69, %61
  %73 = load i32, i32* %6, align 4
  %74 = icmp sge i32 %73, 248
  br i1 %74, label %75, label %109

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp sle i32 %76, 254
  br i1 %77, label %78, label %109

78:                                               ; preds = %75, %69
  %79 = load i32, i32* %3, align 4
  %80 = icmp sge i32 %79, 161
  br i1 %80, label %81, label %109

81:                                               ; preds = %78
  %82 = load i32, i32* %3, align 4
  %83 = icmp sle i32 %82, 254
  br i1 %83, label %84, label %109

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  %86 = icmp sge i32 %85, 248
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = sub nsw i32 %88, 242
  br label %93

90:                                               ; preds = %84
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %91, 170
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi i32 [ %89, %87 ], [ %92, %90 ]
  %95 = mul nsw i32 94, %94
  %96 = load i32, i32* %3, align 4
  %97 = sub nsw i32 %96, 161
  %98 = add nsw i32 %95, %97
  %99 = add nsw i32 %98, 57344
  store i32 %99, i32* %8, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  %102 = load i32 (i32, i32)*, i32 (i32, i32)** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 %102(i32 %103, i32 %106)
  %108 = call i32 @CK(i32 %107)
  br label %146

109:                                              ; preds = %81, %78, %75, %72
  %110 = load i32, i32* %6, align 4
  %111 = icmp sge i32 %110, 161
  br i1 %111, label %112, label %145

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = icmp sle i32 %113, 167
  br i1 %114, label %115, label %145

115:                                              ; preds = %112
  %116 = load i32, i32* %3, align 4
  %117 = icmp sge i32 %116, 64
  br i1 %117, label %118, label %145

118:                                              ; preds = %115
  %119 = load i32, i32* %3, align 4
  %120 = icmp slt i32 %119, 161
  br i1 %120, label %121, label %145

121:                                              ; preds = %118
  %122 = load i32, i32* %3, align 4
  %123 = icmp ne i32 %122, 127
  br i1 %123, label %124, label %145

124:                                              ; preds = %121
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, 161
  %127 = mul nsw i32 96, %126
  %128 = load i32, i32* %3, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %3, align 4
  %131 = icmp sge i32 %130, 128
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 65, i32 64
  %134 = sub nsw i32 %129, %133
  %135 = add nsw i32 %134, 58566
  store i32 %135, i32* %8, align 4
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  %138 = load i32 (i32, i32)*, i32 (i32, i32)** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 %138(i32 %139, i32 %142)
  %144 = call i32 @CK(i32 %143)
  br label %145

145:                                              ; preds = %124, %121, %118, %115, %112, %109
  br label %146

146:                                              ; preds = %145, %93
  %147 = load i32, i32* %6, align 4
  %148 = shl i32 %147, 8
  %149 = load i32, i32* %3, align 4
  %150 = or i32 %148, %149
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp sle i32 %151, 0
  br i1 %152, label %153, label %244

153:                                              ; preds = %146
  %154 = load i32, i32* %7, align 4
  %155 = icmp sge i32 %154, 41643
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %7, align 4
  %158 = icmp sle i32 %157, 43518
  br i1 %158, label %171, label %159

159:                                              ; preds = %156, %153
  %160 = load i32, i32* %7, align 4
  %161 = icmp sge i32 %160, 55290
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32, i32* %7, align 4
  %164 = icmp sle i32 %163, 55294
  br i1 %164, label %171, label %165

165:                                              ; preds = %162, %159
  %166 = load i32, i32* %7, align 4
  %167 = icmp sge i32 %166, 65104
  br i1 %167, label %168, label %244

168:                                              ; preds = %165
  %169 = load i32, i32* %7, align 4
  %170 = icmp sle i32 %169, 65184
  br i1 %170, label %171, label %244

171:                                              ; preds = %168, %162, %156
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %240, %171
  %173 = load i32, i32* %5, align 4
  %174 = load i32, i32* @mbfl_cp936_pua_tbl_max, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %243

176:                                              ; preds = %172
  %177 = load i32, i32* %7, align 4
  %178 = load i32**, i32*** @mbfl_cp936_pua_tbl, align 8
  %179 = load i32, i32* %5, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp sge i32 %177, %184
  br i1 %185, label %186, label %239

186:                                              ; preds = %176
  %187 = load i32, i32* %7, align 4
  %188 = load i32**, i32*** @mbfl_cp936_pua_tbl, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %188, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = load i32**, i32*** @mbfl_cp936_pua_tbl, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %194, %201
  %203 = load i32**, i32*** @mbfl_cp936_pua_tbl, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32*, i32** %203, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %202, %209
  %211 = icmp sle i32 %187, %210
  br i1 %211, label %212, label %239

212:                                              ; preds = %186
  %213 = load i32, i32* %7, align 4
  %214 = load i32**, i32*** @mbfl_cp936_pua_tbl, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32*, i32** %214, i64 %216
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 2
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %213, %220
  %222 = load i32**, i32*** @mbfl_cp936_pua_tbl, align 8
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32*, i32** %222, i64 %224
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %221, %228
  store i32 %229, i32* %8, align 4
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 3
  %232 = load i32 (i32, i32)*, i32 (i32, i32)** %231, align 8
  %233 = load i32, i32* %8, align 4
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 %232(i32 %233, i32 %236)
  %238 = call i32 @CK(i32 %237)
  br label %243

239:                                              ; preds = %186, %176
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %5, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %5, align 4
  br label %172

243:                                              ; preds = %212, %172
  br label %244

244:                                              ; preds = %243, %168, %165, %146
  %245 = load i32, i32* %8, align 4
  %246 = icmp sle i32 %245, 0
  br i1 %246, label %247, label %347

247:                                              ; preds = %244
  %248 = load i32, i32* %6, align 4
  %249 = icmp slt i32 %248, 255
  br i1 %249, label %250, label %306

250:                                              ; preds = %247
  %251 = load i32, i32* %6, align 4
  %252 = icmp sgt i32 %251, 128
  br i1 %252, label %253, label %306

253:                                              ; preds = %250
  %254 = load i32, i32* %3, align 4
  %255 = icmp sgt i32 %254, 57
  br i1 %255, label %256, label %306

256:                                              ; preds = %253
  %257 = load i32, i32* %3, align 4
  %258 = icmp slt i32 %257, 255
  br i1 %258, label %259, label %306

259:                                              ; preds = %256
  %260 = load i32, i32* %3, align 4
  %261 = icmp ne i32 %260, 127
  br i1 %261, label %262, label %306

262:                                              ; preds = %259
  %263 = load i32, i32* %6, align 4
  %264 = sub nsw i32 %263, 129
  %265 = mul nsw i32 %264, 192
  %266 = load i32, i32* %3, align 4
  %267 = sub nsw i32 %266, 64
  %268 = add nsw i32 %265, %267
  store i32 %268, i32* %8, align 4
  %269 = load i32, i32* %8, align 4
  %270 = icmp sge i32 %269, 0
  br i1 %270, label %271, label %281

271:                                              ; preds = %262
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* @cp936_ucs_table_size, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %281

275:                                              ; preds = %271
  %276 = load i32*, i32** @cp936_ucs_table, align 8
  %277 = load i32, i32* %8, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %8, align 4
  br label %282

281:                                              ; preds = %271, %262
  store i32 0, i32* %8, align 4
  br label %282

282:                                              ; preds = %281, %275
  %283 = load i32, i32* %8, align 4
  %284 = icmp sle i32 %283, 0
  br i1 %284, label %285, label %296

285:                                              ; preds = %282
  %286 = load i32, i32* %6, align 4
  %287 = shl i32 %286, 8
  %288 = load i32, i32* %3, align 4
  %289 = or i32 %287, %288
  store i32 %289, i32* %8, align 4
  %290 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %291 = load i32, i32* %8, align 4
  %292 = and i32 %291, %290
  store i32 %292, i32* %8, align 4
  %293 = load i32, i32* @MBFL_WCSPLANE_WINCP936, align 4
  %294 = load i32, i32* %8, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %8, align 4
  br label %296

296:                                              ; preds = %285, %282
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 3
  %299 = load i32 (i32, i32)*, i32 (i32, i32)** %298, align 8
  %300 = load i32, i32* %8, align 4
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = call i32 %299(i32 %300, i32 %303)
  %305 = call i32 @CK(i32 %304)
  br label %346

306:                                              ; preds = %259, %256, %253, %250, %247
  %307 = load i32, i32* %3, align 4
  %308 = icmp sge i32 %307, 0
  br i1 %308, label %309, label %312

309:                                              ; preds = %306
  %310 = load i32, i32* %3, align 4
  %311 = icmp slt i32 %310, 33
  br i1 %311, label %315, label %312

312:                                              ; preds = %309, %306
  %313 = load i32, i32* %3, align 4
  %314 = icmp eq i32 %313, 127
  br i1 %314, label %315, label %325

315:                                              ; preds = %312, %309
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 3
  %318 = load i32 (i32, i32)*, i32 (i32, i32)** %317, align 8
  %319 = load i32, i32* %3, align 4
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = call i32 %318(i32 %319, i32 %322)
  %324 = call i32 @CK(i32 %323)
  br label %345

325:                                              ; preds = %312
  %326 = load i32, i32* %6, align 4
  %327 = shl i32 %326, 8
  %328 = load i32, i32* %3, align 4
  %329 = or i32 %327, %328
  store i32 %329, i32* %8, align 4
  %330 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %331 = load i32, i32* %8, align 4
  %332 = and i32 %331, %330
  store i32 %332, i32* %8, align 4
  %333 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %334 = load i32, i32* %8, align 4
  %335 = or i32 %334, %333
  store i32 %335, i32* %8, align 4
  %336 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %336, i32 0, i32 3
  %338 = load i32 (i32, i32)*, i32 (i32, i32)** %337, align 8
  %339 = load i32, i32* %8, align 4
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 2
  %342 = load i32, i32* %341, align 8
  %343 = call i32 %338(i32 %339, i32 %342)
  %344 = call i32 @CK(i32 %343)
  br label %345

345:                                              ; preds = %325, %315
  br label %346

346:                                              ; preds = %345, %296
  br label %347

347:                                              ; preds = %346, %244
  br label %351

348:                                              ; preds = %2
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 0
  store i32 0, i32* %350, align 8
  br label %351

351:                                              ; preds = %348, %347, %60
  %352 = load i32, i32* %3, align 4
  ret i32 %352
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
