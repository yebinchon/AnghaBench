; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/notepad/extr_text.c_ReadText.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/notepad/extr_text.c_ReadText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@__const.ReadText.szCrlf = private unnamed_addr constant [2 x i8] c"\0D\0A", align 1
@INVALID_FILE_SIZE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@EOLN_CRLF = common dso_local global i64 0, align 8
@EOLN_CR = common dso_local global i64 0, align 8
@EOLN_LF = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@DEFAULT_UNREACHABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadText(i32 %0, i32** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [2 x i8], align 1
  %24 = alloca [3 x i32], align 4
  store i32 %0, i32* %7, align 4
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %15, align 8
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 131, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %26 = bitcast [2 x i8]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.ReadText.szCrlf, i32 0, i32 0), i64 2, i1 false)
  %27 = bitcast [3 x i32]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 12, i1 false)
  %28 = load i32**, i32*** %8, align 8
  store i32* null, i32** %28, align 8
  %29 = load i32*, i32** %9, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @GetFileSize(i32 %30, i32* null)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @INVALID_FILE_SIZE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %5
  br label %388

36:                                               ; preds = %5
  %37 = call i32 (...) @GetProcessHeap()
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 2
  %40 = call i32* @HeapAlloc(i32 %37, i32 0, i32 %39)
  store i32* %40, i32** %13, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %388

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @ReadFile(i32 %45, i32* %46, i32 %47, i32* %12, i32* null)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %388

51:                                               ; preds = %44
  store i32 0, i32* %16, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 0
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 0, i32* %61, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp sge i32 %62, 2
  br i1 %63, label %64, label %77

64:                                               ; preds = %51
  %65 = load i32*, i32** %13, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 255
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load i32*, i32** %13, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 254
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  store i32 129, i32* %21, align 4
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %16, align 4
  br label %121

77:                                               ; preds = %69, %64, %51
  %78 = load i32, i32* %12, align 4
  %79 = icmp sge i32 %78, 2
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = load i32*, i32** %13, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 254
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 255
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  store i32 130, i32* %21, align 4
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 2
  store i32 %92, i32* %16, align 4
  br label %120

93:                                               ; preds = %85, %80, %77
  %94 = load i32, i32* %12, align 4
  %95 = icmp sge i32 %94, 3
  br i1 %95, label %96, label %114

96:                                               ; preds = %93
  %97 = load i32*, i32** %13, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 239
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load i32*, i32** %13, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 187
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i32*, i32** %13, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 191
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  store i32 128, i32* %21, align 4
  %112 = load i32, i32* %16, align 4
  %113 = add nsw i32 %112, 3
  store i32 %113, i32* %16, align 4
  br label %119

114:                                              ; preds = %106, %101, %96, %93
  %115 = load i32*, i32** %13, align 8
  %116 = bitcast i32* %115 to i8*
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @AnalyzeEncoding(i8* %116, i32 %117)
  store i32 %118, i32* %21, align 4
  br label %119

119:                                              ; preds = %114, %111
  br label %120

120:                                              ; preds = %119, %90
  br label %121

121:                                              ; preds = %120, %74
  %122 = load i32, i32* %21, align 4
  switch i32 %122, label %239 [
    i32 130, label %123
    i32 129, label %158
    i32 131, label %169
    i32 128, label %169
  ]

123:                                              ; preds = %121
  %124 = load i32, i32* %16, align 4
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %154, %123
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %12, align 4
  %128 = sub nsw i32 %127, 1
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %157

130:                                              ; preds = %125
  %131 = load i32*, i32** %13, align 8
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %132, 0
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %20, align 4
  %137 = load i32*, i32** %13, align 8
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %13, align 8
  %144 = load i32, i32* %17, align 4
  %145 = add nsw i32 %144, 0
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %142, i32* %147, align 4
  %148 = load i32, i32* %20, align 4
  %149 = load i32*, i32** %13, align 8
  %150 = load i32, i32* %17, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  store i32 %148, i32* %153, align 4
  br label %154

154:                                              ; preds = %130
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, 2
  store i32 %156, i32* %17, align 4
  br label %125

157:                                              ; preds = %125
  br label %158

158:                                              ; preds = %121, %157
  %159 = load i32*, i32** %13, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32* %162, i32** %14, align 8
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %16, align 4
  %165 = sub nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = udiv i64 %166, 1
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %18, align 4
  br label %239

169:                                              ; preds = %121, %121
  %170 = load i32, i32* %21, align 4
  %171 = icmp eq i32 %170, 131
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i32, i32* @CP_ACP, align 4
  store i32 %173, i32* %22, align 4
  br label %180

174:                                              ; preds = %169
  %175 = load i32, i32* %21, align 4
  %176 = icmp eq i32 %175, 128
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = load i32, i32* @CP_UTF8, align 4
  store i32 %178, i32* %22, align 4
  br label %179

179:                                              ; preds = %177, %174
  br label %180

180:                                              ; preds = %179, %172
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %16, align 4
  %183 = sub nsw i32 %181, %182
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %180
  %186 = load i32, i32* %22, align 4
  %187 = load i32*, i32** %13, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = ptrtoint i32* %190 to i32
  %192 = load i32, i32* %12, align 4
  %193 = load i32, i32* %16, align 4
  %194 = sub nsw i32 %192, %193
  %195 = call i32 @MultiByteToWideChar(i32 %186, i32 0, i32 %191, i32 %194, i32* null, i32 0)
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %18, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %185
  br label %388

199:                                              ; preds = %185
  br label %201

200:                                              ; preds = %180
  store i32 0, i32* %18, align 4
  br label %201

201:                                              ; preds = %200, %199
  %202 = call i32 (...) @GetProcessHeap()
  %203 = load i32, i32* %18, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = mul i64 %205, 1
  %207 = trunc i64 %206 to i32
  %208 = call i32* @HeapAlloc(i32 %202, i32 0, i32 %207)
  store i32* %208, i32** %15, align 8
  %209 = load i32*, i32** %15, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %201
  br label %388

212:                                              ; preds = %201
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* %16, align 4
  %215 = sub nsw i32 %213, %214
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %233

217:                                              ; preds = %212
  %218 = load i32, i32* %22, align 4
  %219 = load i32*, i32** %13, align 8
  %220 = load i32, i32* %16, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = ptrtoint i32* %222 to i32
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* %16, align 4
  %226 = sub nsw i32 %224, %225
  %227 = load i32*, i32** %15, align 8
  %228 = load i32, i32* %18, align 4
  %229 = call i32 @MultiByteToWideChar(i32 %218, i32 0, i32 %223, i32 %226, i32* %227, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %217
  br label %388

232:                                              ; preds = %217
  br label %233

233:                                              ; preds = %232, %212
  %234 = load i32*, i32** %15, align 8
  %235 = load i32, i32* %18, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 0, i32* %237, align 4
  %238 = load i32*, i32** %15, align 8
  store i32* %238, i32** %14, align 8
  br label %239

239:                                              ; preds = %121, %233, %158
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %240

240:                                              ; preds = %321, %239
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* %18, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %324

244:                                              ; preds = %240
  %245 = load i32*, i32** %14, align 8
  %246 = load i32, i32* %17, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  switch i32 %249, label %320 [
    i32 13, label %250
    i32 10, label %271
    i32 0, label %315
  ]

250:                                              ; preds = %244
  %251 = load i32, i32* %17, align 4
  %252 = load i32, i32* %18, align 4
  %253 = sub nsw i32 %252, 1
  %254 = icmp slt i32 %251, %253
  br i1 %254, label %255, label %270

255:                                              ; preds = %250
  %256 = load i32*, i32** %14, align 8
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %261, 10
  br i1 %262, label %263, label %270

263:                                              ; preds = %255
  %264 = load i32, i32* %17, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %17, align 4
  %266 = load i64, i64* @EOLN_CRLF, align 8
  %267 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 4
  br label %320

270:                                              ; preds = %255, %250
  br label %271

271:                                              ; preds = %244, %270
  %272 = load i32**, i32*** %8, align 8
  %273 = load i32*, i32** %9, align 8
  %274 = load i32*, i32** %14, align 8
  %275 = load i32, i32* %16, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %17, align 4
  %279 = load i32, i32* %16, align 4
  %280 = sub nsw i32 %278, %279
  %281 = call i32 (i32**, i32*, ...) @Append(i32** %272, i32* %273, i32* %277, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %271
  %284 = load i32, i32* @FALSE, align 4
  store i32 %284, i32* %6, align 4
  br label %418

285:                                              ; preds = %271
  %286 = load i32**, i32*** %8, align 8
  %287 = load i32*, i32** %9, align 8
  %288 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 0
  %289 = getelementptr inbounds [2 x i8], [2 x i8]* %23, i64 0, i64 0
  %290 = call i32 @ARRAY_SIZE(i8* %289)
  %291 = call i32 (i32**, i32*, ...) @Append(i32** %286, i32* %287, i8* %288, i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %285
  %294 = load i32, i32* @FALSE, align 4
  store i32 %294, i32* %6, align 4
  br label %418

295:                                              ; preds = %285
  %296 = load i32, i32* %17, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %16, align 4
  %298 = load i32*, i32** %14, align 8
  %299 = load i32, i32* %17, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, 13
  br i1 %303, label %304, label %309

304:                                              ; preds = %295
  %305 = load i64, i64* @EOLN_CR, align 8
  %306 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %306, align 4
  br label %314

309:                                              ; preds = %295
  %310 = load i64, i64* @EOLN_LF, align 8
  %311 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 4
  br label %314

314:                                              ; preds = %309, %304
  br label %320

315:                                              ; preds = %244
  %316 = load i32*, i32** %14, align 8
  %317 = load i32, i32* %17, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  store i32 32, i32* %319, align 4
  br label %320

320:                                              ; preds = %244, %315, %314, %263
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %17, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %17, align 4
  br label %240

324:                                              ; preds = %240
  %325 = load i32**, i32*** %8, align 8
  %326 = load i32*, i32** %325, align 8
  %327 = icmp ne i32* %326, null
  br i1 %327, label %337, label %328

328:                                              ; preds = %324
  %329 = load i32*, i32** %14, align 8
  %330 = load i32*, i32** %15, align 8
  %331 = icmp eq i32* %329, %330
  br i1 %331, label %332, label %337

332:                                              ; preds = %328
  %333 = load i32*, i32** %15, align 8
  %334 = load i32**, i32*** %8, align 8
  store i32* %333, i32** %334, align 8
  %335 = load i32, i32* %18, align 4
  %336 = load i32*, i32** %9, align 8
  store i32 %335, i32* %336, align 4
  store i32* null, i32** %15, align 8
  br label %353

337:                                              ; preds = %328, %324
  %338 = load i32**, i32*** %8, align 8
  %339 = load i32*, i32** %9, align 8
  %340 = load i32*, i32** %14, align 8
  %341 = load i32, i32* %16, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %17, align 4
  %345 = load i32, i32* %16, align 4
  %346 = sub nsw i32 %344, %345
  %347 = add nsw i32 %346, 1
  %348 = call i32 (i32**, i32*, ...) @Append(i32** %338, i32* %339, i32* %343, i32 %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %352, label %350

350:                                              ; preds = %337
  %351 = load i32, i32* @FALSE, align 4
  store i32 %351, i32* %6, align 4
  br label %418

352:                                              ; preds = %337
  br label %353

353:                                              ; preds = %352, %332
  %354 = load i64, i64* @EOLN_CRLF, align 8
  %355 = trunc i64 %354 to i32
  %356 = load i32*, i32** %11, align 8
  store i32 %355, i32* %356, align 4
  %357 = load i64, i64* @EOLN_LF, align 8
  %358 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load i32*, i32** %11, align 8
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = icmp sgt i32 %359, %364
  br i1 %365, label %366, label %370

366:                                              ; preds = %353
  %367 = load i64, i64* @EOLN_LF, align 8
  %368 = trunc i64 %367 to i32
  %369 = load i32*, i32** %11, align 8
  store i32 %368, i32* %369, align 4
  br label %370

370:                                              ; preds = %366, %353
  %371 = load i64, i64* @EOLN_CR, align 8
  %372 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = load i32*, i32** %11, align 8
  %375 = load i32, i32* %374, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = icmp sgt i32 %373, %378
  br i1 %379, label %380, label %384

380:                                              ; preds = %370
  %381 = load i64, i64* @EOLN_CR, align 8
  %382 = trunc i64 %381 to i32
  %383 = load i32*, i32** %11, align 8
  store i32 %382, i32* %383, align 4
  br label %384

384:                                              ; preds = %380, %370
  %385 = load i32, i32* %21, align 4
  %386 = load i32*, i32** %10, align 8
  store i32 %385, i32* %386, align 4
  %387 = load i32, i32* @TRUE, align 4
  store i32 %387, i32* %19, align 4
  br label %388

388:                                              ; preds = %384, %231, %211, %198, %50, %43, %35
  %389 = load i32*, i32** %13, align 8
  %390 = icmp ne i32* %389, null
  br i1 %390, label %391, label %395

391:                                              ; preds = %388
  %392 = call i32 (...) @GetProcessHeap()
  %393 = load i32*, i32** %13, align 8
  %394 = call i32 @HeapFree(i32 %392, i32 0, i32* %393)
  br label %395

395:                                              ; preds = %391, %388
  %396 = load i32*, i32** %15, align 8
  %397 = icmp ne i32* %396, null
  br i1 %397, label %398, label %402

398:                                              ; preds = %395
  %399 = call i32 (...) @GetProcessHeap()
  %400 = load i32*, i32** %15, align 8
  %401 = call i32 @HeapFree(i32 %399, i32 0, i32* %400)
  br label %402

402:                                              ; preds = %398, %395
  %403 = load i32, i32* %19, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %416, label %405

405:                                              ; preds = %402
  %406 = load i32**, i32*** %8, align 8
  %407 = load i32*, i32** %406, align 8
  %408 = icmp ne i32* %407, null
  br i1 %408, label %409, label %416

409:                                              ; preds = %405
  %410 = call i32 (...) @GetProcessHeap()
  %411 = load i32**, i32*** %8, align 8
  %412 = load i32*, i32** %411, align 8
  %413 = call i32 @HeapFree(i32 %410, i32 0, i32* %412)
  %414 = load i32**, i32*** %8, align 8
  store i32* null, i32** %414, align 8
  %415 = load i32*, i32** %9, align 8
  store i32 0, i32* %415, align 4
  br label %416

416:                                              ; preds = %409, %405, %402
  %417 = load i32, i32* %19, align 4
  store i32 %417, i32* %6, align 4
  br label %418

418:                                              ; preds = %416, %350, %293, %283
  %419 = load i32, i32* %6, align 4
  ret i32 %419
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetFileSize(i32, i32*) #2

declare dso_local i32* @HeapAlloc(i32, i32, i32) #2

declare dso_local i32 @GetProcessHeap(...) #2

declare dso_local i32 @ReadFile(i32, i32*, i32, i32*, i32*) #2

declare dso_local i32 @AnalyzeEncoding(i8*, i32) #2

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @Append(i32**, i32*, ...) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @HeapFree(i32, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
