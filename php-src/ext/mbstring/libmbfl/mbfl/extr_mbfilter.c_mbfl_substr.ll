; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_substr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_substr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i8* }
%struct.TYPE_18__ = type { i64, i8*, %struct.TYPE_19__*, i32 }
%struct.collector_substr_data = type { i64, i64, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 (i32, %struct.TYPE_20__*)* }

@MBFL_ENCTYPE_SBCS = common dso_local global i32 0, align 4
@MBFL_ENCTYPE_WCS2BE = common dso_local global i32 0, align 4
@MBFL_ENCTYPE_WCS2LE = common dso_local global i32 0, align 4
@MBFL_ENCTYPE_WCS4BE = common dso_local global i32 0, align 4
@MBFL_ENCTYPE_WCS4LE = common dso_local global i32 0, align 4
@MBFL_SUBSTR_UNTIL_END = common dso_local global i64 0, align 8
@mbfl_encoding_wchar = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@mbfl_memory_device_output = common dso_local global i32 0, align 4
@collector_substr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @mbfl_substr(%struct.TYPE_18__* %0, %struct.TYPE_18__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.collector_substr_data, align 8
  %22 = alloca %struct.collector_substr_data, align 8
  %23 = alloca %struct.TYPE_20__*, align 8
  %24 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %10, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %29 = call i32 @mbfl_string_init(%struct.TYPE_18__* %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %39, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MBFL_ENCTYPE_SBCS, align 4
  %44 = load i32, i32* @MBFL_ENCTYPE_WCS2BE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @MBFL_ENCTYPE_WCS2LE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @MBFL_ENCTYPE_WCS4BE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @MBFL_ENCTYPE_WCS4LE, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %42, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %270

59:                                               ; preds = %54, %4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %13, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MBFL_ENCTYPE_SBCS, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %14, align 8
  br label %133

71:                                               ; preds = %59
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MBFL_ENCTYPE_WCS2BE, align 4
  %76 = load i32, i32* @MBFL_ENCTYPE_WCS2LE, align 4
  %77 = or i32 %75, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i64, i64* %8, align 8
  %82 = mul i64 %81, 2
  store i64 %82, i64* %14, align 8
  br label %132

83:                                               ; preds = %71
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MBFL_ENCTYPE_WCS4BE, align 4
  %88 = load i32, i32* @MBFL_ENCTYPE_WCS4LE, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load i64, i64* %8, align 8
  %94 = mul i64 %93, 4
  store i64 %94, i64* %14, align 8
  br label %131

95:                                               ; preds = %83
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %19, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %17, align 8
  br label %102

102:                                              ; preds = %112, %95
  %103 = load i64, i64* %12, align 8
  %104 = load i64, i64* %8, align 8
  %105 = icmp ule i64 %103, %104
  br i1 %105, label %106, label %130

106:                                              ; preds = %102
  %107 = load i64, i64* %11, align 8
  store i64 %107, i64* %14, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load i64, i64* %13, align 8
  %110 = icmp uge i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %130

112:                                              ; preds = %106
  %113 = load i8*, i8** %19, align 8
  %114 = load i8*, i8** %17, align 8
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds i8, i8* %113, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = zext i32 %120 to i64
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %11, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load i8*, i8** %17, align 8
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %17, align 8
  %128 = load i64, i64* %12, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %12, align 8
  br label %102

130:                                              ; preds = %111, %102
  br label %131

131:                                              ; preds = %130, %92
  br label %132

132:                                              ; preds = %131, %80
  br label %133

133:                                              ; preds = %132, %69
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* @MBFL_SUBSTR_UNTIL_END, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i64, i64* %13, align 8
  store i64 %138, i64* %15, align 8
  br label %221

139:                                              ; preds = %133
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @MBFL_ENCTYPE_SBCS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load i64, i64* %14, align 8
  %148 = load i64, i64* %9, align 8
  %149 = add i64 %147, %148
  store i64 %149, i64* %15, align 8
  br label %220

150:                                              ; preds = %139
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @MBFL_ENCTYPE_WCS2BE, align 4
  %155 = load i32, i32* @MBFL_ENCTYPE_WCS2LE, align 4
  %156 = or i32 %154, %155
  %157 = and i32 %153, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %150
  %160 = load i64, i64* %14, align 8
  %161 = load i64, i64* %9, align 8
  %162 = mul i64 %161, 2
  %163 = add i64 %160, %162
  store i64 %163, i64* %15, align 8
  br label %219

164:                                              ; preds = %150
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @MBFL_ENCTYPE_WCS4BE, align 4
  %169 = load i32, i32* @MBFL_ENCTYPE_WCS4LE, align 4
  %170 = or i32 %168, %169
  %171 = and i32 %167, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %164
  %174 = load i64, i64* %14, align 8
  %175 = load i64, i64* %9, align 8
  %176 = mul i64 %175, 4
  %177 = add i64 %174, %176
  store i64 %177, i64* %15, align 8
  br label %218

178:                                              ; preds = %164
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  store i8* %181, i8** %20, align 8
  %182 = load i64, i64* %14, align 8
  store i64 %182, i64* %15, align 8
  %183 = load i64, i64* %14, align 8
  store i64 %183, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = load i64, i64* %14, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %17, align 8
  br label %189

189:                                              ; preds = %199, %178
  %190 = load i64, i64* %12, align 8
  %191 = load i64, i64* %9, align 8
  %192 = icmp ule i64 %190, %191
  br i1 %192, label %193, label %217

193:                                              ; preds = %189
  %194 = load i64, i64* %11, align 8
  store i64 %194, i64* %15, align 8
  %195 = load i64, i64* %11, align 8
  %196 = load i64, i64* %13, align 8
  %197 = icmp uge i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %217

199:                                              ; preds = %193
  %200 = load i8*, i8** %20, align 8
  %201 = load i8*, i8** %17, align 8
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i64
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  store i32 %206, i32* %16, align 4
  %207 = load i32, i32* %16, align 4
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* %11, align 8
  %210 = add i64 %209, %208
  store i64 %210, i64* %11, align 8
  %211 = load i32, i32* %16, align 4
  %212 = load i8*, i8** %17, align 8
  %213 = zext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8* %214, i8** %17, align 8
  %215 = load i64, i64* %12, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %12, align 8
  br label %189

217:                                              ; preds = %198, %189
  br label %218

218:                                              ; preds = %217, %173
  br label %219

219:                                              ; preds = %218, %159
  br label %220

220:                                              ; preds = %219, %146
  br label %221

221:                                              ; preds = %220, %137
  %222 = load i64, i64* %14, align 8
  %223 = load i64, i64* %13, align 8
  %224 = icmp ugt i64 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = load i64, i64* %13, align 8
  store i64 %226, i64* %14, align 8
  br label %227

227:                                              ; preds = %225, %221
  %228 = load i64, i64* %15, align 8
  %229 = load i64, i64* %13, align 8
  %230 = icmp ugt i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = load i64, i64* %13, align 8
  store i64 %232, i64* %15, align 8
  br label %233

233:                                              ; preds = %231, %227
  %234 = load i64, i64* %14, align 8
  %235 = load i64, i64* %15, align 8
  %236 = icmp ugt i64 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = load i64, i64* %15, align 8
  store i64 %238, i64* %14, align 8
  br label %239

239:                                              ; preds = %237, %233
  %240 = load i64, i64* %15, align 8
  %241 = load i64, i64* %14, align 8
  %242 = sub i64 %240, %241
  store i64 %242, i64* %11, align 8
  %243 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 0
  store i64 0, i64* %244, align 8
  %245 = load i64, i64* %11, align 8
  %246 = add i64 %245, 1
  %247 = call i64 @mbfl_malloc(i64 %246)
  %248 = inttoptr i64 %247 to i8*
  store i8* %248, i8** %18, align 8
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  %251 = load i8*, i8** %18, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %268

253:                                              ; preds = %239
  %254 = load i64, i64* %11, align 8
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 0
  store i64 %254, i64* %256, align 8
  %257 = load i8*, i8** %18, align 8
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = load i64, i64* %14, align 8
  %262 = getelementptr inbounds i8, i8* %260, i64 %261
  %263 = load i64, i64* %11, align 8
  %264 = call i32 @memcpy(i8* %257, i8* %262, i64 %263)
  %265 = load i8*, i8** %18, align 8
  %266 = load i64, i64* %11, align 8
  %267 = getelementptr inbounds i8, i8* %265, i64 %266
  store i8 0, i8* %267, align 1
  br label %269

268:                                              ; preds = %239
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %7, align 8
  br label %269

269:                                              ; preds = %268, %253
  br label %364

270:                                              ; preds = %54
  %271 = load i64, i64* %9, align 8
  %272 = load i64, i64* @MBFL_SUBSTR_UNTIL_END, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %279

274:                                              ; preds = %270
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %276 = call i64 @mbfl_strlen(%struct.TYPE_18__* %275)
  %277 = load i64, i64* %8, align 8
  %278 = sub i64 %276, %277
  store i64 %278, i64* %9, align 8
  br label %279

279:                                              ; preds = %274, %270
  %280 = load i64, i64* %9, align 8
  %281 = add i64 %280, 1
  %282 = call i32 @mbfl_memory_device_init(%struct.collector_substr_data* %21, i64 %281, i32 0)
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %284 = call i32 @mbfl_string_init(%struct.TYPE_18__* %283)
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i32 0, i32 3
  store i32 %287, i32* %289, align 8
  %290 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %291, align 8
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 2
  store %struct.TYPE_19__* %292, %struct.TYPE_19__** %294, align 8
  %295 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_19__*, %struct.TYPE_19__** %296, align 8
  %298 = load i32, i32* @mbfl_memory_device_output, align 4
  %299 = call %struct.TYPE_20__* @mbfl_convert_filter_new(%struct.TYPE_19__* @mbfl_encoding_wchar, %struct.TYPE_19__* %297, i32 %298, i32 0, %struct.collector_substr_data* %21)
  store %struct.TYPE_20__* %299, %struct.TYPE_20__** %23, align 8
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 2
  %302 = load %struct.TYPE_19__*, %struct.TYPE_19__** %301, align 8
  %303 = load i32, i32* @collector_substr, align 4
  %304 = call %struct.TYPE_20__* @mbfl_convert_filter_new(%struct.TYPE_19__* %302, %struct.TYPE_19__* @mbfl_encoding_wchar, i32 %303, i32 0, %struct.collector_substr_data* %22)
  store %struct.TYPE_20__* %304, %struct.TYPE_20__** %24, align 8
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %306 = icmp eq %struct.TYPE_20__* %305, null
  br i1 %306, label %310, label %307

307:                                              ; preds = %279
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %309 = icmp eq %struct.TYPE_20__* %308, null
  br i1 %309, label %310, label %315

310:                                              ; preds = %307, %279
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %312 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_20__* %311)
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %314 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_20__* %313)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %5, align 8
  br label %366

315:                                              ; preds = %307
  %316 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %317 = getelementptr inbounds %struct.collector_substr_data, %struct.collector_substr_data* %22, i32 0, i32 3
  store %struct.TYPE_20__* %316, %struct.TYPE_20__** %317, align 8
  %318 = load i64, i64* %8, align 8
  %319 = getelementptr inbounds %struct.collector_substr_data, %struct.collector_substr_data* %22, i32 0, i32 0
  store i64 %318, i64* %319, align 8
  %320 = load i64, i64* %8, align 8
  %321 = load i64, i64* %9, align 8
  %322 = add i64 %320, %321
  %323 = getelementptr inbounds %struct.collector_substr_data, %struct.collector_substr_data* %22, i32 0, i32 1
  store i64 %322, i64* %323, align 8
  %324 = getelementptr inbounds %struct.collector_substr_data, %struct.collector_substr_data* %22, i32 0, i32 2
  store i64 0, i64* %324, align 8
  %325 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 1
  %327 = load i8*, i8** %326, align 8
  store i8* %327, i8** %17, align 8
  %328 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  store i64 %330, i64* %11, align 8
  %331 = load i8*, i8** %17, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %333, label %353

333:                                              ; preds = %315
  br label %334

334:                                              ; preds = %349, %333
  %335 = load i64, i64* %11, align 8
  %336 = icmp ugt i64 %335, 0
  br i1 %336, label %337, label %352

337:                                              ; preds = %334
  %338 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %338, i32 0, i32 0
  %340 = load i64 (i32, %struct.TYPE_20__*)*, i64 (i32, %struct.TYPE_20__*)** %339, align 8
  %341 = load i8*, i8** %17, align 8
  %342 = getelementptr inbounds i8, i8* %341, i32 1
  store i8* %342, i8** %17, align 8
  %343 = load i8, i8* %341, align 1
  %344 = zext i8 %343 to i32
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %346 = call i64 %340(i32 %344, %struct.TYPE_20__* %345)
  %347 = icmp slt i64 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %337
  br label %352

349:                                              ; preds = %337
  %350 = load i64, i64* %11, align 8
  %351 = add i64 %350, -1
  store i64 %351, i64* %11, align 8
  br label %334

352:                                              ; preds = %348, %334
  br label %353

353:                                              ; preds = %352, %315
  %354 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %355 = call i32 @mbfl_convert_filter_flush(%struct.TYPE_20__* %354)
  %356 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %357 = call i32 @mbfl_convert_filter_flush(%struct.TYPE_20__* %356)
  %358 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %359 = call %struct.TYPE_18__* @mbfl_memory_device_result(%struct.collector_substr_data* %21, %struct.TYPE_18__* %358)
  store %struct.TYPE_18__* %359, %struct.TYPE_18__** %7, align 8
  %360 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %361 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_20__* %360)
  %362 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  %363 = call i32 @mbfl_convert_filter_delete(%struct.TYPE_20__* %362)
  br label %364

364:                                              ; preds = %353, %269
  %365 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %365, %struct.TYPE_18__** %5, align 8
  br label %366

366:                                              ; preds = %364, %310
  %367 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  ret %struct.TYPE_18__* %367
}

declare dso_local i32 @mbfl_string_init(%struct.TYPE_18__*) #1

declare dso_local i64 @mbfl_malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @mbfl_strlen(%struct.TYPE_18__*) #1

declare dso_local i32 @mbfl_memory_device_init(%struct.collector_substr_data*, i64, i32) #1

declare dso_local %struct.TYPE_20__* @mbfl_convert_filter_new(%struct.TYPE_19__*, %struct.TYPE_19__*, i32, i32, %struct.collector_substr_data*) #1

declare dso_local i32 @mbfl_convert_filter_delete(%struct.TYPE_20__*) #1

declare dso_local i32 @mbfl_convert_filter_flush(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_18__* @mbfl_memory_device_result(%struct.collector_substr_data*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
