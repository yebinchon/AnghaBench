; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_strpos.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/mbfl/extr_mbfilter.c_mbfl_strpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8* }
%struct.TYPE_14__ = type { i8*, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@mbfl_encoding_utf8 = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@mbfl_no_encoding_utf8 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mbfl_strpos(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca %struct.TYPE_14__, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca [256 x i64], align 16
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8, align 1
  %27 = alloca [256 x i64], align 16
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8, align 1
  %38 = alloca i8, align 1
  %39 = alloca i8, align 1
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i8, align 1
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %44 = icmp eq %struct.TYPE_14__* %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = icmp eq %struct.TYPE_14__* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %50, %45, %4
  store i64 -8, i64* %5, align 8
  br label %518

59:                                               ; preds = %53
  store %struct.TYPE_15__* @mbfl_encoding_utf8, %struct.TYPE_15__** %16, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i64 -8, i64* %5, align 8
  br label %518

65:                                               ; preds = %59
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %15, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @mbfl_no_encoding_utf8, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %65
  %77 = call i32 @mbfl_string_init(%struct.TYPE_14__* %11)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %79 = call %struct.TYPE_14__* @mbfl_convert_encoding(%struct.TYPE_14__* %78, %struct.TYPE_14__* %11, %struct.TYPE_15__* @mbfl_encoding_utf8)
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %13, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %81 = icmp eq %struct.TYPE_14__* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i64 -4, i64* %10, align 8
  br label %506

83:                                               ; preds = %76
  br label %86

84:                                               ; preds = %65
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %85, %struct.TYPE_14__** %13, align 8
  br label %86

86:                                               ; preds = %84, %83
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @mbfl_no_encoding_utf8, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %86
  %95 = call i32 @mbfl_string_init(%struct.TYPE_14__* %12)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %97 = call %struct.TYPE_14__* @mbfl_convert_encoding(%struct.TYPE_14__* %96, %struct.TYPE_14__* %12, %struct.TYPE_15__* @mbfl_encoding_utf8)
  store %struct.TYPE_14__* %97, %struct.TYPE_14__** %14, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %99 = icmp eq %struct.TYPE_14__* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i64 -4, i64* %10, align 8
  br label %506

101:                                              ; preds = %94
  br label %104

102:                                              ; preds = %86
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %14, align 8
  br label %104

104:                                              ; preds = %102, %101
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %107, 1
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i64 -8, i64* %10, align 8
  br label %506

110:                                              ; preds = %104
  store i64 -1, i64* %10, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %506

119:                                              ; preds = %110
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %267, label %122

122:                                              ; preds = %119
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  store i64 %126, i64* %18, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %23, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %24, align 8
  store i64 0, i64* %19, align 8
  br label %133

133:                                              ; preds = %141, %122
  %134 = load i64, i64* %19, align 8
  %135 = icmp ult i64 %134, 256
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load i64, i64* %18, align 8
  %138 = add i64 %137, 1
  %139 = load i64, i64* %19, align 8
  %140 = getelementptr inbounds [256 x i64], [256 x i64]* %17, i64 0, i64 %139
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %136
  %142 = load i64, i64* %19, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %19, align 8
  br label %133

144:                                              ; preds = %133
  store i64 0, i64* %19, align 8
  br label %145

145:                                              ; preds = %160, %144
  %146 = load i64, i64* %19, align 8
  %147 = load i64, i64* %18, align 8
  %148 = sub i64 %147, 1
  %149 = icmp ult i64 %146, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %145
  %151 = load i64, i64* %18, align 8
  %152 = load i64, i64* %19, align 8
  %153 = sub i64 %151, %152
  %154 = load i8*, i8** %24, align 8
  %155 = load i64, i64* %19, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i64
  %159 = getelementptr inbounds [256 x i64], [256 x i64]* %17, i64 0, i64 %158
  store i64 %153, i64* %159, align 8
  br label %160

160:                                              ; preds = %150
  %161 = load i64, i64* %19, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %19, align 8
  br label %145

163:                                              ; preds = %145
  %164 = load i8*, i8** %23, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %164, i64 %168
  store i8* %169, i8** %22, align 8
  %170 = load i8*, i8** %23, align 8
  store i8* %170, i8** %20, align 8
  br label %171

171:                                              ; preds = %180, %163
  %172 = load i64, i64* %8, align 8
  %173 = add i64 %172, -1
  store i64 %173, i64* %8, align 8
  %174 = icmp ugt i64 %172, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %171
  %176 = load i8*, i8** %20, align 8
  %177 = load i8*, i8** %22, align 8
  %178 = icmp uge i8* %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  store i64 -16, i64* %10, align 8
  br label %506

180:                                              ; preds = %175
  %181 = load i8*, i8** %15, align 8
  %182 = load i8*, i8** %20, align 8
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i64
  %185 = getelementptr inbounds i8, i8* %181, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = load i8*, i8** %20, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  store i8* %190, i8** %20, align 8
  br label %171

191:                                              ; preds = %171
  %192 = load i64, i64* %18, align 8
  %193 = load i8*, i8** %20, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 %192
  store i8* %194, i8** %20, align 8
  %195 = load i8*, i8** %20, align 8
  %196 = load i8*, i8** %22, align 8
  %197 = icmp ugt i8* %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %191
  br label %506

199:                                              ; preds = %191
  br label %200

200:                                              ; preds = %265, %199
  %201 = load i8*, i8** %20, align 8
  %202 = load i8*, i8** %22, align 8
  %203 = icmp ule i8* %201, %202
  br i1 %203, label %204, label %266

204:                                              ; preds = %200
  %205 = load i8*, i8** %20, align 8
  store i8* %205, i8** %25, align 8
  %206 = load i8*, i8** %24, align 8
  %207 = load i64, i64* %18, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  store i8* %208, i8** %21, align 8
  br label %209

209:                                              ; preds = %250, %204
  %210 = load i8*, i8** %21, align 8
  %211 = load i8*, i8** %24, align 8
  %212 = icmp eq i8* %210, %211
  br i1 %212, label %213, label %239

213:                                              ; preds = %209
  store i64 0, i64* %10, align 8
  br label %214

214:                                              ; preds = %237, %213
  %215 = load i8*, i8** %20, align 8
  %216 = load i8*, i8** %23, align 8
  %217 = icmp ugt i8* %215, %216
  br i1 %217, label %218, label %238

218:                                              ; preds = %214
  %219 = load i8*, i8** %20, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 -1
  store i8* %220, i8** %20, align 8
  %221 = load i8, i8* %220, align 1
  store i8 %221, i8* %26, align 1
  %222 = load i8, i8* %26, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp slt i32 %223, 128
  br i1 %224, label %225, label %228

225:                                              ; preds = %218
  %226 = load i64, i64* %10, align 8
  %227 = add i64 %226, 1
  store i64 %227, i64* %10, align 8
  br label %237

228:                                              ; preds = %218
  %229 = load i8, i8* %26, align 1
  %230 = zext i8 %229 to i32
  %231 = and i32 %230, 192
  %232 = icmp ne i32 %231, 128
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = load i64, i64* %10, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %10, align 8
  br label %236

236:                                              ; preds = %233, %228
  br label %237

237:                                              ; preds = %236, %225
  br label %214

238:                                              ; preds = %214
  br label %506

239:                                              ; preds = %209
  %240 = load i8*, i8** %21, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 -1
  store i8* %241, i8** %21, align 8
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = load i8*, i8** %20, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 -1
  store i8* %245, i8** %20, align 8
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = icmp ne i32 %243, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %239
  br label %251

250:                                              ; preds = %239
  br label %209

251:                                              ; preds = %249
  %252 = load i8*, i8** %20, align 8
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i64
  %255 = getelementptr inbounds [256 x i64], [256 x i64]* %17, i64 0, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = load i8*, i8** %20, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 %256
  store i8* %258, i8** %20, align 8
  %259 = load i8*, i8** %20, align 8
  %260 = load i8*, i8** %25, align 8
  %261 = icmp ule i8* %259, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %251
  %263 = load i8*, i8** %25, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 1
  store i8* %264, i8** %20, align 8
  br label %265

265:                                              ; preds = %262, %251
  br label %200

266:                                              ; preds = %200
  br label %505

267:                                              ; preds = %119
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  store i64 %271, i64* %28, align 8
  store i64 0, i64* %29, align 8
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  store i8* %274, i8** %35, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  store i8* %277, i8** %36, align 8
  store i64 0, i64* %30, align 8
  br label %278

278:                                              ; preds = %285, %267
  %279 = load i64, i64* %30, align 8
  %280 = icmp ult i64 %279, 256
  br i1 %280, label %281, label %288

281:                                              ; preds = %278
  %282 = load i64, i64* %28, align 8
  %283 = load i64, i64* %30, align 8
  %284 = getelementptr inbounds [256 x i64], [256 x i64]* %27, i64 0, i64 %283
  store i64 %282, i64* %284, align 8
  br label %285

285:                                              ; preds = %281
  %286 = load i64, i64* %30, align 8
  %287 = add i64 %286, 1
  store i64 %287, i64* %30, align 8
  br label %278

288:                                              ; preds = %278
  %289 = load i64, i64* %28, align 8
  %290 = sub i64 %289, 1
  store i64 %290, i64* %30, align 8
  br label %291

291:                                              ; preds = %319, %288
  %292 = load i64, i64* %30, align 8
  %293 = icmp ugt i64 %292, 0
  br i1 %293, label %294, label %322

294:                                              ; preds = %291
  %295 = load i8*, i8** %36, align 8
  %296 = load i64, i64* %30, align 8
  %297 = getelementptr inbounds i8, i8* %295, i64 %296
  %298 = load i8, i8* %297, align 1
  store i8 %298, i8* %37, align 1
  %299 = load i64, i64* %30, align 8
  %300 = load i8, i8* %37, align 1
  %301 = zext i8 %300 to i64
  %302 = getelementptr inbounds [256 x i64], [256 x i64]* %27, i64 0, i64 %301
  store i64 %299, i64* %302, align 8
  %303 = load i8, i8* %37, align 1
  %304 = zext i8 %303 to i32
  %305 = icmp slt i32 %304, 128
  br i1 %305, label %306, label %309

306:                                              ; preds = %294
  %307 = load i64, i64* %29, align 8
  %308 = add i64 %307, 1
  store i64 %308, i64* %29, align 8
  br label %318

309:                                              ; preds = %294
  %310 = load i8, i8* %37, align 1
  %311 = zext i8 %310 to i32
  %312 = and i32 %311, 192
  %313 = icmp ne i32 %312, 128
  br i1 %313, label %314, label %317

314:                                              ; preds = %309
  %315 = load i64, i64* %29, align 8
  %316 = add i64 %315, 1
  store i64 %316, i64* %29, align 8
  br label %317

317:                                              ; preds = %314, %309
  br label %318

318:                                              ; preds = %317, %306
  br label %319

319:                                              ; preds = %318
  %320 = load i64, i64* %30, align 8
  %321 = add i64 %320, -1
  store i64 %321, i64* %30, align 8
  br label %291

322:                                              ; preds = %291
  %323 = load i8*, i8** %36, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 0
  %325 = load i8, i8* %324, align 1
  store i8 %325, i8* %38, align 1
  %326 = load i8, i8* %38, align 1
  %327 = zext i8 %326 to i32
  %328 = icmp slt i32 %327, 128
  br i1 %328, label %329, label %332

329:                                              ; preds = %322
  %330 = load i64, i64* %29, align 8
  %331 = add i64 %330, 1
  store i64 %331, i64* %29, align 8
  br label %341

332:                                              ; preds = %322
  %333 = load i8, i8* %38, align 1
  %334 = zext i8 %333 to i32
  %335 = and i32 %334, 192
  %336 = icmp ne i32 %335, 128
  br i1 %336, label %337, label %340

337:                                              ; preds = %332
  %338 = load i64, i64* %29, align 8
  %339 = add i64 %338, 1
  store i64 %339, i64* %29, align 8
  br label %340

340:                                              ; preds = %337, %332
  br label %341

341:                                              ; preds = %340, %329
  %342 = load i8*, i8** %35, align 8
  store i8* %342, i8** %32, align 8
  %343 = load i8*, i8** %32, align 8
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 8
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, i8* %343, i64 %347
  store i8* %348, i8** %31, align 8
  %349 = load i8*, i8** %36, align 8
  %350 = load i64, i64* %28, align 8
  %351 = getelementptr inbounds i8, i8* %349, i64 %350
  store i8* %351, i8** %34, align 8
  %352 = load i64, i64* %8, align 8
  %353 = icmp ult i64 %352, 0
  br i1 %353, label %354, label %393

354:                                              ; preds = %341
  %355 = load i64, i64* %8, align 8
  %356 = sub i64 0, %355
  %357 = load i64, i64* %29, align 8
  %358 = icmp ugt i64 %356, %357
  br i1 %358, label %359, label %392

359:                                              ; preds = %354
  %360 = load i64, i64* %29, align 8
  %361 = load i64, i64* %8, align 8
  %362 = add i64 %361, %360
  store i64 %362, i64* %8, align 8
  br label %363

363:                                              ; preds = %390, %359
  %364 = load i64, i64* %8, align 8
  %365 = icmp ult i64 %364, 0
  br i1 %365, label %366, label %391

366:                                              ; preds = %363
  %367 = load i8*, i8** %31, align 8
  %368 = load i8*, i8** %32, align 8
  %369 = icmp ule i8* %367, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %366
  store i64 -16, i64* %10, align 8
  br label %506

371:                                              ; preds = %366
  %372 = load i8*, i8** %31, align 8
  %373 = getelementptr inbounds i8, i8* %372, i32 -1
  store i8* %373, i8** %31, align 8
  %374 = load i8, i8* %373, align 1
  store i8 %374, i8* %39, align 1
  %375 = load i8, i8* %39, align 1
  %376 = zext i8 %375 to i32
  %377 = icmp slt i32 %376, 128
  br i1 %377, label %378, label %381

378:                                              ; preds = %371
  %379 = load i64, i64* %8, align 8
  %380 = add i64 %379, 1
  store i64 %380, i64* %8, align 8
  br label %390

381:                                              ; preds = %371
  %382 = load i8, i8* %39, align 1
  %383 = zext i8 %382 to i32
  %384 = and i32 %383, 192
  %385 = icmp ne i32 %384, 128
  br i1 %385, label %386, label %389

386:                                              ; preds = %381
  %387 = load i64, i64* %8, align 8
  %388 = add i64 %387, 1
  store i64 %388, i64* %8, align 8
  br label %389

389:                                              ; preds = %386, %381
  br label %390

390:                                              ; preds = %389, %378
  br label %363

391:                                              ; preds = %363
  br label %392

392:                                              ; preds = %391, %354
  br label %421

393:                                              ; preds = %341
  %394 = load i8*, i8** %35, align 8
  %395 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 8
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i8, i8* %394, i64 %398
  store i8* %399, i8** %40, align 8
  br label %400

400:                                              ; preds = %409, %393
  %401 = load i64, i64* %8, align 8
  %402 = add i64 %401, -1
  store i64 %402, i64* %8, align 8
  %403 = icmp ugt i64 %401, 0
  br i1 %403, label %404, label %420

404:                                              ; preds = %400
  %405 = load i8*, i8** %32, align 8
  %406 = load i8*, i8** %40, align 8
  %407 = icmp uge i8* %405, %406
  br i1 %407, label %408, label %409

408:                                              ; preds = %404
  store i64 -16, i64* %10, align 8
  br label %506

409:                                              ; preds = %404
  %410 = load i8*, i8** %15, align 8
  %411 = load i8*, i8** %32, align 8
  %412 = load i8, i8* %411, align 1
  %413 = zext i8 %412 to i64
  %414 = getelementptr inbounds i8, i8* %410, i64 %413
  %415 = load i8, i8* %414, align 1
  %416 = zext i8 %415 to i32
  %417 = load i8*, i8** %32, align 8
  %418 = sext i32 %416 to i64
  %419 = getelementptr inbounds i8, i8* %417, i64 %418
  store i8* %419, i8** %32, align 8
  br label %400

420:                                              ; preds = %400
  br label %421

421:                                              ; preds = %420, %392
  %422 = load i8*, i8** %31, align 8
  %423 = load i8*, i8** %32, align 8
  %424 = load i64, i64* %28, align 8
  %425 = getelementptr inbounds i8, i8* %423, i64 %424
  %426 = icmp ult i8* %422, %425
  br i1 %426, label %427, label %428

427:                                              ; preds = %421
  br label %506

428:                                              ; preds = %421
  %429 = load i64, i64* %28, align 8
  %430 = load i8*, i8** %31, align 8
  %431 = sub i64 0, %429
  %432 = getelementptr inbounds i8, i8* %430, i64 %431
  store i8* %432, i8** %31, align 8
  br label %433

433:                                              ; preds = %503, %428
  %434 = load i8*, i8** %31, align 8
  %435 = load i8*, i8** %32, align 8
  %436 = icmp uge i8* %434, %435
  br i1 %436, label %437, label %504

437:                                              ; preds = %433
  %438 = load i8*, i8** %31, align 8
  store i8* %438, i8** %41, align 8
  %439 = load i8*, i8** %36, align 8
  store i8* %439, i8** %33, align 8
  br label %440

440:                                              ; preds = %483, %437
  %441 = load i8*, i8** %33, align 8
  %442 = load i8*, i8** %34, align 8
  %443 = icmp eq i8* %441, %442
  br i1 %443, label %444, label %474

444:                                              ; preds = %440
  store i64 0, i64* %10, align 8
  %445 = load i64, i64* %28, align 8
  %446 = load i8*, i8** %31, align 8
  %447 = sub i64 0, %445
  %448 = getelementptr inbounds i8, i8* %446, i64 %447
  store i8* %448, i8** %31, align 8
  br label %449

449:                                              ; preds = %472, %444
  %450 = load i8*, i8** %31, align 8
  %451 = load i8*, i8** %35, align 8
  %452 = icmp ugt i8* %450, %451
  br i1 %452, label %453, label %473

453:                                              ; preds = %449
  %454 = load i8*, i8** %31, align 8
  %455 = getelementptr inbounds i8, i8* %454, i32 -1
  store i8* %455, i8** %31, align 8
  %456 = load i8, i8* %455, align 1
  store i8 %456, i8* %42, align 1
  %457 = load i8, i8* %42, align 1
  %458 = zext i8 %457 to i32
  %459 = icmp slt i32 %458, 128
  br i1 %459, label %460, label %463

460:                                              ; preds = %453
  %461 = load i64, i64* %10, align 8
  %462 = add i64 %461, 1
  store i64 %462, i64* %10, align 8
  br label %472

463:                                              ; preds = %453
  %464 = load i8, i8* %42, align 1
  %465 = zext i8 %464 to i32
  %466 = and i32 %465, 192
  %467 = icmp ne i32 %466, 128
  br i1 %467, label %468, label %471

468:                                              ; preds = %463
  %469 = load i64, i64* %10, align 8
  %470 = add i64 %469, 1
  store i64 %470, i64* %10, align 8
  br label %471

471:                                              ; preds = %468, %463
  br label %472

472:                                              ; preds = %471, %460
  br label %449

473:                                              ; preds = %449
  br label %506

474:                                              ; preds = %440
  %475 = load i8*, i8** %33, align 8
  %476 = load i8, i8* %475, align 1
  %477 = zext i8 %476 to i32
  %478 = load i8*, i8** %31, align 8
  %479 = load i8, i8* %478, align 1
  %480 = zext i8 %479 to i32
  %481 = icmp ne i32 %477, %480
  br i1 %481, label %482, label %483

482:                                              ; preds = %474
  br label %488

483:                                              ; preds = %474
  %484 = load i8*, i8** %31, align 8
  %485 = getelementptr inbounds i8, i8* %484, i32 1
  store i8* %485, i8** %31, align 8
  %486 = load i8*, i8** %33, align 8
  %487 = getelementptr inbounds i8, i8* %486, i32 1
  store i8* %487, i8** %33, align 8
  br label %440

488:                                              ; preds = %482
  %489 = load i8*, i8** %31, align 8
  %490 = load i8, i8* %489, align 1
  %491 = zext i8 %490 to i64
  %492 = getelementptr inbounds [256 x i64], [256 x i64]* %27, i64 0, i64 %491
  %493 = load i64, i64* %492, align 8
  %494 = load i8*, i8** %31, align 8
  %495 = sub i64 0, %493
  %496 = getelementptr inbounds i8, i8* %494, i64 %495
  store i8* %496, i8** %31, align 8
  %497 = load i8*, i8** %31, align 8
  %498 = load i8*, i8** %41, align 8
  %499 = icmp uge i8* %497, %498
  br i1 %499, label %500, label %503

500:                                              ; preds = %488
  %501 = load i8*, i8** %41, align 8
  %502 = getelementptr inbounds i8, i8* %501, i64 -1
  store i8* %502, i8** %31, align 8
  br label %503

503:                                              ; preds = %500, %488
  br label %433

504:                                              ; preds = %433
  br label %505

505:                                              ; preds = %504, %266
  br label %506

506:                                              ; preds = %505, %473, %427, %408, %370, %238, %198, %179, %118, %109, %100, %82
  %507 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %508 = icmp eq %struct.TYPE_14__* %507, %11
  br i1 %508, label %509, label %511

509:                                              ; preds = %506
  %510 = call i32 @mbfl_string_clear(%struct.TYPE_14__* %11)
  br label %511

511:                                              ; preds = %509, %506
  %512 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %513 = icmp eq %struct.TYPE_14__* %512, %12
  br i1 %513, label %514, label %516

514:                                              ; preds = %511
  %515 = call i32 @mbfl_string_clear(%struct.TYPE_14__* %12)
  br label %516

516:                                              ; preds = %514, %511
  %517 = load i64, i64* %10, align 8
  store i64 %517, i64* %5, align 8
  br label %518

518:                                              ; preds = %516, %64, %58
  %519 = load i64, i64* %5, align 8
  ret i64 %519
}

declare dso_local i32 @mbfl_string_init(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @mbfl_convert_encoding(%struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @mbfl_string_clear(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
