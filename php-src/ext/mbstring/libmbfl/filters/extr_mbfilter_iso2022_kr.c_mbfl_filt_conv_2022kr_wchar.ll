; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022_kr.c_mbfl_filt_conv_2022kr_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022_kr.c_mbfl_filt_conv_2022kr_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@uhc2_ucs_table_size = common dso_local global i32 0, align 4
@uhc2_ucs_table = common dso_local global i32* null, align 8
@uhc3_ucs_table_size = common dso_local global i32 0, align 4
@uhc3_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_KSC5601 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_2022kr_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  br label %8

8:                                                ; preds = %318, %284, %262, %2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 15
  switch i32 %12, label %348 [
    i32 0, label %13
    i32 1, label %100
    i32 2, label %254
    i32 3, label %276
    i32 4, label %306
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
  br label %99

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 15
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, -256
  store i32 %28, i32* %26, align 8
  br label %98

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 14
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, 16
  store i32 %36, i32* %34, align 8
  br label %97

37:                                               ; preds = %29
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 16
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = icmp sgt i32 %44, 32
  br i1 %45, label %46, label %57

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 127
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %96

57:                                               ; preds = %46, %43, %37
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 16
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load i32, i32* %3, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 128
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load i32 (i32, i32)*, i32 (i32, i32)** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 %72(i32 %73, i32 %76)
  %78 = call i32 @CK(i32 %77)
  br label %95

79:                                               ; preds = %66, %63, %57
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 3
  %88 = load i32 (i32, i32)*, i32 (i32, i32)** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 %88(i32 %89, i32 %92)
  %94 = call i32 @CK(i32 %93)
  br label %95

95:                                               ; preds = %79, %69
  br label %96

96:                                               ; preds = %95, %49
  br label %97

97:                                               ; preds = %96, %32
  br label %98

98:                                               ; preds = %97, %24
  br label %99

99:                                               ; preds = %98, %16
  br label %351

100:                                              ; preds = %8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, -16
  store i32 %104, i32* %102, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp sgt i32 %108, 32
  br i1 %109, label %110, label %114

110:                                              ; preds = %100
  %111 = load i32, i32* %5, align 4
  %112 = icmp slt i32 %111, 71
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 1, i32* %7, align 4
  br label %125

114:                                              ; preds = %110, %100
  %115 = load i32, i32* %5, align 4
  %116 = icmp sge i32 %115, 71
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load i32, i32* %5, align 4
  %119 = icmp sle i32 %118, 126
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 73
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 2, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %120, %117, %114
  br label %125

125:                                              ; preds = %124, %113
  %126 = load i32, i32* %7, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %204

128:                                              ; preds = %125
  %129 = load i32, i32* %3, align 4
  %130 = icmp sgt i32 %129, 32
  br i1 %130, label %131, label %204

131:                                              ; preds = %128
  %132 = load i32, i32* %3, align 4
  %133 = icmp slt i32 %132, 127
  br i1 %133, label %134, label %204

134:                                              ; preds = %131
  %135 = load i32, i32* %7, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %159

137:                                              ; preds = %134
  %138 = load i32, i32* %5, align 4
  %139 = sub nsw i32 %138, 33
  %140 = mul nsw i32 %139, 190
  %141 = load i32, i32* %3, align 4
  %142 = sub nsw i32 %141, 65
  %143 = add nsw i32 %140, %142
  %144 = add nsw i32 %143, 128
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %137
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @uhc2_ucs_table_size, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load i32*, i32** @uhc2_ucs_table, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %6, align 4
  br label %158

157:                                              ; preds = %147, %137
  store i32 0, i32* %6, align 4
  br label %158

158:                                              ; preds = %157, %151
  br label %180

159:                                              ; preds = %134
  %160 = load i32, i32* %5, align 4
  %161 = sub nsw i32 %160, 71
  %162 = mul nsw i32 %161, 94
  %163 = load i32, i32* %3, align 4
  %164 = sub nsw i32 %163, 33
  %165 = add nsw i32 %162, %164
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %159
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @uhc3_ucs_table_size, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %168
  %173 = load i32*, i32** @uhc3_ucs_table, align 8
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %6, align 4
  br label %179

178:                                              ; preds = %168, %159
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %178, %172
  br label %180

180:                                              ; preds = %179, %158
  %181 = load i32, i32* %6, align 4
  %182 = icmp sle i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = load i32, i32* %5, align 4
  %185 = shl i32 %184, 8
  %186 = load i32, i32* %3, align 4
  %187 = or i32 %185, %186
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %189 = load i32, i32* %6, align 4
  %190 = and i32 %189, %188
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* @MBFL_WCSPLANE_KSC5601, align 4
  %192 = load i32, i32* %6, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %6, align 4
  br label %194

194:                                              ; preds = %183, %180
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 3
  %197 = load i32 (i32, i32)*, i32 (i32, i32)** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 %197(i32 %198, i32 %201)
  %203 = call i32 @CK(i32 %202)
  br label %253

204:                                              ; preds = %131, %128, %125
  %205 = load i32, i32* %3, align 4
  %206 = icmp eq i32 %205, 27
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 8
  br label %252

212:                                              ; preds = %204
  %213 = load i32, i32* %3, align 4
  %214 = icmp sge i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32, i32* %3, align 4
  %217 = icmp slt i32 %216, 33
  br i1 %217, label %221, label %218

218:                                              ; preds = %215, %212
  %219 = load i32, i32* %3, align 4
  %220 = icmp eq i32 %219, 127
  br i1 %220, label %221, label %231

221:                                              ; preds = %218, %215
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 3
  %224 = load i32 (i32, i32)*, i32 (i32, i32)** %223, align 8
  %225 = load i32, i32* %3, align 4
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i32 %224(i32 %225, i32 %228)
  %230 = call i32 @CK(i32 %229)
  br label %251

231:                                              ; preds = %218
  %232 = load i32, i32* %5, align 4
  %233 = shl i32 %232, 8
  %234 = load i32, i32* %3, align 4
  %235 = or i32 %233, %234
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %237 = load i32, i32* %6, align 4
  %238 = and i32 %237, %236
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %240 = load i32, i32* %6, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %6, align 4
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 3
  %244 = load i32 (i32, i32)*, i32 (i32, i32)** %243, align 8
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = call i32 %244(i32 %245, i32 %248)
  %250 = call i32 @CK(i32 %249)
  br label %251

251:                                              ; preds = %231, %221
  br label %252

252:                                              ; preds = %251, %207
  br label %253

253:                                              ; preds = %252, %194
  br label %351

254:                                              ; preds = %8
  %255 = load i32, i32* %3, align 4
  %256 = icmp eq i32 %255, 36
  br i1 %256, label %257, label %262

257:                                              ; preds = %254
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 8
  br label %275

262:                                              ; preds = %254
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = and i32 %265, -16
  store i32 %266, i32* %264, align 8
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 3
  %269 = load i32 (i32, i32)*, i32 (i32, i32)** %268, align 8
  %270 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = call i32 %269(i32 27, i32 %272)
  %274 = call i32 @CK(i32 %273)
  br label %8

275:                                              ; preds = %257
  br label %351

276:                                              ; preds = %8
  %277 = load i32, i32* %3, align 4
  %278 = icmp eq i32 %277, 41
  br i1 %278, label %279, label %284

279:                                              ; preds = %276
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %281, align 8
  br label %305

284:                                              ; preds = %276
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = and i32 %287, -16
  store i32 %288, i32* %286, align 8
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 3
  %291 = load i32 (i32, i32)*, i32 (i32, i32)** %290, align 8
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = call i32 %291(i32 27, i32 %294)
  %296 = call i32 @CK(i32 %295)
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 3
  %299 = load i32 (i32, i32)*, i32 (i32, i32)** %298, align 8
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = call i32 %299(i32 36, i32 %302)
  %304 = call i32 @CK(i32 %303)
  br label %8

305:                                              ; preds = %279
  br label %351

306:                                              ; preds = %8
  %307 = load i32, i32* %3, align 4
  %308 = icmp eq i32 %307, 67
  br i1 %308, label %309, label %318

309:                                              ; preds = %306
  %310 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = and i32 %312, -16
  store i32 %313, i32* %311, align 8
  %314 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = or i32 %316, 256
  store i32 %317, i32* %315, align 8
  br label %347

318:                                              ; preds = %306
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = and i32 %321, -16
  store i32 %322, i32* %320, align 8
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 3
  %325 = load i32 (i32, i32)*, i32 (i32, i32)** %324, align 8
  %326 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = call i32 %325(i32 27, i32 %328)
  %330 = call i32 @CK(i32 %329)
  %331 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 3
  %333 = load i32 (i32, i32)*, i32 (i32, i32)** %332, align 8
  %334 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = call i32 %333(i32 36, i32 %336)
  %338 = call i32 @CK(i32 %337)
  %339 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 3
  %341 = load i32 (i32, i32)*, i32 (i32, i32)** %340, align 8
  %342 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = call i32 %341(i32 41, i32 %344)
  %346 = call i32 @CK(i32 %345)
  br label %8

347:                                              ; preds = %309
  br label %351

348:                                              ; preds = %8
  %349 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 0
  store i32 0, i32* %350, align 8
  br label %351

351:                                              ; preds = %348, %347, %305, %275, %253, %99
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
