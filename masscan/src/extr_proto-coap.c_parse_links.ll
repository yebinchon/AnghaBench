; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_proto-coap.c_parse_links.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_proto-coap.c_parse_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CoapLink = type { i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"invalid state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.CoapLink* (i8*, i32, i32, i64*)* @parse_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.CoapLink* @parse_links(i8* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.CoapLink*, align 8
  %10 = alloca %struct.CoapLink*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i8*, i8** %5, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %15, %4
  %20 = call %struct.CoapLink* @CALLOC(i32 1, i32 16)
  store %struct.CoapLink* %20, %struct.CoapLink** %10, align 8
  %21 = load %struct.CoapLink*, %struct.CoapLink** %10, align 8
  %22 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %21, i64 0
  store %struct.CoapLink* %22, %struct.CoapLink** %9, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %25 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %28 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %343, %19
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %346

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  switch i32 %34, label %339 [
    i32 10, label %35
    i32 0, label %37
    i32 1, label %97
    i32 2, label %112
    i32 3, label %149
    i32 4, label %187
    i32 8, label %207
    i32 5, label %237
    i32 9, label %280
    i32 6, label %318
    i32 7, label %338
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %6, align 4
  br label %342

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @isspace(i8 zeroext %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %343

46:                                               ; preds = %37
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 60
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 10, i32* %12, align 4
  br label %342

55:                                               ; preds = %46
  %56 = load %struct.CoapLink*, %struct.CoapLink** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %11, align 4
  %59 = add i32 %58, 1
  %60 = call %struct.CoapLink* @REALLOCARRAY(%struct.CoapLink* %56, i32 %59, i32 16)
  store %struct.CoapLink* %60, %struct.CoapLink** %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.CoapLink*, %struct.CoapLink** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %62, i64 %64
  %66 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %65, i32 0, i32 1
  store i32 %61, i32* %66, align 4
  %67 = load %struct.CoapLink*, %struct.CoapLink** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %67, i64 %69
  %71 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %70, i32 0, i32 3
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.CoapLink*, %struct.CoapLink** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %73, i64 %75
  %77 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 4
  %78 = load %struct.CoapLink*, %struct.CoapLink** %10, align 8
  %79 = load i32, i32* %11, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %78, i64 %80
  %82 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %81, i32 0, i32 2
  store i32 0, i32* %82, align 4
  %83 = load %struct.CoapLink*, %struct.CoapLink** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sub i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %83, i64 %86
  store %struct.CoapLink* %87, %struct.CoapLink** %9, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add i32 %88, 1
  %90 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %91 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %93 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %96 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  store i32 1, i32* %12, align 4
  br label %342

97:                                               ; preds = %33
  %98 = load i8*, i8** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 62
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  store i32 2, i32* %12, align 4
  br label %111

106:                                              ; preds = %97
  %107 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %108 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %105
  br label %342

112:                                              ; preds = %33
  %113 = load i32, i32* %6, align 4
  %114 = add i32 %113, 1
  %115 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %116 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %118 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %117, i32 0, i32 2
  store i32 0, i32* %118, align 4
  %119 = load i8*, i8** %5, align 8
  %120 = load i32, i32* %6, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @isspace(i8 zeroext %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  br label %343

127:                                              ; preds = %112
  %128 = load i8*, i8** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 44
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  store i32 0, i32* %12, align 4
  br label %147

136:                                              ; preds = %127
  %137 = load i8*, i8** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %142, 59
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  store i32 4, i32* %12, align 4
  br label %146

145:                                              ; preds = %136
  store i32 10, i32* %12, align 4
  br label %146

146:                                              ; preds = %145, %144
  br label %147

147:                                              ; preds = %146, %135
  br label %148

148:                                              ; preds = %147
  br label %342

149:                                              ; preds = %33
  %150 = load i8*, i8** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = call i32 @isspace(i8 zeroext %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %343

158:                                              ; preds = %149
  %159 = load i8*, i8** %5, align 8
  %160 = load i32, i32* %6, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %164, 44
  br i1 %165, label %166, label %174

166:                                              ; preds = %158
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %169 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = sub i32 %167, %170
  %172 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %173 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  store i32 0, i32* %12, align 4
  br label %185

174:                                              ; preds = %158
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* %6, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 59
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  store i32 4, i32* %12, align 4
  br label %184

183:                                              ; preds = %174
  store i32 10, i32* %12, align 4
  br label %184

184:                                              ; preds = %183, %182
  br label %185

185:                                              ; preds = %184, %166
  br label %186

186:                                              ; preds = %185
  br label %342

187:                                              ; preds = %33
  %188 = load i8*, i8** %5, align 8
  %189 = load i32, i32* %6, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = call i32 @isspace(i8 zeroext %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %343

196:                                              ; preds = %187
  %197 = load i8*, i8** %5, align 8
  %198 = load i32, i32* %6, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = call i32 @is_attr_char(i8 zeroext %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %196
  store i32 10, i32* %12, align 4
  br label %206

205:                                              ; preds = %196
  store i32 8, i32* %12, align 4
  br label %206

206:                                              ; preds = %205, %204
  br label %342

207:                                              ; preds = %33
  %208 = load i8*, i8** %5, align 8
  %209 = load i32, i32* %6, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = call i32 @isspace(i8 zeroext %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %207
  br label %343

216:                                              ; preds = %207
  %217 = load i8*, i8** %5, align 8
  %218 = load i32, i32* %6, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = icmp eq i32 %222, 61
  br i1 %223, label %224, label %225

224:                                              ; preds = %216
  store i32 5, i32* %12, align 4
  br label %235

225:                                              ; preds = %216
  %226 = load i8*, i8** %5, align 8
  %227 = load i32, i32* %6, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = call i32 @is_attr_char(i8 zeroext %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %225
  store i32 10, i32* %12, align 4
  br label %234

234:                                              ; preds = %233, %225
  br label %235

235:                                              ; preds = %234, %224
  br label %236

236:                                              ; preds = %235
  br label %342

237:                                              ; preds = %33
  %238 = load i8*, i8** %5, align 8
  %239 = load i32, i32* %6, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i8, i8* %238, i64 %240
  %242 = load i8, i8* %241, align 1
  %243 = call i32 @isspace(i8 zeroext %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %237
  br label %343

246:                                              ; preds = %237
  %247 = load i8*, i8** %5, align 8
  %248 = load i32, i32* %6, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %247, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = icmp eq i32 %252, 34
  br i1 %253, label %254, label %255

254:                                              ; preds = %246
  store i32 6, i32* %12, align 4
  br label %278

255:                                              ; preds = %246
  %256 = load i32, i32* %6, align 4
  %257 = icmp eq i32 %256, 59
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  store i32 4, i32* %12, align 4
  br label %277

259:                                              ; preds = %255
  %260 = load i8*, i8** %5, align 8
  %261 = load i32, i32* %6, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = zext i8 %264 to i32
  %266 = icmp eq i32 %265, 44
  br i1 %266, label %267, label %275

267:                                              ; preds = %259
  %268 = load i32, i32* %6, align 4
  %269 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %270 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = sub i32 %268, %271
  %273 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %274 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %273, i32 0, i32 2
  store i32 %272, i32* %274, align 4
  store i32 0, i32* %12, align 4
  br label %276

275:                                              ; preds = %259
  store i32 9, i32* %12, align 4
  br label %276

276:                                              ; preds = %275, %267
  br label %277

277:                                              ; preds = %276, %258
  br label %278

278:                                              ; preds = %277, %254
  br label %279

279:                                              ; preds = %278
  br label %342

280:                                              ; preds = %33
  %281 = load i8*, i8** %5, align 8
  %282 = load i32, i32* %6, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds i8, i8* %281, i64 %283
  %285 = load i8, i8* %284, align 1
  %286 = call i32 @isspace(i8 zeroext %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %280
  br label %343

289:                                              ; preds = %280
  %290 = load i8*, i8** %5, align 8
  %291 = load i32, i32* %6, align 4
  %292 = zext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %290, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = icmp eq i32 %295, 59
  br i1 %296, label %297, label %298

297:                                              ; preds = %289
  store i32 4, i32* %12, align 4
  br label %316

298:                                              ; preds = %289
  %299 = load i8*, i8** %5, align 8
  %300 = load i32, i32* %6, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %299, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = icmp eq i32 %304, 44
  br i1 %305, label %306, label %314

306:                                              ; preds = %298
  %307 = load i32, i32* %6, align 4
  %308 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %309 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = sub i32 %307, %310
  %312 = load %struct.CoapLink*, %struct.CoapLink** %9, align 8
  %313 = getelementptr inbounds %struct.CoapLink, %struct.CoapLink* %312, i32 0, i32 2
  store i32 %311, i32* %313, align 4
  store i32 0, i32* %12, align 4
  br label %315

314:                                              ; preds = %298
  br label %315

315:                                              ; preds = %314, %306
  br label %316

316:                                              ; preds = %315, %297
  br label %317

317:                                              ; preds = %316
  br label %342

318:                                              ; preds = %33
  %319 = load i8*, i8** %5, align 8
  %320 = load i32, i32* %6, align 4
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %319, i64 %321
  %323 = load i8, i8* %322, align 1
  %324 = zext i8 %323 to i32
  %325 = icmp eq i32 %324, 92
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  store i32 7, i32* %12, align 4
  br label %337

327:                                              ; preds = %318
  %328 = load i8*, i8** %5, align 8
  %329 = load i32, i32* %6, align 4
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds i8, i8* %328, i64 %330
  %332 = load i8, i8* %331, align 1
  %333 = zext i8 %332 to i32
  %334 = icmp eq i32 %333, 34
  br i1 %334, label %335, label %336

335:                                              ; preds = %327
  store i32 9, i32* %12, align 4
  br label %336

336:                                              ; preds = %335, %327
  br label %337

337:                                              ; preds = %336, %326
  br label %342

338:                                              ; preds = %33
  store i32 6, i32* %12, align 4
  br label %342

339:                                              ; preds = %33
  %340 = load i32, i32* @stderr, align 4
  %341 = call i32 @fprintf(i32 %340, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 10, i32* %12, align 4
  br label %342

342:                                              ; preds = %339, %338, %337, %317, %279, %236, %206, %186, %148, %111, %55, %54, %35
  br label %343

343:                                              ; preds = %342, %288, %245, %215, %195, %157, %126, %45
  %344 = load i32, i32* %6, align 4
  %345 = add i32 %344, 1
  store i32 %345, i32* %6, align 4
  br label %29

346:                                              ; preds = %29
  %347 = load i32, i32* %11, align 4
  %348 = zext i32 %347 to i64
  %349 = load i64*, i64** %8, align 8
  store i64 %348, i64* %349, align 8
  %350 = load %struct.CoapLink*, %struct.CoapLink** %10, align 8
  ret %struct.CoapLink* %350
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.CoapLink* @CALLOC(i32, i32) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local %struct.CoapLink* @REALLOCARRAY(%struct.CoapLink*, i32, i32) #1

declare dso_local i32 @is_attr_char(i8 zeroext) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
