; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_open.c_mbfl_filt_conv_wchar_sjis_open.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_sjis_open.c_mbfl_filt_conv_wchar_sjis_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }

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
@cp932ext1_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext1_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext1_ucs_table = common dso_local global i32* null, align 8
@cp932ext3_ucs_table_max = common dso_local global i32 0, align 4
@cp932ext3_ucs_table_min = common dso_local global i32 0, align 4
@cp932ext3_ucs_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_sjis_open(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ucs_a1_jis_table_max, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32*, i32** @ucs_a1_jis_table, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @ucs_a1_jis_table_min, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  br label %95

24:                                               ; preds = %12, %2
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ucs_a2_jis_table_max, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32*, i32** @ucs_a2_jis_table, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @ucs_a2_jis_table_min, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  br label %94

40:                                               ; preds = %28, %24
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @ucs_i_jis_table_min, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @ucs_i_jis_table_max, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32*, i32** @ucs_i_jis_table, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @ucs_i_jis_table_min, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %7, align 4
  br label %93

56:                                               ; preds = %44, %40
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @ucs_r_jis_table_min, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @ucs_r_jis_table_max, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i32*, i32** @ucs_r_jis_table, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @ucs_r_jis_table_min, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %7, align 4
  br label %92

72:                                               ; preds = %60, %56
  %73 = load i32, i32* %3, align 4
  %74 = icmp sge i32 %73, 57344
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load i32, i32* %3, align 4
  %77 = icmp slt i32 %76, 59224
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = sub nsw i32 %79, 57344
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sdiv i32 %81, 94
  %83 = add nsw i32 %82, 127
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %7, align 4
  %85 = srem i32 %84, 94
  %86 = add nsw i32 %85, 33
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %5, align 4
  %88 = shl i32 %87, 8
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %91

91:                                               ; preds = %78, %75, %72
  br label %92

92:                                               ; preds = %91, %64
  br label %93

93:                                               ; preds = %92, %48
  br label %94

94:                                               ; preds = %93, %32
  br label %95

95:                                               ; preds = %94, %16
  %96 = load i32, i32* %7, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %176

98:                                               ; preds = %95
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @MBFL_WCSPLANE_WINCP932, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %175

110:                                              ; preds = %98
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @MBFL_WCSPLANE_JIS0208, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %117 = and i32 %115, %116
  store i32 %117, i32* %7, align 4
  br label %174

118:                                              ; preds = %110
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @MBFL_WCSPLANE_JIS0212, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %125 = and i32 %123, %124
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, 32896
  store i32 %127, i32* %7, align 4
  br label %173

128:                                              ; preds = %118
  %129 = load i32, i32* %3, align 4
  %130 = icmp eq i32 %129, 165
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 8559, i32* %7, align 4
  br label %172

132:                                              ; preds = %128
  %133 = load i32, i32* %3, align 4
  %134 = icmp eq i32 %133, 8254
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 8497, i32* %7, align 4
  br label %171

136:                                              ; preds = %132
  %137 = load i32, i32* %3, align 4
  %138 = icmp eq i32 %137, 65340
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  store i32 8512, i32* %7, align 4
  br label %170

140:                                              ; preds = %136
  %141 = load i32, i32* %3, align 4
  %142 = icmp eq i32 %141, 65374
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 8513, i32* %7, align 4
  br label %169

144:                                              ; preds = %140
  %145 = load i32, i32* %3, align 4
  %146 = icmp eq i32 %145, 8741
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 8514, i32* %7, align 4
  br label %168

148:                                              ; preds = %144
  %149 = load i32, i32* %3, align 4
  %150 = icmp eq i32 %149, 65293
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 8541, i32* %7, align 4
  br label %167

152:                                              ; preds = %148
  %153 = load i32, i32* %3, align 4
  %154 = icmp eq i32 %153, 65504
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 8561, i32* %7, align 4
  br label %166

156:                                              ; preds = %152
  %157 = load i32, i32* %3, align 4
  %158 = icmp eq i32 %157, 65505
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i32 8562, i32* %7, align 4
  br label %165

160:                                              ; preds = %156
  %161 = load i32, i32* %3, align 4
  %162 = icmp eq i32 %161, 65506
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 8780, i32* %7, align 4
  br label %164

164:                                              ; preds = %163, %160
  br label %165

165:                                              ; preds = %164, %159
  br label %166

166:                                              ; preds = %165, %155
  br label %167

167:                                              ; preds = %166, %151
  br label %168

168:                                              ; preds = %167, %147
  br label %169

169:                                              ; preds = %168, %143
  br label %170

170:                                              ; preds = %169, %139
  br label %171

171:                                              ; preds = %170, %135
  br label %172

172:                                              ; preds = %171, %131
  br label %173

173:                                              ; preds = %172, %122
  br label %174

174:                                              ; preds = %173, %114
  br label %175

175:                                              ; preds = %174, %106
  br label %176

176:                                              ; preds = %175, %95
  %177 = load i32, i32* %7, align 4
  %178 = icmp sle i32 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %7, align 4
  %181 = icmp sge i32 %180, 32896
  br i1 %181, label %182, label %255

182:                                              ; preds = %179
  %183 = load i32, i32* %8, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %255

185:                                              ; preds = %182, %176
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %5, align 4
  %186 = load i32, i32* @cp932ext1_ucs_table_max, align 4
  %187 = load i32, i32* @cp932ext1_ucs_table_min, align 4
  %188 = sub nsw i32 %186, %187
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %210, %185
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %213

193:                                              ; preds = %189
  %194 = load i32, i32* %3, align 4
  %195 = load i32*, i32** @cp932ext1_ucs_table, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %194, %199
  br i1 %200, label %201, label %210

201:                                              ; preds = %193
  %202 = load i32, i32* %5, align 4
  %203 = sdiv i32 %202, 94
  %204 = add nsw i32 %203, 45
  %205 = shl i32 %204, 8
  %206 = load i32, i32* %5, align 4
  %207 = srem i32 %206, 94
  %208 = add nsw i32 %207, 33
  %209 = add nsw i32 %205, %208
  store i32 %209, i32* %7, align 4
  br label %213

210:                                              ; preds = %193
  %211 = load i32, i32* %5, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %5, align 4
  br label %189

213:                                              ; preds = %201, %189
  %214 = load i32, i32* %7, align 4
  %215 = icmp sle i32 %214, 0
  br i1 %215, label %216, label %245

216:                                              ; preds = %213
  store i32 0, i32* %5, align 4
  %217 = load i32, i32* @cp932ext3_ucs_table_max, align 4
  %218 = load i32, i32* @cp932ext3_ucs_table_min, align 4
  %219 = sub nsw i32 %217, %218
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %241, %216
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %244

224:                                              ; preds = %220
  %225 = load i32, i32* %3, align 4
  %226 = load i32*, i32** @cp932ext3_ucs_table, align 8
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %225, %230
  br i1 %231, label %232, label %241

232:                                              ; preds = %224
  %233 = load i32, i32* %5, align 4
  %234 = sdiv i32 %233, 94
  %235 = add nsw i32 %234, 147
  %236 = shl i32 %235, 8
  %237 = load i32, i32* %5, align 4
  %238 = srem i32 %237, 94
  %239 = add nsw i32 %238, 33
  %240 = add nsw i32 %236, %239
  store i32 %240, i32* %7, align 4
  br label %244

241:                                              ; preds = %224
  %242 = load i32, i32* %5, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %5, align 4
  br label %220

244:                                              ; preds = %232, %220
  br label %245

245:                                              ; preds = %244, %213
  %246 = load i32, i32* %3, align 4
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %245
  store i32 0, i32* %7, align 4
  br label %254

249:                                              ; preds = %245
  %250 = load i32, i32* %7, align 4
  %251 = icmp sle i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  store i32 -1, i32* %7, align 4
  br label %253

253:                                              ; preds = %252, %249
  br label %254

254:                                              ; preds = %253, %248
  br label %255

255:                                              ; preds = %254, %182, %179
  %256 = load i32, i32* %7, align 4
  %257 = icmp sge i32 %256, 0
  br i1 %257, label %258, label %301

258:                                              ; preds = %255
  %259 = load i32, i32* %7, align 4
  %260 = icmp slt i32 %259, 256
  br i1 %260, label %261, label %271

261:                                              ; preds = %258
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 1
  %264 = load i32 (i32, i32)*, i32 (i32, i32)** %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 %264(i32 %265, i32 %268)
  %270 = call i32 @CK(i32 %269)
  br label %300

271:                                              ; preds = %258
  %272 = load i32, i32* %7, align 4
  %273 = ashr i32 %272, 8
  %274 = and i32 %273, 255
  store i32 %274, i32* %5, align 4
  %275 = load i32, i32* %7, align 4
  %276 = and i32 %275, 255
  store i32 %276, i32* %6, align 4
  %277 = load i32, i32* %5, align 4
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* %8, align 4
  %281 = call i32 @SJIS_ENCODE(i32 %277, i32 %278, i32 %279, i32 %280)
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 1
  %284 = load i32 (i32, i32)*, i32 (i32, i32)** %283, align 8
  %285 = load i32, i32* %7, align 4
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = call i32 %284(i32 %285, i32 %288)
  %290 = call i32 @CK(i32 %289)
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  %293 = load i32 (i32, i32)*, i32 (i32, i32)** %292, align 8
  %294 = load i32, i32* %8, align 4
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i32 %293(i32 %294, i32 %297)
  %299 = call i32 @CK(i32 %298)
  br label %300

300:                                              ; preds = %271, %261
  br label %306

301:                                              ; preds = %255
  %302 = load i32, i32* %3, align 4
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %304 = call i32 @mbfl_filt_conv_illegal_output(i32 %302, %struct.TYPE_4__* %303)
  %305 = call i32 @CK(i32 %304)
  br label %306

306:                                              ; preds = %301, %300
  %307 = load i32, i32* %3, align 4
  ret i32 %307
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @SJIS_ENCODE(i32, i32, i32, i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
