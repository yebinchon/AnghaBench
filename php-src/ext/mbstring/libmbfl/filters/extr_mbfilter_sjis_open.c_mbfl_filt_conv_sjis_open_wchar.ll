; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_open.c_mbfl_filt_conv_sjis_open_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_open.c_mbfl_filt_conv_sjis_open_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 (i32, i32)* }

@MBFL_WCSGROUP_MASK = common dso_local global i32 0, align 4
@MBFL_WCSGROUP_THROUGH = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext1_ucs_table = common dso_local global i32* null, align 8
@jisx0208_ucs_table_size = common dso_local global i32 0, align 4
@jisx0208_ucs_table = common dso_local global i32* null, align 8
@cp932ext2_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext2_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext2_ucs_table = common dso_local global i32* null, align 8
@cp932ext3_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext3_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext3_ucs_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_WINCP932 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_sjis_open_wchar(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %287 [
    i32 0, label %13
    i32 1, label %80
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 128
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %22(i32 %23, i32 %26)
  %28 = call i32 @CK(i32 %27)
  br label %79

29:                                               ; preds = %16, %13
  %30 = load i32, i32* %3, align 4
  %31 = icmp sgt i32 %30, 160
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 224
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32 (i32, i32)*, i32 (i32, i32)** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 65216, %39
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 %38(i32 %40, i32 %43)
  %45 = call i32 @CK(i32 %44)
  br label %78

46:                                               ; preds = %32, %29
  %47 = load i32, i32* %3, align 4
  %48 = icmp sgt i32 %47, 128
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i32, i32* %3, align 4
  %51 = icmp slt i32 %50, 253
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 160
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %77

61:                                               ; preds = %52, %49, %46
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32 (i32, i32)*, i32 (i32, i32)** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 %70(i32 %71, i32 %74)
  %76 = call i32 @CK(i32 %75)
  br label %77

77:                                               ; preds = %61, %55
  br label %78

78:                                               ; preds = %77, %35
  br label %79

79:                                               ; preds = %78, %19
  br label %290

80:                                               ; preds = %2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %3, align 4
  %87 = icmp sge i32 %86, 64
  br i1 %87, label %88, label %246

88:                                               ; preds = %80
  %89 = load i32, i32* %3, align 4
  %90 = icmp sle i32 %89, 252
  br i1 %90, label %91, label %246

91:                                               ; preds = %88
  %92 = load i32, i32* %3, align 4
  %93 = icmp ne i32 %92, 127
  br i1 %93, label %94, label %246

94:                                               ; preds = %91
  store i32 0, i32* %9, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @SJIS_DECODE(i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 %100, 33
  %102 = mul nsw i32 %101, 94
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %102, %103
  %105 = sub nsw i32 %104, 33
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp sle i32 %106, 137
  br i1 %107, label %108, label %143

108:                                              ; preds = %94
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 31
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 65340, i32* %9, align 4
  br label %142

112:                                              ; preds = %108
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 32
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 65374, i32* %9, align 4
  br label %141

116:                                              ; preds = %112
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 33
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 8741, i32* %9, align 4
  br label %140

120:                                              ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 60
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 65293, i32* %9, align 4
  br label %139

124:                                              ; preds = %120
  %125 = load i32, i32* %6, align 4
  %126 = icmp eq i32 %125, 80
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 65504, i32* %9, align 4
  br label %138

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %129, 81
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 65505, i32* %9, align 4
  br label %137

132:                                              ; preds = %128
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %133, 137
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 65506, i32* %9, align 4
  br label %136

136:                                              ; preds = %135, %132
  br label %137

137:                                              ; preds = %136, %131
  br label %138

138:                                              ; preds = %137, %127
  br label %139

139:                                              ; preds = %138, %123
  br label %140

140:                                              ; preds = %139, %119
  br label %141

141:                                              ; preds = %140, %115
  br label %142

142:                                              ; preds = %141, %111
  br label %143

143:                                              ; preds = %142, %94
  %144 = load i32, i32* %9, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %222

146:                                              ; preds = %143
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %146
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @cp932ext1_ucs_table_max, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load i32*, i32** @cp932ext1_ucs_table, align 8
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %158 = sub nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %9, align 4
  br label %221

162:                                              ; preds = %150, %146
  %163 = load i32, i32* %6, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %162
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @jisx0208_ucs_table_size, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load i32*, i32** @jisx0208_ucs_table, align 8
  %171 = load i32, i32* %6, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %9, align 4
  br label %220

175:                                              ; preds = %165, %162
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %178 = icmp sge i32 %176, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %175
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @cp932ext2_ucs_table_max, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %179
  %184 = load i32*, i32** @cp932ext2_ucs_table, align 8
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %187 = sub nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %9, align 4
  br label %219

191:                                              ; preds = %179, %175
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @cp932ext3_ucs_table_min, align 4
  %194 = icmp sge i32 %192, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %191
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @cp932ext3_ucs_table_max, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  %200 = load i32*, i32** @cp932ext3_ucs_table, align 8
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @cp932ext3_ucs_table_min, align 4
  %203 = sub nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %200, i64 %204
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %9, align 4
  br label %218

207:                                              ; preds = %195, %191
  %208 = load i32, i32* %6, align 4
  %209 = icmp sge i32 %208, 8836
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = load i32, i32* %6, align 4
  %212 = icmp slt i32 %211, 10716
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i32, i32* %6, align 4
  %215 = sub nsw i32 %214, 8836
  %216 = add nsw i32 %215, 57344
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %213, %210, %207
  br label %218

218:                                              ; preds = %217, %199
  br label %219

219:                                              ; preds = %218, %183
  br label %220

220:                                              ; preds = %219, %169
  br label %221

221:                                              ; preds = %220, %154
  br label %222

222:                                              ; preds = %221, %143
  %223 = load i32, i32* %9, align 4
  %224 = icmp sle i32 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %222
  %226 = load i32, i32* %7, align 4
  %227 = shl i32 %226, 8
  %228 = load i32, i32* %8, align 4
  %229 = or i32 %227, %228
  store i32 %229, i32* %9, align 4
  %230 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %231 = load i32, i32* %9, align 4
  %232 = and i32 %231, %230
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* @MBFL_WCSPLANE_WINCP932, align 4
  %234 = load i32, i32* %9, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %9, align 4
  br label %236

236:                                              ; preds = %225, %222
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 3
  %239 = load i32 (i32, i32)*, i32 (i32, i32)** %238, align 8
  %240 = load i32, i32* %9, align 4
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i32 %239(i32 %240, i32 %243)
  %245 = call i32 @CK(i32 %244)
  br label %286

246:                                              ; preds = %91, %88, %80
  %247 = load i32, i32* %3, align 4
  %248 = icmp sge i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32, i32* %3, align 4
  %251 = icmp slt i32 %250, 33
  br i1 %251, label %255, label %252

252:                                              ; preds = %249, %246
  %253 = load i32, i32* %3, align 4
  %254 = icmp eq i32 %253, 127
  br i1 %254, label %255, label %265

255:                                              ; preds = %252, %249
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 3
  %258 = load i32 (i32, i32)*, i32 (i32, i32)** %257, align 8
  %259 = load i32, i32* %3, align 4
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = call i32 %258(i32 %259, i32 %262)
  %264 = call i32 @CK(i32 %263)
  br label %285

265:                                              ; preds = %252
  %266 = load i32, i32* %5, align 4
  %267 = shl i32 %266, 8
  %268 = load i32, i32* %3, align 4
  %269 = or i32 %267, %268
  store i32 %269, i32* %9, align 4
  %270 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %271 = load i32, i32* %9, align 4
  %272 = and i32 %271, %270
  store i32 %272, i32* %9, align 4
  %273 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %274 = load i32, i32* %9, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %9, align 4
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %276, i32 0, i32 3
  %278 = load i32 (i32, i32)*, i32 (i32, i32)** %277, align 8
  %279 = load i32, i32* %9, align 4
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = call i32 %278(i32 %279, i32 %282)
  %284 = call i32 @CK(i32 %283)
  br label %285

285:                                              ; preds = %265, %255
  br label %286

286:                                              ; preds = %285, %236
  br label %290

287:                                              ; preds = %2
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 0
  store i32 0, i32* %289, align 8
  br label %290

290:                                              ; preds = %287, %286, %79
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @SJIS_DECODE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
