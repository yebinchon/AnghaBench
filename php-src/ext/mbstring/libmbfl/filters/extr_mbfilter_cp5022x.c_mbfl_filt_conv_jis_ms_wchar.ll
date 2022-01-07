; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp5022x.c_mbfl_filt_conv_jis_ms_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_cp5022x.c_mbfl_filt_conv_jis_ms_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@jisx0208_ucs_table_size = common dso_local global i32 0, align 4
@jisx0208_ucs_table = common dso_local global i32* null, align 8
@cp932ext1_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext1_ucs_table = common dso_local global i32* null, align 8
@cp932ext2_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext2_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext2_ucs_table = common dso_local global i32* null, align 8
@cp932ext3_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext3_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext3_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0208 = common dso_local global i32 0, align 4
@jisx0212_ucs_table_size = common dso_local global i32 0, align 4
@jisx0212_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_JIS0212 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_jis_ms_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  br label %8

8:                                                ; preds = %513, %461, %423, %391, %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 15
  switch i32 %12, label %537 [
    i32 0, label %13
    i32 1, label %171
    i32 2, label %375
    i32 3, label %406
    i32 4, label %446
    i32 5, label %492
  ]

13:                                               ; preds = %8
  %14 = load i32, i32* %3, align 4
  %15 = icmp eq i32 %14, 27
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 2
  store i32 %20, i32* %18, align 8
  br label %170

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 14
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 32, i32* %26, align 8
  br label %169

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 15
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %168

33:                                               ; preds = %27
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 92
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %44(i32 165, i32 %47)
  %49 = call i32 @CK(i32 %48)
  br label %167

50:                                               ; preds = %38, %33
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %55, label %67

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 126
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32 (i32, i32)*, i32 (i32, i32)** %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 %61(i32 8254, i32 %64)
  %66 = call i32 @CK(i32 %65)
  br label %166

67:                                               ; preds = %55, %50
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 32
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = load i32, i32* %3, align 4
  %74 = icmp sgt i32 %73, 32
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load i32, i32* %3, align 4
  %77 = icmp slt i32 %76, 96
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i32 (i32, i32)*, i32 (i32, i32)** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 65344, %82
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 %81(i32 %83, i32 %86)
  %88 = call i32 @CK(i32 %87)
  br label %165

89:                                               ; preds = %75, %72, %67
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 128
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 144
  br i1 %98, label %99, label %113

99:                                               ; preds = %94, %89
  %100 = load i32, i32* %3, align 4
  %101 = icmp sgt i32 %100, 32
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32, i32* %3, align 4
  %104 = icmp slt i32 %103, 147
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %164

113:                                              ; preds = %102, %99, %94
  %114 = load i32, i32* %3, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i32, i32* %3, align 4
  %118 = icmp slt i32 %117, 128
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  %122 = load i32 (i32, i32)*, i32 (i32, i32)** %121, align 8
  %123 = load i32, i32* %3, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 %122(i32 %123, i32 %126)
  %128 = call i32 @CK(i32 %127)
  br label %163

129:                                              ; preds = %116, %113
  %130 = load i32, i32* %3, align 4
  %131 = icmp sgt i32 %130, 160
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  %133 = load i32, i32* %3, align 4
  %134 = icmp slt i32 %133, 224
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  %138 = load i32 (i32, i32)*, i32 (i32, i32)** %137, align 8
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 65216, %139
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 %138(i32 %140, i32 %143)
  %145 = call i32 @CK(i32 %144)
  br label %162

146:                                              ; preds = %132, %129
  %147 = load i32, i32* %3, align 4
  %148 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %149 = and i32 %147, %148
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 3
  %155 = load i32 (i32, i32)*, i32 (i32, i32)** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 %155(i32 %156, i32 %159)
  %161 = call i32 @CK(i32 %160)
  br label %162

162:                                              ; preds = %146, %135
  br label %163

163:                                              ; preds = %162, %119
  br label %164

164:                                              ; preds = %163, %105
  br label %165

165:                                              ; preds = %164, %78
  br label %166

166:                                              ; preds = %165, %58
  br label %167

167:                                              ; preds = %166, %41
  br label %168

168:                                              ; preds = %167, %30
  br label %169

169:                                              ; preds = %168, %24
  br label %170

170:                                              ; preds = %169, %16
  br label %540

171:                                              ; preds = %8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, -16
  store i32 %175, i32* %173, align 8
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* %3, align 4
  %180 = icmp sgt i32 %179, 32
  br i1 %180, label %181, label %325

181:                                              ; preds = %171
  %182 = load i32, i32* %3, align 4
  %183 = icmp slt i32 %182, 127
  br i1 %183, label %184, label %325

184:                                              ; preds = %181
  %185 = load i32, i32* %5, align 4
  %186 = sub nsw i32 %185, 33
  %187 = mul nsw i32 %186, 94
  %188 = load i32, i32* %3, align 4
  %189 = add nsw i32 %187, %188
  %190 = sub nsw i32 %189, 33
  store i32 %190, i32* %6, align 4
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 128
  br i1 %194, label %195, label %286

195:                                              ; preds = %184
  %196 = load i32, i32* %6, align 4
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @jisx0208_ucs_table_size, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %198
  %203 = load i32*, i32** @jisx0208_ucs_table, align 8
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %7, align 4
  br label %271

208:                                              ; preds = %198, %195
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %211 = icmp sge i32 %209, %210
  br i1 %211, label %212, label %224

212:                                              ; preds = %208
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @cp932ext1_ucs_table_max, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %224

216:                                              ; preds = %212
  %217 = load i32*, i32** @cp932ext1_ucs_table, align 8
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %220 = sub nsw i32 %218, %219
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %217, i64 %221
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %7, align 4
  br label %270

224:                                              ; preds = %212, %208
  %225 = load i32, i32* %6, align 4
  %226 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %227 = icmp sge i32 %225, %226
  br i1 %227, label %228, label %240

228:                                              ; preds = %224
  %229 = load i32, i32* %6, align 4
  %230 = load i32, i32* @cp932ext2_ucs_table_max, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %240

232:                                              ; preds = %228
  %233 = load i32*, i32** @cp932ext2_ucs_table, align 8
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %236 = sub nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %7, align 4
  br label %269

240:                                              ; preds = %228, %224
  %241 = load i32, i32* %6, align 4
  %242 = load i32, i32* @cp932ext3_ucs_table_min, align 4
  %243 = icmp sge i32 %241, %242
  br i1 %243, label %244, label %256

244:                                              ; preds = %240
  %245 = load i32, i32* %6, align 4
  %246 = load i32, i32* @cp932ext3_ucs_table_max, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %256

248:                                              ; preds = %244
  %249 = load i32*, i32** @cp932ext3_ucs_table, align 8
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @cp932ext3_ucs_table_min, align 4
  %252 = sub nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %249, i64 %253
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %7, align 4
  br label %268

256:                                              ; preds = %244, %240
  %257 = load i32, i32* %6, align 4
  %258 = icmp sge i32 %257, 8836
  br i1 %258, label %259, label %266

259:                                              ; preds = %256
  %260 = load i32, i32* %6, align 4
  %261 = icmp slt i32 %260, 10716
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = load i32, i32* %6, align 4
  %264 = sub nsw i32 %263, 8836
  %265 = add nsw i32 %264, 57344
  store i32 %265, i32* %7, align 4
  br label %267

266:                                              ; preds = %259, %256
  store i32 0, i32* %7, align 4
  br label %267

267:                                              ; preds = %266, %262
  br label %268

268:                                              ; preds = %267, %248
  br label %269

269:                                              ; preds = %268, %232
  br label %270

270:                                              ; preds = %269, %216
  br label %271

271:                                              ; preds = %270, %202
  %272 = load i32, i32* %7, align 4
  %273 = icmp sle i32 %272, 0
  br i1 %273, label %274, label %285

274:                                              ; preds = %271
  %275 = load i32, i32* %5, align 4
  %276 = shl i32 %275, 8
  %277 = load i32, i32* %3, align 4
  %278 = or i32 %276, %277
  store i32 %278, i32* %7, align 4
  %279 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %280 = load i32, i32* %7, align 4
  %281 = and i32 %280, %279
  store i32 %281, i32* %7, align 4
  %282 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %283 = load i32, i32* %7, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %7, align 4
  br label %285

285:                                              ; preds = %274, %271
  br label %315

286:                                              ; preds = %184
  %287 = load i32, i32* %6, align 4
  %288 = icmp sge i32 %287, 0
  br i1 %288, label %289, label %299

289:                                              ; preds = %286
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* @jisx0212_ucs_table_size, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %289
  %294 = load i32*, i32** @jisx0212_ucs_table, align 8
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %7, align 4
  br label %300

299:                                              ; preds = %289, %286
  store i32 0, i32* %7, align 4
  br label %300

300:                                              ; preds = %299, %293
  %301 = load i32, i32* %7, align 4
  %302 = icmp sle i32 %301, 0
  br i1 %302, label %303, label %314

303:                                              ; preds = %300
  %304 = load i32, i32* %5, align 4
  %305 = shl i32 %304, 8
  %306 = load i32, i32* %3, align 4
  %307 = or i32 %305, %306
  store i32 %307, i32* %7, align 4
  %308 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %309 = load i32, i32* %7, align 4
  %310 = and i32 %309, %308
  store i32 %310, i32* %7, align 4
  %311 = load i32, i32* @MBFL_WCSPLANE_JIS0212, align 4
  %312 = load i32, i32* %7, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %7, align 4
  br label %314

314:                                              ; preds = %303, %300
  br label %315

315:                                              ; preds = %314, %285
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 3
  %318 = load i32 (i32, i32)*, i32 (i32, i32)** %317, align 8
  %319 = load i32, i32* %7, align 4
  %320 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = call i32 %318(i32 %319, i32 %322)
  %324 = call i32 @CK(i32 %323)
  br label %374

325:                                              ; preds = %181, %171
  %326 = load i32, i32* %3, align 4
  %327 = icmp eq i32 %326, 27
  br i1 %327, label %328, label %333

328:                                              ; preds = %325
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = add nsw i32 %331, 2
  store i32 %332, i32* %330, align 8
  br label %373

333:                                              ; preds = %325
  %334 = load i32, i32* %3, align 4
  %335 = icmp sge i32 %334, 0
  br i1 %335, label %336, label %339

336:                                              ; preds = %333
  %337 = load i32, i32* %3, align 4
  %338 = icmp slt i32 %337, 33
  br i1 %338, label %342, label %339

339:                                              ; preds = %336, %333
  %340 = load i32, i32* %3, align 4
  %341 = icmp eq i32 %340, 127
  br i1 %341, label %342, label %352

342:                                              ; preds = %339, %336
  %343 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 3
  %345 = load i32 (i32, i32)*, i32 (i32, i32)** %344, align 8
  %346 = load i32, i32* %3, align 4
  %347 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %348 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = call i32 %345(i32 %346, i32 %349)
  %351 = call i32 @CK(i32 %350)
  br label %372

352:                                              ; preds = %339
  %353 = load i32, i32* %5, align 4
  %354 = shl i32 %353, 8
  %355 = load i32, i32* %3, align 4
  %356 = or i32 %354, %355
  store i32 %356, i32* %7, align 4
  %357 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %358 = load i32, i32* %7, align 4
  %359 = and i32 %358, %357
  store i32 %359, i32* %7, align 4
  %360 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %361 = load i32, i32* %7, align 4
  %362 = or i32 %361, %360
  store i32 %362, i32* %7, align 4
  %363 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %363, i32 0, i32 3
  %365 = load i32 (i32, i32)*, i32 (i32, i32)** %364, align 8
  %366 = load i32, i32* %7, align 4
  %367 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = call i32 %365(i32 %366, i32 %369)
  %371 = call i32 @CK(i32 %370)
  br label %372

372:                                              ; preds = %352, %342
  br label %373

373:                                              ; preds = %372, %328
  br label %374

374:                                              ; preds = %373, %315
  br label %540

375:                                              ; preds = %8
  %376 = load i32, i32* %3, align 4
  %377 = icmp eq i32 %376, 36
  br i1 %377, label %378, label %383

378:                                              ; preds = %375
  %379 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %380, align 8
  br label %405

383:                                              ; preds = %375
  %384 = load i32, i32* %3, align 4
  %385 = icmp eq i32 %384, 40
  br i1 %385, label %386, label %391

386:                                              ; preds = %383
  %387 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = add nsw i32 %389, 3
  store i32 %390, i32* %388, align 8
  br label %404

391:                                              ; preds = %383
  %392 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = and i32 %394, -16
  store i32 %395, i32* %393, align 8
  %396 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 3
  %398 = load i32 (i32, i32)*, i32 (i32, i32)** %397, align 8
  %399 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = call i32 %398(i32 27, i32 %401)
  %403 = call i32 @CK(i32 %402)
  br label %8

404:                                              ; preds = %386
  br label %405

405:                                              ; preds = %404, %378
  br label %540

406:                                              ; preds = %8
  %407 = load i32, i32* %3, align 4
  %408 = icmp eq i32 %407, 64
  br i1 %408, label %412, label %409

409:                                              ; preds = %406
  %410 = load i32, i32* %3, align 4
  %411 = icmp eq i32 %410, 66
  br i1 %411, label %412, label %415

412:                                              ; preds = %409, %406
  %413 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %414 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %413, i32 0, i32 0
  store i32 128, i32* %414, align 8
  br label %445

415:                                              ; preds = %409
  %416 = load i32, i32* %3, align 4
  %417 = icmp eq i32 %416, 40
  br i1 %417, label %418, label %423

418:                                              ; preds = %415
  %419 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %420, align 8
  br label %444

423:                                              ; preds = %415
  %424 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = and i32 %426, -16
  store i32 %427, i32* %425, align 8
  %428 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %429 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %428, i32 0, i32 3
  %430 = load i32 (i32, i32)*, i32 (i32, i32)** %429, align 8
  %431 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = call i32 %430(i32 27, i32 %433)
  %435 = call i32 @CK(i32 %434)
  %436 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %436, i32 0, i32 3
  %438 = load i32 (i32, i32)*, i32 (i32, i32)** %437, align 8
  %439 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 8
  %442 = call i32 %438(i32 36, i32 %441)
  %443 = call i32 @CK(i32 %442)
  br label %8

444:                                              ; preds = %418
  br label %445

445:                                              ; preds = %444, %412
  br label %540

446:                                              ; preds = %8
  %447 = load i32, i32* %3, align 4
  %448 = icmp eq i32 %447, 64
  br i1 %448, label %452, label %449

449:                                              ; preds = %446
  %450 = load i32, i32* %3, align 4
  %451 = icmp eq i32 %450, 66
  br i1 %451, label %452, label %455

452:                                              ; preds = %449, %446
  %453 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %454 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %453, i32 0, i32 0
  store i32 128, i32* %454, align 8
  br label %491

455:                                              ; preds = %449
  %456 = load i32, i32* %3, align 4
  %457 = icmp eq i32 %456, 68
  br i1 %457, label %458, label %461

458:                                              ; preds = %455
  %459 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %460 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %459, i32 0, i32 0
  store i32 144, i32* %460, align 8
  br label %490

461:                                              ; preds = %455
  %462 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %463 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = and i32 %464, -16
  store i32 %465, i32* %463, align 8
  %466 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %467 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %466, i32 0, i32 3
  %468 = load i32 (i32, i32)*, i32 (i32, i32)** %467, align 8
  %469 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %470 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 8
  %472 = call i32 %468(i32 27, i32 %471)
  %473 = call i32 @CK(i32 %472)
  %474 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %475 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %474, i32 0, i32 3
  %476 = load i32 (i32, i32)*, i32 (i32, i32)** %475, align 8
  %477 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 8
  %480 = call i32 %476(i32 36, i32 %479)
  %481 = call i32 @CK(i32 %480)
  %482 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %483 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %482, i32 0, i32 3
  %484 = load i32 (i32, i32)*, i32 (i32, i32)** %483, align 8
  %485 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %486 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 8
  %488 = call i32 %484(i32 40, i32 %487)
  %489 = call i32 @CK(i32 %488)
  br label %8

490:                                              ; preds = %458
  br label %491

491:                                              ; preds = %490, %452
  br label %540

492:                                              ; preds = %8
  %493 = load i32, i32* %3, align 4
  %494 = icmp eq i32 %493, 66
  br i1 %494, label %498, label %495

495:                                              ; preds = %492
  %496 = load i32, i32* %3, align 4
  %497 = icmp eq i32 %496, 72
  br i1 %497, label %498, label %501

498:                                              ; preds = %495, %492
  %499 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %500 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %499, i32 0, i32 0
  store i32 0, i32* %500, align 8
  br label %536

501:                                              ; preds = %495
  %502 = load i32, i32* %3, align 4
  %503 = icmp eq i32 %502, 74
  br i1 %503, label %504, label %507

504:                                              ; preds = %501
  %505 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %506 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %505, i32 0, i32 0
  store i32 16, i32* %506, align 8
  br label %535

507:                                              ; preds = %501
  %508 = load i32, i32* %3, align 4
  %509 = icmp eq i32 %508, 73
  br i1 %509, label %510, label %513

510:                                              ; preds = %507
  %511 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %512 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %511, i32 0, i32 0
  store i32 32, i32* %512, align 8
  br label %534

513:                                              ; preds = %507
  %514 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %515 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = and i32 %516, -16
  store i32 %517, i32* %515, align 8
  %518 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %519 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %518, i32 0, i32 3
  %520 = load i32 (i32, i32)*, i32 (i32, i32)** %519, align 8
  %521 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %522 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %521, i32 0, i32 2
  %523 = load i32, i32* %522, align 8
  %524 = call i32 %520(i32 27, i32 %523)
  %525 = call i32 @CK(i32 %524)
  %526 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %527 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %526, i32 0, i32 3
  %528 = load i32 (i32, i32)*, i32 (i32, i32)** %527, align 8
  %529 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %530 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %529, i32 0, i32 2
  %531 = load i32, i32* %530, align 8
  %532 = call i32 %528(i32 40, i32 %531)
  %533 = call i32 @CK(i32 %532)
  br label %8

534:                                              ; preds = %510
  br label %535

535:                                              ; preds = %534, %504
  br label %536

536:                                              ; preds = %535, %498
  br label %540

537:                                              ; preds = %8
  %538 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %539 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %538, i32 0, i32 0
  store i32 0, i32* %539, align 8
  br label %540

540:                                              ; preds = %537, %536, %491, %445, %405, %374, %170
  %541 = load i32, i32* %3, align 4
  ret i32 %541
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
