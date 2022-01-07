; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__tga_load.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_stb_image.h_stbi__tga_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"bad format\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't find out TGA pixelformat\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@STBI_rgb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"bad palette\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Corrupt TGA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i32*, i32*, i32)* @stbi__tga_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stbi__tga_load(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca [4 x i8], align 1
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i8, align 1
  %43 = alloca i8*, align 8
  %44 = alloca i8, align 1
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i8* @stbi__get8(i32* %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load i32*, i32** %7, align 8
  %49 = call i8* @stbi__get8(i32* %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i8* @stbi__get8(i32* %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i8* @stbi__get16le(i32* %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %16, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i8* @stbi__get16le(i32* %57)
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %17, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i8* @stbi__get8(i32* %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %18, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i8* @stbi__get16le(i32* %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %19, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i8* @stbi__get16le(i32* %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %20, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = call i8* @stbi__get16le(i32* %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %21, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = call i8* @stbi__get16le(i32* %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %22, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = call i8* @stbi__get8(i32* %75)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %23, align 4
  store i32 0, i32* %25, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call i8* @stbi__get8(i32* %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %26, align 4
  store i8* null, i8** %28, align 8
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 1, i32* %34, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp sge i32 %81, 8
  br i1 %82, label %83, label %86

83:                                               ; preds = %5
  %84 = load i32, i32* %14, align 4
  %85 = sub nsw i32 %84, 8
  store i32 %85, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %86

86:                                               ; preds = %83, %5
  %87 = load i32, i32* %26, align 4
  %88 = ashr i32 %87, 5
  %89 = and i32 %88, 1
  %90 = sub nsw i32 1, %89
  store i32 %90, i32* %26, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @stbi__tga_get_comp(i32 %94, i32 0, i32* %25)
  store i32 %95, i32* %24, align 4
  br label %102

96:                                               ; preds = %86
  %97 = load i32, i32* %23, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %98, 3
  %100 = zext i1 %99 to i32
  %101 = call i32 @stbi__tga_get_comp(i32 %97, i32 %100, i32* %25)
  store i32 %101, i32* %24, align 4
  br label %102

102:                                              ; preds = %96, %93
  %103 = load i32, i32* %24, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i8* %106, i8** %6, align 8
  br label %489

107:                                              ; preds = %102
  %108 = load i32, i32* %21, align 4
  %109 = load i32*, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %22, align 4
  %111 = load i32*, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32*, i32** %10, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* %24, align 4
  %116 = load i32*, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %107
  %118 = load i32, i32* %21, align 4
  %119 = sext i32 %118 to i64
  %120 = load i32, i32* %22, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %119, %121
  %123 = load i32, i32* %24, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 %122, %124
  %126 = trunc i64 %125 to i32
  %127 = call i64 @stbi__malloc(i32 %126)
  %128 = inttoptr i64 %127 to i8*
  store i8* %128, i8** %27, align 8
  %129 = load i8*, i8** %27, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %117
  %132 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i8* %132, i8** %6, align 8
  br label %489

133:                                              ; preds = %117
  %134 = load i32*, i32** %7, align 8
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @stbi__skip(i32* %134, i32 %135)
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %180, label %139

139:                                              ; preds = %133
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %180, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %25, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %180, label %145

145:                                              ; preds = %142
  store i32 0, i32* %29, align 4
  br label %146

146:                                              ; preds = %176, %145
  %147 = load i32, i32* %29, align 4
  %148 = load i32, i32* %22, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %179

150:                                              ; preds = %146
  %151 = load i32, i32* %26, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load i32, i32* %22, align 4
  %155 = load i32, i32* %29, align 4
  %156 = sub nsw i32 %154, %155
  %157 = sub nsw i32 %156, 1
  br label %160

158:                                              ; preds = %150
  %159 = load i32, i32* %29, align 4
  br label %160

160:                                              ; preds = %158, %153
  %161 = phi i32 [ %157, %153 ], [ %159, %158 ]
  store i32 %161, i32* %35, align 4
  %162 = load i8*, i8** %27, align 8
  %163 = load i32, i32* %35, align 4
  %164 = load i32, i32* %21, align 4
  %165 = mul nsw i32 %163, %164
  %166 = load i32, i32* %24, align 4
  %167 = mul nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %162, i64 %168
  store i8* %169, i8** %36, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = load i8*, i8** %36, align 8
  %172 = load i32, i32* %21, align 4
  %173 = load i32, i32* %24, align 4
  %174 = mul nsw i32 %172, %173
  %175 = call i32 @stbi__getn(i32* %170, i8* %171, i32 %174)
  br label %176

176:                                              ; preds = %160
  %177 = load i32, i32* %29, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %29, align 4
  br label %146

179:                                              ; preds = %146
  br label %439

180:                                              ; preds = %142, %139, %133
  %181 = load i32, i32* %13, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %240

183:                                              ; preds = %180
  %184 = load i32*, i32** %7, align 8
  %185 = load i32, i32* %16, align 4
  %186 = call i32 @stbi__skip(i32* %184, i32 %185)
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* %24, align 4
  %189 = mul nsw i32 %187, %188
  %190 = call i64 @stbi__malloc(i32 %189)
  %191 = inttoptr i64 %190 to i8*
  store i8* %191, i8** %28, align 8
  %192 = load i8*, i8** %28, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %183
  %195 = load i8*, i8** %27, align 8
  %196 = call i32 @STBI_FREE(i8* %195)
  %197 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i8* %197, i8** %6, align 8
  br label %489

198:                                              ; preds = %183
  %199 = load i32, i32* %25, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %224

201:                                              ; preds = %198
  %202 = load i8*, i8** %28, align 8
  store i8* %202, i8** %37, align 8
  %203 = load i32, i32* %24, align 4
  %204 = load i32, i32* @STBI_rgb, align 4
  %205 = icmp eq i32 %203, %204
  %206 = zext i1 %205 to i32
  %207 = call i32 @STBI_ASSERT(i32 %206)
  store i32 0, i32* %29, align 4
  br label %208

208:                                              ; preds = %220, %201
  %209 = load i32, i32* %29, align 4
  %210 = load i32, i32* %17, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %223

212:                                              ; preds = %208
  %213 = load i32*, i32** %7, align 8
  %214 = load i8*, i8** %37, align 8
  %215 = call i32 @stbi__tga_read_rgb16(i32* %213, i8* %214)
  %216 = load i32, i32* %24, align 4
  %217 = load i8*, i8** %37, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8* %219, i8** %37, align 8
  br label %220

220:                                              ; preds = %212
  %221 = load i32, i32* %29, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %29, align 4
  br label %208

223:                                              ; preds = %208
  br label %239

224:                                              ; preds = %198
  %225 = load i32*, i32** %7, align 8
  %226 = load i8*, i8** %28, align 8
  %227 = load i32, i32* %17, align 4
  %228 = load i32, i32* %24, align 4
  %229 = mul nsw i32 %227, %228
  %230 = call i32 @stbi__getn(i32* %225, i8* %226, i32 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %238, label %232

232:                                              ; preds = %224
  %233 = load i8*, i8** %27, align 8
  %234 = call i32 @STBI_FREE(i8* %233)
  %235 = load i8*, i8** %28, align 8
  %236 = call i32 @STBI_FREE(i8* %235)
  %237 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i8* %237, i8** %6, align 8
  br label %489

238:                                              ; preds = %224
  br label %239

239:                                              ; preds = %238, %223
  br label %240

240:                                              ; preds = %239, %180
  store i32 0, i32* %29, align 4
  br label %241

241:                                              ; preds = %368, %240
  %242 = load i32, i32* %29, align 4
  %243 = load i32, i32* %21, align 4
  %244 = load i32, i32* %22, align 4
  %245 = mul nsw i32 %243, %244
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %371

247:                                              ; preds = %241
  %248 = load i32, i32* %15, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %268

250:                                              ; preds = %247
  %251 = load i32, i32* %32, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %250
  %254 = load i32*, i32** %7, align 8
  %255 = call i8* @stbi__get8(i32* %254)
  %256 = ptrtoint i8* %255 to i32
  store i32 %256, i32* %38, align 4
  %257 = load i32, i32* %38, align 4
  %258 = and i32 %257, 127
  %259 = add nsw i32 1, %258
  store i32 %259, i32* %32, align 4
  %260 = load i32, i32* %38, align 4
  %261 = ashr i32 %260, 7
  store i32 %261, i32* %33, align 4
  store i32 1, i32* %34, align 4
  br label %267

262:                                              ; preds = %250
  %263 = load i32, i32* %33, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %262
  store i32 1, i32* %34, align 4
  br label %266

266:                                              ; preds = %265, %262
  br label %267

267:                                              ; preds = %266, %253
  br label %269

268:                                              ; preds = %247
  store i32 1, i32* %34, align 4
  br label %269

269:                                              ; preds = %268, %267
  %270 = load i32, i32* %34, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %344

272:                                              ; preds = %269
  %273 = load i32, i32* %13, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %314

275:                                              ; preds = %272
  %276 = load i32, i32* %23, align 4
  %277 = icmp eq i32 %276, 8
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load i32*, i32** %7, align 8
  %280 = call i8* @stbi__get8(i32* %279)
  br label %284

281:                                              ; preds = %275
  %282 = load i32*, i32** %7, align 8
  %283 = call i8* @stbi__get16le(i32* %282)
  br label %284

284:                                              ; preds = %281, %278
  %285 = phi i8* [ %280, %278 ], [ %283, %281 ]
  %286 = ptrtoint i8* %285 to i32
  store i32 %286, i32* %39, align 4
  %287 = load i32, i32* %39, align 4
  %288 = load i32, i32* %17, align 4
  %289 = icmp sge i32 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %284
  store i32 0, i32* %39, align 4
  br label %291

291:                                              ; preds = %290, %284
  %292 = load i32, i32* %24, align 4
  %293 = load i32, i32* %39, align 4
  %294 = mul nsw i32 %293, %292
  store i32 %294, i32* %39, align 4
  store i32 0, i32* %30, align 4
  br label %295

295:                                              ; preds = %310, %291
  %296 = load i32, i32* %30, align 4
  %297 = load i32, i32* %24, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %299, label %313

299:                                              ; preds = %295
  %300 = load i8*, i8** %28, align 8
  %301 = load i32, i32* %39, align 4
  %302 = load i32, i32* %30, align 4
  %303 = add nsw i32 %301, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8, i8* %300, i64 %304
  %306 = load i8, i8* %305, align 1
  %307 = load i32, i32* %30, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [4 x i8], [4 x i8]* %31, i64 0, i64 %308
  store i8 %306, i8* %309, align 1
  br label %310

310:                                              ; preds = %299
  %311 = load i32, i32* %30, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %30, align 4
  br label %295

313:                                              ; preds = %295
  br label %343

314:                                              ; preds = %272
  %315 = load i32, i32* %25, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %326

317:                                              ; preds = %314
  %318 = load i32, i32* %24, align 4
  %319 = load i32, i32* @STBI_rgb, align 4
  %320 = icmp eq i32 %318, %319
  %321 = zext i1 %320 to i32
  %322 = call i32 @STBI_ASSERT(i32 %321)
  %323 = load i32*, i32** %7, align 8
  %324 = getelementptr inbounds [4 x i8], [4 x i8]* %31, i64 0, i64 0
  %325 = call i32 @stbi__tga_read_rgb16(i32* %323, i8* %324)
  br label %342

326:                                              ; preds = %314
  store i32 0, i32* %30, align 4
  br label %327

327:                                              ; preds = %338, %326
  %328 = load i32, i32* %30, align 4
  %329 = load i32, i32* %24, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %341

331:                                              ; preds = %327
  %332 = load i32*, i32** %7, align 8
  %333 = call i8* @stbi__get8(i32* %332)
  %334 = ptrtoint i8* %333 to i8
  %335 = load i32, i32* %30, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [4 x i8], [4 x i8]* %31, i64 0, i64 %336
  store i8 %334, i8* %337, align 1
  br label %338

338:                                              ; preds = %331
  %339 = load i32, i32* %30, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %30, align 4
  br label %327

341:                                              ; preds = %327
  br label %342

342:                                              ; preds = %341, %317
  br label %343

343:                                              ; preds = %342, %313
  store i32 0, i32* %34, align 4
  br label %344

344:                                              ; preds = %343, %269
  store i32 0, i32* %30, align 4
  br label %345

345:                                              ; preds = %362, %344
  %346 = load i32, i32* %30, align 4
  %347 = load i32, i32* %24, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %349, label %365

349:                                              ; preds = %345
  %350 = load i32, i32* %30, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [4 x i8], [4 x i8]* %31, i64 0, i64 %351
  %353 = load i8, i8* %352, align 1
  %354 = load i8*, i8** %27, align 8
  %355 = load i32, i32* %29, align 4
  %356 = load i32, i32* %24, align 4
  %357 = mul nsw i32 %355, %356
  %358 = load i32, i32* %30, align 4
  %359 = add nsw i32 %357, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, i8* %354, i64 %360
  store i8 %353, i8* %361, align 1
  br label %362

362:                                              ; preds = %349
  %363 = load i32, i32* %30, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %30, align 4
  br label %345

365:                                              ; preds = %345
  %366 = load i32, i32* %32, align 4
  %367 = add nsw i32 %366, -1
  store i32 %367, i32* %32, align 4
  br label %368

368:                                              ; preds = %365
  %369 = load i32, i32* %29, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %29, align 4
  br label %241

371:                                              ; preds = %241
  %372 = load i32, i32* %26, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %432

374:                                              ; preds = %371
  store i32 0, i32* %30, align 4
  br label %375

375:                                              ; preds = %428, %374
  %376 = load i32, i32* %30, align 4
  %377 = mul nsw i32 %376, 2
  %378 = load i32, i32* %22, align 4
  %379 = icmp slt i32 %377, %378
  br i1 %379, label %380, label %431

380:                                              ; preds = %375
  %381 = load i32, i32* %30, align 4
  %382 = load i32, i32* %21, align 4
  %383 = mul nsw i32 %381, %382
  %384 = load i32, i32* %24, align 4
  %385 = mul nsw i32 %383, %384
  store i32 %385, i32* %40, align 4
  %386 = load i32, i32* %22, align 4
  %387 = sub nsw i32 %386, 1
  %388 = load i32, i32* %30, align 4
  %389 = sub nsw i32 %387, %388
  %390 = load i32, i32* %21, align 4
  %391 = mul nsw i32 %389, %390
  %392 = load i32, i32* %24, align 4
  %393 = mul nsw i32 %391, %392
  store i32 %393, i32* %41, align 4
  %394 = load i32, i32* %21, align 4
  %395 = load i32, i32* %24, align 4
  %396 = mul nsw i32 %394, %395
  store i32 %396, i32* %29, align 4
  br label %397

397:                                              ; preds = %424, %380
  %398 = load i32, i32* %29, align 4
  %399 = icmp sgt i32 %398, 0
  br i1 %399, label %400, label %427

400:                                              ; preds = %397
  %401 = load i8*, i8** %27, align 8
  %402 = load i32, i32* %40, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i8, i8* %401, i64 %403
  %405 = load i8, i8* %404, align 1
  store i8 %405, i8* %42, align 1
  %406 = load i8*, i8** %27, align 8
  %407 = load i32, i32* %41, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, i8* %406, i64 %408
  %410 = load i8, i8* %409, align 1
  %411 = load i8*, i8** %27, align 8
  %412 = load i32, i32* %40, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %411, i64 %413
  store i8 %410, i8* %414, align 1
  %415 = load i8, i8* %42, align 1
  %416 = load i8*, i8** %27, align 8
  %417 = load i32, i32* %41, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i8, i8* %416, i64 %418
  store i8 %415, i8* %419, align 1
  %420 = load i32, i32* %40, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %40, align 4
  %422 = load i32, i32* %41, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %41, align 4
  br label %424

424:                                              ; preds = %400
  %425 = load i32, i32* %29, align 4
  %426 = add nsw i32 %425, -1
  store i32 %426, i32* %29, align 4
  br label %397

427:                                              ; preds = %397
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* %30, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %30, align 4
  br label %375

431:                                              ; preds = %375
  br label %432

432:                                              ; preds = %431, %371
  %433 = load i8*, i8** %28, align 8
  %434 = icmp ne i8* %433, null
  br i1 %434, label %435, label %438

435:                                              ; preds = %432
  %436 = load i8*, i8** %28, align 8
  %437 = call i32 @STBI_FREE(i8* %436)
  br label %438

438:                                              ; preds = %435, %432
  br label %439

439:                                              ; preds = %438, %179
  %440 = load i32, i32* %24, align 4
  %441 = icmp sge i32 %440, 3
  br i1 %441, label %442, label %473

442:                                              ; preds = %439
  %443 = load i32, i32* %25, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %473, label %445

445:                                              ; preds = %442
  %446 = load i8*, i8** %27, align 8
  store i8* %446, i8** %43, align 8
  store i32 0, i32* %29, align 4
  br label %447

447:                                              ; preds = %469, %445
  %448 = load i32, i32* %29, align 4
  %449 = load i32, i32* %21, align 4
  %450 = load i32, i32* %22, align 4
  %451 = mul nsw i32 %449, %450
  %452 = icmp slt i32 %448, %451
  br i1 %452, label %453, label %472

453:                                              ; preds = %447
  %454 = load i8*, i8** %43, align 8
  %455 = getelementptr inbounds i8, i8* %454, i64 0
  %456 = load i8, i8* %455, align 1
  store i8 %456, i8* %44, align 1
  %457 = load i8*, i8** %43, align 8
  %458 = getelementptr inbounds i8, i8* %457, i64 2
  %459 = load i8, i8* %458, align 1
  %460 = load i8*, i8** %43, align 8
  %461 = getelementptr inbounds i8, i8* %460, i64 0
  store i8 %459, i8* %461, align 1
  %462 = load i8, i8* %44, align 1
  %463 = load i8*, i8** %43, align 8
  %464 = getelementptr inbounds i8, i8* %463, i64 2
  store i8 %462, i8* %464, align 1
  %465 = load i32, i32* %24, align 4
  %466 = load i8*, i8** %43, align 8
  %467 = sext i32 %465 to i64
  %468 = getelementptr inbounds i8, i8* %466, i64 %467
  store i8* %468, i8** %43, align 8
  br label %469

469:                                              ; preds = %453
  %470 = load i32, i32* %29, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %29, align 4
  br label %447

472:                                              ; preds = %447
  br label %473

473:                                              ; preds = %472, %442, %439
  %474 = load i32, i32* %11, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %487

476:                                              ; preds = %473
  %477 = load i32, i32* %11, align 4
  %478 = load i32, i32* %24, align 4
  %479 = icmp ne i32 %477, %478
  br i1 %479, label %480, label %487

480:                                              ; preds = %476
  %481 = load i8*, i8** %27, align 8
  %482 = load i32, i32* %24, align 4
  %483 = load i32, i32* %11, align 4
  %484 = load i32, i32* %21, align 4
  %485 = load i32, i32* %22, align 4
  %486 = call i8* @stbi__convert_format(i8* %481, i32 %482, i32 %483, i32 %484, i32 %485)
  store i8* %486, i8** %27, align 8
  br label %487

487:                                              ; preds = %480, %476, %473
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %488 = load i8*, i8** %27, align 8
  store i8* %488, i8** %6, align 8
  br label %489

489:                                              ; preds = %487, %232, %194, %131, %105
  %490 = load i8*, i8** %6, align 8
  ret i8* %490
}

declare dso_local i8* @stbi__get8(i32*) #1

declare dso_local i8* @stbi__get16le(i32*) #1

declare dso_local i32 @stbi__tga_get_comp(i32, i32, i32*) #1

declare dso_local i8* @stbi__errpuc(i8*, i8*) #1

declare dso_local i64 @stbi__malloc(i32) #1

declare dso_local i32 @stbi__skip(i32*, i32) #1

declare dso_local i32 @stbi__getn(i32*, i8*, i32) #1

declare dso_local i32 @STBI_FREE(i8*) #1

declare dso_local i32 @STBI_ASSERT(i32) #1

declare dso_local i32 @stbi__tga_read_rgb16(i32*, i8*) #1

declare dso_local i8* @stbi__convert_format(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
