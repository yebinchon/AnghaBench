; ModuleID = '/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__jpeg_decode_block_prog_ac.c'
source_filename = "/home/carl/AnghaBench/nuklear/example/extr_stb_image.h_stbi__jpeg_decode_block_prog_ac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"can't merge dc and ac\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Corrupt JPEG\00", align 1
@FAST_BITS = common dso_local global i32 0, align 4
@stbi__jpeg_dezigzag = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"bad huffman code\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i16*, i32*, i32*)* @stbi__jpeg_decode_block_prog_ac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__jpeg_decode_block_prog_ac(%struct.TYPE_8__* %0, i16* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i16*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i16*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = call i32 @stbi__err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %5, align 4
  br label %398

29:                                               ; preds = %4
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %184

34:                                               ; preds = %29
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %34
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  store i32 1, i32* %5, align 4
  br label %398

47:                                               ; preds = %34
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %177, %47
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %54, 16
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = call i32 @stbi__grow_buffer_unsafe(%struct.TYPE_8__* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FAST_BITS, align 4
  %64 = sub nsw i32 32, %63
  %65 = ashr i32 %62, %64
  %66 = load i32, i32* @FAST_BITS, align 4
  %67 = shl i32 1, %66
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %65, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %59
  %78 = load i32, i32* %14, align 4
  %79 = ashr i32 %78, 4
  %80 = and i32 %79, 15
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %14, align 4
  %84 = and i32 %83, 15
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i64*, i64** @stbi__jpeg_dezigzag, align 8
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %14, align 4
  %103 = ashr i32 %102, 8
  %104 = load i32, i32* %11, align 4
  %105 = shl i32 %103, %104
  %106 = trunc i32 %105 to i16
  %107 = load i16*, i16** %7, align 8
  %108 = load i32, i32* %12, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i16, i16* %107, i64 %109
  store i16 %106, i16* %110, align 2
  br label %176

111:                                              ; preds = %59
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @stbi__jpeg_huff_decode(%struct.TYPE_8__* %112, i32* %113)
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = call i32 @stbi__err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %118, i32* %5, align 4
  br label %398

119:                                              ; preds = %111
  %120 = load i32, i32* %16, align 4
  %121 = and i32 %120, 15
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %16, align 4
  %123 = ashr i32 %122, 4
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %154

126:                                              ; preds = %119
  %127 = load i32, i32* %14, align 4
  %128 = icmp slt i32 %127, 15
  br i1 %128, label %129, label %151

129:                                              ; preds = %126
  %130 = load i32, i32* %14, align 4
  %131 = shl i32 1, %130
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %129
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call i64 @stbi__jpeg_get_bits(%struct.TYPE_8__* %137, i32 %138)
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %139
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 4
  br label %146

146:                                              ; preds = %136, %129
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %148, align 4
  br label %183

151:                                              ; preds = %126
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 16
  store i32 %153, i32* %10, align 4
  br label %175

154:                                              ; preds = %119
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %10, align 4
  %158 = load i64*, i64** @stbi__jpeg_dezigzag, align 8
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i64, i64* %158, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %12, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @stbi__extend_receive(%struct.TYPE_8__* %165, i32 %166)
  %168 = load i32, i32* %11, align 4
  %169 = shl i32 %167, %168
  %170 = trunc i32 %169 to i16
  %171 = load i16*, i16** %7, align 8
  %172 = load i32, i32* %12, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i16, i16* %171, i64 %173
  store i16 %170, i16* %174, align 2
  br label %175

175:                                              ; preds = %154, %151
  br label %176

176:                                              ; preds = %175, %77
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = icmp sle i32 %178, %181
  br i1 %182, label %51, label %183

183:                                              ; preds = %177, %146
  br label %397

184:                                              ; preds = %29
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = shl i32 1, %187
  %189 = trunc i32 %188 to i16
  store i16 %189, i16* %17, align 2
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %261

194:                                              ; preds = %184
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %196, align 4
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %10, align 4
  br label %202

202:                                              ; preds = %257, %194
  %203 = load i32, i32* %10, align 4
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = icmp sle i32 %203, %206
  br i1 %207, label %208, label %260

208:                                              ; preds = %202
  %209 = load i16*, i16** %7, align 8
  %210 = load i64*, i64** @stbi__jpeg_dezigzag, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds i16, i16* %209, i64 %214
  store i16* %215, i16** %18, align 8
  %216 = load i16*, i16** %18, align 8
  %217 = load i16, i16* %216, align 2
  %218 = sext i16 %217 to i32
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %256

220:                                              ; preds = %208
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %222 = call i64 @stbi__jpeg_get_bit(%struct.TYPE_8__* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %255

224:                                              ; preds = %220
  %225 = load i16*, i16** %18, align 8
  %226 = load i16, i16* %225, align 2
  %227 = sext i16 %226 to i32
  %228 = load i16, i16* %17, align 2
  %229 = sext i16 %228 to i32
  %230 = and i32 %227, %229
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %254

232:                                              ; preds = %224
  %233 = load i16*, i16** %18, align 8
  %234 = load i16, i16* %233, align 2
  %235 = sext i16 %234 to i32
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %245

237:                                              ; preds = %232
  %238 = load i16, i16* %17, align 2
  %239 = sext i16 %238 to i32
  %240 = load i16*, i16** %18, align 8
  %241 = load i16, i16* %240, align 2
  %242 = sext i16 %241 to i32
  %243 = add nsw i32 %242, %239
  %244 = trunc i32 %243 to i16
  store i16 %244, i16* %240, align 2
  br label %253

245:                                              ; preds = %232
  %246 = load i16, i16* %17, align 2
  %247 = sext i16 %246 to i32
  %248 = load i16*, i16** %18, align 8
  %249 = load i16, i16* %248, align 2
  %250 = sext i16 %249 to i32
  %251 = sub nsw i32 %250, %247
  %252 = trunc i32 %251 to i16
  store i16 %252, i16* %248, align 2
  br label %253

253:                                              ; preds = %245, %237
  br label %254

254:                                              ; preds = %253, %224
  br label %255

255:                                              ; preds = %254, %220
  br label %256

256:                                              ; preds = %255, %208
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %10, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %10, align 4
  br label %202

260:                                              ; preds = %202
  br label %396

261:                                              ; preds = %184
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  store i32 %264, i32* %10, align 4
  br label %265

265:                                              ; preds = %389, %261
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %267 = load i32*, i32** %8, align 8
  %268 = call i32 @stbi__jpeg_huff_decode(%struct.TYPE_8__* %266, i32* %267)
  store i32 %268, i32* %21, align 4
  %269 = load i32, i32* %21, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = call i32 @stbi__err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %272, i32* %5, align 4
  br label %398

273:                                              ; preds = %265
  %274 = load i32, i32* %21, align 4
  %275 = and i32 %274, 15
  store i32 %275, i32* %20, align 4
  %276 = load i32, i32* %21, align 4
  %277 = ashr i32 %276, 4
  store i32 %277, i32* %19, align 4
  %278 = load i32, i32* %20, align 4
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %304

280:                                              ; preds = %273
  %281 = load i32, i32* %19, align 4
  %282 = icmp slt i32 %281, 15
  br i1 %282, label %283, label %302

283:                                              ; preds = %280
  %284 = load i32, i32* %19, align 4
  %285 = shl i32 1, %284
  %286 = sub nsw i32 %285, 1
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 3
  store i32 %286, i32* %288, align 4
  %289 = load i32, i32* %19, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %301

291:                                              ; preds = %283
  %292 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %293 = load i32, i32* %19, align 4
  %294 = call i64 @stbi__jpeg_get_bits(%struct.TYPE_8__* %292, i32 %293)
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %298, %294
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %296, align 4
  br label %301

301:                                              ; preds = %291, %283
  store i32 64, i32* %19, align 4
  br label %303

302:                                              ; preds = %280
  br label %303

303:                                              ; preds = %302, %301
  br label %321

304:                                              ; preds = %273
  %305 = load i32, i32* %20, align 4
  %306 = icmp ne i32 %305, 1
  br i1 %306, label %307, label %309

307:                                              ; preds = %304
  %308 = call i32 @stbi__err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %308, i32* %5, align 4
  br label %398

309:                                              ; preds = %304
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %311 = call i64 @stbi__jpeg_get_bit(%struct.TYPE_8__* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %309
  %314 = load i16, i16* %17, align 2
  %315 = sext i16 %314 to i32
  store i32 %315, i32* %20, align 4
  br label %320

316:                                              ; preds = %309
  %317 = load i16, i16* %17, align 2
  %318 = sext i16 %317 to i32
  %319 = sub nsw i32 0, %318
  store i32 %319, i32* %20, align 4
  br label %320

320:                                              ; preds = %316, %313
  br label %321

321:                                              ; preds = %320, %303
  br label %322

322:                                              ; preds = %387, %321
  %323 = load i32, i32* %10, align 4
  %324 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = icmp sle i32 %323, %326
  br i1 %327, label %328, label %388

328:                                              ; preds = %322
  %329 = load i16*, i16** %7, align 8
  %330 = load i64*, i64** @stbi__jpeg_dezigzag, align 8
  %331 = load i32, i32* %10, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %10, align 4
  %333 = sext i32 %331 to i64
  %334 = getelementptr inbounds i64, i64* %330, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = getelementptr inbounds i16, i16* %329, i64 %335
  store i16* %336, i16** %22, align 8
  %337 = load i16*, i16** %22, align 8
  %338 = load i16, i16* %337, align 2
  %339 = sext i16 %338 to i32
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %377

341:                                              ; preds = %328
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %343 = call i64 @stbi__jpeg_get_bit(%struct.TYPE_8__* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %376

345:                                              ; preds = %341
  %346 = load i16*, i16** %22, align 8
  %347 = load i16, i16* %346, align 2
  %348 = sext i16 %347 to i32
  %349 = load i16, i16* %17, align 2
  %350 = sext i16 %349 to i32
  %351 = and i32 %348, %350
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %375

353:                                              ; preds = %345
  %354 = load i16*, i16** %22, align 8
  %355 = load i16, i16* %354, align 2
  %356 = sext i16 %355 to i32
  %357 = icmp sgt i32 %356, 0
  br i1 %357, label %358, label %366

358:                                              ; preds = %353
  %359 = load i16, i16* %17, align 2
  %360 = sext i16 %359 to i32
  %361 = load i16*, i16** %22, align 8
  %362 = load i16, i16* %361, align 2
  %363 = sext i16 %362 to i32
  %364 = add nsw i32 %363, %360
  %365 = trunc i32 %364 to i16
  store i16 %365, i16* %361, align 2
  br label %374

366:                                              ; preds = %353
  %367 = load i16, i16* %17, align 2
  %368 = sext i16 %367 to i32
  %369 = load i16*, i16** %22, align 8
  %370 = load i16, i16* %369, align 2
  %371 = sext i16 %370 to i32
  %372 = sub nsw i32 %371, %368
  %373 = trunc i32 %372 to i16
  store i16 %373, i16* %369, align 2
  br label %374

374:                                              ; preds = %366, %358
  br label %375

375:                                              ; preds = %374, %345
  br label %376

376:                                              ; preds = %375, %341
  br label %387

377:                                              ; preds = %328
  %378 = load i32, i32* %19, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %384

380:                                              ; preds = %377
  %381 = load i32, i32* %20, align 4
  %382 = trunc i32 %381 to i16
  %383 = load i16*, i16** %22, align 8
  store i16 %382, i16* %383, align 2
  br label %388

384:                                              ; preds = %377
  %385 = load i32, i32* %19, align 4
  %386 = add nsw i32 %385, -1
  store i32 %386, i32* %19, align 4
  br label %387

387:                                              ; preds = %384, %376
  br label %322

388:                                              ; preds = %380, %322
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %10, align 4
  %391 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 8
  %394 = icmp sle i32 %390, %393
  br i1 %394, label %265, label %395

395:                                              ; preds = %389
  br label %396

396:                                              ; preds = %395, %260
  br label %397

397:                                              ; preds = %396, %183
  store i32 1, i32* %5, align 4
  br label %398

398:                                              ; preds = %397, %307, %271, %117, %42, %27
  %399 = load i32, i32* %5, align 4
  ret i32 %399
}

declare dso_local i32 @stbi__err(i8*, i8*) #1

declare dso_local i32 @stbi__grow_buffer_unsafe(%struct.TYPE_8__*) #1

declare dso_local i32 @stbi__jpeg_huff_decode(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @stbi__jpeg_get_bits(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @stbi__extend_receive(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @stbi__jpeg_get_bit(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
