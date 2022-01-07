; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_jis.c_mbfl_filt_conv_jis_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_jis.c_mbfl_filt_conv_jis_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@jisx0208_ucs_table_size = common dso_local global i32 0, align 4
@jisx0208_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0208 = common dso_local global i32 0, align 4
@jisx0212_ucs_table_size = common dso_local global i32 0, align 4
@jisx0212_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_JIS0212 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_jis_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  br label %8

8:                                                ; preds = %451, %399, %361, %329, %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 15
  switch i32 %12, label %475 [
    i32 0, label %13
    i32 1, label %171
    i32 2, label %313
    i32 3, label %344
    i32 4, label %384
    i32 5, label %430
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
  %104 = icmp slt i32 %103, 127
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
  br label %478

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
  br i1 %180, label %181, label %263

181:                                              ; preds = %171
  %182 = load i32, i32* %3, align 4
  %183 = icmp slt i32 %182, 127
  br i1 %183, label %184, label %263

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
  br i1 %194, label %195, label %224

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
  br label %209

208:                                              ; preds = %198, %195
  store i32 0, i32* %7, align 4
  br label %209

209:                                              ; preds = %208, %202
  %210 = load i32, i32* %7, align 4
  %211 = icmp sle i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %209
  %213 = load i32, i32* %5, align 4
  %214 = shl i32 %213, 8
  %215 = load i32, i32* %3, align 4
  %216 = or i32 %214, %215
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %218 = load i32, i32* %7, align 4
  %219 = and i32 %218, %217
  store i32 %219, i32* %7, align 4
  %220 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %221 = load i32, i32* %7, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %7, align 4
  br label %223

223:                                              ; preds = %212, %209
  br label %253

224:                                              ; preds = %184
  %225 = load i32, i32* %6, align 4
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %237

227:                                              ; preds = %224
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* @jisx0212_ucs_table_size, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %237

231:                                              ; preds = %227
  %232 = load i32*, i32** @jisx0212_ucs_table, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %7, align 4
  br label %238

237:                                              ; preds = %227, %224
  store i32 0, i32* %7, align 4
  br label %238

238:                                              ; preds = %237, %231
  %239 = load i32, i32* %7, align 4
  %240 = icmp sle i32 %239, 0
  br i1 %240, label %241, label %252

241:                                              ; preds = %238
  %242 = load i32, i32* %5, align 4
  %243 = shl i32 %242, 8
  %244 = load i32, i32* %3, align 4
  %245 = or i32 %243, %244
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %247 = load i32, i32* %7, align 4
  %248 = and i32 %247, %246
  store i32 %248, i32* %7, align 4
  %249 = load i32, i32* @MBFL_WCSPLANE_JIS0212, align 4
  %250 = load i32, i32* %7, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %7, align 4
  br label %252

252:                                              ; preds = %241, %238
  br label %253

253:                                              ; preds = %252, %223
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 3
  %256 = load i32 (i32, i32)*, i32 (i32, i32)** %255, align 8
  %257 = load i32, i32* %7, align 4
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = call i32 %256(i32 %257, i32 %260)
  %262 = call i32 @CK(i32 %261)
  br label %312

263:                                              ; preds = %181, %171
  %264 = load i32, i32* %3, align 4
  %265 = icmp eq i32 %264, 27
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, 2
  store i32 %270, i32* %268, align 8
  br label %311

271:                                              ; preds = %263
  %272 = load i32, i32* %3, align 4
  %273 = icmp sge i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = load i32, i32* %3, align 4
  %276 = icmp slt i32 %275, 33
  br i1 %276, label %280, label %277

277:                                              ; preds = %274, %271
  %278 = load i32, i32* %3, align 4
  %279 = icmp eq i32 %278, 127
  br i1 %279, label %280, label %290

280:                                              ; preds = %277, %274
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 3
  %283 = load i32 (i32, i32)*, i32 (i32, i32)** %282, align 8
  %284 = load i32, i32* %3, align 4
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 8
  %288 = call i32 %283(i32 %284, i32 %287)
  %289 = call i32 @CK(i32 %288)
  br label %310

290:                                              ; preds = %277
  %291 = load i32, i32* %5, align 4
  %292 = shl i32 %291, 8
  %293 = load i32, i32* %3, align 4
  %294 = or i32 %292, %293
  store i32 %294, i32* %7, align 4
  %295 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %296 = load i32, i32* %7, align 4
  %297 = and i32 %296, %295
  store i32 %297, i32* %7, align 4
  %298 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %299 = load i32, i32* %7, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %7, align 4
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 3
  %303 = load i32 (i32, i32)*, i32 (i32, i32)** %302, align 8
  %304 = load i32, i32* %7, align 4
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = call i32 %303(i32 %304, i32 %307)
  %309 = call i32 @CK(i32 %308)
  br label %310

310:                                              ; preds = %290, %280
  br label %311

311:                                              ; preds = %310, %266
  br label %312

312:                                              ; preds = %311, %253
  br label %478

313:                                              ; preds = %8
  %314 = load i32, i32* %3, align 4
  %315 = icmp eq i32 %314, 36
  br i1 %315, label %316, label %321

316:                                              ; preds = %313
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %318, align 8
  br label %343

321:                                              ; preds = %313
  %322 = load i32, i32* %3, align 4
  %323 = icmp eq i32 %322, 40
  br i1 %323, label %324, label %329

324:                                              ; preds = %321
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = add nsw i32 %327, 3
  store i32 %328, i32* %326, align 8
  br label %342

329:                                              ; preds = %321
  %330 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = and i32 %332, -16
  store i32 %333, i32* %331, align 8
  %334 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 3
  %336 = load i32 (i32, i32)*, i32 (i32, i32)** %335, align 8
  %337 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = call i32 %336(i32 27, i32 %339)
  %341 = call i32 @CK(i32 %340)
  br label %8

342:                                              ; preds = %324
  br label %343

343:                                              ; preds = %342, %316
  br label %478

344:                                              ; preds = %8
  %345 = load i32, i32* %3, align 4
  %346 = icmp eq i32 %345, 64
  br i1 %346, label %350, label %347

347:                                              ; preds = %344
  %348 = load i32, i32* %3, align 4
  %349 = icmp eq i32 %348, 66
  br i1 %349, label %350, label %353

350:                                              ; preds = %347, %344
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 0
  store i32 128, i32* %352, align 8
  br label %383

353:                                              ; preds = %347
  %354 = load i32, i32* %3, align 4
  %355 = icmp eq i32 %354, 40
  br i1 %355, label %356, label %361

356:                                              ; preds = %353
  %357 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %358, align 8
  br label %382

361:                                              ; preds = %353
  %362 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = and i32 %364, -16
  store i32 %365, i32* %363, align 8
  %366 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 3
  %368 = load i32 (i32, i32)*, i32 (i32, i32)** %367, align 8
  %369 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = call i32 %368(i32 27, i32 %371)
  %373 = call i32 @CK(i32 %372)
  %374 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %374, i32 0, i32 3
  %376 = load i32 (i32, i32)*, i32 (i32, i32)** %375, align 8
  %377 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = call i32 %376(i32 36, i32 %379)
  %381 = call i32 @CK(i32 %380)
  br label %8

382:                                              ; preds = %356
  br label %383

383:                                              ; preds = %382, %350
  br label %478

384:                                              ; preds = %8
  %385 = load i32, i32* %3, align 4
  %386 = icmp eq i32 %385, 64
  br i1 %386, label %390, label %387

387:                                              ; preds = %384
  %388 = load i32, i32* %3, align 4
  %389 = icmp eq i32 %388, 66
  br i1 %389, label %390, label %393

390:                                              ; preds = %387, %384
  %391 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %391, i32 0, i32 0
  store i32 128, i32* %392, align 8
  br label %429

393:                                              ; preds = %387
  %394 = load i32, i32* %3, align 4
  %395 = icmp eq i32 %394, 68
  br i1 %395, label %396, label %399

396:                                              ; preds = %393
  %397 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i32 0, i32 0
  store i32 144, i32* %398, align 8
  br label %428

399:                                              ; preds = %393
  %400 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = and i32 %402, -16
  store i32 %403, i32* %401, align 8
  %404 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 3
  %406 = load i32 (i32, i32)*, i32 (i32, i32)** %405, align 8
  %407 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = call i32 %406(i32 27, i32 %409)
  %411 = call i32 @CK(i32 %410)
  %412 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %412, i32 0, i32 3
  %414 = load i32 (i32, i32)*, i32 (i32, i32)** %413, align 8
  %415 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = call i32 %414(i32 36, i32 %417)
  %419 = call i32 @CK(i32 %418)
  %420 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %420, i32 0, i32 3
  %422 = load i32 (i32, i32)*, i32 (i32, i32)** %421, align 8
  %423 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = call i32 %422(i32 40, i32 %425)
  %427 = call i32 @CK(i32 %426)
  br label %8

428:                                              ; preds = %396
  br label %429

429:                                              ; preds = %428, %390
  br label %478

430:                                              ; preds = %8
  %431 = load i32, i32* %3, align 4
  %432 = icmp eq i32 %431, 66
  br i1 %432, label %436, label %433

433:                                              ; preds = %430
  %434 = load i32, i32* %3, align 4
  %435 = icmp eq i32 %434, 72
  br i1 %435, label %436, label %439

436:                                              ; preds = %433, %430
  %437 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %437, i32 0, i32 0
  store i32 0, i32* %438, align 8
  br label %474

439:                                              ; preds = %433
  %440 = load i32, i32* %3, align 4
  %441 = icmp eq i32 %440, 74
  br i1 %441, label %442, label %445

442:                                              ; preds = %439
  %443 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i32 0, i32 0
  store i32 16, i32* %444, align 8
  br label %473

445:                                              ; preds = %439
  %446 = load i32, i32* %3, align 4
  %447 = icmp eq i32 %446, 73
  br i1 %447, label %448, label %451

448:                                              ; preds = %445
  %449 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %449, i32 0, i32 0
  store i32 32, i32* %450, align 8
  br label %472

451:                                              ; preds = %445
  %452 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = and i32 %454, -16
  store i32 %455, i32* %453, align 8
  %456 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %457 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %456, i32 0, i32 3
  %458 = load i32 (i32, i32)*, i32 (i32, i32)** %457, align 8
  %459 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %460 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 8
  %462 = call i32 %458(i32 27, i32 %461)
  %463 = call i32 @CK(i32 %462)
  %464 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %464, i32 0, i32 3
  %466 = load i32 (i32, i32)*, i32 (i32, i32)** %465, align 8
  %467 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %468 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 8
  %470 = call i32 %466(i32 40, i32 %469)
  %471 = call i32 @CK(i32 %470)
  br label %8

472:                                              ; preds = %448
  br label %473

473:                                              ; preds = %472, %442
  br label %474

474:                                              ; preds = %473, %436
  br label %478

475:                                              ; preds = %8
  %476 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %477 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %476, i32 0, i32 0
  store i32 0, i32* %477, align 8
  br label %478

478:                                              ; preds = %475, %474, %429, %383, %343, %312, %170
  %479 = load i32, i32* %3, align 4
  ret i32 %479
}

declare dso_local i32 @CK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
