; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfl_filt_conv_sjis_mobile_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mobile.c_mbfl_filt_conv_sjis_mobile_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 (i32, i32)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@mbfl_no_encoding_sjis_sb = common dso_local global i32 0, align 4
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
@mbfl_no_encoding_sjis_docomo = common dso_local global i32 0, align 4
@mbfl_no_encoding_sjis_kddi = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_WINCP932 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_sjis_mobile_wchar(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %578, %426, %384, %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %613 [
    i32 0, label %15
    i32 1, label %100
    i32 2, label %365
    i32 3, label %398
    i32 4, label %448
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 128
  br i1 %20, label %21, label %49

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @mbfl_no_encoding_sjis_sb, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 27
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 2, i32* %37, align 8
  br label %48

38:                                               ; preds = %29, %21
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load i32 (i32, i32)*, i32 (i32, i32)** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %41(i32 %42, i32 %45)
  %47 = call i32 @CK(i32 %46)
  br label %48

48:                                               ; preds = %38, %32
  br label %99

49:                                               ; preds = %18, %15
  %50 = load i32, i32* %3, align 4
  %51 = icmp sgt i32 %50, 160
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32, i32* %3, align 4
  %54 = icmp slt i32 %53, 224
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 3
  %58 = load i32 (i32, i32)*, i32 (i32, i32)** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 65216, %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %58(i32 %60, i32 %63)
  %65 = call i32 @CK(i32 %64)
  br label %98

66:                                               ; preds = %52, %49
  %67 = load i32, i32* %3, align 4
  %68 = icmp sgt i32 %67, 128
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 253
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 160
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %97

81:                                               ; preds = %72, %69, %66
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i32 (i32, i32)*, i32 (i32, i32)** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 %90(i32 %91, i32 %94)
  %96 = call i32 @CK(i32 %95)
  br label %97

97:                                               ; preds = %81, %75
  br label %98

98:                                               ; preds = %97, %55
  br label %99

99:                                               ; preds = %98, %48
  br label %616

100:                                              ; preds = %11
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %3, align 4
  %107 = icmp sge i32 %106, 64
  br i1 %107, label %108, label %324

108:                                              ; preds = %100
  %109 = load i32, i32* %3, align 4
  %110 = icmp sle i32 %109, 252
  br i1 %110, label %111, label %324

111:                                              ; preds = %108
  %112 = load i32, i32* %3, align 4
  %113 = icmp ne i32 %112, 127
  br i1 %113, label %114, label %324

114:                                              ; preds = %111
  store i32 0, i32* %9, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @SJIS_DECODE(i32 %115, i32 %116, i32 %117, i32 %118)
  %120 = load i32, i32* %7, align 4
  %121 = sub nsw i32 %120, 33
  %122 = mul nsw i32 %121, 94
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %122, %123
  %125 = sub nsw i32 %124, 33
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp sle i32 %126, 137
  br i1 %127, label %128, label %163

128:                                              ; preds = %114
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %129, 31
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 65340, i32* %9, align 4
  br label %162

132:                                              ; preds = %128
  %133 = load i32, i32* %6, align 4
  %134 = icmp eq i32 %133, 32
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 65374, i32* %9, align 4
  br label %161

136:                                              ; preds = %132
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %137, 33
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 8741, i32* %9, align 4
  br label %160

140:                                              ; preds = %136
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 60
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 65293, i32* %9, align 4
  br label %159

144:                                              ; preds = %140
  %145 = load i32, i32* %6, align 4
  %146 = icmp eq i32 %145, 80
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 65504, i32* %9, align 4
  br label %158

148:                                              ; preds = %144
  %149 = load i32, i32* %6, align 4
  %150 = icmp eq i32 %149, 81
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 65505, i32* %9, align 4
  br label %157

152:                                              ; preds = %148
  %153 = load i32, i32* %6, align 4
  %154 = icmp eq i32 %153, 137
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 65506, i32* %9, align 4
  br label %156

156:                                              ; preds = %155, %152
  br label %157

157:                                              ; preds = %156, %151
  br label %158

158:                                              ; preds = %157, %147
  br label %159

159:                                              ; preds = %158, %143
  br label %160

160:                                              ; preds = %159, %139
  br label %161

161:                                              ; preds = %160, %135
  br label %162

162:                                              ; preds = %161, %131
  br label %163

163:                                              ; preds = %162, %114
  %164 = load i32, i32* %9, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %300

166:                                              ; preds = %163
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %169 = icmp sge i32 %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %166
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @cp932ext1_ucs_table_max, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %170
  %175 = load i32*, i32** @cp932ext1_ucs_table, align 8
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %178 = sub nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %175, i64 %179
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %9, align 4
  br label %241

182:                                              ; preds = %170, %166
  %183 = load i32, i32* %6, align 4
  %184 = icmp sge i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @jisx0208_ucs_table_size, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %185
  %190 = load i32*, i32** @jisx0208_ucs_table, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %9, align 4
  br label %240

195:                                              ; preds = %185, %182
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %198 = icmp sge i32 %196, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %195
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @cp932ext2_ucs_table_max, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %211

203:                                              ; preds = %199
  %204 = load i32*, i32** @cp932ext2_ucs_table, align 8
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* @cp932ext2_ucs_table_min, align 4
  %207 = sub nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %204, i64 %208
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %9, align 4
  br label %239

211:                                              ; preds = %199, %195
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* @cp932ext3_ucs_table_min, align 4
  %214 = icmp sge i32 %212, %213
  br i1 %214, label %215, label %227

215:                                              ; preds = %211
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* @cp932ext3_ucs_table_max, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %227

219:                                              ; preds = %215
  %220 = load i32*, i32** @cp932ext3_ucs_table, align 8
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @cp932ext3_ucs_table_min, align 4
  %223 = sub nsw i32 %221, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %220, i64 %224
  %226 = load i32, i32* %225, align 4
  store i32 %226, i32* %9, align 4
  br label %238

227:                                              ; preds = %215, %211
  %228 = load i32, i32* %6, align 4
  %229 = icmp sge i32 %228, 8836
  br i1 %229, label %230, label %237

230:                                              ; preds = %227
  %231 = load i32, i32* %6, align 4
  %232 = icmp slt i32 %231, 10716
  br i1 %232, label %233, label %237

233:                                              ; preds = %230
  %234 = load i32, i32* %6, align 4
  %235 = sub nsw i32 %234, 8836
  %236 = add nsw i32 %235, 57344
  store i32 %236, i32* %9, align 4
  br label %237

237:                                              ; preds = %233, %230, %227
  br label %238

238:                                              ; preds = %237, %219
  br label %239

239:                                              ; preds = %238, %203
  br label %240

240:                                              ; preds = %239, %189
  br label %241

241:                                              ; preds = %240, %174
  %242 = load i32, i32* %6, align 4
  %243 = icmp sge i32 %242, 8836
  br i1 %243, label %244, label %299

244:                                              ; preds = %241
  %245 = load i32, i32* %6, align 4
  %246 = icmp slt i32 %245, 11186
  br i1 %246, label %247, label %299

247:                                              ; preds = %244
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 4
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @mbfl_no_encoding_sjis_docomo, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %247
  %256 = load i32, i32* %6, align 4
  %257 = call i32 @mbfilter_sjis_emoji_docomo2unicode(i32 %256, i32* %10)
  store i32 %257, i32* %9, align 4
  br label %282

258:                                              ; preds = %247
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 4
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @mbfl_no_encoding_sjis_kddi, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %258
  %267 = load i32, i32* %6, align 4
  %268 = call i32 @mbfilter_sjis_emoji_kddi2unicode(i32 %267, i32* %10)
  store i32 %268, i32* %9, align 4
  br label %281

269:                                              ; preds = %258
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 4
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @mbfl_no_encoding_sjis_sb, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %269
  %278 = load i32, i32* %6, align 4
  %279 = call i32 @mbfilter_sjis_emoji_sb2unicode(i32 %278, i32* %10)
  store i32 %279, i32* %9, align 4
  br label %280

280:                                              ; preds = %277, %269
  br label %281

281:                                              ; preds = %280, %266
  br label %282

282:                                              ; preds = %281, %255
  %283 = load i32, i32* %9, align 4
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %298

285:                                              ; preds = %282
  %286 = load i32, i32* %10, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %298

288:                                              ; preds = %285
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 3
  %291 = load i32 (i32, i32)*, i32 (i32, i32)** %290, align 8
  %292 = load i32, i32* %10, align 4
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = call i32 %291(i32 %292, i32 %295)
  %297 = call i32 @CK(i32 %296)
  br label %298

298:                                              ; preds = %288, %285, %282
  br label %299

299:                                              ; preds = %298, %244, %241
  br label %300

300:                                              ; preds = %299, %163
  %301 = load i32, i32* %9, align 4
  %302 = icmp sle i32 %301, 0
  br i1 %302, label %303, label %314

303:                                              ; preds = %300
  %304 = load i32, i32* %7, align 4
  %305 = shl i32 %304, 8
  %306 = load i32, i32* %8, align 4
  %307 = or i32 %305, %306
  store i32 %307, i32* %9, align 4
  %308 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %309 = load i32, i32* %9, align 4
  %310 = and i32 %309, %308
  store i32 %310, i32* %9, align 4
  %311 = load i32, i32* @MBFL_WCSPLANE_WINCP932, align 4
  %312 = load i32, i32* %9, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %9, align 4
  br label %314

314:                                              ; preds = %303, %300
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 3
  %317 = load i32 (i32, i32)*, i32 (i32, i32)** %316, align 8
  %318 = load i32, i32* %9, align 4
  %319 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = call i32 %317(i32 %318, i32 %321)
  %323 = call i32 @CK(i32 %322)
  br label %364

324:                                              ; preds = %111, %108, %100
  %325 = load i32, i32* %3, align 4
  %326 = icmp sge i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %324
  %328 = load i32, i32* %3, align 4
  %329 = icmp slt i32 %328, 33
  br i1 %329, label %333, label %330

330:                                              ; preds = %327, %324
  %331 = load i32, i32* %3, align 4
  %332 = icmp eq i32 %331, 127
  br i1 %332, label %333, label %343

333:                                              ; preds = %330, %327
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 3
  %336 = load i32 (i32, i32)*, i32 (i32, i32)** %335, align 8
  %337 = load i32, i32* %3, align 4
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = call i32 %336(i32 %337, i32 %340)
  %342 = call i32 @CK(i32 %341)
  br label %363

343:                                              ; preds = %330
  %344 = load i32, i32* %5, align 4
  %345 = shl i32 %344, 8
  %346 = load i32, i32* %3, align 4
  %347 = or i32 %345, %346
  store i32 %347, i32* %9, align 4
  %348 = load i32, i32* @MBFL_WCSGROUP_MASK, align 4
  %349 = load i32, i32* %9, align 4
  %350 = and i32 %349, %348
  store i32 %350, i32* %9, align 4
  %351 = load i32, i32* @MBFL_WCSGROUP_THROUGH, align 4
  %352 = load i32, i32* %9, align 4
  %353 = or i32 %352, %351
  store i32 %353, i32* %9, align 4
  %354 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 3
  %356 = load i32 (i32, i32)*, i32 (i32, i32)** %355, align 8
  %357 = load i32, i32* %9, align 4
  %358 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = call i32 %356(i32 %357, i32 %360)
  %362 = call i32 @CK(i32 %361)
  br label %363

363:                                              ; preds = %343, %333
  br label %364

364:                                              ; preds = %363, %314
  br label %616

365:                                              ; preds = %11
  %366 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %367 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %366, i32 0, i32 4
  %368 = load %struct.TYPE_4__*, %struct.TYPE_4__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* @mbfl_no_encoding_sjis_sb, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %384

373:                                              ; preds = %365
  %374 = load i32, i32* %3, align 4
  %375 = icmp eq i32 %374, 36
  br i1 %375, label %376, label %384

376:                                              ; preds = %373
  %377 = load i32, i32* %3, align 4
  %378 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 1
  store i32 %377, i32* %379, align 4
  %380 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %381, align 8
  br label %397

384:                                              ; preds = %373, %365
  %385 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i32 0, i32 1
  store i32 0, i32* %386, align 4
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 0
  store i32 0, i32* %388, align 8
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 3
  %391 = load i32 (i32, i32)*, i32 (i32, i32)** %390, align 8
  %392 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 8
  %395 = call i32 %391(i32 27, i32 %394)
  %396 = call i32 @CK(i32 %395)
  br label %11

397:                                              ; preds = %376
  br label %616

398:                                              ; preds = %11
  %399 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i32 0, i32 4
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @mbfl_no_encoding_sjis_sb, align 4
  %405 = icmp eq i32 %403, %404
  br i1 %405, label %406, label %426

406:                                              ; preds = %398
  %407 = load i32, i32* %3, align 4
  %408 = icmp sge i32 %407, 69
  br i1 %408, label %409, label %412

409:                                              ; preds = %406
  %410 = load i32, i32* %3, align 4
  %411 = icmp sle i32 %410, 71
  br i1 %411, label %418, label %412

412:                                              ; preds = %409, %406
  %413 = load i32, i32* %3, align 4
  %414 = icmp sge i32 %413, 79
  br i1 %414, label %415, label %426

415:                                              ; preds = %412
  %416 = load i32, i32* %3, align 4
  %417 = icmp sle i32 %416, 81
  br i1 %417, label %418, label %426

418:                                              ; preds = %415, %409
  %419 = load i32, i32* %3, align 4
  %420 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i32 0, i32 1
  store i32 %419, i32* %421, align 4
  %422 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %423, align 8
  br label %447

426:                                              ; preds = %415, %412, %398
  %427 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 1
  store i32 0, i32* %428, align 4
  %429 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %430 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %429, i32 0, i32 0
  store i32 0, i32* %430, align 8
  %431 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %431, i32 0, i32 3
  %433 = load i32 (i32, i32)*, i32 (i32, i32)** %432, align 8
  %434 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %435 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 8
  %437 = call i32 %433(i32 27, i32 %436)
  %438 = call i32 @CK(i32 %437)
  %439 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %439, i32 0, i32 3
  %441 = load i32 (i32, i32)*, i32 (i32, i32)** %440, align 8
  %442 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %443 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 8
  %445 = call i32 %441(i32 36, i32 %444)
  %446 = call i32 @CK(i32 %445)
  br label %11

447:                                              ; preds = %418
  br label %616

448:                                              ; preds = %11
  store i32 0, i32* %9, align 4
  %449 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %449, i32 0, i32 4
  %451 = load %struct.TYPE_4__*, %struct.TYPE_4__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = load i32, i32* @mbfl_no_encoding_sjis_sb, align 4
  %455 = icmp eq i32 %453, %454
  br i1 %455, label %456, label %575

456:                                              ; preds = %448
  %457 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  store i32 %459, i32* %5, align 4
  %460 = load i32, i32* %3, align 4
  %461 = icmp eq i32 %460, 15
  br i1 %461, label %462, label %468

462:                                              ; preds = %456
  %463 = load i32, i32* %3, align 4
  store i32 %463, i32* %9, align 4
  %464 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 1
  store i32 0, i32* %465, align 4
  %466 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %467 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %466, i32 0, i32 0
  store i32 0, i32* %467, align 8
  br label %574

468:                                              ; preds = %456
  %469 = load i32, i32* %5, align 4
  %470 = icmp eq i32 %469, 71
  br i1 %470, label %471, label %479

471:                                              ; preds = %468
  %472 = load i32, i32* %3, align 4
  %473 = icmp sge i32 %472, 33
  br i1 %473, label %474, label %479

474:                                              ; preds = %471
  %475 = load i32, i32* %3, align 4
  %476 = icmp sle i32 %475, 122
  br i1 %476, label %477, label %479

477:                                              ; preds = %474
  store i32 145, i32* %7, align 4
  %478 = load i32, i32* %3, align 4
  store i32 %478, i32* %8, align 4
  br label %539

479:                                              ; preds = %474, %471, %468
  %480 = load i32, i32* %5, align 4
  %481 = icmp eq i32 %480, 69
  br i1 %481, label %482, label %490

482:                                              ; preds = %479
  %483 = load i32, i32* %3, align 4
  %484 = icmp sge i32 %483, 33
  br i1 %484, label %485, label %490

485:                                              ; preds = %482
  %486 = load i32, i32* %3, align 4
  %487 = icmp sle i32 %486, 122
  br i1 %487, label %488, label %490

488:                                              ; preds = %485
  store i32 141, i32* %7, align 4
  %489 = load i32, i32* %3, align 4
  store i32 %489, i32* %8, align 4
  br label %538

490:                                              ; preds = %485, %482, %479
  %491 = load i32, i32* %5, align 4
  %492 = icmp eq i32 %491, 70
  br i1 %492, label %493, label %501

493:                                              ; preds = %490
  %494 = load i32, i32* %3, align 4
  %495 = icmp sge i32 %494, 33
  br i1 %495, label %496, label %501

496:                                              ; preds = %493
  %497 = load i32, i32* %3, align 4
  %498 = icmp sle i32 %497, 122
  br i1 %498, label %499, label %501

499:                                              ; preds = %496
  store i32 142, i32* %7, align 4
  %500 = load i32, i32* %3, align 4
  store i32 %500, i32* %8, align 4
  br label %537

501:                                              ; preds = %496, %493, %490
  %502 = load i32, i32* %5, align 4
  %503 = icmp eq i32 %502, 79
  br i1 %503, label %504, label %512

504:                                              ; preds = %501
  %505 = load i32, i32* %3, align 4
  %506 = icmp sge i32 %505, 33
  br i1 %506, label %507, label %512

507:                                              ; preds = %504
  %508 = load i32, i32* %3, align 4
  %509 = icmp sle i32 %508, 109
  br i1 %509, label %510, label %512

510:                                              ; preds = %507
  store i32 146, i32* %7, align 4
  %511 = load i32, i32* %3, align 4
  store i32 %511, i32* %8, align 4
  br label %536

512:                                              ; preds = %507, %504, %501
  %513 = load i32, i32* %5, align 4
  %514 = icmp eq i32 %513, 80
  br i1 %514, label %515, label %523

515:                                              ; preds = %512
  %516 = load i32, i32* %3, align 4
  %517 = icmp sge i32 %516, 33
  br i1 %517, label %518, label %523

518:                                              ; preds = %515
  %519 = load i32, i32* %3, align 4
  %520 = icmp sle i32 %519, 108
  br i1 %520, label %521, label %523

521:                                              ; preds = %518
  store i32 149, i32* %7, align 4
  %522 = load i32, i32* %3, align 4
  store i32 %522, i32* %8, align 4
  br label %535

523:                                              ; preds = %518, %515, %512
  %524 = load i32, i32* %5, align 4
  %525 = icmp eq i32 %524, 81
  br i1 %525, label %526, label %534

526:                                              ; preds = %523
  %527 = load i32, i32* %3, align 4
  %528 = icmp sge i32 %527, 33
  br i1 %528, label %529, label %534

529:                                              ; preds = %526
  %530 = load i32, i32* %3, align 4
  %531 = icmp sle i32 %530, 94
  br i1 %531, label %532, label %534

532:                                              ; preds = %529
  store i32 150, i32* %7, align 4
  %533 = load i32, i32* %3, align 4
  store i32 %533, i32* %8, align 4
  br label %534

534:                                              ; preds = %532, %529, %526, %523
  br label %535

535:                                              ; preds = %534, %521
  br label %536

536:                                              ; preds = %535, %510
  br label %537

537:                                              ; preds = %536, %499
  br label %538

538:                                              ; preds = %537, %488
  br label %539

539:                                              ; preds = %538, %477
  %540 = load i32, i32* %7, align 4
  %541 = sub nsw i32 %540, 33
  %542 = mul nsw i32 %541, 94
  %543 = load i32, i32* %8, align 4
  %544 = add nsw i32 %542, %543
  %545 = sub nsw i32 %544, 33
  store i32 %545, i32* %6, align 4
  %546 = load i32, i32* %6, align 4
  %547 = call i32 @mbfilter_sjis_emoji_sb2unicode(i32 %546, i32* %10)
  store i32 %547, i32* %9, align 4
  %548 = load i32, i32* %9, align 4
  %549 = icmp sgt i32 %548, 0
  br i1 %549, label %550, label %573

550:                                              ; preds = %539
  %551 = load i32, i32* %10, align 4
  %552 = icmp sgt i32 %551, 0
  br i1 %552, label %553, label %563

553:                                              ; preds = %550
  %554 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %555 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %554, i32 0, i32 3
  %556 = load i32 (i32, i32)*, i32 (i32, i32)** %555, align 8
  %557 = load i32, i32* %10, align 4
  %558 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %559 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %558, i32 0, i32 2
  %560 = load i32, i32* %559, align 8
  %561 = call i32 %556(i32 %557, i32 %560)
  %562 = call i32 @CK(i32 %561)
  br label %563

563:                                              ; preds = %553, %550
  %564 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %565 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %564, i32 0, i32 3
  %566 = load i32 (i32, i32)*, i32 (i32, i32)** %565, align 8
  %567 = load i32, i32* %9, align 4
  %568 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %569 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %568, i32 0, i32 2
  %570 = load i32, i32* %569, align 8
  %571 = call i32 %566(i32 %567, i32 %570)
  %572 = call i32 @CK(i32 %571)
  br label %573

573:                                              ; preds = %563, %539
  br label %574

574:                                              ; preds = %573, %462
  br label %575

575:                                              ; preds = %574, %448
  %576 = load i32, i32* %9, align 4
  %577 = icmp sle i32 %576, 0
  br i1 %577, label %578, label %612

578:                                              ; preds = %575
  %579 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %580 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 4
  store i32 %581, i32* %5, align 4
  %582 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %583 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %582, i32 0, i32 1
  store i32 0, i32* %583, align 4
  %584 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %585 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %584, i32 0, i32 0
  store i32 0, i32* %585, align 8
  %586 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %587 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %586, i32 0, i32 3
  %588 = load i32 (i32, i32)*, i32 (i32, i32)** %587, align 8
  %589 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %590 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %589, i32 0, i32 2
  %591 = load i32, i32* %590, align 8
  %592 = call i32 %588(i32 27, i32 %591)
  %593 = call i32 @CK(i32 %592)
  %594 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %595 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %594, i32 0, i32 3
  %596 = load i32 (i32, i32)*, i32 (i32, i32)** %595, align 8
  %597 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %598 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %597, i32 0, i32 2
  %599 = load i32, i32* %598, align 8
  %600 = call i32 %596(i32 36, i32 %599)
  %601 = call i32 @CK(i32 %600)
  %602 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %603 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %602, i32 0, i32 3
  %604 = load i32 (i32, i32)*, i32 (i32, i32)** %603, align 8
  %605 = load i32, i32* %5, align 4
  %606 = and i32 %605, 255
  %607 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %608 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %607, i32 0, i32 2
  %609 = load i32, i32* %608, align 8
  %610 = call i32 %604(i32 %606, i32 %609)
  %611 = call i32 @CK(i32 %610)
  br label %11

612:                                              ; preds = %575
  br label %616

613:                                              ; preds = %11
  %614 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %615 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %614, i32 0, i32 0
  store i32 0, i32* %615, align 8
  br label %616

616:                                              ; preds = %613, %612, %447, %397, %364, %99
  %617 = load i32, i32* %3, align 4
  ret i32 %617
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @SJIS_DECODE(i32, i32, i32, i32) #1

declare dso_local i32 @mbfilter_sjis_emoji_docomo2unicode(i32, i32*) #1

declare dso_local i32 @mbfilter_sjis_emoji_kddi2unicode(i32, i32*) #1

declare dso_local i32 @mbfilter_sjis_emoji_sb2unicode(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
