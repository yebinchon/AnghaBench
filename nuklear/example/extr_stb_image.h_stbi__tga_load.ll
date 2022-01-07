; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__tga_load.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__tga_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"bad palette\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Corrupt TGA\00", align 1
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
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [4 x i8], align 1
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i8, align 1
  %41 = alloca i8*, align 8
  %42 = alloca i8, align 1
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i8* @stbi__get8(i32* %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = call i8* @stbi__get8(i32* %46)
  %48 = ptrtoint i8* %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = call i8* @stbi__get8(i32* %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @stbi__get16le(i32* %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @stbi__get16le(i32* %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i8* @stbi__get8(i32* %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* %18, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @stbi__get16le(i32* %59)
  store i32 %60, i32* %19, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @stbi__get16le(i32* %61)
  store i32 %62, i32* %20, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @stbi__get16le(i32* %63)
  store i32 %64, i32* %21, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @stbi__get16le(i32* %65)
  store i32 %66, i32* %22, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i8* @stbi__get8(i32* %67)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %23, align 4
  %70 = load i32, i32* %23, align 4
  %71 = sdiv i32 %70, 8
  store i32 %71, i32* %24, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = call i8* @stbi__get8(i32* %72)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %25, align 4
  store i8* null, i8** %27, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 1, i32* %33, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp sge i32 %75, 8
  br i1 %76, label %77, label %80

77:                                               ; preds = %5
  %78 = load i32, i32* %14, align 4
  %79 = sub nsw i32 %78, 8
  store i32 %79, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %80

80:                                               ; preds = %77, %5
  %81 = load i32, i32* %25, align 4
  %82 = ashr i32 %81, 5
  %83 = and i32 %82, 1
  %84 = sub nsw i32 1, %83
  store i32 %84, i32* %25, align 4
  %85 = load i32, i32* %21, align 4
  %86 = icmp slt i32 %85, 1
  br i1 %86, label %108, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %22, align 4
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %108, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %108, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %14, align 4
  %95 = icmp sgt i32 %94, 3
  br i1 %95, label %108, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %23, align 4
  %98 = icmp ne i32 %97, 8
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load i32, i32* %23, align 4
  %101 = icmp ne i32 %100, 16
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32, i32* %23, align 4
  %104 = icmp ne i32 %103, 24
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* %23, align 4
  %107 = icmp ne i32 %106, 32
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %93, %90, %87, %80
  store i8* null, i8** %6, align 8
  br label %448

109:                                              ; preds = %105, %102, %99, %96
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %18, align 4
  %114 = sdiv i32 %113, 8
  store i32 %114, i32* %24, align 4
  br label %115

115:                                              ; preds = %112, %109
  %116 = load i32, i32* %21, align 4
  %117 = load i32*, i32** %8, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* %22, align 4
  %119 = load i32*, i32** %9, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i32, i32* %24, align 4
  %124 = load i32*, i32** %10, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %115
  %126 = load i32, i32* %21, align 4
  %127 = sext i32 %126 to i64
  %128 = load i32, i32* %22, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %127, %129
  %131 = load i32, i32* %24, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %130, %132
  %134 = trunc i64 %133 to i32
  %135 = call i64 @stbi__malloc(i32 %134)
  %136 = inttoptr i64 %135 to i8*
  store i8* %136, i8** %26, align 8
  %137 = load i8*, i8** %26, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %125
  %140 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %140, i8** %6, align 8
  br label %448

141:                                              ; preds = %125
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @stbi__skip(i32* %142, i32 %143)
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %185, label %147

147:                                              ; preds = %141
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %185, label %150

150:                                              ; preds = %147
  store i32 0, i32* %28, align 4
  br label %151

151:                                              ; preds = %181, %150
  %152 = load i32, i32* %28, align 4
  %153 = load i32, i32* %22, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %184

155:                                              ; preds = %151
  %156 = load i32, i32* %25, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %155
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* %28, align 4
  %161 = sub nsw i32 %159, %160
  %162 = sub nsw i32 %161, 1
  br label %165

163:                                              ; preds = %155
  %164 = load i32, i32* %28, align 4
  br label %165

165:                                              ; preds = %163, %158
  %166 = phi i32 [ %162, %158 ], [ %164, %163 ]
  store i32 %166, i32* %34, align 4
  %167 = load i8*, i8** %26, align 8
  %168 = load i32, i32* %34, align 4
  %169 = load i32, i32* %21, align 4
  %170 = mul nsw i32 %168, %169
  %171 = load i32, i32* %24, align 4
  %172 = mul nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %167, i64 %173
  store i8* %174, i8** %35, align 8
  %175 = load i32*, i32** %7, align 8
  %176 = load i8*, i8** %35, align 8
  %177 = load i32, i32* %21, align 4
  %178 = load i32, i32* %24, align 4
  %179 = mul nsw i32 %177, %178
  %180 = call i32 @stbi__getn(i32* %175, i8* %176, i32 %179)
  br label %181

181:                                              ; preds = %165
  %182 = load i32, i32* %28, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %28, align 4
  br label %151

184:                                              ; preds = %151
  br label %401

185:                                              ; preds = %147, %141
  %186 = load i32, i32* %13, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %220

188:                                              ; preds = %185
  %189 = load i32*, i32** %7, align 8
  %190 = load i32, i32* %16, align 4
  %191 = call i32 @stbi__skip(i32* %189, i32 %190)
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %18, align 4
  %194 = mul nsw i32 %192, %193
  %195 = sdiv i32 %194, 8
  %196 = call i64 @stbi__malloc(i32 %195)
  %197 = inttoptr i64 %196 to i8*
  store i8* %197, i8** %27, align 8
  %198 = load i8*, i8** %27, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %188
  %201 = load i8*, i8** %26, align 8
  %202 = call i32 @STBI_FREE(i8* %201)
  %203 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* %203, i8** %6, align 8
  br label %448

204:                                              ; preds = %188
  %205 = load i32*, i32** %7, align 8
  %206 = load i8*, i8** %27, align 8
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* %18, align 4
  %209 = mul nsw i32 %207, %208
  %210 = sdiv i32 %209, 8
  %211 = call i32 @stbi__getn(i32* %205, i8* %206, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %204
  %214 = load i8*, i8** %26, align 8
  %215 = call i32 @STBI_FREE(i8* %214)
  %216 = load i8*, i8** %27, align 8
  %217 = call i32 @STBI_FREE(i8* %216)
  %218 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i8* %218, i8** %6, align 8
  br label %448

219:                                              ; preds = %204
  br label %220

220:                                              ; preds = %219, %185
  store i32 0, i32* %28, align 4
  br label %221

221:                                              ; preds = %330, %220
  %222 = load i32, i32* %28, align 4
  %223 = load i32, i32* %21, align 4
  %224 = load i32, i32* %22, align 4
  %225 = mul nsw i32 %223, %224
  %226 = icmp slt i32 %222, %225
  br i1 %226, label %227, label %333

227:                                              ; preds = %221
  %228 = load i32, i32* %15, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %248

230:                                              ; preds = %227
  %231 = load i32, i32* %31, align 4
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %230
  %234 = load i32*, i32** %7, align 8
  %235 = call i8* @stbi__get8(i32* %234)
  %236 = ptrtoint i8* %235 to i32
  store i32 %236, i32* %36, align 4
  %237 = load i32, i32* %36, align 4
  %238 = and i32 %237, 127
  %239 = add nsw i32 1, %238
  store i32 %239, i32* %31, align 4
  %240 = load i32, i32* %36, align 4
  %241 = ashr i32 %240, 7
  store i32 %241, i32* %32, align 4
  store i32 1, i32* %33, align 4
  br label %247

242:                                              ; preds = %230
  %243 = load i32, i32* %32, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %242
  store i32 1, i32* %33, align 4
  br label %246

246:                                              ; preds = %245, %242
  br label %247

247:                                              ; preds = %246, %233
  br label %249

248:                                              ; preds = %227
  store i32 1, i32* %33, align 4
  br label %249

249:                                              ; preds = %248, %247
  %250 = load i32, i32* %33, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %306

252:                                              ; preds = %249
  %253 = load i32, i32* %13, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %288

255:                                              ; preds = %252
  %256 = load i32*, i32** %7, align 8
  %257 = call i8* @stbi__get8(i32* %256)
  %258 = ptrtoint i8* %257 to i32
  store i32 %258, i32* %37, align 4
  %259 = load i32, i32* %37, align 4
  %260 = load i32, i32* %17, align 4
  %261 = icmp sge i32 %259, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %255
  store i32 0, i32* %37, align 4
  br label %263

263:                                              ; preds = %262, %255
  %264 = load i32, i32* %23, align 4
  %265 = sdiv i32 %264, 8
  %266 = load i32, i32* %37, align 4
  %267 = mul nsw i32 %266, %265
  store i32 %267, i32* %37, align 4
  store i32 0, i32* %29, align 4
  br label %268

268:                                              ; preds = %284, %263
  %269 = load i32, i32* %29, align 4
  %270 = mul nsw i32 %269, 8
  %271 = load i32, i32* %23, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %287

273:                                              ; preds = %268
  %274 = load i8*, i8** %27, align 8
  %275 = load i32, i32* %37, align 4
  %276 = load i32, i32* %29, align 4
  %277 = add nsw i32 %275, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %274, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = load i32, i32* %29, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 %282
  store i8 %280, i8* %283, align 1
  br label %284

284:                                              ; preds = %273
  %285 = load i32, i32* %29, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %29, align 4
  br label %268

287:                                              ; preds = %268
  br label %305

288:                                              ; preds = %252
  store i32 0, i32* %29, align 4
  br label %289

289:                                              ; preds = %301, %288
  %290 = load i32, i32* %29, align 4
  %291 = mul nsw i32 %290, 8
  %292 = load i32, i32* %23, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %304

294:                                              ; preds = %289
  %295 = load i32*, i32** %7, align 8
  %296 = call i8* @stbi__get8(i32* %295)
  %297 = ptrtoint i8* %296 to i8
  %298 = load i32, i32* %29, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 %299
  store i8 %297, i8* %300, align 1
  br label %301

301:                                              ; preds = %294
  %302 = load i32, i32* %29, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %29, align 4
  br label %289

304:                                              ; preds = %289
  br label %305

305:                                              ; preds = %304, %287
  store i32 0, i32* %33, align 4
  br label %306

306:                                              ; preds = %305, %249
  store i32 0, i32* %29, align 4
  br label %307

307:                                              ; preds = %324, %306
  %308 = load i32, i32* %29, align 4
  %309 = load i32, i32* %24, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %327

311:                                              ; preds = %307
  %312 = load i32, i32* %29, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i64 0, i64 %313
  %315 = load i8, i8* %314, align 1
  %316 = load i8*, i8** %26, align 8
  %317 = load i32, i32* %28, align 4
  %318 = load i32, i32* %24, align 4
  %319 = mul nsw i32 %317, %318
  %320 = load i32, i32* %29, align 4
  %321 = add nsw i32 %319, %320
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, i8* %316, i64 %322
  store i8 %315, i8* %323, align 1
  br label %324

324:                                              ; preds = %311
  %325 = load i32, i32* %29, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %29, align 4
  br label %307

327:                                              ; preds = %307
  %328 = load i32, i32* %31, align 4
  %329 = add nsw i32 %328, -1
  store i32 %329, i32* %31, align 4
  br label %330

330:                                              ; preds = %327
  %331 = load i32, i32* %28, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %28, align 4
  br label %221

333:                                              ; preds = %221
  %334 = load i32, i32* %25, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %394

336:                                              ; preds = %333
  store i32 0, i32* %29, align 4
  br label %337

337:                                              ; preds = %390, %336
  %338 = load i32, i32* %29, align 4
  %339 = mul nsw i32 %338, 2
  %340 = load i32, i32* %22, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %393

342:                                              ; preds = %337
  %343 = load i32, i32* %29, align 4
  %344 = load i32, i32* %21, align 4
  %345 = mul nsw i32 %343, %344
  %346 = load i32, i32* %24, align 4
  %347 = mul nsw i32 %345, %346
  store i32 %347, i32* %38, align 4
  %348 = load i32, i32* %22, align 4
  %349 = sub nsw i32 %348, 1
  %350 = load i32, i32* %29, align 4
  %351 = sub nsw i32 %349, %350
  %352 = load i32, i32* %21, align 4
  %353 = mul nsw i32 %351, %352
  %354 = load i32, i32* %24, align 4
  %355 = mul nsw i32 %353, %354
  store i32 %355, i32* %39, align 4
  %356 = load i32, i32* %21, align 4
  %357 = load i32, i32* %24, align 4
  %358 = mul nsw i32 %356, %357
  store i32 %358, i32* %28, align 4
  br label %359

359:                                              ; preds = %386, %342
  %360 = load i32, i32* %28, align 4
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %362, label %389

362:                                              ; preds = %359
  %363 = load i8*, i8** %26, align 8
  %364 = load i32, i32* %38, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, i8* %363, i64 %365
  %367 = load i8, i8* %366, align 1
  store i8 %367, i8* %40, align 1
  %368 = load i8*, i8** %26, align 8
  %369 = load i32, i32* %39, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* %368, i64 %370
  %372 = load i8, i8* %371, align 1
  %373 = load i8*, i8** %26, align 8
  %374 = load i32, i32* %38, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i8, i8* %373, i64 %375
  store i8 %372, i8* %376, align 1
  %377 = load i8, i8* %40, align 1
  %378 = load i8*, i8** %26, align 8
  %379 = load i32, i32* %39, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8, i8* %378, i64 %380
  store i8 %377, i8* %381, align 1
  %382 = load i32, i32* %38, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %38, align 4
  %384 = load i32, i32* %39, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %39, align 4
  br label %386

386:                                              ; preds = %362
  %387 = load i32, i32* %28, align 4
  %388 = add nsw i32 %387, -1
  store i32 %388, i32* %28, align 4
  br label %359

389:                                              ; preds = %359
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %29, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %29, align 4
  br label %337

393:                                              ; preds = %337
  br label %394

394:                                              ; preds = %393, %333
  %395 = load i8*, i8** %27, align 8
  %396 = icmp ne i8* %395, null
  br i1 %396, label %397, label %400

397:                                              ; preds = %394
  %398 = load i8*, i8** %27, align 8
  %399 = call i32 @STBI_FREE(i8* %398)
  br label %400

400:                                              ; preds = %397, %394
  br label %401

401:                                              ; preds = %400, %184
  %402 = load i32, i32* %24, align 4
  %403 = icmp sge i32 %402, 3
  br i1 %403, label %404, label %432

404:                                              ; preds = %401
  %405 = load i8*, i8** %26, align 8
  store i8* %405, i8** %41, align 8
  store i32 0, i32* %28, align 4
  br label %406

406:                                              ; preds = %428, %404
  %407 = load i32, i32* %28, align 4
  %408 = load i32, i32* %21, align 4
  %409 = load i32, i32* %22, align 4
  %410 = mul nsw i32 %408, %409
  %411 = icmp slt i32 %407, %410
  br i1 %411, label %412, label %431

412:                                              ; preds = %406
  %413 = load i8*, i8** %41, align 8
  %414 = getelementptr inbounds i8, i8* %413, i64 0
  %415 = load i8, i8* %414, align 1
  store i8 %415, i8* %42, align 1
  %416 = load i8*, i8** %41, align 8
  %417 = getelementptr inbounds i8, i8* %416, i64 2
  %418 = load i8, i8* %417, align 1
  %419 = load i8*, i8** %41, align 8
  %420 = getelementptr inbounds i8, i8* %419, i64 0
  store i8 %418, i8* %420, align 1
  %421 = load i8, i8* %42, align 1
  %422 = load i8*, i8** %41, align 8
  %423 = getelementptr inbounds i8, i8* %422, i64 2
  store i8 %421, i8* %423, align 1
  %424 = load i32, i32* %24, align 4
  %425 = load i8*, i8** %41, align 8
  %426 = sext i32 %424 to i64
  %427 = getelementptr inbounds i8, i8* %425, i64 %426
  store i8* %427, i8** %41, align 8
  br label %428

428:                                              ; preds = %412
  %429 = load i32, i32* %28, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %28, align 4
  br label %406

431:                                              ; preds = %406
  br label %432

432:                                              ; preds = %431, %401
  %433 = load i32, i32* %11, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %446

435:                                              ; preds = %432
  %436 = load i32, i32* %11, align 4
  %437 = load i32, i32* %24, align 4
  %438 = icmp ne i32 %436, %437
  br i1 %438, label %439, label %446

439:                                              ; preds = %435
  %440 = load i8*, i8** %26, align 8
  %441 = load i32, i32* %24, align 4
  %442 = load i32, i32* %11, align 4
  %443 = load i32, i32* %21, align 4
  %444 = load i32, i32* %22, align 4
  %445 = call i8* @stbi__convert_format(i8* %440, i32 %441, i32 %442, i32 %443, i32 %444)
  store i8* %445, i8** %26, align 8
  br label %446

446:                                              ; preds = %439, %435, %432
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %447 = load i8*, i8** %26, align 8
  store i8* %447, i8** %6, align 8
  br label %448

448:                                              ; preds = %446, %213, %200, %139, %108
  %449 = load i8*, i8** %6, align 8
  ret i8* %449
}

declare dso_local i8* @stbi__get8(i32*) #1

declare dso_local i32 @stbi__get16le(i32*) #1

declare dso_local i64 @stbi__malloc(i32) #1

declare dso_local i8* @stbi__errpuc(i8*, i8*) #1

declare dso_local i32 @stbi__skip(i32*, i32) #1

declare dso_local i32 @stbi__getn(i32*, i8*, i32) #1

declare dso_local i32 @STBI_FREE(i8*) #1

declare dso_local i8* @stbi__convert_format(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
