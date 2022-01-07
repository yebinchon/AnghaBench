; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf8_mobile.c_mbfl_filt_conv_utf8_mobile_wchar.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_utf8_mobile.c_mbfl_filt_conv_utf8_mobile_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 (i32, i32)*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@mbfl_no_encoding_utf8_docomo = common dso_local global i32 0, align 4
@mbfl_docomo2uni_pua = common dso_local global i32 0, align 4
@mbfl_no_encoding_utf8_kddi_a = common dso_local global i32 0, align 4
@mbfl_kddi2uni_pua = common dso_local global i32 0, align 4
@mbfl_no_encoding_utf8_kddi_b = common dso_local global i32 0, align 4
@mbfl_kddi2uni_pua_b = common dso_local global i32 0, align 4
@mbfl_no_encoding_utf8_sb = common dso_local global i32 0, align 4
@mbfl_sb2uni_pua = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_utf8_mobile_wchar(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %312, %284, %233, %182, %2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 255
  switch i32 %13, label %320 [
    i32 0, label %14
    i32 16, label %75
    i32 33, label %75
    i32 50, label %75
    i32 32, label %190
    i32 48, label %241
    i32 49, label %292
  ]

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 128
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %20(i32 %21, i32 %24)
  %26 = call i32 @CK(i32 %25)
  br label %74

27:                                               ; preds = %14
  %28 = load i32, i32* %3, align 4
  %29 = icmp sge i32 %28, 194
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = icmp sle i32 %31, 223
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 16, i32* %35, align 8
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %73

40:                                               ; preds = %30, %27
  %41 = load i32, i32* %3, align 4
  %42 = icmp sge i32 %41, 224
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp sle i32 %44, 239
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 32, i32* %48, align 8
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, 15
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %72

53:                                               ; preds = %43, %40
  %54 = load i32, i32* %3, align 4
  %55 = icmp sge i32 %54, 240
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = icmp sle i32 %57, 244
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 48, i32* %61, align 8
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, 7
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %71

66:                                               ; preds = %56, %53
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = call i32 @mbfl_filt_put_invalid_char(i32 %67, %struct.TYPE_6__* %68)
  %70 = call i32 @CK(i32 %69)
  br label %71

71:                                               ; preds = %66, %59
  br label %72

72:                                               ; preds = %71, %46
  br label %73

73:                                               ; preds = %72, %33
  br label %74

74:                                               ; preds = %73, %17
  br label %323

75:                                               ; preds = %9, %9, %9
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load i32, i32* %3, align 4
  %79 = icmp sge i32 %78, 128
  br i1 %79, label %80, label %182

80:                                               ; preds = %75
  %81 = load i32, i32* %3, align 4
  %82 = icmp sle i32 %81, 191
  br i1 %82, label %83, label %182

83:                                               ; preds = %80
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 6
  %88 = load i32, i32* %3, align 4
  %89 = and i32 %88, 63
  %90 = or i32 %87, %89
  store i32 %90, i32* %5, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @mbfl_no_encoding_utf8_docomo, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %83
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @mbfl_docomo2uni_pua, align 4
  %103 = call i32 @mbfilter_conv_r_map_tbl(i32 %101, i32* %6, i32 %102, i32 4)
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @mbfilter_sjis_emoji_docomo2unicode(i32 %106, i32* %8)
  store i32 %107, i32* %5, align 4
  br label %159

108:                                              ; preds = %100, %83
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @mbfl_no_encoding_utf8_kddi_a, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %108
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @mbfl_kddi2uni_pua, align 4
  %119 = call i32 @mbfilter_conv_r_map_tbl(i32 %117, i32* %6, i32 %118, i32 7)
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @mbfilter_sjis_emoji_kddi2unicode(i32 %122, i32* %8)
  store i32 %123, i32* %5, align 4
  br label %158

124:                                              ; preds = %116, %108
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @mbfl_no_encoding_utf8_kddi_b, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %124
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @mbfl_kddi2uni_pua_b, align 4
  %135 = call i32 @mbfilter_conv_r_map_tbl(i32 %133, i32* %6, i32 %134, i32 8)
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @mbfilter_sjis_emoji_kddi2unicode(i32 %138, i32* %8)
  store i32 %139, i32* %5, align 4
  br label %157

140:                                              ; preds = %132, %124
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @mbfl_no_encoding_utf8_sb, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %140
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @mbfl_sb2uni_pua, align 4
  %151 = call i32 @mbfilter_conv_r_map_tbl(i32 %149, i32* %6, i32 %150, i32 6)
  %152 = icmp sgt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @mbfilter_sjis_emoji_sb2unicode(i32 %154, i32* %8)
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %153, %148, %140
  br label %157

157:                                              ; preds = %156, %137
  br label %158

158:                                              ; preds = %157, %121
  br label %159

159:                                              ; preds = %158, %105
  %160 = load i32, i32* %8, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  %165 = load i32 (i32, i32)*, i32 (i32, i32)** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 %165(i32 %166, i32 %169)
  %171 = call i32 @CK(i32 %170)
  br label %172

172:                                              ; preds = %162, %159
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 3
  %175 = load i32 (i32, i32)*, i32 (i32, i32)** %174, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 %175(i32 %176, i32 %179)
  %181 = call i32 @CK(i32 %180)
  br label %189

182:                                              ; preds = %80, %75
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %187 = call i32 @mbfl_filt_put_invalid_char(i32 %185, %struct.TYPE_6__* %186)
  %188 = call i32 @CK(i32 %187)
  br label %9

189:                                              ; preds = %172
  br label %323

190:                                              ; preds = %9
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 %193, 6
  %195 = load i32, i32* %3, align 4
  %196 = and i32 %195, 63
  %197 = or i32 %194, %196
  store i32 %197, i32* %5, align 4
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %200, 15
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %3, align 4
  %203 = icmp sge i32 %202, 128
  br i1 %203, label %204, label %233

204:                                              ; preds = %190
  %205 = load i32, i32* %3, align 4
  %206 = icmp sle i32 %205, 191
  br i1 %206, label %207, label %233

207:                                              ; preds = %204
  %208 = load i32, i32* %7, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32, i32* %3, align 4
  %212 = icmp sge i32 %211, 160
  br i1 %212, label %225, label %213

213:                                              ; preds = %210, %207
  %214 = load i32, i32* %7, align 4
  %215 = icmp eq i32 %214, 13
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* %3, align 4
  %218 = icmp slt i32 %217, 160
  br i1 %218, label %225, label %219

219:                                              ; preds = %216, %213
  %220 = load i32, i32* %7, align 4
  %221 = icmp sgt i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %219
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 13
  br i1 %224, label %225, label %233

225:                                              ; preds = %222, %216, %210
  %226 = load i32, i32* %5, align 4
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 8
  br label %240

233:                                              ; preds = %222, %219, %204, %190
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %238 = call i32 @mbfl_filt_put_invalid_char(i32 %236, %struct.TYPE_6__* %237)
  %239 = call i32 @CK(i32 %238)
  br label %9

240:                                              ; preds = %225
  br label %323

241:                                              ; preds = %9
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = shl i32 %244, 6
  %246 = load i32, i32* %3, align 4
  %247 = and i32 %246, 63
  %248 = or i32 %245, %247
  store i32 %248, i32* %5, align 4
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = and i32 %251, 7
  store i32 %252, i32* %7, align 4
  %253 = load i32, i32* %3, align 4
  %254 = icmp sge i32 %253, 128
  br i1 %254, label %255, label %284

255:                                              ; preds = %241
  %256 = load i32, i32* %3, align 4
  %257 = icmp sle i32 %256, 191
  br i1 %257, label %258, label %284

258:                                              ; preds = %255
  %259 = load i32, i32* %7, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load i32, i32* %3, align 4
  %263 = icmp sge i32 %262, 144
  br i1 %263, label %276, label %264

264:                                              ; preds = %261, %258
  %265 = load i32, i32* %7, align 4
  %266 = icmp eq i32 %265, 4
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i32, i32* %3, align 4
  %269 = icmp slt i32 %268, 144
  br i1 %269, label %276, label %270

270:                                              ; preds = %267, %264
  %271 = load i32, i32* %7, align 4
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %284

273:                                              ; preds = %270
  %274 = load i32, i32* %7, align 4
  %275 = icmp ne i32 %274, 4
  br i1 %275, label %276, label %284

276:                                              ; preds = %273, %267, %261
  %277 = load i32, i32* %5, align 4
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 4
  %280 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %281, align 8
  br label %291

284:                                              ; preds = %273, %270, %255, %241
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %289 = call i32 @mbfl_filt_put_invalid_char(i32 %287, %struct.TYPE_6__* %288)
  %290 = call i32 @CK(i32 %289)
  br label %9

291:                                              ; preds = %276
  br label %323

292:                                              ; preds = %9
  %293 = load i32, i32* %3, align 4
  %294 = icmp sge i32 %293, 128
  br i1 %294, label %295, label %312

295:                                              ; preds = %292
  %296 = load i32, i32* %3, align 4
  %297 = icmp sle i32 %296, 191
  br i1 %297, label %298, label %312

298:                                              ; preds = %295
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = shl i32 %301, 6
  %303 = load i32, i32* %3, align 4
  %304 = and i32 %303, 63
  %305 = or i32 %302, %304
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 1
  store i32 %305, i32* %307, align 4
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %309, align 8
  br label %319

312:                                              ; preds = %295, %292
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %317 = call i32 @mbfl_filt_put_invalid_char(i32 %315, %struct.TYPE_6__* %316)
  %318 = call i32 @CK(i32 %317)
  br label %9

319:                                              ; preds = %298
  br label %323

320:                                              ; preds = %9
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 0
  store i32 0, i32* %322, align 8
  br label %323

323:                                              ; preds = %320, %319, %291, %240, %189, %74
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_put_invalid_char(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mbfilter_conv_r_map_tbl(i32, i32*, i32, i32) #1

declare dso_local i32 @mbfilter_sjis_emoji_docomo2unicode(i32, i32*) #1

declare dso_local i32 @mbfilter_sjis_emoji_kddi2unicode(i32, i32*) #1

declare dso_local i32 @mbfilter_sjis_emoji_sb2unicode(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
