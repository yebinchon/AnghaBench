; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_gb18030.c_mbfl_filt_conv_gb18030_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_gb18030.c_mbfl_filt_conv_gb18030_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@mbfl_gb18030_pua_tbl_max = common dso_local global i32 0, align 4
@mbfl_gb18030_pua_tbl = common dso_local global i32** null, align 8
@cp936_ucs_table_size = common dso_local global i32 0, align 4
@cp936_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_GB18030 = common dso_local global i32 0, align 4
@mbfl_gb2uni_tbl = common dso_local global i32 0, align 4
@mbfl_gb_uni_max = common dso_local global i32 0, align 4
@mbfl_gb_uni_ofst = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_gb18030_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 -1, i32* %10, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %743 [
    i32 0, label %14
    i32 1, label %86
    i32 2, label %473
    i32 3, label %546
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 128
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32 (i32, i32)*, i32 (i32, i32)** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 %23(i32 %24, i32 %27)
  %29 = call i32 @CK(i32 %28)
  br label %85

30:                                               ; preds = %17, %14
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  %36 = load i32 (i32, i32)*, i32 (i32, i32)** %35, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %36(i32 8364, i32 %39)
  %41 = call i32 @CK(i32 %40)
  br label %84

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 255
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32 (i32, i32)*, i32 (i32, i32)** %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 %48(i32 255, i32 %51)
  %53 = call i32 @CK(i32 %52)
  br label %83

54:                                               ; preds = %42
  %55 = load i32, i32* %4, align 4
  %56 = icmp sgt i32 %55, 128
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 255
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %82

66:                                               ; preds = %57, %54
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i32 (i32, i32)*, i32 (i32, i32)** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 %75(i32 %76, i32 %79)
  %81 = call i32 @CK(i32 %80)
  br label %82

82:                                               ; preds = %66, %60
  br label %83

83:                                               ; preds = %82, %45
  br label %84

84:                                               ; preds = %83, %33
  br label %85

85:                                               ; preds = %84, %20
  br label %746

86:                                               ; preds = %2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %7, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load i32, i32* %7, align 4
  %93 = icmp sge i32 %92, 129
  br i1 %93, label %94, label %113

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  %96 = icmp sle i32 %95, 132
  br i1 %96, label %97, label %113

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = icmp sge i32 %98, 48
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  %102 = icmp sle i32 %101, 57
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  store i32 2, i32* %105, align 8
  %106 = load i32, i32* %7, align 4
  %107 = shl i32 %106, 8
  %108 = load i32, i32* %4, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %3, align 4
  br label %748

113:                                              ; preds = %100, %97, %94, %86
  %114 = load i32, i32* %7, align 4
  %115 = icmp sge i32 %114, 144
  br i1 %115, label %116, label %135

116:                                              ; preds = %113
  %117 = load i32, i32* %7, align 4
  %118 = icmp sle i32 %117, 227
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = load i32, i32* %4, align 4
  %121 = icmp sge i32 %120, 48
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  %123 = load i32, i32* %4, align 4
  %124 = icmp sle i32 %123, 57
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i32 2, i32* %127, align 8
  %128 = load i32, i32* %7, align 4
  %129 = shl i32 %128, 8
  %130 = load i32, i32* %4, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %4, align 4
  store i32 %134, i32* %3, align 4
  br label %748

135:                                              ; preds = %122, %119, %116, %113
  %136 = load i32, i32* %7, align 4
  %137 = icmp sge i32 %136, 170
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %7, align 4
  %140 = icmp sle i32 %139, 175
  br i1 %140, label %147, label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %7, align 4
  %143 = icmp sge i32 %142, 248
  br i1 %143, label %144, label %178

144:                                              ; preds = %141
  %145 = load i32, i32* %7, align 4
  %146 = icmp sle i32 %145, 254
  br i1 %146, label %147, label %178

147:                                              ; preds = %144, %138
  %148 = load i32, i32* %4, align 4
  %149 = icmp sge i32 %148, 161
  br i1 %149, label %150, label %178

150:                                              ; preds = %147
  %151 = load i32, i32* %4, align 4
  %152 = icmp sle i32 %151, 254
  br i1 %152, label %153, label %178

153:                                              ; preds = %150
  %154 = load i32, i32* %7, align 4
  %155 = icmp sge i32 %154, 248
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %7, align 4
  %158 = sub nsw i32 %157, 242
  br label %162

159:                                              ; preds = %153
  %160 = load i32, i32* %7, align 4
  %161 = sub nsw i32 %160, 170
  br label %162

162:                                              ; preds = %159, %156
  %163 = phi i32 [ %158, %156 ], [ %161, %159 ]
  %164 = mul nsw i32 94, %163
  %165 = load i32, i32* %4, align 4
  %166 = sub nsw i32 %165, 161
  %167 = add nsw i32 %164, %166
  %168 = add nsw i32 %167, 57344
  store i32 %168, i32* %10, align 4
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 3
  %171 = load i32 (i32, i32)*, i32 (i32, i32)** %170, align 8
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 %171(i32 %172, i32 %175)
  %177 = call i32 @CK(i32 %176)
  br label %215

178:                                              ; preds = %150, %147, %144, %141
  %179 = load i32, i32* %7, align 4
  %180 = icmp sge i32 %179, 161
  br i1 %180, label %181, label %214

181:                                              ; preds = %178
  %182 = load i32, i32* %7, align 4
  %183 = icmp sle i32 %182, 167
  br i1 %183, label %184, label %214

184:                                              ; preds = %181
  %185 = load i32, i32* %4, align 4
  %186 = icmp sge i32 %185, 64
  br i1 %186, label %187, label %214

187:                                              ; preds = %184
  %188 = load i32, i32* %4, align 4
  %189 = icmp slt i32 %188, 161
  br i1 %189, label %190, label %214

190:                                              ; preds = %187
  %191 = load i32, i32* %4, align 4
  %192 = icmp ne i32 %191, 127
  br i1 %192, label %193, label %214

193:                                              ; preds = %190
  %194 = load i32, i32* %7, align 4
  %195 = sub nsw i32 %194, 161
  %196 = mul nsw i32 96, %195
  %197 = load i32, i32* %4, align 4
  %198 = add nsw i32 %196, %197
  %199 = load i32, i32* %4, align 4
  %200 = icmp sge i32 %199, 128
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 65, i32 64
  %203 = sub nsw i32 %198, %202
  %204 = add nsw i32 %203, 58566
  store i32 %204, i32* %10, align 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32 (i32, i32)*, i32 (i32, i32)** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 %207(i32 %208, i32 %211)
  %213 = call i32 @CK(i32 %212)
  br label %214

214:                                              ; preds = %193, %190, %187, %184, %181, %178
  br label %215

215:                                              ; preds = %214, %162
  br label %216

216:                                              ; preds = %215
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %7, align 4
  %219 = shl i32 %218, 8
  %220 = load i32, i32* %4, align 4
  %221 = or i32 %219, %220
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp sle i32 %222, 0
  br i1 %223, label %224, label %315

224:                                              ; preds = %217
  %225 = load i32, i32* %8, align 4
  %226 = icmp sge i32 %225, 41643
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32, i32* %8, align 4
  %229 = icmp sle i32 %228, 43518
  br i1 %229, label %242, label %230

230:                                              ; preds = %227, %224
  %231 = load i32, i32* %8, align 4
  %232 = icmp sge i32 %231, 55290
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32, i32* %8, align 4
  %235 = icmp sle i32 %234, 55294
  br i1 %235, label %242, label %236

236:                                              ; preds = %233, %230
  %237 = load i32, i32* %8, align 4
  %238 = icmp sge i32 %237, 65104
  br i1 %238, label %239, label %315

239:                                              ; preds = %236
  %240 = load i32, i32* %8, align 4
  %241 = icmp sle i32 %240, 65184
  br i1 %241, label %242, label %315

242:                                              ; preds = %239, %233, %227
  store i32 0, i32* %6, align 4
  br label %243

243:                                              ; preds = %311, %242
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* @mbfl_gb18030_pua_tbl_max, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %314

247:                                              ; preds = %243
  %248 = load i32, i32* %8, align 4
  %249 = load i32**, i32*** @mbfl_gb18030_pua_tbl, align 8
  %250 = load i32, i32* %6, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32*, i32** %249, i64 %251
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 2
  %255 = load i32, i32* %254, align 4
  %256 = icmp sge i32 %248, %255
  br i1 %256, label %257, label %310

257:                                              ; preds = %247
  %258 = load i32, i32* %8, align 4
  %259 = load i32**, i32*** @mbfl_gb18030_pua_tbl, align 8
  %260 = load i32, i32* %6, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32*, i32** %259, i64 %261
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 2
  %265 = load i32, i32* %264, align 4
  %266 = load i32**, i32*** @mbfl_gb18030_pua_tbl, align 8
  %267 = load i32, i32* %6, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32*, i32** %266, i64 %268
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %265, %272
  %274 = load i32**, i32*** @mbfl_gb18030_pua_tbl, align 8
  %275 = load i32, i32* %6, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32*, i32** %274, i64 %276
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 0
  %280 = load i32, i32* %279, align 4
  %281 = sub nsw i32 %273, %280
  %282 = icmp sle i32 %258, %281
  br i1 %282, label %283, label %310

283:                                              ; preds = %257
  %284 = load i32, i32* %8, align 4
  %285 = load i32**, i32*** @mbfl_gb18030_pua_tbl, align 8
  %286 = load i32, i32* %6, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32*, i32** %285, i64 %287
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 2
  %291 = load i32, i32* %290, align 4
  %292 = sub nsw i32 %284, %291
  %293 = load i32**, i32*** @mbfl_gb18030_pua_tbl, align 8
  %294 = load i32, i32* %6, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32*, i32** %293, i64 %295
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %292, %299
  store i32 %300, i32* %10, align 4
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 3
  %303 = load i32 (i32, i32)*, i32 (i32, i32)** %302, align 8
  %304 = load i32, i32* %10, align 4
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = call i32 %303(i32 %304, i32 %307)
  %309 = call i32 @CK(i32 %308)
  br label %314

310:                                              ; preds = %257, %247
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %6, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %6, align 4
  br label %243

314:                                              ; preds = %283, %243
  br label %315

315:                                              ; preds = %314, %239, %236, %217
  %316 = load i32, i32* %10, align 4
  %317 = icmp sle i32 %316, 0
  br i1 %317, label %318, label %472

318:                                              ; preds = %315
  %319 = load i32, i32* %7, align 4
  %320 = icmp sge i32 %319, 161
  br i1 %320, label %321, label %330

321:                                              ; preds = %318
  %322 = load i32, i32* %7, align 4
  %323 = icmp sle i32 %322, 169
  br i1 %323, label %324, label %330

324:                                              ; preds = %321
  %325 = load i32, i32* %4, align 4
  %326 = icmp sge i32 %325, 161
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load i32, i32* %4, align 4
  %329 = icmp sle i32 %328, 254
  br i1 %329, label %387, label %330

330:                                              ; preds = %327, %324, %321, %318
  %331 = load i32, i32* %7, align 4
  %332 = icmp sge i32 %331, 176
  br i1 %332, label %333, label %342

333:                                              ; preds = %330
  %334 = load i32, i32* %7, align 4
  %335 = icmp sle i32 %334, 247
  br i1 %335, label %336, label %342

336:                                              ; preds = %333
  %337 = load i32, i32* %4, align 4
  %338 = icmp sge i32 %337, 161
  br i1 %338, label %339, label %342

339:                                              ; preds = %336
  %340 = load i32, i32* %4, align 4
  %341 = icmp sle i32 %340, 254
  br i1 %341, label %387, label %342

342:                                              ; preds = %339, %336, %333, %330
  %343 = load i32, i32* %7, align 4
  %344 = icmp sge i32 %343, 129
  br i1 %344, label %345, label %357

345:                                              ; preds = %342
  %346 = load i32, i32* %7, align 4
  %347 = icmp sle i32 %346, 160
  br i1 %347, label %348, label %357

348:                                              ; preds = %345
  %349 = load i32, i32* %4, align 4
  %350 = icmp sge i32 %349, 64
  br i1 %350, label %351, label %357

351:                                              ; preds = %348
  %352 = load i32, i32* %4, align 4
  %353 = icmp sle i32 %352, 254
  br i1 %353, label %354, label %357

354:                                              ; preds = %351
  %355 = load i32, i32* %4, align 4
  %356 = icmp ne i32 %355, 127
  br i1 %356, label %387, label %357

357:                                              ; preds = %354, %351, %348, %345, %342
  %358 = load i32, i32* %7, align 4
  %359 = icmp sge i32 %358, 170
  br i1 %359, label %360, label %372

360:                                              ; preds = %357
  %361 = load i32, i32* %7, align 4
  %362 = icmp sle i32 %361, 254
  br i1 %362, label %363, label %372

363:                                              ; preds = %360
  %364 = load i32, i32* %4, align 4
  %365 = icmp sge i32 %364, 64
  br i1 %365, label %366, label %372

366:                                              ; preds = %363
  %367 = load i32, i32* %4, align 4
  %368 = icmp sle i32 %367, 160
  br i1 %368, label %369, label %372

369:                                              ; preds = %366
  %370 = load i32, i32* %4, align 4
  %371 = icmp ne i32 %370, 127
  br i1 %371, label %387, label %372

372:                                              ; preds = %369, %366, %363, %360, %357
  %373 = load i32, i32* %7, align 4
  %374 = icmp sge i32 %373, 168
  br i1 %374, label %375, label %431

375:                                              ; preds = %372
  %376 = load i32, i32* %7, align 4
  %377 = icmp sle i32 %376, 169
  br i1 %377, label %378, label %431

378:                                              ; preds = %375
  %379 = load i32, i32* %4, align 4
  %380 = icmp sge i32 %379, 64
  br i1 %380, label %381, label %431

381:                                              ; preds = %378
  %382 = load i32, i32* %4, align 4
  %383 = icmp sle i32 %382, 160
  br i1 %383, label %384, label %431

384:                                              ; preds = %381
  %385 = load i32, i32* %4, align 4
  %386 = icmp ne i32 %385, 127
  br i1 %386, label %387, label %431

387:                                              ; preds = %384, %369, %354, %339, %327
  %388 = load i32, i32* %7, align 4
  %389 = sub nsw i32 %388, 129
  %390 = mul nsw i32 %389, 192
  %391 = load i32, i32* %4, align 4
  %392 = sub nsw i32 %391, 64
  %393 = add nsw i32 %390, %392
  store i32 %393, i32* %10, align 4
  %394 = load i32, i32* %10, align 4
  %395 = icmp sge i32 %394, 0
  br i1 %395, label %396, label %406

396:                                              ; preds = %387
  %397 = load i32, i32* %10, align 4
  %398 = load i32, i32* @cp936_ucs_table_size, align 4
  %399 = icmp slt i32 %397, %398
  br i1 %399, label %400, label %406

400:                                              ; preds = %396
  %401 = load i32*, i32** @cp936_ucs_table, align 8
  %402 = load i32, i32* %10, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = load i32, i32* %404, align 4
  store i32 %405, i32* %10, align 4
  br label %407

406:                                              ; preds = %396, %387
  store i32 0, i32* %10, align 4
  br label %407

407:                                              ; preds = %406, %400
  %408 = load i32, i32* %10, align 4
  %409 = icmp sle i32 %408, 0
  br i1 %409, label %410, label %421

410:                                              ; preds = %407
  %411 = load i32, i32* %7, align 4
  %412 = shl i32 %411, 8
  %413 = load i32, i32* %4, align 4
  %414 = or i32 %412, %413
  store i32 %414, i32* %10, align 4
  %415 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %416 = load i32, i32* %10, align 4
  %417 = and i32 %416, %415
  store i32 %417, i32* %10, align 4
  %418 = load i32, i32* @MBFL_WCSPLANE_GB18030, align 4
  %419 = load i32, i32* %10, align 4
  %420 = or i32 %419, %418
  store i32 %420, i32* %10, align 4
  br label %421

421:                                              ; preds = %410, %407
  %422 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %422, i32 0, i32 3
  %424 = load i32 (i32, i32)*, i32 (i32, i32)** %423, align 8
  %425 = load i32, i32* %10, align 4
  %426 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 8
  %429 = call i32 %424(i32 %425, i32 %428)
  %430 = call i32 @CK(i32 %429)
  br label %471

431:                                              ; preds = %384, %381, %378, %375, %372
  %432 = load i32, i32* %4, align 4
  %433 = icmp sge i32 %432, 0
  br i1 %433, label %434, label %437

434:                                              ; preds = %431
  %435 = load i32, i32* %4, align 4
  %436 = icmp slt i32 %435, 33
  br i1 %436, label %440, label %437

437:                                              ; preds = %434, %431
  %438 = load i32, i32* %4, align 4
  %439 = icmp eq i32 %438, 127
  br i1 %439, label %440, label %450

440:                                              ; preds = %437, %434
  %441 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %441, i32 0, i32 3
  %443 = load i32 (i32, i32)*, i32 (i32, i32)** %442, align 8
  %444 = load i32, i32* %4, align 4
  %445 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %446 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 8
  %448 = call i32 %443(i32 %444, i32 %447)
  %449 = call i32 @CK(i32 %448)
  br label %470

450:                                              ; preds = %437
  %451 = load i32, i32* %7, align 4
  %452 = shl i32 %451, 8
  %453 = load i32, i32* %4, align 4
  %454 = or i32 %452, %453
  store i32 %454, i32* %10, align 4
  %455 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %456 = load i32, i32* %10, align 4
  %457 = and i32 %456, %455
  store i32 %457, i32* %10, align 4
  %458 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %459 = load i32, i32* %10, align 4
  %460 = or i32 %459, %458
  store i32 %460, i32* %10, align 4
  %461 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %462 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %461, i32 0, i32 3
  %463 = load i32 (i32, i32)*, i32 (i32, i32)** %462, align 8
  %464 = load i32, i32* %10, align 4
  %465 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %466 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 8
  %468 = call i32 %463(i32 %464, i32 %467)
  %469 = call i32 @CK(i32 %468)
  br label %470

470:                                              ; preds = %450, %440
  br label %471

471:                                              ; preds = %470, %421
  br label %472

472:                                              ; preds = %471, %315
  br label %746

473:                                              ; preds = %2
  %474 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = ashr i32 %476, 8
  %478 = and i32 %477, 255
  store i32 %478, i32* %7, align 4
  %479 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %480 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %479, i32 0, i32 1
  %481 = load i32, i32* %480, align 4
  %482 = and i32 %481, 255
  store i32 %482, i32* %8, align 4
  %483 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %483, i32 0, i32 0
  store i32 0, i32* %484, align 8
  %485 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %486 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i32 0, i32 1
  store i32 0, i32* %486, align 4
  %487 = load i32, i32* %7, align 4
  %488 = icmp sge i32 %487, 129
  br i1 %488, label %489, label %492

489:                                              ; preds = %473
  %490 = load i32, i32* %7, align 4
  %491 = icmp sle i32 %490, 132
  br i1 %491, label %498, label %492

492:                                              ; preds = %489, %473
  %493 = load i32, i32* %7, align 4
  %494 = icmp sge i32 %493, 144
  br i1 %494, label %495, label %522

495:                                              ; preds = %492
  %496 = load i32, i32* %7, align 4
  %497 = icmp sle i32 %496, 227
  br i1 %497, label %498, label %522

498:                                              ; preds = %495, %489
  %499 = load i32, i32* %8, align 4
  %500 = icmp sge i32 %499, 48
  br i1 %500, label %501, label %522

501:                                              ; preds = %498
  %502 = load i32, i32* %8, align 4
  %503 = icmp sle i32 %502, 57
  br i1 %503, label %504, label %522

504:                                              ; preds = %501
  %505 = load i32, i32* %4, align 4
  %506 = icmp sge i32 %505, 129
  br i1 %506, label %507, label %522

507:                                              ; preds = %504
  %508 = load i32, i32* %4, align 4
  %509 = icmp sle i32 %508, 254
  br i1 %509, label %510, label %522

510:                                              ; preds = %507
  %511 = load i32, i32* %7, align 4
  %512 = shl i32 %511, 16
  %513 = load i32, i32* %8, align 4
  %514 = shl i32 %513, 8
  %515 = or i32 %512, %514
  %516 = load i32, i32* %4, align 4
  %517 = or i32 %515, %516
  %518 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %519 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %518, i32 0, i32 1
  store i32 %517, i32* %519, align 4
  %520 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %521 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %520, i32 0, i32 0
  store i32 3, i32* %521, align 8
  br label %545

522:                                              ; preds = %507, %504, %501, %498, %495, %492
  %523 = load i32, i32* %7, align 4
  %524 = shl i32 %523, 16
  %525 = load i32, i32* %8, align 4
  %526 = shl i32 %525, 8
  %527 = or i32 %524, %526
  %528 = load i32, i32* %4, align 4
  %529 = or i32 %527, %528
  store i32 %529, i32* %10, align 4
  %530 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %531 = load i32, i32* %10, align 4
  %532 = and i32 %531, %530
  store i32 %532, i32* %10, align 4
  %533 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %534 = load i32, i32* %10, align 4
  %535 = or i32 %534, %533
  store i32 %535, i32* %10, align 4
  %536 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %537 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %536, i32 0, i32 3
  %538 = load i32 (i32, i32)*, i32 (i32, i32)** %537, align 8
  %539 = load i32, i32* %10, align 4
  %540 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %541 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %540, i32 0, i32 2
  %542 = load i32, i32* %541, align 8
  %543 = call i32 %538(i32 %539, i32 %542)
  %544 = call i32 @CK(i32 %543)
  br label %545

545:                                              ; preds = %522, %510
  br label %746

546:                                              ; preds = %2
  %547 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %548 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 4
  %550 = ashr i32 %549, 16
  %551 = and i32 %550, 255
  store i32 %551, i32* %7, align 4
  %552 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %553 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %552, i32 0, i32 1
  %554 = load i32, i32* %553, align 4
  %555 = ashr i32 %554, 8
  %556 = and i32 %555, 255
  store i32 %556, i32* %8, align 4
  %557 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %558 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %557, i32 0, i32 1
  %559 = load i32, i32* %558, align 4
  %560 = and i32 %559, 255
  store i32 %560, i32* %9, align 4
  %561 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %562 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %561, i32 0, i32 0
  store i32 0, i32* %562, align 8
  %563 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %564 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %563, i32 0, i32 1
  store i32 0, i32* %564, align 4
  %565 = load i32, i32* %7, align 4
  %566 = icmp sge i32 %565, 129
  br i1 %566, label %567, label %570

567:                                              ; preds = %546
  %568 = load i32, i32* %7, align 4
  %569 = icmp sle i32 %568, 132
  br i1 %569, label %576, label %570

570:                                              ; preds = %567, %546
  %571 = load i32, i32* %7, align 4
  %572 = icmp sge i32 %571, 144
  br i1 %572, label %573, label %716

573:                                              ; preds = %570
  %574 = load i32, i32* %7, align 4
  %575 = icmp sle i32 %574, 227
  br i1 %575, label %576, label %716

576:                                              ; preds = %573, %567
  %577 = load i32, i32* %8, align 4
  %578 = icmp sge i32 %577, 48
  br i1 %578, label %579, label %716

579:                                              ; preds = %576
  %580 = load i32, i32* %8, align 4
  %581 = icmp sle i32 %580, 57
  br i1 %581, label %582, label %716

582:                                              ; preds = %579
  %583 = load i32, i32* %9, align 4
  %584 = icmp sge i32 %583, 129
  br i1 %584, label %585, label %716

585:                                              ; preds = %582
  %586 = load i32, i32* %9, align 4
  %587 = icmp sle i32 %586, 254
  br i1 %587, label %588, label %716

588:                                              ; preds = %585
  %589 = load i32, i32* %4, align 4
  %590 = icmp sge i32 %589, 48
  br i1 %590, label %591, label %716

591:                                              ; preds = %588
  %592 = load i32, i32* %4, align 4
  %593 = icmp sle i32 %592, 57
  br i1 %593, label %594, label %716

594:                                              ; preds = %591
  %595 = load i32, i32* %7, align 4
  %596 = icmp sge i32 %595, 144
  br i1 %596, label %597, label %616

597:                                              ; preds = %594
  %598 = load i32, i32* %7, align 4
  %599 = icmp sle i32 %598, 227
  br i1 %599, label %600, label %616

600:                                              ; preds = %597
  %601 = load i32, i32* %7, align 4
  %602 = sub nsw i32 %601, 144
  %603 = mul nsw i32 %602, 10
  %604 = load i32, i32* %8, align 4
  %605 = sub nsw i32 %604, 48
  %606 = add nsw i32 %603, %605
  %607 = mul nsw i32 %606, 126
  %608 = load i32, i32* %9, align 4
  %609 = sub nsw i32 %608, 129
  %610 = add nsw i32 %607, %609
  %611 = mul nsw i32 %610, 10
  %612 = load i32, i32* %4, align 4
  %613 = sub nsw i32 %612, 48
  %614 = add nsw i32 %611, %613
  %615 = add nsw i32 %614, 65536
  store i32 %615, i32* %10, align 4
  br label %706

616:                                              ; preds = %597, %594
  %617 = load i32, i32* %7, align 4
  %618 = sub nsw i32 %617, 129
  %619 = mul nsw i32 %618, 10
  %620 = load i32, i32* %8, align 4
  %621 = sub nsw i32 %620, 48
  %622 = add nsw i32 %619, %621
  %623 = mul nsw i32 %622, 126
  %624 = load i32, i32* %9, align 4
  %625 = sub nsw i32 %624, 129
  %626 = add nsw i32 %623, %625
  %627 = mul nsw i32 %626, 10
  %628 = load i32, i32* %4, align 4
  %629 = sub nsw i32 %628, 48
  %630 = add nsw i32 %627, %629
  store i32 %630, i32* %10, align 4
  %631 = load i32, i32* %10, align 4
  %632 = icmp sge i32 %631, 0
  br i1 %632, label %633, label %678

633:                                              ; preds = %616
  %634 = load i32, i32* %10, align 4
  %635 = icmp sle i32 %634, 39419
  br i1 %635, label %636, label %678

636:                                              ; preds = %633
  %637 = load i32, i32* %10, align 4
  %638 = load i32, i32* @mbfl_gb2uni_tbl, align 4
  %639 = load i32, i32* @mbfl_gb_uni_max, align 4
  %640 = call i32 @mbfl_bisec_srch(i32 %637, i32 %638, i32 %639)
  store i32 %640, i32* %6, align 4
  %641 = load i32, i32* %6, align 4
  %642 = icmp slt i32 %641, 0
  br i1 %642, label %643, label %670

643:                                              ; preds = %636
  %644 = load i32, i32* %7, align 4
  %645 = shl i32 %644, 24
  %646 = load i32, i32* %8, align 4
  %647 = shl i32 %646, 16
  %648 = or i32 %645, %647
  %649 = load i32, i32* %9, align 4
  %650 = shl i32 %649, 8
  %651 = or i32 %648, %650
  %652 = load i32, i32* %4, align 4
  %653 = or i32 %651, %652
  store i32 %653, i32* %10, align 4
  %654 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %655 = load i32, i32* %10, align 4
  %656 = and i32 %655, %654
  store i32 %656, i32* %10, align 4
  %657 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %658 = load i32, i32* %10, align 4
  %659 = or i32 %658, %657
  store i32 %659, i32* %10, align 4
  %660 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %661 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %660, i32 0, i32 3
  %662 = load i32 (i32, i32)*, i32 (i32, i32)** %661, align 8
  %663 = load i32, i32* %10, align 4
  %664 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %665 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %664, i32 0, i32 2
  %666 = load i32, i32* %665, align 8
  %667 = call i32 %662(i32 %663, i32 %666)
  %668 = call i32 @CK(i32 %667)
  %669 = load i32, i32* %4, align 4
  store i32 %669, i32* %3, align 4
  br label %748

670:                                              ; preds = %636
  %671 = load i32*, i32** @mbfl_gb_uni_ofst, align 8
  %672 = load i32, i32* %6, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds i32, i32* %671, i64 %673
  %675 = load i32, i32* %674, align 4
  %676 = load i32, i32* %10, align 4
  %677 = add nsw i32 %676, %675
  store i32 %677, i32* %10, align 4
  br label %705

678:                                              ; preds = %633, %616
  %679 = load i32, i32* %7, align 4
  %680 = shl i32 %679, 24
  %681 = load i32, i32* %8, align 4
  %682 = shl i32 %681, 16
  %683 = or i32 %680, %682
  %684 = load i32, i32* %9, align 4
  %685 = shl i32 %684, 8
  %686 = or i32 %683, %685
  %687 = load i32, i32* %4, align 4
  %688 = or i32 %686, %687
  store i32 %688, i32* %10, align 4
  %689 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %690 = load i32, i32* %10, align 4
  %691 = and i32 %690, %689
  store i32 %691, i32* %10, align 4
  %692 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %693 = load i32, i32* %10, align 4
  %694 = or i32 %693, %692
  store i32 %694, i32* %10, align 4
  %695 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %696 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %695, i32 0, i32 3
  %697 = load i32 (i32, i32)*, i32 (i32, i32)** %696, align 8
  %698 = load i32, i32* %10, align 4
  %699 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %700 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %699, i32 0, i32 2
  %701 = load i32, i32* %700, align 8
  %702 = call i32 %697(i32 %698, i32 %701)
  %703 = call i32 @CK(i32 %702)
  %704 = load i32, i32* %4, align 4
  store i32 %704, i32* %3, align 4
  br label %748

705:                                              ; preds = %670
  br label %706

706:                                              ; preds = %705, %600
  %707 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %708 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %707, i32 0, i32 3
  %709 = load i32 (i32, i32)*, i32 (i32, i32)** %708, align 8
  %710 = load i32, i32* %10, align 4
  %711 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %712 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %711, i32 0, i32 2
  %713 = load i32, i32* %712, align 8
  %714 = call i32 %709(i32 %710, i32 %713)
  %715 = call i32 @CK(i32 %714)
  br label %742

716:                                              ; preds = %591, %588, %585, %582, %579, %576, %573, %570
  %717 = load i32, i32* %7, align 4
  %718 = shl i32 %717, 24
  %719 = load i32, i32* %8, align 4
  %720 = shl i32 %719, 16
  %721 = or i32 %718, %720
  %722 = load i32, i32* %9, align 4
  %723 = shl i32 %722, 8
  %724 = or i32 %721, %723
  %725 = load i32, i32* %4, align 4
  %726 = or i32 %724, %725
  store i32 %726, i32* %10, align 4
  %727 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %728 = load i32, i32* %10, align 4
  %729 = and i32 %728, %727
  store i32 %729, i32* %10, align 4
  %730 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %731 = load i32, i32* %10, align 4
  %732 = or i32 %731, %730
  store i32 %732, i32* %10, align 4
  %733 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %734 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %733, i32 0, i32 3
  %735 = load i32 (i32, i32)*, i32 (i32, i32)** %734, align 8
  %736 = load i32, i32* %10, align 4
  %737 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %738 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %737, i32 0, i32 2
  %739 = load i32, i32* %738, align 8
  %740 = call i32 %735(i32 %736, i32 %739)
  %741 = call i32 @CK(i32 %740)
  br label %742

742:                                              ; preds = %716, %706
  br label %746

743:                                              ; preds = %2
  %744 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %745 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %744, i32 0, i32 0
  store i32 0, i32* %745, align 8
  br label %746

746:                                              ; preds = %743, %742, %545, %472, %85
  %747 = load i32, i32* %4, align 4
  store i32 %747, i32* %3, align 4
  br label %748

748:                                              ; preds = %746, %678, %643, %125, %103
  %749 = load i32, i32* %3, align 4
  ret i32 %749
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_bisec_srch(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
