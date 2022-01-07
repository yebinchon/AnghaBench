; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mac.c_mbfl_filt_conv_wchar_sjis_mac.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_mac.c_mbfl_filt_conv_wchar_sjis_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 (i32, i32)* }

@s_form_tbl = common dso_local global i32* null, align 8
@s_form_sjis_tbl = common dso_local global i32* null, align 8
@s_form_tbl_len = common dso_local global i32 0, align 4
@s_form_sjis_fallback_tbl = common dso_local global i32* null, align 8
@ucs_a1_jis_table_min = common dso_local global i32 0, align 4
@ucs_a1_jis_table_max = common dso_local global i32 0, align 4
@ucs_a1_jis_table = common dso_local global i32* null, align 8
@ucs_a2_jis_table_min = common dso_local global i32 0, align 4
@ucs_a2_jis_table_max = common dso_local global i32 0, align 4
@ucs_a2_jis_table = common dso_local global i32* null, align 8
@ucs_i_jis_table_min = common dso_local global i32 0, align 4
@ucs_i_jis_table_max = common dso_local global i32 0, align 4
@ucs_i_jis_table = common dso_local global i32* null, align 8
@ucs_r_jis_table_min = common dso_local global i32 0, align 4
@ucs_r_jis_table_max = common dso_local global i32 0, align 4
@ucs_r_jis_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_WINCP932 = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0208 = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_JIS0212 = common dso_local global i32 0, align 4
@wchar2sjis_mac_r_tbl_len = common dso_local global i32 0, align 4
@wchar2sjis_mac_r_tbl = common dso_local global i32** null, align 8
@wchar2sjis_mac_r_map_len = common dso_local global i32 0, align 4
@wchar2sjis_mac_r_map = common dso_local global i32** null, align 8
@wchar2sjis_mac_code_map = common dso_local global i32** null, align 8
@wchar2sjis_mac_wchar_tbl_len = common dso_local global i32 0, align 4
@wchar2sjis_mac_wchar_tbl = common dso_local global i32** null, align 8
@code_tbl_m = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_sjis_mac(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %1284 [
    i32 1, label %15
    i32 0, label %243
    i32 2, label %650
    i32 3, label %764
    i32 4, label %953
    i32 5, label %1134
  ]

15:                                               ; preds = %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 63610
  br i1 %24, label %25, label %59

25:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %50, %25
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %53

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** @s_form_tbl, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 34
  %34 = add nsw i32 %33, 3
  %35 = add nsw i32 %34, 3
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %31, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %30, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %29
  %41 = load i32*, i32** @s_form_sjis_tbl, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 34
  %44 = add nsw i32 %43, 3
  %45 = add nsw i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  br label %53

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %26

53:                                               ; preds = %40, %26
  %54 = load i32, i32* %9, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %56, %53
  br label %164

59:                                               ; preds = %15
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 8413
  br i1 %61, label %62, label %94

62:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %85, %62
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 3
  br i1 %65, label %66, label %88

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** @s_form_tbl, align 8
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 34
  %71 = add nsw i32 %70, 3
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %67, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %66
  %77 = load i32*, i32** @s_form_sjis_tbl, align 8
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 34
  %80 = add nsw i32 %79, 3
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %9, align 4
  br label %88

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %63

88:                                               ; preds = %76, %63
  %89 = load i32, i32* %9, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %88
  br label %163

94:                                               ; preds = %59
  %95 = load i32, i32* %4, align 4
  %96 = icmp eq i32 %95, 63615
  br i1 %96, label %97, label %127

97:                                               ; preds = %94
  store i32 0, i32* %6, align 4
  br label %98

98:                                               ; preds = %118, %97
  %99 = load i32, i32* %6, align 4
  %100 = icmp slt i32 %99, 3
  br i1 %100, label %101, label %121

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = load i32*, i32** @s_form_tbl, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 34
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %102, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %101
  %111 = load i32*, i32** @s_form_sjis_tbl, align 8
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 34
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %9, align 4
  br label %121

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %98

121:                                              ; preds = %110, %98
  %122 = load i32, i32* %9, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  store i32 %125, i32* %10, align 4
  store i32 -1, i32* %9, align 4
  br label %126

126:                                              ; preds = %124, %121
  br label %162

127:                                              ; preds = %94
  %128 = load i32, i32* %4, align 4
  %129 = icmp eq i32 %128, 63614
  br i1 %129, label %130, label %158

130:                                              ; preds = %127
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %149, %130
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 34
  br i1 %133, label %134, label %152

134:                                              ; preds = %131
  %135 = load i32, i32* %7, align 4
  %136 = load i32*, i32** @s_form_tbl, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %135, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load i32*, i32** @s_form_sjis_tbl, align 8
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %9, align 4
  br label %152

148:                                              ; preds = %134
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %131

152:                                              ; preds = %142, %131
  %153 = load i32, i32* %9, align 4
  %154 = icmp sle i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* %7, align 4
  store i32 %156, i32* %10, align 4
  store i32 -1, i32* %9, align 4
  br label %157

157:                                              ; preds = %155, %152
  br label %161

158:                                              ; preds = %127
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %4, align 4
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %158, %157
  br label %162

162:                                              ; preds = %161, %126
  br label %163

163:                                              ; preds = %162, %93
  br label %164

164:                                              ; preds = %163, %58
  %165 = load i32, i32* %10, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %191

167:                                              ; preds = %164
  store i32 0, i32* %6, align 4
  br label %168

168:                                              ; preds = %187, %167
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @s_form_tbl_len, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %190

172:                                              ; preds = %168
  %173 = load i32, i32* %7, align 4
  %174 = load i32*, i32** @s_form_tbl, align 8
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %173, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %172
  %181 = load i32*, i32** @s_form_sjis_fallback_tbl, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %9, align 4
  br label %190

186:                                              ; preds = %172
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %168

190:                                              ; preds = %180, %168
  br label %191

191:                                              ; preds = %190, %164
  %192 = load i32, i32* %9, align 4
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %230

194:                                              ; preds = %191
  %195 = load i32, i32* %9, align 4
  %196 = icmp slt i32 %195, 256
  br i1 %196, label %197, label %207

197:                                              ; preds = %194
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 3
  %200 = load i32 (i32, i32)*, i32 (i32, i32)** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 %200(i32 %201, i32 %204)
  %206 = call i32 @CK(i32 %205)
  br label %229

207:                                              ; preds = %194
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 3
  %210 = load i32 (i32, i32)*, i32 (i32, i32)** %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = ashr i32 %211, 8
  %213 = and i32 %212, 255
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 %210(i32 %213, i32 %216)
  %218 = call i32 @CK(i32 %217)
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 3
  %221 = load i32 (i32, i32)*, i32 (i32, i32)** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = and i32 %222, 255
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = call i32 %221(i32 %223, i32 %226)
  %228 = call i32 @CK(i32 %227)
  br label %229

229:                                              ; preds = %207, %197
  br label %235

230:                                              ; preds = %191
  %231 = load i32, i32* %4, align 4
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %233 = call i32 @mbfl_filt_conv_illegal_output(i32 %231, %struct.TYPE_4__* %232)
  %234 = call i32 @CK(i32 %233)
  br label %235

235:                                              ; preds = %230, %229
  %236 = load i32, i32* %10, align 4
  %237 = icmp sle i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* %9, align 4
  %240 = icmp eq i32 %239, -1
  br i1 %240, label %241, label %242

241:                                              ; preds = %238, %235
  br label %1287

242:                                              ; preds = %238
  br label %243

243:                                              ; preds = %2, %242
  %244 = load i32, i32* %4, align 4
  %245 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %246 = icmp sge i32 %244, %245
  br i1 %246, label %247, label %268

247:                                              ; preds = %243
  %248 = load i32, i32* %4, align 4
  %249 = load i32, i32* @ucs_a1_jis_table_max, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %268

251:                                              ; preds = %247
  %252 = load i32*, i32** @ucs_a1_jis_table, align 8
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %255 = sub nsw i32 %253, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %252, i64 %256
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %9, align 4
  %259 = load i32, i32* %4, align 4
  %260 = icmp eq i32 %259, 92
  br i1 %260, label %261, label %262

261:                                              ; preds = %251
  store i32 128, i32* %9, align 4
  br label %267

262:                                              ; preds = %251
  %263 = load i32, i32* %4, align 4
  %264 = icmp eq i32 %263, 169
  br i1 %264, label %265, label %266

265:                                              ; preds = %262
  store i32 253, i32* %9, align 4
  br label %266

266:                                              ; preds = %265, %262
  br label %267

267:                                              ; preds = %266, %261
  br label %333

268:                                              ; preds = %247, %243
  %269 = load i32, i32* %4, align 4
  %270 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %271 = icmp sge i32 %269, %270
  br i1 %271, label %272, label %298

272:                                              ; preds = %268
  %273 = load i32, i32* %4, align 4
  %274 = load i32, i32* @ucs_a2_jis_table_max, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %298

276:                                              ; preds = %272
  %277 = load i32*, i32** @ucs_a2_jis_table, align 8
  %278 = load i32, i32* %4, align 4
  %279 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %280 = sub nsw i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %277, i64 %281
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %9, align 4
  %284 = load i32, i32* %4, align 4
  %285 = icmp eq i32 %284, 8482
  br i1 %285, label %286, label %287

286:                                              ; preds = %276
  store i32 254, i32* %9, align 4
  br label %297

287:                                              ; preds = %276
  %288 = load i32, i32* %4, align 4
  %289 = icmp eq i32 %288, 8212
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  store i32 8509, i32* %9, align 4
  br label %296

291:                                              ; preds = %287
  %292 = load i32, i32* %4, align 4
  %293 = icmp eq i32 %292, 8470
  br i1 %293, label %294, label %295

294:                                              ; preds = %291
  store i32 11293, i32* %9, align 4
  br label %295

295:                                              ; preds = %294, %291
  br label %296

296:                                              ; preds = %295, %290
  br label %297

297:                                              ; preds = %296, %286
  br label %332

298:                                              ; preds = %272, %268
  %299 = load i32, i32* %4, align 4
  %300 = load i32, i32* @ucs_i_jis_table_min, align 4
  %301 = icmp sge i32 %299, %300
  br i1 %301, label %302, label %314

302:                                              ; preds = %298
  %303 = load i32, i32* %4, align 4
  %304 = load i32, i32* @ucs_i_jis_table_max, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %314

306:                                              ; preds = %302
  %307 = load i32*, i32** @ucs_i_jis_table, align 8
  %308 = load i32, i32* %4, align 4
  %309 = load i32, i32* @ucs_i_jis_table_min, align 4
  %310 = sub nsw i32 %308, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %307, i64 %311
  %313 = load i32, i32* %312, align 4
  store i32 %313, i32* %9, align 4
  br label %331

314:                                              ; preds = %302, %298
  %315 = load i32, i32* %4, align 4
  %316 = load i32, i32* @ucs_r_jis_table_min, align 4
  %317 = icmp sge i32 %315, %316
  br i1 %317, label %318, label %330

318:                                              ; preds = %314
  %319 = load i32, i32* %4, align 4
  %320 = load i32, i32* @ucs_r_jis_table_max, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %330

322:                                              ; preds = %318
  %323 = load i32*, i32** @ucs_r_jis_table, align 8
  %324 = load i32, i32* %4, align 4
  %325 = load i32, i32* @ucs_r_jis_table_min, align 4
  %326 = sub nsw i32 %324, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %323, i64 %327
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %9, align 4
  br label %330

330:                                              ; preds = %322, %318, %314
  br label %331

331:                                              ; preds = %330, %306
  br label %332

332:                                              ; preds = %331, %297
  br label %333

333:                                              ; preds = %332, %267
  %334 = load i32, i32* %4, align 4
  %335 = icmp sge i32 %334, 8192
  br i1 %335, label %336, label %377

336:                                              ; preds = %333
  store i32 0, i32* %6, align 4
  br label %337

337:                                              ; preds = %357, %336
  %338 = load i32, i32* %6, align 4
  %339 = load i32, i32* @s_form_tbl_len, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %360

341:                                              ; preds = %337
  %342 = load i32, i32* %4, align 4
  %343 = load i32*, i32** @s_form_tbl, align 8
  %344 = load i32, i32* %6, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = icmp eq i32 %342, %347
  br i1 %348, label %349, label %356

349:                                              ; preds = %341
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i32 0, i32 0
  store i32 1, i32* %351, align 8
  %352 = load i32, i32* %4, align 4
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 1
  store i32 %352, i32* %354, align 4
  %355 = load i32, i32* %4, align 4
  store i32 %355, i32* %3, align 4
  br label %1289

356:                                              ; preds = %341
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %6, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %6, align 4
  br label %337

360:                                              ; preds = %337
  %361 = load i32, i32* %4, align 4
  %362 = icmp eq i32 %361, 63584
  br i1 %362, label %369, label %363

363:                                              ; preds = %360
  %364 = load i32, i32* %4, align 4
  %365 = icmp eq i32 %364, 63585
  br i1 %365, label %369, label %366

366:                                              ; preds = %363
  %367 = load i32, i32* %4, align 4
  %368 = icmp eq i32 %367, 63586
  br i1 %368, label %369, label %376

369:                                              ; preds = %366, %363, %360
  %370 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 0
  store i32 2, i32* %371, align 8
  %372 = load i32, i32* %4, align 4
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 1
  store i32 %372, i32* %374, align 4
  %375 = load i32, i32* %4, align 4
  store i32 %375, i32* %3, align 4
  br label %1289

376:                                              ; preds = %366
  br label %377

377:                                              ; preds = %376, %333
  %378 = load i32, i32* %9, align 4
  %379 = icmp sle i32 %378, 0
  br i1 %379, label %380, label %428

380:                                              ; preds = %377
  %381 = load i32, i32* %4, align 4
  %382 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %383 = xor i32 %382, -1
  %384 = and i32 %381, %383
  store i32 %384, i32* %7, align 4
  %385 = load i32, i32* %7, align 4
  %386 = load i32, i32* @MBFL_WCSPLANE_WINCP932, align 4
  %387 = icmp eq i32 %385, %386
  br i1 %387, label %388, label %392

388:                                              ; preds = %380
  %389 = load i32, i32* %4, align 4
  %390 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %391 = and i32 %389, %390
  store i32 %391, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %427

392:                                              ; preds = %380
  %393 = load i32, i32* %7, align 4
  %394 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %395 = icmp eq i32 %393, %394
  br i1 %395, label %396, label %400

396:                                              ; preds = %392
  %397 = load i32, i32* %4, align 4
  %398 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %399 = and i32 %397, %398
  store i32 %399, i32* %9, align 4
  br label %426

400:                                              ; preds = %392
  %401 = load i32, i32* %7, align 4
  %402 = load i32, i32* @MBFL_WCSPLANE_JIS0212, align 4
  %403 = icmp eq i32 %401, %402
  br i1 %403, label %404, label %410

404:                                              ; preds = %400
  %405 = load i32, i32* %4, align 4
  %406 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %407 = and i32 %405, %406
  store i32 %407, i32* %9, align 4
  %408 = load i32, i32* %9, align 4
  %409 = or i32 %408, 32896
  store i32 %409, i32* %9, align 4
  br label %425

410:                                              ; preds = %400
  %411 = load i32, i32* %4, align 4
  %412 = icmp eq i32 %411, 160
  br i1 %412, label %413, label %414

413:                                              ; preds = %410
  store i32 160, i32* %9, align 4
  br label %424

414:                                              ; preds = %410
  %415 = load i32, i32* %4, align 4
  %416 = icmp eq i32 %415, 165
  br i1 %416, label %417, label %418

417:                                              ; preds = %414
  store i32 8559, i32* %9, align 4
  br label %423

418:                                              ; preds = %414
  %419 = load i32, i32* %4, align 4
  %420 = icmp eq i32 %419, 65340
  br i1 %420, label %421, label %422

421:                                              ; preds = %418
  store i32 8512, i32* %9, align 4
  br label %422

422:                                              ; preds = %421, %418
  br label %423

423:                                              ; preds = %422, %417
  br label %424

424:                                              ; preds = %423, %413
  br label %425

425:                                              ; preds = %424, %404
  br label %426

426:                                              ; preds = %425, %396
  br label %427

427:                                              ; preds = %426, %388
  br label %428

428:                                              ; preds = %427, %377
  %429 = load i32, i32* %9, align 4
  %430 = icmp sle i32 %429, 0
  br i1 %430, label %431, label %579

431:                                              ; preds = %428
  store i32 0, i32* %6, align 4
  br label %432

432:                                              ; preds = %475, %431
  %433 = load i32, i32* %6, align 4
  %434 = load i32, i32* @wchar2sjis_mac_r_tbl_len, align 4
  %435 = icmp slt i32 %433, %434
  br i1 %435, label %436, label %478

436:                                              ; preds = %432
  %437 = load i32, i32* %4, align 4
  %438 = load i32**, i32*** @wchar2sjis_mac_r_tbl, align 8
  %439 = load i32, i32* %6, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32*, i32** %438, i64 %440
  %442 = load i32*, i32** %441, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 0
  %444 = load i32, i32* %443, align 4
  %445 = icmp sge i32 %437, %444
  br i1 %445, label %446, label %474

446:                                              ; preds = %436
  %447 = load i32, i32* %4, align 4
  %448 = load i32**, i32*** @wchar2sjis_mac_r_tbl, align 8
  %449 = load i32, i32* %6, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32*, i32** %448, i64 %450
  %452 = load i32*, i32** %451, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 1
  %454 = load i32, i32* %453, align 4
  %455 = icmp sle i32 %447, %454
  br i1 %455, label %456, label %474

456:                                              ; preds = %446
  %457 = load i32, i32* %4, align 4
  %458 = load i32**, i32*** @wchar2sjis_mac_r_tbl, align 8
  %459 = load i32, i32* %6, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32*, i32** %458, i64 %460
  %462 = load i32*, i32** %461, align 8
  %463 = getelementptr inbounds i32, i32* %462, i64 0
  %464 = load i32, i32* %463, align 4
  %465 = sub nsw i32 %457, %464
  %466 = load i32**, i32*** @wchar2sjis_mac_r_tbl, align 8
  %467 = load i32, i32* %6, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32*, i32** %466, i64 %468
  %470 = load i32*, i32** %469, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 2
  %472 = load i32, i32* %471, align 4
  %473 = add nsw i32 %465, %472
  store i32 %473, i32* %9, align 4
  br label %478

474:                                              ; preds = %446, %436
  br label %475

475:                                              ; preds = %474
  %476 = load i32, i32* %6, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %6, align 4
  br label %432

478:                                              ; preds = %456, %432
  %479 = load i32, i32* %9, align 4
  %480 = icmp sle i32 %479, 0
  br i1 %480, label %481, label %529

481:                                              ; preds = %478
  store i32 0, i32* %6, align 4
  br label %482

482:                                              ; preds = %525, %481
  %483 = load i32, i32* %6, align 4
  %484 = load i32, i32* @wchar2sjis_mac_r_map_len, align 4
  %485 = icmp slt i32 %483, %484
  br i1 %485, label %486, label %528

486:                                              ; preds = %482
  %487 = load i32, i32* %4, align 4
  %488 = load i32**, i32*** @wchar2sjis_mac_r_map, align 8
  %489 = load i32, i32* %6, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32*, i32** %488, i64 %490
  %492 = load i32*, i32** %491, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 0
  %494 = load i32, i32* %493, align 4
  %495 = icmp sge i32 %487, %494
  br i1 %495, label %496, label %524

496:                                              ; preds = %486
  %497 = load i32, i32* %4, align 4
  %498 = load i32**, i32*** @wchar2sjis_mac_r_map, align 8
  %499 = load i32, i32* %6, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32*, i32** %498, i64 %500
  %502 = load i32*, i32** %501, align 8
  %503 = getelementptr inbounds i32, i32* %502, i64 1
  %504 = load i32, i32* %503, align 4
  %505 = icmp sle i32 %497, %504
  br i1 %505, label %506, label %524

506:                                              ; preds = %496
  %507 = load i32**, i32*** @wchar2sjis_mac_code_map, align 8
  %508 = load i32, i32* %6, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32*, i32** %507, i64 %509
  %511 = load i32*, i32** %510, align 8
  %512 = load i32, i32* %4, align 4
  %513 = load i32**, i32*** @wchar2sjis_mac_r_map, align 8
  %514 = load i32, i32* %6, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32*, i32** %513, i64 %515
  %517 = load i32*, i32** %516, align 8
  %518 = getelementptr inbounds i32, i32* %517, i64 0
  %519 = load i32, i32* %518, align 4
  %520 = sub nsw i32 %512, %519
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32, i32* %511, i64 %521
  %523 = load i32, i32* %522, align 4
  store i32 %523, i32* %9, align 4
  br label %528

524:                                              ; preds = %496, %486
  br label %525

525:                                              ; preds = %524
  %526 = load i32, i32* %6, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %6, align 4
  br label %482

528:                                              ; preds = %506, %482
  br label %529

529:                                              ; preds = %528, %478
  %530 = load i32, i32* %9, align 4
  %531 = icmp sle i32 %530, 0
  br i1 %531, label %532, label %561

532:                                              ; preds = %529
  store i32 0, i32* %6, align 4
  br label %533

533:                                              ; preds = %557, %532
  %534 = load i32, i32* %6, align 4
  %535 = load i32, i32* @wchar2sjis_mac_wchar_tbl_len, align 4
  %536 = icmp slt i32 %534, %535
  br i1 %536, label %537, label %560

537:                                              ; preds = %533
  %538 = load i32, i32* %4, align 4
  %539 = load i32**, i32*** @wchar2sjis_mac_wchar_tbl, align 8
  %540 = load i32, i32* %6, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i32*, i32** %539, i64 %541
  %543 = load i32*, i32** %542, align 8
  %544 = getelementptr inbounds i32, i32* %543, i64 0
  %545 = load i32, i32* %544, align 4
  %546 = icmp eq i32 %538, %545
  br i1 %546, label %547, label %556

547:                                              ; preds = %537
  %548 = load i32**, i32*** @wchar2sjis_mac_wchar_tbl, align 8
  %549 = load i32, i32* %6, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32*, i32** %548, i64 %550
  %552 = load i32*, i32** %551, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 1
  %554 = load i32, i32* %553, align 4
  %555 = and i32 %554, 65535
  store i32 %555, i32* %9, align 4
  br label %560

556:                                              ; preds = %537
  br label %557

557:                                              ; preds = %556
  %558 = load i32, i32* %6, align 4
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %6, align 4
  br label %533

560:                                              ; preds = %547, %533
  br label %561

561:                                              ; preds = %560, %529
  %562 = load i32, i32* %9, align 4
  %563 = icmp sgt i32 %562, 0
  br i1 %563, label %564, label %578

564:                                              ; preds = %561
  %565 = load i32, i32* %9, align 4
  %566 = sdiv i32 %565, 94
  %567 = add nsw i32 %566, 33
  store i32 %567, i32* %7, align 4
  %568 = load i32, i32* %9, align 4
  %569 = load i32, i32* %7, align 4
  %570 = sub nsw i32 %569, 33
  %571 = mul nsw i32 94, %570
  %572 = sub nsw i32 %568, %571
  %573 = add nsw i32 %572, 33
  store i32 %573, i32* %8, align 4
  %574 = load i32, i32* %7, align 4
  %575 = shl i32 %574, 8
  %576 = load i32, i32* %8, align 4
  %577 = or i32 %575, %576
  store i32 %577, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %578

578:                                              ; preds = %564, %561
  br label %579

579:                                              ; preds = %578, %428
  %580 = load i32, i32* %9, align 4
  %581 = icmp sle i32 %580, 0
  br i1 %581, label %588, label %582

582:                                              ; preds = %579
  %583 = load i32, i32* %9, align 4
  %584 = icmp sge i32 %583, 32896
  br i1 %584, label %585, label %598

585:                                              ; preds = %582
  %586 = load i32, i32* %10, align 4
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %588, label %598

588:                                              ; preds = %585, %579
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %7, align 4
  %589 = load i32, i32* %4, align 4
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %591, label %592

591:                                              ; preds = %588
  store i32 0, i32* %9, align 4
  br label %597

592:                                              ; preds = %588
  %593 = load i32, i32* %9, align 4
  %594 = icmp sle i32 %593, 0
  br i1 %594, label %595, label %596

595:                                              ; preds = %592
  store i32 -1, i32* %9, align 4
  br label %596

596:                                              ; preds = %595, %592
  br label %597

597:                                              ; preds = %596, %591
  br label %598

598:                                              ; preds = %597, %585, %582
  %599 = load i32, i32* %9, align 4
  %600 = icmp sge i32 %599, 0
  br i1 %600, label %601, label %644

601:                                              ; preds = %598
  %602 = load i32, i32* %9, align 4
  %603 = icmp slt i32 %602, 256
  br i1 %603, label %604, label %614

604:                                              ; preds = %601
  %605 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %606 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %605, i32 0, i32 3
  %607 = load i32 (i32, i32)*, i32 (i32, i32)** %606, align 8
  %608 = load i32, i32* %9, align 4
  %609 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %610 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %609, i32 0, i32 2
  %611 = load i32, i32* %610, align 8
  %612 = call i32 %607(i32 %608, i32 %611)
  %613 = call i32 @CK(i32 %612)
  br label %643

614:                                              ; preds = %601
  %615 = load i32, i32* %9, align 4
  %616 = ashr i32 %615, 8
  %617 = and i32 %616, 255
  store i32 %617, i32* %7, align 4
  %618 = load i32, i32* %9, align 4
  %619 = and i32 %618, 255
  store i32 %619, i32* %8, align 4
  %620 = load i32, i32* %7, align 4
  %621 = load i32, i32* %8, align 4
  %622 = load i32, i32* %9, align 4
  %623 = load i32, i32* %10, align 4
  %624 = call i32 @SJIS_ENCODE(i32 %620, i32 %621, i32 %622, i32 %623)
  %625 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %626 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %625, i32 0, i32 3
  %627 = load i32 (i32, i32)*, i32 (i32, i32)** %626, align 8
  %628 = load i32, i32* %9, align 4
  %629 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %630 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %629, i32 0, i32 2
  %631 = load i32, i32* %630, align 8
  %632 = call i32 %627(i32 %628, i32 %631)
  %633 = call i32 @CK(i32 %632)
  %634 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %635 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %634, i32 0, i32 3
  %636 = load i32 (i32, i32)*, i32 (i32, i32)** %635, align 8
  %637 = load i32, i32* %10, align 4
  %638 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %639 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %638, i32 0, i32 2
  %640 = load i32, i32* %639, align 8
  %641 = call i32 %636(i32 %637, i32 %640)
  %642 = call i32 @CK(i32 %641)
  br label %643

643:                                              ; preds = %614, %604
  br label %649

644:                                              ; preds = %598
  %645 = load i32, i32* %4, align 4
  %646 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %647 = call i32 @mbfl_filt_conv_illegal_output(i32 %645, %struct.TYPE_4__* %646)
  %648 = call i32 @CK(i32 %647)
  br label %649

649:                                              ; preds = %644, %643
  br label %1287

650:                                              ; preds = %2
  %651 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %652 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %651, i32 0, i32 1
  %653 = load i32, i32* %652, align 4
  store i32 %653, i32* %7, align 4
  %654 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %655 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %654, i32 0, i32 1
  store i32 0, i32* %655, align 4
  %656 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %657 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %656, i32 0, i32 0
  store i32 0, i32* %657, align 8
  %658 = load i32, i32* %7, align 4
  %659 = icmp eq i32 %658, 63584
  br i1 %659, label %660, label %686

660:                                              ; preds = %650
  store i32 0, i32* %6, align 4
  br label %661

661:                                              ; preds = %682, %660
  %662 = load i32, i32* %6, align 4
  %663 = icmp slt i32 %662, 5
  br i1 %663, label %664, label %685

664:                                              ; preds = %661
  %665 = load i32, i32* %4, align 4
  %666 = load i32**, i32*** @code_tbl_m, align 8
  %667 = load i32, i32* %6, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds i32*, i32** %666, i64 %668
  %670 = load i32*, i32** %669, align 8
  %671 = getelementptr inbounds i32, i32* %670, i64 2
  %672 = load i32, i32* %671, align 4
  %673 = icmp eq i32 %665, %672
  br i1 %673, label %674, label %681

674:                                              ; preds = %664
  %675 = load i32, i32* %4, align 4
  %676 = or i32 %675, 65536
  %677 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %678 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %677, i32 0, i32 1
  store i32 %676, i32* %678, align 4
  %679 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %680 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %679, i32 0, i32 0
  store i32 3, i32* %680, align 8
  br label %685

681:                                              ; preds = %664
  br label %682

682:                                              ; preds = %681
  %683 = load i32, i32* %6, align 4
  %684 = add nsw i32 %683, 1
  store i32 %684, i32* %6, align 4
  br label %661

685:                                              ; preds = %674, %661
  br label %749

686:                                              ; preds = %650
  %687 = load i32, i32* %7, align 4
  %688 = icmp eq i32 %687, 63585
  br i1 %688, label %689, label %716

689:                                              ; preds = %686
  store i32 0, i32* %6, align 4
  br label %690

690:                                              ; preds = %712, %689
  %691 = load i32, i32* %6, align 4
  %692 = icmp slt i32 %691, 3
  br i1 %692, label %693, label %715

693:                                              ; preds = %690
  %694 = load i32, i32* %4, align 4
  %695 = load i32**, i32*** @code_tbl_m, align 8
  %696 = load i32, i32* %6, align 4
  %697 = add nsw i32 %696, 5
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds i32*, i32** %695, i64 %698
  %700 = load i32*, i32** %699, align 8
  %701 = getelementptr inbounds i32, i32* %700, i64 2
  %702 = load i32, i32* %701, align 4
  %703 = icmp eq i32 %694, %702
  br i1 %703, label %704, label %711

704:                                              ; preds = %693
  %705 = load i32, i32* %4, align 4
  %706 = or i32 %705, 131072
  %707 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %708 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %707, i32 0, i32 1
  store i32 %706, i32* %708, align 4
  %709 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %710 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %709, i32 0, i32 0
  store i32 3, i32* %710, align 8
  br label %715

711:                                              ; preds = %693
  br label %712

712:                                              ; preds = %711
  %713 = load i32, i32* %6, align 4
  %714 = add nsw i32 %713, 1
  store i32 %714, i32* %6, align 4
  br label %690

715:                                              ; preds = %704, %690
  br label %748

716:                                              ; preds = %686
  %717 = load i32, i32* %7, align 4
  %718 = icmp eq i32 %717, 63586
  br i1 %718, label %719, label %747

719:                                              ; preds = %716
  store i32 0, i32* %6, align 4
  br label %720

720:                                              ; preds = %743, %719
  %721 = load i32, i32* %6, align 4
  %722 = icmp slt i32 %721, 4
  br i1 %722, label %723, label %746

723:                                              ; preds = %720
  %724 = load i32, i32* %4, align 4
  %725 = load i32**, i32*** @code_tbl_m, align 8
  %726 = load i32, i32* %6, align 4
  %727 = add nsw i32 %726, 5
  %728 = add nsw i32 %727, 3
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds i32*, i32** %725, i64 %729
  %731 = load i32*, i32** %730, align 8
  %732 = getelementptr inbounds i32, i32* %731, i64 2
  %733 = load i32, i32* %732, align 4
  %734 = icmp eq i32 %724, %733
  br i1 %734, label %735, label %742

735:                                              ; preds = %723
  %736 = load i32, i32* %4, align 4
  %737 = or i32 %736, 262144
  %738 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %739 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %738, i32 0, i32 1
  store i32 %737, i32* %739, align 4
  %740 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %741 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %740, i32 0, i32 0
  store i32 3, i32* %741, align 8
  br label %746

742:                                              ; preds = %723
  br label %743

743:                                              ; preds = %742
  %744 = load i32, i32* %6, align 4
  %745 = add nsw i32 %744, 1
  store i32 %745, i32* %6, align 4
  br label %720

746:                                              ; preds = %735, %720
  br label %747

747:                                              ; preds = %746, %716
  br label %748

748:                                              ; preds = %747, %715
  br label %749

749:                                              ; preds = %748, %685
  %750 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %751 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %750, i32 0, i32 0
  %752 = load i32, i32* %751, align 8
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %754, label %763

754:                                              ; preds = %749
  %755 = load i32, i32* %7, align 4
  %756 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %757 = call i32 @mbfl_filt_conv_illegal_output(i32 %755, %struct.TYPE_4__* %756)
  %758 = call i32 @CK(i32 %757)
  %759 = load i32, i32* %4, align 4
  %760 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %761 = call i32 @mbfl_filt_conv_illegal_output(i32 %759, %struct.TYPE_4__* %760)
  %762 = call i32 @CK(i32 %761)
  br label %763

763:                                              ; preds = %754, %749
  br label %1287

764:                                              ; preds = %2
  store i32 0, i32* %9, align 4
  %765 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %766 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %765, i32 0, i32 1
  %767 = load i32, i32* %766, align 4
  %768 = and i32 %767, 65535
  store i32 %768, i32* %7, align 4
  %769 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %770 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %769, i32 0, i32 1
  %771 = load i32, i32* %770, align 4
  %772 = and i32 %771, 983040
  %773 = ashr i32 %772, 16
  store i32 %773, i32* %11, align 4
  %774 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %775 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %774, i32 0, i32 1
  store i32 0, i32* %775, align 4
  %776 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %777 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %776, i32 0, i32 0
  store i32 0, i32* %777, align 8
  %778 = load i32, i32* %11, align 4
  %779 = icmp eq i32 %778, 1
  br i1 %779, label %780, label %868

780:                                              ; preds = %764
  store i32 0, i32* %6, align 4
  br label %781

781:                                              ; preds = %813, %780
  %782 = load i32, i32* %6, align 4
  %783 = icmp slt i32 %782, 5
  br i1 %783, label %784, label %816

784:                                              ; preds = %781
  %785 = load i32, i32* %7, align 4
  %786 = load i32**, i32*** @code_tbl_m, align 8
  %787 = load i32, i32* %6, align 4
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds i32*, i32** %786, i64 %788
  %790 = load i32*, i32** %789, align 8
  %791 = getelementptr inbounds i32, i32* %790, i64 2
  %792 = load i32, i32* %791, align 4
  %793 = icmp eq i32 %785, %792
  br i1 %793, label %794, label %812

794:                                              ; preds = %784
  %795 = load i32, i32* %4, align 4
  %796 = load i32**, i32*** @code_tbl_m, align 8
  %797 = load i32, i32* %6, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds i32*, i32** %796, i64 %798
  %800 = load i32*, i32** %799, align 8
  %801 = getelementptr inbounds i32, i32* %800, i64 3
  %802 = load i32, i32* %801, align 4
  %803 = icmp eq i32 %795, %802
  br i1 %803, label %804, label %812

804:                                              ; preds = %794
  %805 = load i32**, i32*** @code_tbl_m, align 8
  %806 = load i32, i32* %6, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds i32*, i32** %805, i64 %807
  %809 = load i32*, i32** %808, align 8
  %810 = getelementptr inbounds i32, i32* %809, i64 0
  %811 = load i32, i32* %810, align 4
  store i32 %811, i32* %9, align 4
  br label %816

812:                                              ; preds = %794, %784
  br label %813

813:                                              ; preds = %812
  %814 = load i32, i32* %6, align 4
  %815 = add nsw i32 %814, 1
  store i32 %815, i32* %6, align 4
  br label %781

816:                                              ; preds = %804, %781
  %817 = load i32, i32* %9, align 4
  %818 = icmp sgt i32 %817, 0
  br i1 %818, label %819, label %852

819:                                              ; preds = %816
  %820 = load i32, i32* %9, align 4
  %821 = sdiv i32 %820, 94
  %822 = add nsw i32 %821, 33
  store i32 %822, i32* %7, align 4
  %823 = load i32, i32* %9, align 4
  %824 = load i32, i32* %7, align 4
  %825 = sub nsw i32 %824, 33
  %826 = mul nsw i32 94, %825
  %827 = sub nsw i32 %823, %826
  %828 = add nsw i32 %827, 33
  store i32 %828, i32* %8, align 4
  %829 = load i32, i32* %7, align 4
  %830 = load i32, i32* %8, align 4
  %831 = load i32, i32* %9, align 4
  %832 = load i32, i32* %10, align 4
  %833 = call i32 @SJIS_ENCODE(i32 %829, i32 %830, i32 %831, i32 %832)
  %834 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %835 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %834, i32 0, i32 3
  %836 = load i32 (i32, i32)*, i32 (i32, i32)** %835, align 8
  %837 = load i32, i32* %9, align 4
  %838 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %839 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %838, i32 0, i32 2
  %840 = load i32, i32* %839, align 8
  %841 = call i32 %836(i32 %837, i32 %840)
  %842 = call i32 @CK(i32 %841)
  %843 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %844 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %843, i32 0, i32 3
  %845 = load i32 (i32, i32)*, i32 (i32, i32)** %844, align 8
  %846 = load i32, i32* %10, align 4
  %847 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %848 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %847, i32 0, i32 2
  %849 = load i32, i32* %848, align 8
  %850 = call i32 %845(i32 %846, i32 %849)
  %851 = call i32 @CK(i32 %850)
  br label %852

852:                                              ; preds = %819, %816
  %853 = load i32, i32* %9, align 4
  %854 = icmp sle i32 %853, 0
  br i1 %854, label %855, label %867

855:                                              ; preds = %852
  %856 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %857 = call i32 @mbfl_filt_conv_illegal_output(i32 63584, %struct.TYPE_4__* %856)
  %858 = call i32 @CK(i32 %857)
  %859 = load i32, i32* %7, align 4
  %860 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %861 = call i32 @mbfl_filt_conv_illegal_output(i32 %859, %struct.TYPE_4__* %860)
  %862 = call i32 @CK(i32 %861)
  %863 = load i32, i32* %4, align 4
  %864 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %865 = call i32 @mbfl_filt_conv_illegal_output(i32 %863, %struct.TYPE_4__* %864)
  %866 = call i32 @CK(i32 %865)
  br label %867

867:                                              ; preds = %855, %852
  br label %952

868:                                              ; preds = %764
  %869 = load i32, i32* %11, align 4
  %870 = icmp eq i32 %869, 2
  br i1 %870, label %871, label %909

871:                                              ; preds = %868
  store i32 0, i32* %6, align 4
  br label %872

872:                                              ; preds = %905, %871
  %873 = load i32, i32* %6, align 4
  %874 = icmp slt i32 %873, 3
  br i1 %874, label %875, label %908

875:                                              ; preds = %872
  %876 = load i32, i32* %7, align 4
  %877 = load i32**, i32*** @code_tbl_m, align 8
  %878 = load i32, i32* %6, align 4
  %879 = add nsw i32 %878, 5
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds i32*, i32** %877, i64 %880
  %882 = load i32*, i32** %881, align 8
  %883 = getelementptr inbounds i32, i32* %882, i64 2
  %884 = load i32, i32* %883, align 4
  %885 = icmp eq i32 %876, %884
  br i1 %885, label %886, label %904

886:                                              ; preds = %875
  %887 = load i32, i32* %4, align 4
  %888 = load i32**, i32*** @code_tbl_m, align 8
  %889 = load i32, i32* %6, align 4
  %890 = add nsw i32 %889, 5
  %891 = sext i32 %890 to i64
  %892 = getelementptr inbounds i32*, i32** %888, i64 %891
  %893 = load i32*, i32** %892, align 8
  %894 = getelementptr inbounds i32, i32* %893, i64 3
  %895 = load i32, i32* %894, align 4
  %896 = icmp eq i32 %887, %895
  br i1 %896, label %897, label %904

897:                                              ; preds = %886
  %898 = load i32, i32* %4, align 4
  %899 = or i32 %898, 131072
  %900 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %901 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %900, i32 0, i32 1
  store i32 %899, i32* %901, align 4
  %902 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %903 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %902, i32 0, i32 0
  store i32 4, i32* %903, align 8
  br label %908

904:                                              ; preds = %886, %875
  br label %905

905:                                              ; preds = %904
  %906 = load i32, i32* %6, align 4
  %907 = add nsw i32 %906, 1
  store i32 %907, i32* %6, align 4
  br label %872

908:                                              ; preds = %897, %872
  br label %951

909:                                              ; preds = %868
  %910 = load i32, i32* %11, align 4
  %911 = icmp eq i32 %910, 4
  br i1 %911, label %912, label %950

912:                                              ; preds = %909
  store i32 0, i32* %6, align 4
  br label %913

913:                                              ; preds = %946, %912
  %914 = load i32, i32* %6, align 4
  %915 = icmp slt i32 %914, 4
  br i1 %915, label %916, label %949

916:                                              ; preds = %913
  %917 = load i32, i32* %7, align 4
  %918 = load i32**, i32*** @code_tbl_m, align 8
  %919 = load i32, i32* %6, align 4
  %920 = add nsw i32 %919, 8
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds i32*, i32** %918, i64 %921
  %923 = load i32*, i32** %922, align 8
  %924 = getelementptr inbounds i32, i32* %923, i64 2
  %925 = load i32, i32* %924, align 4
  %926 = icmp eq i32 %917, %925
  br i1 %926, label %927, label %945

927:                                              ; preds = %916
  %928 = load i32, i32* %4, align 4
  %929 = load i32**, i32*** @code_tbl_m, align 8
  %930 = load i32, i32* %6, align 4
  %931 = add nsw i32 %930, 8
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds i32*, i32** %929, i64 %932
  %934 = load i32*, i32** %933, align 8
  %935 = getelementptr inbounds i32, i32* %934, i64 3
  %936 = load i32, i32* %935, align 4
  %937 = icmp eq i32 %928, %936
  br i1 %937, label %938, label %945

938:                                              ; preds = %927
  %939 = load i32, i32* %4, align 4
  %940 = or i32 %939, 262144
  %941 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %942 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %941, i32 0, i32 1
  store i32 %940, i32* %942, align 4
  %943 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %944 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %943, i32 0, i32 0
  store i32 4, i32* %944, align 8
  br label %949

945:                                              ; preds = %927, %916
  br label %946

946:                                              ; preds = %945
  %947 = load i32, i32* %6, align 4
  %948 = add nsw i32 %947, 1
  store i32 %948, i32* %6, align 4
  br label %913

949:                                              ; preds = %938, %913
  br label %950

950:                                              ; preds = %949, %909
  br label %951

951:                                              ; preds = %950, %908
  br label %952

952:                                              ; preds = %951, %867
  br label %1287

953:                                              ; preds = %2
  store i32 0, i32* %9, align 4
  %954 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %955 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %954, i32 0, i32 1
  %956 = load i32, i32* %955, align 4
  %957 = and i32 %956, 65535
  store i32 %957, i32* %7, align 4
  %958 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %959 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %958, i32 0, i32 1
  %960 = load i32, i32* %959, align 4
  %961 = and i32 %960, 983040
  %962 = ashr i32 %961, 16
  store i32 %962, i32* %11, align 4
  %963 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %964 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %963, i32 0, i32 1
  store i32 0, i32* %964, align 4
  %965 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %966 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %965, i32 0, i32 0
  store i32 0, i32* %966, align 8
  %967 = load i32, i32* %11, align 4
  %968 = icmp eq i32 %967, 2
  br i1 %968, label %969, label %1091

969:                                              ; preds = %953
  store i32 0, i32* %6, align 4
  br label %970

970:                                              ; preds = %1005, %969
  %971 = load i32, i32* %6, align 4
  %972 = icmp slt i32 %971, 3
  br i1 %972, label %973, label %1008

973:                                              ; preds = %970
  %974 = load i32, i32* %7, align 4
  %975 = load i32**, i32*** @code_tbl_m, align 8
  %976 = load i32, i32* %6, align 4
  %977 = add nsw i32 %976, 5
  %978 = sext i32 %977 to i64
  %979 = getelementptr inbounds i32*, i32** %975, i64 %978
  %980 = load i32*, i32** %979, align 8
  %981 = getelementptr inbounds i32, i32* %980, i64 3
  %982 = load i32, i32* %981, align 4
  %983 = icmp eq i32 %974, %982
  br i1 %983, label %984, label %1004

984:                                              ; preds = %973
  %985 = load i32, i32* %4, align 4
  %986 = load i32**, i32*** @code_tbl_m, align 8
  %987 = load i32, i32* %6, align 4
  %988 = add nsw i32 %987, 5
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds i32*, i32** %986, i64 %989
  %991 = load i32*, i32** %990, align 8
  %992 = getelementptr inbounds i32, i32* %991, i64 4
  %993 = load i32, i32* %992, align 4
  %994 = icmp eq i32 %985, %993
  br i1 %994, label %995, label %1004

995:                                              ; preds = %984
  %996 = load i32**, i32*** @code_tbl_m, align 8
  %997 = load i32, i32* %6, align 4
  %998 = add nsw i32 %997, 5
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds i32*, i32** %996, i64 %999
  %1001 = load i32*, i32** %1000, align 8
  %1002 = getelementptr inbounds i32, i32* %1001, i64 0
  %1003 = load i32, i32* %1002, align 4
  store i32 %1003, i32* %9, align 4
  br label %1008

1004:                                             ; preds = %984, %973
  br label %1005

1005:                                             ; preds = %1004
  %1006 = load i32, i32* %6, align 4
  %1007 = add nsw i32 %1006, 1
  store i32 %1007, i32* %6, align 4
  br label %970

1008:                                             ; preds = %995, %970
  %1009 = load i32, i32* %9, align 4
  %1010 = icmp sgt i32 %1009, 0
  br i1 %1010, label %1011, label %1044

1011:                                             ; preds = %1008
  %1012 = load i32, i32* %9, align 4
  %1013 = sdiv i32 %1012, 94
  %1014 = add nsw i32 %1013, 33
  store i32 %1014, i32* %7, align 4
  %1015 = load i32, i32* %9, align 4
  %1016 = load i32, i32* %7, align 4
  %1017 = sub nsw i32 %1016, 33
  %1018 = mul nsw i32 94, %1017
  %1019 = sub nsw i32 %1015, %1018
  %1020 = add nsw i32 %1019, 33
  store i32 %1020, i32* %8, align 4
  %1021 = load i32, i32* %7, align 4
  %1022 = load i32, i32* %8, align 4
  %1023 = load i32, i32* %9, align 4
  %1024 = load i32, i32* %10, align 4
  %1025 = call i32 @SJIS_ENCODE(i32 %1021, i32 %1022, i32 %1023, i32 %1024)
  %1026 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1027 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1026, i32 0, i32 3
  %1028 = load i32 (i32, i32)*, i32 (i32, i32)** %1027, align 8
  %1029 = load i32, i32* %9, align 4
  %1030 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1031 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1030, i32 0, i32 2
  %1032 = load i32, i32* %1031, align 8
  %1033 = call i32 %1028(i32 %1029, i32 %1032)
  %1034 = call i32 @CK(i32 %1033)
  %1035 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1036 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1035, i32 0, i32 3
  %1037 = load i32 (i32, i32)*, i32 (i32, i32)** %1036, align 8
  %1038 = load i32, i32* %10, align 4
  %1039 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1040 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1039, i32 0, i32 2
  %1041 = load i32, i32* %1040, align 8
  %1042 = call i32 %1037(i32 %1038, i32 %1041)
  %1043 = call i32 @CK(i32 %1042)
  br label %1044

1044:                                             ; preds = %1011, %1008
  %1045 = load i32, i32* %9, align 4
  %1046 = icmp sle i32 %1045, 0
  br i1 %1046, label %1047, label %1090

1047:                                             ; preds = %1044
  %1048 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1049 = call i32 @mbfl_filt_conv_illegal_output(i32 63585, %struct.TYPE_4__* %1048)
  %1050 = call i32 @CK(i32 %1049)
  store i32 0, i32* %6, align 4
  br label %1051

1051:                                             ; preds = %1078, %1047
  %1052 = load i32, i32* %6, align 4
  %1053 = icmp slt i32 %1052, 3
  br i1 %1053, label %1054, label %1081

1054:                                             ; preds = %1051
  %1055 = load i32, i32* %7, align 4
  %1056 = load i32**, i32*** @code_tbl_m, align 8
  %1057 = load i32, i32* %6, align 4
  %1058 = add nsw i32 %1057, 5
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds i32*, i32** %1056, i64 %1059
  %1061 = load i32*, i32** %1060, align 8
  %1062 = getelementptr inbounds i32, i32* %1061, i64 3
  %1063 = load i32, i32* %1062, align 4
  %1064 = icmp eq i32 %1055, %1063
  br i1 %1064, label %1065, label %1077

1065:                                             ; preds = %1054
  %1066 = load i32**, i32*** @code_tbl_m, align 8
  %1067 = load i32, i32* %6, align 4
  %1068 = add nsw i32 %1067, 5
  %1069 = sext i32 %1068 to i64
  %1070 = getelementptr inbounds i32*, i32** %1066, i64 %1069
  %1071 = load i32*, i32** %1070, align 8
  %1072 = getelementptr inbounds i32, i32* %1071, i64 2
  %1073 = load i32, i32* %1072, align 4
  %1074 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1075 = call i32 @mbfl_filt_conv_illegal_output(i32 %1073, %struct.TYPE_4__* %1074)
  %1076 = call i32 @CK(i32 %1075)
  br label %1081

1077:                                             ; preds = %1054
  br label %1078

1078:                                             ; preds = %1077
  %1079 = load i32, i32* %6, align 4
  %1080 = add nsw i32 %1079, 1
  store i32 %1080, i32* %6, align 4
  br label %1051

1081:                                             ; preds = %1065, %1051
  %1082 = load i32, i32* %7, align 4
  %1083 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1084 = call i32 @mbfl_filt_conv_illegal_output(i32 %1082, %struct.TYPE_4__* %1083)
  %1085 = call i32 @CK(i32 %1084)
  %1086 = load i32, i32* %4, align 4
  %1087 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1088 = call i32 @mbfl_filt_conv_illegal_output(i32 %1086, %struct.TYPE_4__* %1087)
  %1089 = call i32 @CK(i32 %1088)
  br label %1090

1090:                                             ; preds = %1081, %1044
  br label %1133

1091:                                             ; preds = %953
  %1092 = load i32, i32* %11, align 4
  %1093 = icmp eq i32 %1092, 4
  br i1 %1093, label %1094, label %1132

1094:                                             ; preds = %1091
  store i32 0, i32* %6, align 4
  br label %1095

1095:                                             ; preds = %1128, %1094
  %1096 = load i32, i32* %6, align 4
  %1097 = icmp slt i32 %1096, 4
  br i1 %1097, label %1098, label %1131

1098:                                             ; preds = %1095
  %1099 = load i32, i32* %7, align 4
  %1100 = load i32**, i32*** @code_tbl_m, align 8
  %1101 = load i32, i32* %6, align 4
  %1102 = add nsw i32 %1101, 8
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds i32*, i32** %1100, i64 %1103
  %1105 = load i32*, i32** %1104, align 8
  %1106 = getelementptr inbounds i32, i32* %1105, i64 3
  %1107 = load i32, i32* %1106, align 4
  %1108 = icmp eq i32 %1099, %1107
  br i1 %1108, label %1109, label %1127

1109:                                             ; preds = %1098
  %1110 = load i32, i32* %4, align 4
  %1111 = load i32**, i32*** @code_tbl_m, align 8
  %1112 = load i32, i32* %6, align 4
  %1113 = add nsw i32 %1112, 8
  %1114 = sext i32 %1113 to i64
  %1115 = getelementptr inbounds i32*, i32** %1111, i64 %1114
  %1116 = load i32*, i32** %1115, align 8
  %1117 = getelementptr inbounds i32, i32* %1116, i64 4
  %1118 = load i32, i32* %1117, align 4
  %1119 = icmp eq i32 %1110, %1118
  br i1 %1119, label %1120, label %1127

1120:                                             ; preds = %1109
  %1121 = load i32, i32* %4, align 4
  %1122 = or i32 %1121, 262144
  %1123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1123, i32 0, i32 1
  store i32 %1122, i32* %1124, align 4
  %1125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1125, i32 0, i32 0
  store i32 5, i32* %1126, align 8
  br label %1131

1127:                                             ; preds = %1109, %1098
  br label %1128

1128:                                             ; preds = %1127
  %1129 = load i32, i32* %6, align 4
  %1130 = add nsw i32 %1129, 1
  store i32 %1130, i32* %6, align 4
  br label %1095

1131:                                             ; preds = %1120, %1095
  br label %1132

1132:                                             ; preds = %1131, %1091
  br label %1133

1133:                                             ; preds = %1132, %1090
  br label %1287

1134:                                             ; preds = %2
  store i32 0, i32* %9, align 4
  %1135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1135, i32 0, i32 1
  %1137 = load i32, i32* %1136, align 4
  %1138 = and i32 %1137, 65535
  store i32 %1138, i32* %7, align 4
  %1139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1139, i32 0, i32 1
  %1141 = load i32, i32* %1140, align 4
  %1142 = and i32 %1141, 983040
  %1143 = ashr i32 %1142, 16
  store i32 %1143, i32* %11, align 4
  %1144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1144, i32 0, i32 1
  store i32 0, i32* %1145, align 4
  %1146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1146, i32 0, i32 0
  store i32 0, i32* %1147, align 8
  %1148 = load i32, i32* %11, align 4
  %1149 = icmp eq i32 %1148, 4
  br i1 %1149, label %1150, label %1283

1150:                                             ; preds = %1134
  store i32 0, i32* %6, align 4
  br label %1151

1151:                                             ; preds = %1186, %1150
  %1152 = load i32, i32* %6, align 4
  %1153 = icmp slt i32 %1152, 4
  br i1 %1153, label %1154, label %1189

1154:                                             ; preds = %1151
  %1155 = load i32, i32* %7, align 4
  %1156 = load i32**, i32*** @code_tbl_m, align 8
  %1157 = load i32, i32* %6, align 4
  %1158 = add nsw i32 %1157, 8
  %1159 = sext i32 %1158 to i64
  %1160 = getelementptr inbounds i32*, i32** %1156, i64 %1159
  %1161 = load i32*, i32** %1160, align 8
  %1162 = getelementptr inbounds i32, i32* %1161, i64 4
  %1163 = load i32, i32* %1162, align 4
  %1164 = icmp eq i32 %1155, %1163
  br i1 %1164, label %1165, label %1185

1165:                                             ; preds = %1154
  %1166 = load i32, i32* %4, align 4
  %1167 = load i32**, i32*** @code_tbl_m, align 8
  %1168 = load i32, i32* %6, align 4
  %1169 = add nsw i32 %1168, 8
  %1170 = sext i32 %1169 to i64
  %1171 = getelementptr inbounds i32*, i32** %1167, i64 %1170
  %1172 = load i32*, i32** %1171, align 8
  %1173 = getelementptr inbounds i32, i32* %1172, i64 5
  %1174 = load i32, i32* %1173, align 4
  %1175 = icmp eq i32 %1166, %1174
  br i1 %1175, label %1176, label %1185

1176:                                             ; preds = %1165
  %1177 = load i32**, i32*** @code_tbl_m, align 8
  %1178 = load i32, i32* %6, align 4
  %1179 = add nsw i32 %1178, 8
  %1180 = sext i32 %1179 to i64
  %1181 = getelementptr inbounds i32*, i32** %1177, i64 %1180
  %1182 = load i32*, i32** %1181, align 8
  %1183 = getelementptr inbounds i32, i32* %1182, i64 0
  %1184 = load i32, i32* %1183, align 4
  store i32 %1184, i32* %9, align 4
  br label %1189

1185:                                             ; preds = %1165, %1154
  br label %1186

1186:                                             ; preds = %1185
  %1187 = load i32, i32* %6, align 4
  %1188 = add nsw i32 %1187, 1
  store i32 %1188, i32* %6, align 4
  br label %1151

1189:                                             ; preds = %1176, %1151
  %1190 = load i32, i32* %9, align 4
  %1191 = icmp sgt i32 %1190, 0
  br i1 %1191, label %1192, label %1225

1192:                                             ; preds = %1189
  %1193 = load i32, i32* %9, align 4
  %1194 = sdiv i32 %1193, 94
  %1195 = add nsw i32 %1194, 33
  store i32 %1195, i32* %7, align 4
  %1196 = load i32, i32* %9, align 4
  %1197 = load i32, i32* %7, align 4
  %1198 = sub nsw i32 %1197, 33
  %1199 = mul nsw i32 94, %1198
  %1200 = sub nsw i32 %1196, %1199
  %1201 = add nsw i32 %1200, 33
  store i32 %1201, i32* %8, align 4
  %1202 = load i32, i32* %7, align 4
  %1203 = load i32, i32* %8, align 4
  %1204 = load i32, i32* %9, align 4
  %1205 = load i32, i32* %10, align 4
  %1206 = call i32 @SJIS_ENCODE(i32 %1202, i32 %1203, i32 %1204, i32 %1205)
  %1207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1207, i32 0, i32 3
  %1209 = load i32 (i32, i32)*, i32 (i32, i32)** %1208, align 8
  %1210 = load i32, i32* %9, align 4
  %1211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1211, i32 0, i32 2
  %1213 = load i32, i32* %1212, align 8
  %1214 = call i32 %1209(i32 %1210, i32 %1213)
  %1215 = call i32 @CK(i32 %1214)
  %1216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1216, i32 0, i32 3
  %1218 = load i32 (i32, i32)*, i32 (i32, i32)** %1217, align 8
  %1219 = load i32, i32* %10, align 4
  %1220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1220, i32 0, i32 2
  %1222 = load i32, i32* %1221, align 8
  %1223 = call i32 %1218(i32 %1219, i32 %1222)
  %1224 = call i32 @CK(i32 %1223)
  br label %1225

1225:                                             ; preds = %1192, %1189
  %1226 = load i32, i32* %9, align 4
  %1227 = icmp sle i32 %1226, 0
  br i1 %1227, label %1228, label %1282

1228:                                             ; preds = %1225
  %1229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1230 = call i32 @mbfl_filt_conv_illegal_output(i32 63586, %struct.TYPE_4__* %1229)
  %1231 = call i32 @CK(i32 %1230)
  store i32 0, i32* %6, align 4
  br label %1232

1232:                                             ; preds = %1270, %1228
  %1233 = load i32, i32* %6, align 4
  %1234 = icmp slt i32 %1233, 4
  br i1 %1234, label %1235, label %1273

1235:                                             ; preds = %1232
  %1236 = load i32, i32* %7, align 4
  %1237 = load i32**, i32*** @code_tbl_m, align 8
  %1238 = load i32, i32* %6, align 4
  %1239 = add nsw i32 %1238, 8
  %1240 = sext i32 %1239 to i64
  %1241 = getelementptr inbounds i32*, i32** %1237, i64 %1240
  %1242 = load i32*, i32** %1241, align 8
  %1243 = getelementptr inbounds i32, i32* %1242, i64 4
  %1244 = load i32, i32* %1243, align 4
  %1245 = icmp eq i32 %1236, %1244
  br i1 %1245, label %1246, label %1269

1246:                                             ; preds = %1235
  %1247 = load i32**, i32*** @code_tbl_m, align 8
  %1248 = load i32, i32* %6, align 4
  %1249 = add nsw i32 %1248, 8
  %1250 = sext i32 %1249 to i64
  %1251 = getelementptr inbounds i32*, i32** %1247, i64 %1250
  %1252 = load i32*, i32** %1251, align 8
  %1253 = getelementptr inbounds i32, i32* %1252, i64 2
  %1254 = load i32, i32* %1253, align 4
  %1255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1256 = call i32 @mbfl_filt_conv_illegal_output(i32 %1254, %struct.TYPE_4__* %1255)
  %1257 = call i32 @CK(i32 %1256)
  %1258 = load i32**, i32*** @code_tbl_m, align 8
  %1259 = load i32, i32* %6, align 4
  %1260 = add nsw i32 %1259, 8
  %1261 = sext i32 %1260 to i64
  %1262 = getelementptr inbounds i32*, i32** %1258, i64 %1261
  %1263 = load i32*, i32** %1262, align 8
  %1264 = getelementptr inbounds i32, i32* %1263, i64 3
  %1265 = load i32, i32* %1264, align 4
  %1266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1267 = call i32 @mbfl_filt_conv_illegal_output(i32 %1265, %struct.TYPE_4__* %1266)
  %1268 = call i32 @CK(i32 %1267)
  br label %1273

1269:                                             ; preds = %1235
  br label %1270

1270:                                             ; preds = %1269
  %1271 = load i32, i32* %6, align 4
  %1272 = add nsw i32 %1271, 1
  store i32 %1272, i32* %6, align 4
  br label %1232

1273:                                             ; preds = %1246, %1232
  %1274 = load i32, i32* %7, align 4
  %1275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1276 = call i32 @mbfl_filt_conv_illegal_output(i32 %1274, %struct.TYPE_4__* %1275)
  %1277 = call i32 @CK(i32 %1276)
  %1278 = load i32, i32* %4, align 4
  %1279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1280 = call i32 @mbfl_filt_conv_illegal_output(i32 %1278, %struct.TYPE_4__* %1279)
  %1281 = call i32 @CK(i32 %1280)
  br label %1282

1282:                                             ; preds = %1273, %1225
  br label %1283

1283:                                             ; preds = %1282, %1134
  br label %1287

1284:                                             ; preds = %2
  %1285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %1286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1285, i32 0, i32 0
  store i32 0, i32* %1286, align 8
  br label %1287

1287:                                             ; preds = %1284, %1283, %1133, %952, %763, %649, %241
  %1288 = load i32, i32* %4, align 4
  store i32 %1288, i32* %3, align 4
  br label %1289

1289:                                             ; preds = %1287, %369, %349
  %1290 = load i32, i32* %3, align 4
  ret i32 %1290
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @SJIS_ENCODE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
