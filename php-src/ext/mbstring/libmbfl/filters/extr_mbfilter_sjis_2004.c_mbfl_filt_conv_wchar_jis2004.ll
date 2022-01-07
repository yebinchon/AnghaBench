; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_2004.c_mbfl_filt_conv_wchar_jis2004.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_2004.c_mbfl_filt_conv_wchar_jis2004.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 (i32, i32)*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@jisx0213_u2_tbl_len = common dso_local global i32 0, align 4
@jisx0213_u2_tbl = common dso_local global i32* null, align 8
@jisx0213_u2_key = common dso_local global i32* null, align 8
@jisx0213_u2_fb_tbl = common dso_local global i32* null, align 8
@mbfl_no_encoding_sjis2004 = common dso_local global i64 0, align 8
@mbfl_no_encoding_eucjp2004 = common dso_local global i64 0, align 8
@uni2jis_tbl_len = common dso_local global i32 0, align 4
@uni2jis_tbl_range = common dso_local global i32** null, align 8
@uni2jis_tbl = common dso_local global i32** null, align 8
@ucs_c1_jisx0213_min = common dso_local global i32 0, align 4
@ucs_c1_jisx0213_max = common dso_local global i32 0, align 4
@ucs_c1_jisx0213_tbl = common dso_local global i32* null, align 8
@ucs_c1_jisx0213_tbl_len = common dso_local global i32 0, align 4
@ucs_c1_jisx0213_ofst = common dso_local global i32* null, align 8
@jisx0213_u5_tbl_min = common dso_local global i32 0, align 4
@jisx0213_u5_tbl_max = common dso_local global i32 0, align 4
@jisx0213_u5_jis_key = common dso_local global i32 0, align 4
@jisx0213_u5_tbl_len = common dso_local global i32 0, align 4
@jisx0213_u5_jis_tbl = common dso_local global i32* null, align 8
@ucs_r2b_jisx0213_cmap_key = common dso_local global i32 0, align 4
@ucs_r2b_jisx0213_cmap_len = common dso_local global i32 0, align 4
@ucs_r2b_jisx0213_cmap_val = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0213 = common dso_local global i32 0, align 4
@mbfl_no_encoding_2022jp_2004 = common dso_local global i64 0, align 8
@jisx0213_p2_ofst_len = common dso_local global i32 0, align 4
@jisx0213_p2_ofst = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_jis2004(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %222, %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 230
  br i1 %19, label %41, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 596
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp sle i32 %24, 745
  br i1 %25, label %41, label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %4, align 4
  %28 = icmp sge i32 %27, 12363
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp sle i32 %30, 12371
  br i1 %31, label %41, label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %4, align 4
  %34 = icmp sge i32 %33, 12459
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = icmp sle i32 %36, 12488
  br i1 %37, label %41, label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 12791
  br i1 %40, label %41, label %69

41:                                               ; preds = %38, %35, %29, %23, %17
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %65, %41
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @jisx0213_u2_tbl_len, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = load i32*, i32** @jisx0213_u2_tbl, align 8
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %47, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %46
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %3, align 4
  br label %742

64:                                               ; preds = %46
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %42

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68, %38, %11
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 15
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %242

75:                                               ; preds = %69
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %242

80:                                               ; preds = %75
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @jisx0213_u2_tbl_len, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %242

86:                                               ; preds = %80
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %6, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, -16
  store i32 %93, i32* %91, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load i32*, i32** @jisx0213_u2_tbl, align 8
  %97 = load i32, i32* %6, align 4
  %98 = mul nsw i32 2, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 596
  br i1 %103, label %113, label %104

104:                                              ; preds = %86
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 652
  br i1 %106, label %113, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = icmp eq i32 %108, 601
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 602
  br i1 %112, label %113, label %119

113:                                              ; preds = %110, %107, %104, %86
  %114 = load i32, i32* %4, align 4
  %115 = icmp eq i32 %114, 769
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %116, %113, %110
  %120 = load i32, i32* %4, align 4
  %121 = load i32*, i32** @jisx0213_u2_tbl, align 8
  %122 = load i32, i32* %6, align 4
  %123 = mul nsw i32 2, %122
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %120, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %119
  %130 = load i32*, i32** @jisx0213_u2_key, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %9, align 4
  br label %241

135:                                              ; preds = %119
  %136 = load i32*, i32** @jisx0213_u2_fb_tbl, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %9, align 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @mbfl_no_encoding_sjis2004, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %135
  %149 = load i32, i32* %9, align 4
  %150 = ashr i32 %149, 8
  %151 = and i32 %150, 255
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %9, align 4
  %153 = and i32 %152, 255
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @SJIS_ENCODE(i32 %154, i32 %155, i32 %156, i32 %157)
  br label %222

159:                                              ; preds = %135
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @mbfl_no_encoding_eucjp2004, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %159
  %168 = load i32, i32* %9, align 4
  %169 = and i32 %168, 255
  %170 = add nsw i32 %169, 128
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %9, align 4
  %172 = ashr i32 %171, 8
  %173 = and i32 %172, 255
  %174 = add nsw i32 %173, 128
  store i32 %174, i32* %9, align 4
  br label %221

175:                                              ; preds = %159
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 512
  br i1 %179, label %180, label %213

180:                                              ; preds = %175
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 3
  %183 = load i32 (i32, i32)*, i32 (i32, i32)** %182, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 %183(i32 27, i32 %186)
  %188 = call i32 @CK(i32 %187)
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 3
  %191 = load i32 (i32, i32)*, i32 (i32, i32)** %190, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 %191(i32 36, i32 %194)
  %196 = call i32 @CK(i32 %195)
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 3
  %199 = load i32 (i32, i32)*, i32 (i32, i32)** %198, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 %199(i32 40, i32 %202)
  %204 = call i32 @CK(i32 %203)
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 3
  %207 = load i32 (i32, i32)*, i32 (i32, i32)** %206, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = call i32 %207(i32 81, i32 %210)
  %212 = call i32 @CK(i32 %211)
  br label %213

213:                                              ; preds = %180, %175
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  store i32 512, i32* %215, align 8
  %216 = load i32, i32* %9, align 4
  %217 = and i32 %216, 127
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %9, align 4
  %219 = ashr i32 %218, 8
  %220 = and i32 %219, 127
  store i32 %220, i32* %9, align 4
  br label %221

221:                                              ; preds = %213, %167
  br label %222

222:                                              ; preds = %221, %148
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 3
  %225 = load i32 (i32, i32)*, i32 (i32, i32)** %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 %225(i32 %226, i32 %229)
  %231 = call i32 @CK(i32 %230)
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 3
  %234 = load i32 (i32, i32)*, i32 (i32, i32)** %233, align 8
  %235 = load i32, i32* %10, align 4
  %236 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 %234(i32 %235, i32 %238)
  %240 = call i32 @CK(i32 %239)
  br label %11

241:                                              ; preds = %129
  br label %242

242:                                              ; preds = %241, %80, %75, %69
  %243 = load i32, i32* %9, align 4
  %244 = icmp sle i32 %243, 0
  br i1 %244, label %245, label %293

245:                                              ; preds = %242
  store i32 0, i32* %6, align 4
  br label %246

246:                                              ; preds = %289, %245
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* @uni2jis_tbl_len, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %292

250:                                              ; preds = %246
  %251 = load i32, i32* %4, align 4
  %252 = load i32**, i32*** @uni2jis_tbl_range, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp sge i32 %251, %258
  br i1 %259, label %260, label %288

260:                                              ; preds = %250
  %261 = load i32, i32* %4, align 4
  %262 = load i32**, i32*** @uni2jis_tbl_range, align 8
  %263 = load i32, i32* %6, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32*, i32** %262, i64 %264
  %266 = load i32*, i32** %265, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  %268 = load i32, i32* %267, align 4
  %269 = icmp sle i32 %261, %268
  br i1 %269, label %270, label %288

270:                                              ; preds = %260
  %271 = load i32**, i32*** @uni2jis_tbl, align 8
  %272 = load i32, i32* %6, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32*, i32** %271, i64 %273
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %4, align 4
  %277 = load i32**, i32*** @uni2jis_tbl_range, align 8
  %278 = load i32, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32*, i32** %277, i64 %279
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = sub nsw i32 %276, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %275, i64 %285
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %9, align 4
  br label %292

288:                                              ; preds = %260, %250
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %6, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %6, align 4
  br label %246

292:                                              ; preds = %270, %246
  br label %293

293:                                              ; preds = %292, %242
  %294 = load i32, i32* %9, align 4
  %295 = icmp sle i32 %294, 0
  br i1 %295, label %296, label %327

296:                                              ; preds = %293
  %297 = load i32, i32* %4, align 4
  %298 = load i32, i32* @ucs_c1_jisx0213_min, align 4
  %299 = icmp sge i32 %297, %298
  br i1 %299, label %300, label %327

300:                                              ; preds = %296
  %301 = load i32, i32* %4, align 4
  %302 = load i32, i32* @ucs_c1_jisx0213_max, align 4
  %303 = icmp sle i32 %301, %302
  br i1 %303, label %304, label %327

304:                                              ; preds = %300
  %305 = load i32, i32* %4, align 4
  %306 = load i32*, i32** @ucs_c1_jisx0213_tbl, align 8
  %307 = load i32, i32* @ucs_c1_jisx0213_tbl_len, align 4
  %308 = call i32 @mbfl_bisec_srch(i32 %305, i32* %306, i32 %307)
  store i32 %308, i32* %6, align 4
  %309 = load i32, i32* %6, align 4
  %310 = icmp sge i32 %309, 0
  br i1 %310, label %311, label %326

311:                                              ; preds = %304
  %312 = load i32*, i32** @ucs_c1_jisx0213_ofst, align 8
  %313 = load i32, i32* %6, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* %4, align 4
  %318 = add nsw i32 %316, %317
  %319 = load i32*, i32** @ucs_c1_jisx0213_tbl, align 8
  %320 = load i32, i32* %6, align 4
  %321 = mul nsw i32 2, %320
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %319, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = sub nsw i32 %318, %324
  store i32 %325, i32* %9, align 4
  br label %326

326:                                              ; preds = %311, %304
  br label %327

327:                                              ; preds = %326, %300, %296, %293
  %328 = load i32, i32* %9, align 4
  %329 = icmp sle i32 %328, 0
  br i1 %329, label %330, label %353

330:                                              ; preds = %327
  %331 = load i32, i32* %4, align 4
  %332 = load i32, i32* @jisx0213_u5_tbl_min, align 4
  %333 = icmp sge i32 %331, %332
  br i1 %333, label %334, label %353

334:                                              ; preds = %330
  %335 = load i32, i32* %4, align 4
  %336 = load i32, i32* @jisx0213_u5_tbl_max, align 4
  %337 = icmp sle i32 %335, %336
  br i1 %337, label %338, label %353

338:                                              ; preds = %334
  %339 = load i32, i32* %4, align 4
  %340 = sub nsw i32 %339, 131072
  %341 = load i32, i32* @jisx0213_u5_jis_key, align 4
  %342 = load i32, i32* @jisx0213_u5_tbl_len, align 4
  %343 = call i32 @mbfl_bisec_srch2(i32 %340, i32 %341, i32 %342)
  store i32 %343, i32* %6, align 4
  %344 = load i32, i32* %6, align 4
  %345 = icmp sge i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %338
  %347 = load i32*, i32** @jisx0213_u5_jis_tbl, align 8
  %348 = load i32, i32* %6, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  store i32 %351, i32* %9, align 4
  br label %352

352:                                              ; preds = %346, %338
  br label %353

353:                                              ; preds = %352, %334, %330, %327
  %354 = load i32, i32* %9, align 4
  %355 = icmp sle i32 %354, 0
  br i1 %355, label %356, label %387

356:                                              ; preds = %353
  %357 = load i32, i32* %4, align 4
  %358 = icmp eq i32 %357, 65093
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  store i32 9022, i32* %9, align 4
  br label %386

360:                                              ; preds = %356
  %361 = load i32, i32* %4, align 4
  %362 = icmp eq i32 %361, 65094
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  store i32 9021, i32* %9, align 4
  br label %385

364:                                              ; preds = %360
  %365 = load i32, i32* %4, align 4
  %366 = icmp sge i32 %365, 63773
  br i1 %366, label %367, label %384

367:                                              ; preds = %364
  %368 = load i32, i32* %4, align 4
  %369 = icmp sle i32 %368, 63964
  br i1 %369, label %370, label %384

370:                                              ; preds = %367
  %371 = load i32, i32* %4, align 4
  %372 = load i32, i32* @ucs_r2b_jisx0213_cmap_key, align 4
  %373 = load i32, i32* @ucs_r2b_jisx0213_cmap_len, align 4
  %374 = call i32 @mbfl_bisec_srch2(i32 %371, i32 %372, i32 %373)
  store i32 %374, i32* %6, align 4
  %375 = load i32, i32* %6, align 4
  %376 = icmp sge i32 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %370
  %378 = load i32*, i32** @ucs_r2b_jisx0213_cmap_val, align 8
  %379 = load i32, i32* %6, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  store i32 %382, i32* %9, align 4
  br label %383

383:                                              ; preds = %377, %370
  br label %384

384:                                              ; preds = %383, %367, %364
  br label %385

385:                                              ; preds = %384, %363
  br label %386

386:                                              ; preds = %385, %359
  br label %387

387:                                              ; preds = %386, %353
  %388 = load i32, i32* %9, align 4
  %389 = icmp sle i32 %388, 0
  br i1 %389, label %390, label %412

390:                                              ; preds = %387
  %391 = load i32, i32* %4, align 4
  %392 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %393 = xor i32 %392, -1
  %394 = and i32 %391, %393
  store i32 %394, i32* %7, align 4
  %395 = load i32, i32* %7, align 4
  %396 = load i32, i32* @MBFL_WCSPLANE_JIS0213, align 4
  %397 = icmp eq i32 %395, %396
  br i1 %397, label %398, label %402

398:                                              ; preds = %390
  %399 = load i32, i32* %4, align 4
  %400 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %401 = and i32 %399, %400
  store i32 %401, i32* %9, align 4
  br label %402

402:                                              ; preds = %398, %390
  %403 = load i32, i32* %4, align 4
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %402
  store i32 0, i32* %9, align 4
  br label %411

406:                                              ; preds = %402
  %407 = load i32, i32* %9, align 4
  %408 = icmp sle i32 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %406
  store i32 -1, i32* %9, align 4
  br label %410

410:                                              ; preds = %409, %406
  br label %411

411:                                              ; preds = %410, %405
  br label %417

412:                                              ; preds = %387
  %413 = load i32, i32* %9, align 4
  %414 = icmp sge i32 %413, 39296
  br i1 %414, label %415, label %416

415:                                              ; preds = %412
  store i32 -1, i32* %9, align 4
  br label %416

416:                                              ; preds = %415, %412
  br label %417

417:                                              ; preds = %416, %411
  %418 = load i32, i32* %9, align 4
  %419 = icmp sge i32 %418, 0
  br i1 %419, label %420, label %735

420:                                              ; preds = %417
  %421 = load i32, i32* %9, align 4
  %422 = icmp slt i32 %421, 128
  br i1 %422, label %423, label %474

423:                                              ; preds = %420
  %424 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 4
  %426 = load %struct.TYPE_5__*, %struct.TYPE_5__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @mbfl_no_encoding_2022jp_2004, align 8
  %430 = icmp eq i64 %428, %429
  br i1 %430, label %431, label %462

431:                                              ; preds = %423
  %432 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = and i32 %434, 65280
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %462

437:                                              ; preds = %431
  %438 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i32 0, i32 3
  %440 = load i32 (i32, i32)*, i32 (i32, i32)** %439, align 8
  %441 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %441, i32 0, i32 2
  %443 = load i32, i32* %442, align 8
  %444 = call i32 %440(i32 27, i32 %443)
  %445 = call i32 @CK(i32 %444)
  %446 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %446, i32 0, i32 3
  %448 = load i32 (i32, i32)*, i32 (i32, i32)** %447, align 8
  %449 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %450 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = call i32 %448(i32 40, i32 %451)
  %453 = call i32 @CK(i32 %452)
  %454 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %454, i32 0, i32 3
  %456 = load i32 (i32, i32)*, i32 (i32, i32)** %455, align 8
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 8
  %460 = call i32 %456(i32 66, i32 %459)
  %461 = call i32 @CK(i32 %460)
  br label %462

462:                                              ; preds = %437, %431, %423
  %463 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %464 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %463, i32 0, i32 0
  store i32 0, i32* %464, align 8
  %465 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %466 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %465, i32 0, i32 3
  %467 = load i32 (i32, i32)*, i32 (i32, i32)** %466, align 8
  %468 = load i32, i32* %9, align 4
  %469 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %470 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 8
  %472 = call i32 %467(i32 %468, i32 %471)
  %473 = call i32 @CK(i32 %472)
  br label %734

474:                                              ; preds = %420
  %475 = load i32, i32* %9, align 4
  %476 = icmp slt i32 %475, 256
  br i1 %476, label %477, label %504

477:                                              ; preds = %474
  %478 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %479 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %478, i32 0, i32 4
  %480 = load %struct.TYPE_5__*, %struct.TYPE_5__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %480, i32 0, i32 0
  %482 = load i64, i64* %481, align 8
  %483 = load i64, i64* @mbfl_no_encoding_eucjp2004, align 8
  %484 = icmp eq i64 %482, %483
  br i1 %484, label %485, label %494

485:                                              ; preds = %477
  %486 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %486, i32 0, i32 3
  %488 = load i32 (i32, i32)*, i32 (i32, i32)** %487, align 8
  %489 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %490 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 8
  %492 = call i32 %488(i32 142, i32 %491)
  %493 = call i32 @CK(i32 %492)
  br label %494

494:                                              ; preds = %485, %477
  %495 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %496 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %495, i32 0, i32 3
  %497 = load i32 (i32, i32)*, i32 (i32, i32)** %496, align 8
  %498 = load i32, i32* %9, align 4
  %499 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %500 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %499, i32 0, i32 2
  %501 = load i32, i32* %500, align 8
  %502 = call i32 %497(i32 %498, i32 %501)
  %503 = call i32 @CK(i32 %502)
  br label %733

504:                                              ; preds = %474
  %505 = load i32, i32* %9, align 4
  %506 = icmp slt i32 %505, 32512
  br i1 %506, label %507, label %609

507:                                              ; preds = %504
  %508 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %509 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %508, i32 0, i32 4
  %510 = load %struct.TYPE_5__*, %struct.TYPE_5__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %510, i32 0, i32 0
  %512 = load i64, i64* %511, align 8
  %513 = load i64, i64* @mbfl_no_encoding_sjis2004, align 8
  %514 = icmp eq i64 %512, %513
  br i1 %514, label %515, label %526

515:                                              ; preds = %507
  %516 = load i32, i32* %9, align 4
  %517 = ashr i32 %516, 8
  %518 = and i32 %517, 255
  store i32 %518, i32* %7, align 4
  %519 = load i32, i32* %9, align 4
  %520 = and i32 %519, 255
  store i32 %520, i32* %8, align 4
  %521 = load i32, i32* %7, align 4
  %522 = load i32, i32* %8, align 4
  %523 = load i32, i32* %9, align 4
  %524 = load i32, i32* %10, align 4
  %525 = call i32 @SJIS_ENCODE(i32 %521, i32 %522, i32 %523, i32 %524)
  br label %590

526:                                              ; preds = %507
  %527 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %528 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %527, i32 0, i32 4
  %529 = load %struct.TYPE_5__*, %struct.TYPE_5__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = load i64, i64* @mbfl_no_encoding_eucjp2004, align 8
  %533 = icmp eq i64 %531, %532
  br i1 %533, label %534, label %542

534:                                              ; preds = %526
  %535 = load i32, i32* %9, align 4
  %536 = and i32 %535, 255
  %537 = add nsw i32 %536, 128
  store i32 %537, i32* %10, align 4
  %538 = load i32, i32* %9, align 4
  %539 = ashr i32 %538, 8
  %540 = and i32 %539, 255
  %541 = add nsw i32 %540, 128
  store i32 %541, i32* %9, align 4
  br label %589

542:                                              ; preds = %526
  %543 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %544 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = and i32 %545, 65280
  %547 = icmp ne i32 %546, 512
  br i1 %547, label %548, label %581

548:                                              ; preds = %542
  %549 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %550 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %549, i32 0, i32 3
  %551 = load i32 (i32, i32)*, i32 (i32, i32)** %550, align 8
  %552 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %553 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %552, i32 0, i32 2
  %554 = load i32, i32* %553, align 8
  %555 = call i32 %551(i32 27, i32 %554)
  %556 = call i32 @CK(i32 %555)
  %557 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %558 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %557, i32 0, i32 3
  %559 = load i32 (i32, i32)*, i32 (i32, i32)** %558, align 8
  %560 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %561 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %560, i32 0, i32 2
  %562 = load i32, i32* %561, align 8
  %563 = call i32 %559(i32 36, i32 %562)
  %564 = call i32 @CK(i32 %563)
  %565 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %566 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %565, i32 0, i32 3
  %567 = load i32 (i32, i32)*, i32 (i32, i32)** %566, align 8
  %568 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %569 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %568, i32 0, i32 2
  %570 = load i32, i32* %569, align 8
  %571 = call i32 %567(i32 40, i32 %570)
  %572 = call i32 @CK(i32 %571)
  %573 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %574 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %573, i32 0, i32 3
  %575 = load i32 (i32, i32)*, i32 (i32, i32)** %574, align 8
  %576 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %577 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %576, i32 0, i32 2
  %578 = load i32, i32* %577, align 8
  %579 = call i32 %575(i32 81, i32 %578)
  %580 = call i32 @CK(i32 %579)
  br label %581

581:                                              ; preds = %548, %542
  %582 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %583 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %582, i32 0, i32 0
  store i32 512, i32* %583, align 8
  %584 = load i32, i32* %9, align 4
  %585 = and i32 %584, 255
  store i32 %585, i32* %10, align 4
  %586 = load i32, i32* %9, align 4
  %587 = ashr i32 %586, 8
  %588 = and i32 %587, 255
  store i32 %588, i32* %9, align 4
  br label %589

589:                                              ; preds = %581, %534
  br label %590

590:                                              ; preds = %589, %515
  %591 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %592 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %591, i32 0, i32 3
  %593 = load i32 (i32, i32)*, i32 (i32, i32)** %592, align 8
  %594 = load i32, i32* %9, align 4
  %595 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %596 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %595, i32 0, i32 2
  %597 = load i32, i32* %596, align 8
  %598 = call i32 %593(i32 %594, i32 %597)
  %599 = call i32 @CK(i32 %598)
  %600 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %601 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %600, i32 0, i32 3
  %602 = load i32 (i32, i32)*, i32 (i32, i32)** %601, align 8
  %603 = load i32, i32* %10, align 4
  %604 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %605 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %604, i32 0, i32 2
  %606 = load i32, i32* %605, align 8
  %607 = call i32 %602(i32 %603, i32 %606)
  %608 = call i32 @CK(i32 %607)
  br label %732

609:                                              ; preds = %504
  %610 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %611 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %610, i32 0, i32 4
  %612 = load %struct.TYPE_5__*, %struct.TYPE_5__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %612, i32 0, i32 0
  %614 = load i64, i64* %613, align 8
  %615 = load i64, i64* @mbfl_no_encoding_sjis2004, align 8
  %616 = icmp eq i64 %614, %615
  br i1 %616, label %617, label %628

617:                                              ; preds = %609
  %618 = load i32, i32* %9, align 4
  %619 = ashr i32 %618, 8
  %620 = and i32 %619, 255
  store i32 %620, i32* %7, align 4
  %621 = load i32, i32* %9, align 4
  %622 = and i32 %621, 255
  store i32 %622, i32* %8, align 4
  %623 = load i32, i32* %7, align 4
  %624 = load i32, i32* %8, align 4
  %625 = load i32, i32* %9, align 4
  %626 = load i32, i32* %10, align 4
  %627 = call i32 @SJIS_ENCODE(i32 %623, i32 %624, i32 %625, i32 %626)
  br label %713

628:                                              ; preds = %609
  %629 = load i32, i32* %9, align 4
  %630 = and i32 %629, 255
  store i32 %630, i32* %10, align 4
  %631 = load i32, i32* %9, align 4
  %632 = ashr i32 %631, 8
  %633 = and i32 %632, 255
  %634 = sub nsw i32 %633, 127
  store i32 %634, i32* %6, align 4
  %635 = load i32, i32* %6, align 4
  %636 = icmp sge i32 %635, 0
  br i1 %636, label %637, label %649

637:                                              ; preds = %628
  %638 = load i32, i32* %6, align 4
  %639 = load i32, i32* @jisx0213_p2_ofst_len, align 4
  %640 = icmp slt i32 %638, %639
  br i1 %640, label %641, label %649

641:                                              ; preds = %637
  %642 = load i32*, i32** @jisx0213_p2_ofst, align 8
  %643 = load i32, i32* %6, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds i32, i32* %642, i64 %644
  %646 = load i32, i32* %645, align 4
  %647 = sub nsw i32 %646, 1
  %648 = add nsw i32 %647, 33
  store i32 %648, i32* %9, align 4
  br label %649

649:                                              ; preds = %641, %637, %628
  %650 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %651 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %650, i32 0, i32 4
  %652 = load %struct.TYPE_5__*, %struct.TYPE_5__** %651, align 8
  %653 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %652, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = load i64, i64* @mbfl_no_encoding_eucjp2004, align 8
  %656 = icmp eq i64 %654, %655
  br i1 %656, label %657, label %670

657:                                              ; preds = %649
  %658 = load i32, i32* %10, align 4
  %659 = or i32 %658, 128
  store i32 %659, i32* %10, align 4
  %660 = load i32, i32* %9, align 4
  %661 = or i32 %660, 128
  store i32 %661, i32* %9, align 4
  %662 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %663 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %662, i32 0, i32 3
  %664 = load i32 (i32, i32)*, i32 (i32, i32)** %663, align 8
  %665 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %666 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %665, i32 0, i32 2
  %667 = load i32, i32* %666, align 8
  %668 = call i32 %664(i32 143, i32 %667)
  %669 = call i32 @CK(i32 %668)
  br label %712

670:                                              ; preds = %649
  %671 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %672 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %671, i32 0, i32 0
  %673 = load i32, i32* %672, align 8
  %674 = and i32 %673, 65280
  %675 = icmp ne i32 %674, 512
  br i1 %675, label %676, label %709

676:                                              ; preds = %670
  %677 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %678 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %677, i32 0, i32 3
  %679 = load i32 (i32, i32)*, i32 (i32, i32)** %678, align 8
  %680 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %681 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %680, i32 0, i32 2
  %682 = load i32, i32* %681, align 8
  %683 = call i32 %679(i32 27, i32 %682)
  %684 = call i32 @CK(i32 %683)
  %685 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %686 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %685, i32 0, i32 3
  %687 = load i32 (i32, i32)*, i32 (i32, i32)** %686, align 8
  %688 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %689 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %688, i32 0, i32 2
  %690 = load i32, i32* %689, align 8
  %691 = call i32 %687(i32 36, i32 %690)
  %692 = call i32 @CK(i32 %691)
  %693 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %694 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %693, i32 0, i32 3
  %695 = load i32 (i32, i32)*, i32 (i32, i32)** %694, align 8
  %696 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %697 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %696, i32 0, i32 2
  %698 = load i32, i32* %697, align 8
  %699 = call i32 %695(i32 40, i32 %698)
  %700 = call i32 @CK(i32 %699)
  %701 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %702 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %701, i32 0, i32 3
  %703 = load i32 (i32, i32)*, i32 (i32, i32)** %702, align 8
  %704 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %705 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %704, i32 0, i32 2
  %706 = load i32, i32* %705, align 8
  %707 = call i32 %703(i32 80, i32 %706)
  %708 = call i32 @CK(i32 %707)
  br label %709

709:                                              ; preds = %676, %670
  %710 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %711 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %710, i32 0, i32 0
  store i32 512, i32* %711, align 8
  br label %712

712:                                              ; preds = %709, %657
  br label %713

713:                                              ; preds = %712, %617
  %714 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %715 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %714, i32 0, i32 3
  %716 = load i32 (i32, i32)*, i32 (i32, i32)** %715, align 8
  %717 = load i32, i32* %9, align 4
  %718 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %719 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %718, i32 0, i32 2
  %720 = load i32, i32* %719, align 8
  %721 = call i32 %716(i32 %717, i32 %720)
  %722 = call i32 @CK(i32 %721)
  %723 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %724 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %723, i32 0, i32 3
  %725 = load i32 (i32, i32)*, i32 (i32, i32)** %724, align 8
  %726 = load i32, i32* %10, align 4
  %727 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %728 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %727, i32 0, i32 2
  %729 = load i32, i32* %728, align 8
  %730 = call i32 %725(i32 %726, i32 %729)
  %731 = call i32 @CK(i32 %730)
  br label %732

732:                                              ; preds = %713, %590
  br label %733

733:                                              ; preds = %732, %494
  br label %734

734:                                              ; preds = %733, %462
  br label %740

735:                                              ; preds = %417
  %736 = load i32, i32* %4, align 4
  %737 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %738 = call i32 @mbfl_filt_conv_illegal_output(i32 %736, %struct.TYPE_6__* %737)
  %739 = call i32 @CK(i32 %738)
  br label %740

740:                                              ; preds = %735, %734
  %741 = load i32, i32* %4, align 4
  store i32 %741, i32* %3, align 4
  br label %742

742:                                              ; preds = %740, %55
  %743 = load i32, i32* %3, align 4
  ret i32 %743
}

declare dso_local i32 @SJIS_ENCODE(i32, i32, i32, i32) #1

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_bisec_srch(i32, i32*, i32) #1

declare dso_local i32 @mbfl_bisec_srch2(i32, i32, i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
