; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_tl_jisx0201_jisx0208.c_mbfl_filt_tl_jisx0201_jisx0208.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_tl_jisx0201_jisx0208.c_mbfl_filt_tl_jisx0201_jisx0208.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 (i32, i32)*, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@MBFL_FILT_TL_HAN2ZEN_ALL = common dso_local global i32 0, align 4
@MBFL_FILT_TL_HAN2ZEN_ALPHA = common dso_local global i32 0, align 4
@MBFL_FILT_TL_HAN2ZEN_NUMERIC = common dso_local global i32 0, align 4
@MBFL_FILT_TL_HAN2ZEN_SPACE = common dso_local global i32 0, align 4
@MBFL_FILT_TL_HAN2ZEN_KATAKANA = common dso_local global i32 0, align 4
@MBFL_FILT_TL_HAN2ZEN_HIRAGANA = common dso_local global i32 0, align 4
@MBFL_FILT_TL_HAN2ZEN_GLUE = common dso_local global i32 0, align 4
@hankana2zenkana_table = common dso_local global i32* null, align 8
@hankana2zenhira_table = common dso_local global i32* null, align 8
@MBFL_FILT_TL_HAN2ZEN_COMPAT1 = common dso_local global i32 0, align 4
@MBFL_FILT_TL_HAN2ZEN_COMPAT2 = common dso_local global i32 0, align 4
@MBFL_FILT_TL_ZEN2HAN_KATAKANA = common dso_local global i32 0, align 4
@MBFL_FILT_TL_ZEN2HAN_HIRAGANA = common dso_local global i32 0, align 4
@zenkana2hankana_table = common dso_local global i32** null, align 8
@MBFL_FILT_TL_ZEN2HAN_HIRA2KANA = common dso_local global i32 0, align 4
@MBFL_FILT_TL_ZEN2HAN_KANA2HIRA = common dso_local global i32 0, align 4
@MBFL_FILT_TL_ZEN2HAN_COMPAT1 = common dso_local global i32 0, align 4
@MBFL_FILT_TL_ZEN2HAN_COMPAT2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_tl_jisx0201_jisx0208(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MBFL_FILT_TL_HAN2ZEN_ALL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 33
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %24, 125
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 34
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 39
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 92
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 65248
  store i32 %37, i32* %6, align 4
  br label %84

38:                                               ; preds = %32, %29, %26, %23, %20, %2
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @MBFL_FILT_TL_HAN2ZEN_ALPHA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = icmp sge i32 %44, 65
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = icmp sle i32 %47, 90
  br i1 %48, label %55, label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %4, align 4
  %51 = icmp sge i32 %50, 97
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = icmp sle i32 %53, 122
  br i1 %54, label %55, label %58

55:                                               ; preds = %52, %46
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 65248
  store i32 %57, i32* %6, align 4
  br label %83

58:                                               ; preds = %52, %49, %38
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @MBFL_FILT_TL_HAN2ZEN_NUMERIC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  %65 = icmp sge i32 %64, 48
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp sle i32 %67, 57
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 65248
  store i32 %71, i32* %6, align 4
  br label %82

72:                                               ; preds = %66, %63, %58
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @MBFL_FILT_TL_HAN2ZEN_SPACE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 12288, i32* %6, align 4
  br label %81

81:                                               ; preds = %80, %77, %72
  br label %82

82:                                               ; preds = %81, %69
  br label %83

83:                                               ; preds = %82, %55
  br label %84

84:                                               ; preds = %83, %35
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @MBFL_FILT_TL_HAN2ZEN_KATAKANA, align 4
  %87 = load i32, i32* @MBFL_FILT_TL_HAN2ZEN_HIRAGANA, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %379

91:                                               ; preds = %84
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @MBFL_FILT_TL_HAN2ZEN_KATAKANA, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %219

96:                                               ; preds = %91
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @MBFL_FILT_TL_HAN2ZEN_GLUE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %219

101:                                              ; preds = %96
  %102 = load i32, i32* %4, align 4
  %103 = icmp sge i32 %102, 65377
  br i1 %103, label %104, label %191

104:                                              ; preds = %101
  %105 = load i32, i32* %4, align 4
  %106 = icmp sle i32 %105, 65439
  br i1 %106, label %107, label %191

107:                                              ; preds = %104
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %183

112:                                              ; preds = %107
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 65376
  %117 = and i32 %116, 63
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp eq i32 %118, 65438
  br i1 %119, label %120, label %141

120:                                              ; preds = %112
  %121 = load i32, i32* %7, align 4
  %122 = icmp sge i32 %121, 22
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* %7, align 4
  %125 = icmp sle i32 %124, 36
  br i1 %125, label %132, label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %7, align 4
  %128 = icmp sge i32 %127, 42
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = icmp sle i32 %130, 46
  br i1 %131, label %132, label %141

132:                                              ; preds = %129, %123
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  %135 = load i32*, i32** @hankana2zenkana_table, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 12289, %139
  store i32 %140, i32* %6, align 4
  br label %182

141:                                              ; preds = %129, %126, %112
  %142 = load i32, i32* %4, align 4
  %143 = icmp eq i32 %142, 65438
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i32, i32* %7, align 4
  %146 = icmp eq i32 %145, 19
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  store i32 12532, i32* %6, align 4
  br label %181

150:                                              ; preds = %144, %141
  %151 = load i32, i32* %4, align 4
  %152 = icmp eq i32 %151, 65439
  br i1 %152, label %153, label %168

153:                                              ; preds = %150
  %154 = load i32, i32* %7, align 4
  %155 = icmp sge i32 %154, 42
  br i1 %155, label %156, label %168

156:                                              ; preds = %153
  %157 = load i32, i32* %7, align 4
  %158 = icmp sle i32 %157, 46
  br i1 %158, label %159, label %168

159:                                              ; preds = %156
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  store i32 0, i32* %161, align 8
  %162 = load i32*, i32** @hankana2zenkana_table, align 8
  %163 = load i32, i32* %7, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 12290, %166
  store i32 %167, i32* %6, align 4
  br label %180

168:                                              ; preds = %156, %153, %150
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  %171 = load i32, i32* %4, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load i32*, i32** @hankana2zenkana_table, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 12288, %178
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %168, %159
  br label %181

181:                                              ; preds = %180, %147
  br label %182

182:                                              ; preds = %181, %132
  br label %190

183:                                              ; preds = %107
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  store i32 1, i32* %185, align 8
  %186 = load i32, i32* %4, align 4
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load i32, i32* %4, align 4
  store i32 %189, i32* %3, align 4
  br label %809

190:                                              ; preds = %182
  br label %218

191:                                              ; preds = %104, %101
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %217

196:                                              ; preds = %191
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sub nsw i32 %199, 65376
  %201 = and i32 %200, 63
  store i32 %201, i32* %7, align 4
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  store i32 0, i32* %203, align 8
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 2
  %206 = load i32 (i32, i32)*, i32 (i32, i32)** %205, align 8
  %207 = load i32*, i32** @hankana2zenkana_table, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 12288, %211
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = call i32 %206(i32 %212, i32 %215)
  br label %217

217:                                              ; preds = %196, %191
  br label %218

218:                                              ; preds = %217, %190
  br label %378

219:                                              ; preds = %96, %91
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* @MBFL_FILT_TL_HAN2ZEN_HIRAGANA, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %337

224:                                              ; preds = %219
  %225 = load i32, i32* %8, align 4
  %226 = load i32, i32* @MBFL_FILT_TL_HAN2ZEN_GLUE, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %337

229:                                              ; preds = %224
  %230 = load i32, i32* %4, align 4
  %231 = icmp sge i32 %230, 65377
  br i1 %231, label %232, label %309

232:                                              ; preds = %229
  %233 = load i32, i32* %4, align 4
  %234 = icmp sle i32 %233, 65439
  br i1 %234, label %235, label %309

235:                                              ; preds = %232
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %301

240:                                              ; preds = %235
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = sub nsw i32 %243, 65376
  %245 = and i32 %244, 63
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %4, align 4
  %247 = icmp eq i32 %246, 65438
  br i1 %247, label %248, label %269

248:                                              ; preds = %240
  %249 = load i32, i32* %7, align 4
  %250 = icmp sge i32 %249, 22
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load i32, i32* %7, align 4
  %253 = icmp sle i32 %252, 36
  br i1 %253, label %260, label %254

254:                                              ; preds = %251, %248
  %255 = load i32, i32* %7, align 4
  %256 = icmp sge i32 %255, 42
  br i1 %256, label %257, label %269

257:                                              ; preds = %254
  %258 = load i32, i32* %7, align 4
  %259 = icmp sle i32 %258, 46
  br i1 %259, label %260, label %269

260:                                              ; preds = %257, %251
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  store i32 0, i32* %262, align 8
  %263 = load i32*, i32** @hankana2zenhira_table, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 12289, %267
  store i32 %268, i32* %6, align 4
  br label %300

269:                                              ; preds = %257, %254, %240
  %270 = load i32, i32* %4, align 4
  %271 = icmp eq i32 %270, 65439
  br i1 %271, label %272, label %287

272:                                              ; preds = %269
  %273 = load i32, i32* %7, align 4
  %274 = icmp sge i32 %273, 42
  br i1 %274, label %275, label %287

275:                                              ; preds = %272
  %276 = load i32, i32* %7, align 4
  %277 = icmp sle i32 %276, 46
  br i1 %277, label %278, label %287

278:                                              ; preds = %275
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 0
  store i32 0, i32* %280, align 8
  %281 = load i32*, i32** @hankana2zenhira_table, align 8
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 12290, %285
  store i32 %286, i32* %6, align 4
  br label %299

287:                                              ; preds = %275, %272, %269
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  store i32 1, i32* %289, align 8
  %290 = load i32, i32* %4, align 4
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 1
  store i32 %290, i32* %292, align 4
  %293 = load i32*, i32** @hankana2zenhira_table, align 8
  %294 = load i32, i32* %7, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 12288, %297
  store i32 %298, i32* %6, align 4
  br label %299

299:                                              ; preds = %287, %278
  br label %300

300:                                              ; preds = %299, %260
  br label %308

301:                                              ; preds = %235
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 0
  store i32 1, i32* %303, align 8
  %304 = load i32, i32* %4, align 4
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 1
  store i32 %304, i32* %306, align 4
  %307 = load i32, i32* %4, align 4
  store i32 %307, i32* %3, align 4
  br label %809

308:                                              ; preds = %300
  br label %336

309:                                              ; preds = %232, %229
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %335

314:                                              ; preds = %309
  %315 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = sub nsw i32 %317, 65376
  %319 = and i32 %318, 63
  store i32 %319, i32* %7, align 4
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 0
  store i32 0, i32* %321, align 8
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 2
  %324 = load i32 (i32, i32)*, i32 (i32, i32)** %323, align 8
  %325 = load i32*, i32** @hankana2zenhira_table, align 8
  %326 = load i32, i32* %7, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 12288, %329
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = call i32 %324(i32 %330, i32 %333)
  br label %335

335:                                              ; preds = %314, %309
  br label %336

336:                                              ; preds = %335, %308
  br label %377

337:                                              ; preds = %224, %219
  %338 = load i32, i32* %8, align 4
  %339 = load i32, i32* @MBFL_FILT_TL_HAN2ZEN_KATAKANA, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %356

342:                                              ; preds = %337
  %343 = load i32, i32* %4, align 4
  %344 = icmp sge i32 %343, 65377
  br i1 %344, label %345, label %356

345:                                              ; preds = %342
  %346 = load i32, i32* %4, align 4
  %347 = icmp sle i32 %346, 65439
  br i1 %347, label %348, label %356

348:                                              ; preds = %345
  %349 = load i32*, i32** @hankana2zenkana_table, align 8
  %350 = load i32, i32* %4, align 4
  %351 = sub nsw i32 %350, 65376
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %349, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 12288, %354
  store i32 %355, i32* %6, align 4
  br label %376

356:                                              ; preds = %345, %342, %337
  %357 = load i32, i32* %8, align 4
  %358 = load i32, i32* @MBFL_FILT_TL_HAN2ZEN_HIRAGANA, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %375

361:                                              ; preds = %356
  %362 = load i32, i32* %4, align 4
  %363 = icmp sge i32 %362, 65377
  br i1 %363, label %364, label %375

364:                                              ; preds = %361
  %365 = load i32, i32* %4, align 4
  %366 = icmp sle i32 %365, 65439
  br i1 %366, label %367, label %375

367:                                              ; preds = %364
  %368 = load i32*, i32** @hankana2zenhira_table, align 8
  %369 = load i32, i32* %4, align 4
  %370 = sub nsw i32 %369, 65376
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %368, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 12288, %373
  store i32 %374, i32* %6, align 4
  br label %375

375:                                              ; preds = %367, %364, %361, %356
  br label %376

376:                                              ; preds = %375, %348
  br label %377

377:                                              ; preds = %376, %336
  br label %378

378:                                              ; preds = %377, %218
  br label %379

379:                                              ; preds = %378, %84
  %380 = load i32, i32* %8, align 4
  %381 = load i32, i32* @MBFL_FILT_TL_HAN2ZEN_COMPAT1, align 4
  %382 = and i32 %380, %381
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %414

384:                                              ; preds = %379
  %385 = load i32, i32* %4, align 4
  %386 = icmp eq i32 %385, 92
  br i1 %386, label %387, label %388

387:                                              ; preds = %384
  store i32 65509, i32* %6, align 4
  br label %413

388:                                              ; preds = %384
  %389 = load i32, i32* %4, align 4
  %390 = icmp eq i32 %389, 165
  br i1 %390, label %391, label %392

391:                                              ; preds = %388
  store i32 65509, i32* %6, align 4
  br label %412

392:                                              ; preds = %388
  %393 = load i32, i32* %4, align 4
  %394 = icmp eq i32 %393, 126
  br i1 %394, label %395, label %396

395:                                              ; preds = %392
  store i32 65507, i32* %6, align 4
  br label %411

396:                                              ; preds = %392
  %397 = load i32, i32* %4, align 4
  %398 = icmp eq i32 %397, 8254
  br i1 %398, label %399, label %400

399:                                              ; preds = %396
  store i32 65507, i32* %6, align 4
  br label %410

400:                                              ; preds = %396
  %401 = load i32, i32* %4, align 4
  %402 = icmp eq i32 %401, 39
  br i1 %402, label %403, label %404

403:                                              ; preds = %400
  store i32 8217, i32* %6, align 4
  br label %409

404:                                              ; preds = %400
  %405 = load i32, i32* %4, align 4
  %406 = icmp eq i32 %405, 34
  br i1 %406, label %407, label %408

407:                                              ; preds = %404
  store i32 8221, i32* %6, align 4
  br label %408

408:                                              ; preds = %407, %404
  br label %409

409:                                              ; preds = %408, %403
  br label %410

410:                                              ; preds = %409, %399
  br label %411

411:                                              ; preds = %410, %395
  br label %412

412:                                              ; preds = %411, %391
  br label %413

413:                                              ; preds = %412, %387
  br label %440

414:                                              ; preds = %379
  %415 = load i32, i32* %8, align 4
  %416 = load i32, i32* @MBFL_FILT_TL_HAN2ZEN_COMPAT2, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %439

419:                                              ; preds = %414
  %420 = load i32, i32* %4, align 4
  %421 = icmp eq i32 %420, 92
  br i1 %421, label %422, label %423

422:                                              ; preds = %419
  store i32 65340, i32* %6, align 4
  br label %438

423:                                              ; preds = %419
  %424 = load i32, i32* %4, align 4
  %425 = icmp eq i32 %424, 126
  br i1 %425, label %426, label %427

426:                                              ; preds = %423
  store i32 65374, i32* %6, align 4
  br label %437

427:                                              ; preds = %423
  %428 = load i32, i32* %4, align 4
  %429 = icmp eq i32 %428, 39
  br i1 %429, label %430, label %431

430:                                              ; preds = %427
  store i32 65287, i32* %6, align 4
  br label %436

431:                                              ; preds = %427
  %432 = load i32, i32* %4, align 4
  %433 = icmp eq i32 %432, 34
  br i1 %433, label %434, label %435

434:                                              ; preds = %431
  store i32 65282, i32* %6, align 4
  br label %435

435:                                              ; preds = %434, %431
  br label %436

436:                                              ; preds = %435, %430
  br label %437

437:                                              ; preds = %436, %426
  br label %438

438:                                              ; preds = %437, %422
  br label %439

439:                                              ; preds = %438, %414
  br label %440

440:                                              ; preds = %439, %413
  %441 = load i32, i32* %8, align 4
  %442 = and i32 %441, 240
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %519

444:                                              ; preds = %440
  %445 = load i32, i32* %8, align 4
  %446 = and i32 %445, 16
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %466

448:                                              ; preds = %444
  %449 = load i32, i32* %4, align 4
  %450 = icmp sge i32 %449, 65281
  br i1 %450, label %451, label %466

451:                                              ; preds = %448
  %452 = load i32, i32* %4, align 4
  %453 = icmp sle i32 %452, 65373
  br i1 %453, label %454, label %466

454:                                              ; preds = %451
  %455 = load i32, i32* %4, align 4
  %456 = icmp ne i32 %455, 65282
  br i1 %456, label %457, label %466

457:                                              ; preds = %454
  %458 = load i32, i32* %4, align 4
  %459 = icmp ne i32 %458, 65287
  br i1 %459, label %460, label %466

460:                                              ; preds = %457
  %461 = load i32, i32* %4, align 4
  %462 = icmp ne i32 %461, 65340
  br i1 %462, label %463, label %466

463:                                              ; preds = %460
  %464 = load i32, i32* %4, align 4
  %465 = sub nsw i32 %464, 65248
  store i32 %465, i32* %6, align 4
  br label %518

466:                                              ; preds = %460, %457, %454, %451, %448, %444
  %467 = load i32, i32* %8, align 4
  %468 = and i32 %467, 32
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %485

470:                                              ; preds = %466
  %471 = load i32, i32* %4, align 4
  %472 = icmp sge i32 %471, 65313
  br i1 %472, label %473, label %476

473:                                              ; preds = %470
  %474 = load i32, i32* %4, align 4
  %475 = icmp sle i32 %474, 65338
  br i1 %475, label %482, label %476

476:                                              ; preds = %473, %470
  %477 = load i32, i32* %4, align 4
  %478 = icmp sge i32 %477, 65345
  br i1 %478, label %479, label %485

479:                                              ; preds = %476
  %480 = load i32, i32* %4, align 4
  %481 = icmp sle i32 %480, 65370
  br i1 %481, label %482, label %485

482:                                              ; preds = %479, %473
  %483 = load i32, i32* %4, align 4
  %484 = sub nsw i32 %483, 65248
  store i32 %484, i32* %6, align 4
  br label %517

485:                                              ; preds = %479, %476, %466
  %486 = load i32, i32* %8, align 4
  %487 = and i32 %486, 64
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %498

489:                                              ; preds = %485
  %490 = load i32, i32* %4, align 4
  %491 = icmp sge i32 %490, 65296
  br i1 %491, label %492, label %498

492:                                              ; preds = %489
  %493 = load i32, i32* %4, align 4
  %494 = icmp sle i32 %493, 65305
  br i1 %494, label %495, label %498

495:                                              ; preds = %492
  %496 = load i32, i32* %4, align 4
  %497 = sub nsw i32 %496, 65248
  store i32 %497, i32* %6, align 4
  br label %516

498:                                              ; preds = %492, %489, %485
  %499 = load i32, i32* %8, align 4
  %500 = and i32 %499, 128
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %506

502:                                              ; preds = %498
  %503 = load i32, i32* %4, align 4
  %504 = icmp eq i32 %503, 12288
  br i1 %504, label %505, label %506

505:                                              ; preds = %502
  store i32 32, i32* %6, align 4
  br label %515

506:                                              ; preds = %502, %498
  %507 = load i32, i32* %8, align 4
  %508 = and i32 %507, 16
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %514

510:                                              ; preds = %506
  %511 = load i32, i32* %4, align 4
  %512 = icmp eq i32 %511, 8722
  br i1 %512, label %513, label %514

513:                                              ; preds = %510
  store i32 45, i32* %6, align 4
  br label %514

514:                                              ; preds = %513, %510, %506
  br label %515

515:                                              ; preds = %514, %505
  br label %516

516:                                              ; preds = %515, %495
  br label %517

517:                                              ; preds = %516, %482
  br label %518

518:                                              ; preds = %517, %463
  br label %519

519:                                              ; preds = %518, %440
  %520 = load i32, i32* %8, align 4
  %521 = load i32, i32* @MBFL_FILT_TL_ZEN2HAN_KATAKANA, align 4
  %522 = load i32, i32* @MBFL_FILT_TL_ZEN2HAN_HIRAGANA, align 4
  %523 = or i32 %521, %522
  %524 = and i32 %520, %523
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %680

526:                                              ; preds = %519
  %527 = load i32, i32* %8, align 4
  %528 = load i32, i32* @MBFL_FILT_TL_ZEN2HAN_KATAKANA, align 4
  %529 = and i32 %527, %528
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %582

531:                                              ; preds = %526
  %532 = load i32, i32* %4, align 4
  %533 = icmp sge i32 %532, 12449
  br i1 %533, label %534, label %582

534:                                              ; preds = %531
  %535 = load i32, i32* %4, align 4
  %536 = icmp sle i32 %535, 12532
  br i1 %536, label %537, label %582

537:                                              ; preds = %534
  %538 = load i32, i32* %4, align 4
  %539 = sub nsw i32 %538, 12449
  store i32 %539, i32* %7, align 4
  %540 = load i32**, i32*** @zenkana2hankana_table, align 8
  %541 = load i32, i32* %7, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32*, i32** %540, i64 %542
  %544 = load i32*, i32** %543, align 8
  %545 = getelementptr inbounds i32, i32* %544, i64 1
  %546 = load i32, i32* %545, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %572

548:                                              ; preds = %537
  %549 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %550 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %549, i32 0, i32 2
  %551 = load i32 (i32, i32)*, i32 (i32, i32)** %550, align 8
  %552 = load i32**, i32*** @zenkana2hankana_table, align 8
  %553 = load i32, i32* %7, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i32*, i32** %552, i64 %554
  %556 = load i32*, i32** %555, align 8
  %557 = getelementptr inbounds i32, i32* %556, i64 0
  %558 = load i32, i32* %557, align 4
  %559 = add nsw i32 65280, %558
  %560 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %561 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %560, i32 0, i32 3
  %562 = load i32, i32* %561, align 8
  %563 = call i32 %551(i32 %559, i32 %562)
  %564 = load i32**, i32*** @zenkana2hankana_table, align 8
  %565 = load i32, i32* %7, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i32*, i32** %564, i64 %566
  %568 = load i32*, i32** %567, align 8
  %569 = getelementptr inbounds i32, i32* %568, i64 1
  %570 = load i32, i32* %569, align 4
  %571 = add nsw i32 65280, %570
  store i32 %571, i32* %6, align 4
  br label %581

572:                                              ; preds = %537
  %573 = load i32**, i32*** @zenkana2hankana_table, align 8
  %574 = load i32, i32* %7, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i32*, i32** %573, i64 %575
  %577 = load i32*, i32** %576, align 8
  %578 = getelementptr inbounds i32, i32* %577, i64 0
  %579 = load i32, i32* %578, align 4
  %580 = add nsw i32 65280, %579
  store i32 %580, i32* %6, align 4
  br label %581

581:                                              ; preds = %572, %548
  br label %679

582:                                              ; preds = %534, %531, %526
  %583 = load i32, i32* %8, align 4
  %584 = load i32, i32* @MBFL_FILT_TL_ZEN2HAN_HIRAGANA, align 4
  %585 = and i32 %583, %584
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %638

587:                                              ; preds = %582
  %588 = load i32, i32* %4, align 4
  %589 = icmp sge i32 %588, 12353
  br i1 %589, label %590, label %638

590:                                              ; preds = %587
  %591 = load i32, i32* %4, align 4
  %592 = icmp sle i32 %591, 12435
  br i1 %592, label %593, label %638

593:                                              ; preds = %590
  %594 = load i32, i32* %4, align 4
  %595 = sub nsw i32 %594, 12353
  store i32 %595, i32* %7, align 4
  %596 = load i32**, i32*** @zenkana2hankana_table, align 8
  %597 = load i32, i32* %7, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i32*, i32** %596, i64 %598
  %600 = load i32*, i32** %599, align 8
  %601 = getelementptr inbounds i32, i32* %600, i64 1
  %602 = load i32, i32* %601, align 4
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %628

604:                                              ; preds = %593
  %605 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %606 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %605, i32 0, i32 2
  %607 = load i32 (i32, i32)*, i32 (i32, i32)** %606, align 8
  %608 = load i32**, i32*** @zenkana2hankana_table, align 8
  %609 = load i32, i32* %7, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i32*, i32** %608, i64 %610
  %612 = load i32*, i32** %611, align 8
  %613 = getelementptr inbounds i32, i32* %612, i64 0
  %614 = load i32, i32* %613, align 4
  %615 = add nsw i32 65280, %614
  %616 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %617 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %616, i32 0, i32 3
  %618 = load i32, i32* %617, align 8
  %619 = call i32 %607(i32 %615, i32 %618)
  %620 = load i32**, i32*** @zenkana2hankana_table, align 8
  %621 = load i32, i32* %7, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i32*, i32** %620, i64 %622
  %624 = load i32*, i32** %623, align 8
  %625 = getelementptr inbounds i32, i32* %624, i64 1
  %626 = load i32, i32* %625, align 4
  %627 = add nsw i32 65280, %626
  store i32 %627, i32* %6, align 4
  br label %637

628:                                              ; preds = %593
  %629 = load i32**, i32*** @zenkana2hankana_table, align 8
  %630 = load i32, i32* %7, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds i32*, i32** %629, i64 %631
  %633 = load i32*, i32** %632, align 8
  %634 = getelementptr inbounds i32, i32* %633, i64 0
  %635 = load i32, i32* %634, align 4
  %636 = add nsw i32 65280, %635
  store i32 %636, i32* %6, align 4
  br label %637

637:                                              ; preds = %628, %604
  br label %678

638:                                              ; preds = %590, %587, %582
  %639 = load i32, i32* %4, align 4
  %640 = icmp eq i32 %639, 12289
  br i1 %640, label %641, label %642

641:                                              ; preds = %638
  store i32 65380, i32* %6, align 4
  br label %677

642:                                              ; preds = %638
  %643 = load i32, i32* %4, align 4
  %644 = icmp eq i32 %643, 12290
  br i1 %644, label %645, label %646

645:                                              ; preds = %642
  store i32 65377, i32* %6, align 4
  br label %676

646:                                              ; preds = %642
  %647 = load i32, i32* %4, align 4
  %648 = icmp eq i32 %647, 12300
  br i1 %648, label %649, label %650

649:                                              ; preds = %646
  store i32 65378, i32* %6, align 4
  br label %675

650:                                              ; preds = %646
  %651 = load i32, i32* %4, align 4
  %652 = icmp eq i32 %651, 12301
  br i1 %652, label %653, label %654

653:                                              ; preds = %650
  store i32 65379, i32* %6, align 4
  br label %674

654:                                              ; preds = %650
  %655 = load i32, i32* %4, align 4
  %656 = icmp eq i32 %655, 12443
  br i1 %656, label %657, label %658

657:                                              ; preds = %654
  store i32 65438, i32* %6, align 4
  br label %673

658:                                              ; preds = %654
  %659 = load i32, i32* %4, align 4
  %660 = icmp eq i32 %659, 12444
  br i1 %660, label %661, label %662

661:                                              ; preds = %658
  store i32 65439, i32* %6, align 4
  br label %672

662:                                              ; preds = %658
  %663 = load i32, i32* %4, align 4
  %664 = icmp eq i32 %663, 12540
  br i1 %664, label %665, label %666

665:                                              ; preds = %662
  store i32 65392, i32* %6, align 4
  br label %671

666:                                              ; preds = %662
  %667 = load i32, i32* %4, align 4
  %668 = icmp eq i32 %667, 12539
  br i1 %668, label %669, label %670

669:                                              ; preds = %666
  store i32 65381, i32* %6, align 4
  br label %670

670:                                              ; preds = %669, %666
  br label %671

671:                                              ; preds = %670, %665
  br label %672

672:                                              ; preds = %671, %661
  br label %673

673:                                              ; preds = %672, %657
  br label %674

674:                                              ; preds = %673, %653
  br label %675

675:                                              ; preds = %674, %649
  br label %676

676:                                              ; preds = %675, %645
  br label %677

677:                                              ; preds = %676, %641
  br label %678

678:                                              ; preds = %677, %637
  br label %679

679:                                              ; preds = %678, %581
  br label %730

680:                                              ; preds = %519
  %681 = load i32, i32* %8, align 4
  %682 = load i32, i32* @MBFL_FILT_TL_ZEN2HAN_HIRA2KANA, align 4
  %683 = load i32, i32* @MBFL_FILT_TL_ZEN2HAN_KANA2HIRA, align 4
  %684 = or i32 %682, %683
  %685 = and i32 %681, %684
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %687, label %729

687:                                              ; preds = %680
  %688 = load i32, i32* %8, align 4
  %689 = load i32, i32* @MBFL_FILT_TL_ZEN2HAN_HIRA2KANA, align 4
  %690 = and i32 %688, %689
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %692, label %707

692:                                              ; preds = %687
  %693 = load i32, i32* %4, align 4
  %694 = icmp sge i32 %693, 12353
  br i1 %694, label %695, label %698

695:                                              ; preds = %692
  %696 = load i32, i32* %4, align 4
  %697 = icmp sle i32 %696, 12435
  br i1 %697, label %704, label %698

698:                                              ; preds = %695, %692
  %699 = load i32, i32* %4, align 4
  %700 = icmp eq i32 %699, 12445
  br i1 %700, label %704, label %701

701:                                              ; preds = %698
  %702 = load i32, i32* %4, align 4
  %703 = icmp eq i32 %702, 12446
  br i1 %703, label %704, label %707

704:                                              ; preds = %701, %698, %695
  %705 = load i32, i32* %4, align 4
  %706 = add nsw i32 %705, 96
  store i32 %706, i32* %6, align 4
  br label %728

707:                                              ; preds = %701, %687
  %708 = load i32, i32* %8, align 4
  %709 = load i32, i32* @MBFL_FILT_TL_ZEN2HAN_KANA2HIRA, align 4
  %710 = and i32 %708, %709
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %727

712:                                              ; preds = %707
  %713 = load i32, i32* %4, align 4
  %714 = icmp sge i32 %713, 12449
  br i1 %714, label %715, label %718

715:                                              ; preds = %712
  %716 = load i32, i32* %4, align 4
  %717 = icmp sle i32 %716, 12531
  br i1 %717, label %724, label %718

718:                                              ; preds = %715, %712
  %719 = load i32, i32* %4, align 4
  %720 = icmp eq i32 %719, 12541
  br i1 %720, label %724, label %721

721:                                              ; preds = %718
  %722 = load i32, i32* %4, align 4
  %723 = icmp eq i32 %722, 12542
  br i1 %723, label %724, label %727

724:                                              ; preds = %721, %718, %715
  %725 = load i32, i32* %4, align 4
  %726 = sub nsw i32 %725, 96
  store i32 %726, i32* %6, align 4
  br label %727

727:                                              ; preds = %724, %721, %707
  br label %728

728:                                              ; preds = %727, %704
  br label %729

729:                                              ; preds = %728, %680
  br label %730

730:                                              ; preds = %729, %679
  %731 = load i32, i32* %8, align 4
  %732 = load i32, i32* @MBFL_FILT_TL_ZEN2HAN_COMPAT1, align 4
  %733 = and i32 %731, %732
  %734 = icmp ne i32 %733, 0
  br i1 %734, label %735, label %775

735:                                              ; preds = %730
  %736 = load i32, i32* %4, align 4
  %737 = icmp eq i32 %736, 65509
  br i1 %737, label %738, label %739

738:                                              ; preds = %735
  store i32 92, i32* %6, align 4
  br label %774

739:                                              ; preds = %735
  %740 = load i32, i32* %4, align 4
  %741 = icmp eq i32 %740, 65340
  br i1 %741, label %742, label %743

742:                                              ; preds = %739
  store i32 92, i32* %6, align 4
  br label %773

743:                                              ; preds = %739
  %744 = load i32, i32* %4, align 4
  %745 = icmp eq i32 %744, 65507
  br i1 %745, label %746, label %747

746:                                              ; preds = %743
  store i32 126, i32* %6, align 4
  br label %772

747:                                              ; preds = %743
  %748 = load i32, i32* %4, align 4
  %749 = icmp eq i32 %748, 8254
  br i1 %749, label %750, label %751

750:                                              ; preds = %747
  store i32 126, i32* %6, align 4
  br label %771

751:                                              ; preds = %747
  %752 = load i32, i32* %4, align 4
  %753 = icmp eq i32 %752, 8216
  br i1 %753, label %754, label %755

754:                                              ; preds = %751
  store i32 39, i32* %6, align 4
  br label %770

755:                                              ; preds = %751
  %756 = load i32, i32* %4, align 4
  %757 = icmp eq i32 %756, 8217
  br i1 %757, label %758, label %759

758:                                              ; preds = %755
  store i32 39, i32* %6, align 4
  br label %769

759:                                              ; preds = %755
  %760 = load i32, i32* %4, align 4
  %761 = icmp eq i32 %760, 8220
  br i1 %761, label %762, label %763

762:                                              ; preds = %759
  store i32 34, i32* %6, align 4
  br label %768

763:                                              ; preds = %759
  %764 = load i32, i32* %4, align 4
  %765 = icmp eq i32 %764, 8221
  br i1 %765, label %766, label %767

766:                                              ; preds = %763
  store i32 34, i32* %6, align 4
  br label %767

767:                                              ; preds = %766, %763
  br label %768

768:                                              ; preds = %767, %762
  br label %769

769:                                              ; preds = %768, %758
  br label %770

770:                                              ; preds = %769, %754
  br label %771

771:                                              ; preds = %770, %750
  br label %772

772:                                              ; preds = %771, %746
  br label %773

773:                                              ; preds = %772, %742
  br label %774

774:                                              ; preds = %773, %738
  br label %775

775:                                              ; preds = %774, %730
  %776 = load i32, i32* %8, align 4
  %777 = load i32, i32* @MBFL_FILT_TL_ZEN2HAN_COMPAT2, align 4
  %778 = and i32 %776, %777
  %779 = icmp ne i32 %778, 0
  br i1 %779, label %780, label %800

780:                                              ; preds = %775
  %781 = load i32, i32* %4, align 4
  %782 = icmp eq i32 %781, 65340
  br i1 %782, label %783, label %784

783:                                              ; preds = %780
  store i32 92, i32* %6, align 4
  br label %799

784:                                              ; preds = %780
  %785 = load i32, i32* %4, align 4
  %786 = icmp eq i32 %785, 65374
  br i1 %786, label %787, label %788

787:                                              ; preds = %784
  store i32 126, i32* %6, align 4
  br label %798

788:                                              ; preds = %784
  %789 = load i32, i32* %4, align 4
  %790 = icmp eq i32 %789, 65287
  br i1 %790, label %791, label %792

791:                                              ; preds = %788
  store i32 39, i32* %6, align 4
  br label %797

792:                                              ; preds = %788
  %793 = load i32, i32* %4, align 4
  %794 = icmp eq i32 %793, 65282
  br i1 %794, label %795, label %796

795:                                              ; preds = %792
  store i32 34, i32* %6, align 4
  br label %796

796:                                              ; preds = %795, %792
  br label %797

797:                                              ; preds = %796, %791
  br label %798

798:                                              ; preds = %797, %787
  br label %799

799:                                              ; preds = %798, %783
  br label %800

800:                                              ; preds = %799, %775
  %801 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %802 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %801, i32 0, i32 2
  %803 = load i32 (i32, i32)*, i32 (i32, i32)** %802, align 8
  %804 = load i32, i32* %6, align 4
  %805 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %806 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %805, i32 0, i32 3
  %807 = load i32, i32* %806, align 8
  %808 = call i32 %803(i32 %804, i32 %807)
  store i32 %808, i32* %3, align 4
  br label %809

809:                                              ; preds = %800, %301, %183
  %810 = load i32, i32* %3, align 4
  ret i32 %810
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
