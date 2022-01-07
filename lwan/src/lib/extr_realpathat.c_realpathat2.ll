; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_realpathat.c_realpathat2.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_realpathat.c_realpathat2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@MAXSYMLINKS = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @realpathat2(i32 %0, i8* %1, i8* %2, i8* %3, %struct.stat* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.stat* %4, %struct.stat** %11, align 8
  %30 = load i32, i32* @PATH_MAX, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %14, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %15, align 8
  store i32 0, i32* %19, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = icmp eq i8* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i64 @UNLIKELY(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %5
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* @errno, align 4
  store i8* null, i8** %6, align 8
  store i32 1, i32* %22, align 4
  br label %519

41:                                               ; preds = %5
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %8, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 47
  br label %53

53:                                               ; preds = %47, %44, %41
  %54 = phi i1 [ true, %44 ], [ true, %41 ], [ %52, %47 ]
  %55 = zext i1 %54 to i32
  %56 = call i64 @UNLIKELY(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i8* @realpath(i8* %59, i8* %60)
  store i8* %61, i8** %6, align 8
  store i32 1, i32* %22, align 4
  br label %519

62:                                               ; preds = %53
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.stat*, %struct.stat** %11, align 8
  %71 = call i64 @fstat(i32 %69, %struct.stat* %70)
  %72 = icmp slt i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @UNLIKELY(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i8* null, i8** %6, align 8
  store i32 1, i32* %22, align 4
  br label %519

77:                                               ; preds = %68
  %78 = load i8*, i8** %10, align 8
  %79 = icmp ne i8* %78, null
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @LIKELY(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i8*, i8** %8, align 8
  %86 = call i8* @strdup(i8* %85)
  store i8* %86, i8** %6, align 8
  store i32 1, i32* %22, align 4
  br label %519

87:                                               ; preds = %77
  %88 = load i8*, i8** %10, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = call i8* @strcpy(i8* %88, i8* %89)
  store i8* %90, i8** %6, align 8
  store i32 1, i32* %22, align 4
  br label %519

91:                                               ; preds = %62
  %92 = load i8*, i8** %10, align 8
  %93 = icmp ne i8* %92, null
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i64 @LIKELY(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load i32, i32* @PATH_MAX, align 4
  %100 = call i8* @malloc(i32 %99)
  store i8* %100, i8** %12, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = icmp ne i8* %101, null
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i64 @UNLIKELY(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  store i8* null, i8** %6, align 8
  store i32 1, i32* %22, align 4
  br label %519

108:                                              ; preds = %98
  br label %111

109:                                              ; preds = %91
  %110 = load i8*, i8** %10, align 8
  store i8* %110, i8** %12, align 8
  br label %111

111:                                              ; preds = %109, %108
  %112 = load i8*, i8** %12, align 8
  %113 = load i32, i32* @PATH_MAX, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  store i8* %115, i8** %18, align 8
  %116 = load i8*, i8** %12, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = call i8* @strcpy(i8* %116, i8* %117)
  %119 = load i8*, i8** %12, align 8
  %120 = call i8* @rawmemchr(i8* %119, i8 signext 0)
  store i8* %120, i8** %13, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %20, align 4
  %127 = load i8*, i8** %9, align 8
  store i8* %127, i8** %17, align 8
  store i8* %127, i8** %16, align 8
  br label %128

128:                                              ; preds = %473, %111
  %129 = load i8*, i8** %16, align 8
  %130 = load i8, i8* %129, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %132, label %475

132:                                              ; preds = %128
  br label %133

133:                                              ; preds = %138, %132
  %134 = load i8*, i8** %16, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 47
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i8*, i8** %16, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %16, align 8
  br label %133

141:                                              ; preds = %133
  %142 = load i8*, i8** %16, align 8
  store i8* %142, i8** %17, align 8
  br label %143

143:                                              ; preds = %156, %141
  %144 = load i8*, i8** %17, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i8*, i8** %17, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 47
  br label %153

153:                                              ; preds = %148, %143
  %154 = phi i1 [ false, %143 ], [ %152, %148 ]
  br i1 %154, label %155, label %159

155:                                              ; preds = %153
  br label %156

156:                                              ; preds = %155
  %157 = load i8*, i8** %17, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %17, align 8
  br label %143

159:                                              ; preds = %153
  %160 = load i8*, i8** %17, align 8
  %161 = load i8*, i8** %16, align 8
  %162 = ptrtoint i8* %160 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %475

167:                                              ; preds = %159
  %168 = load i8*, i8** %17, align 8
  %169 = load i8*, i8** %16, align 8
  %170 = ptrtoint i8* %168 to i64
  %171 = ptrtoint i8* %169 to i64
  %172 = sub i64 %170, %171
  %173 = icmp eq i64 %172, 1
  br i1 %173, label %174, label %181

174:                                              ; preds = %167
  %175 = load i8*, i8** %16, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 0
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 46
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %471

181:                                              ; preds = %174, %167
  %182 = load i8*, i8** %17, align 8
  %183 = load i8*, i8** %16, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = icmp eq i64 %186, 2
  br i1 %187, label %188, label %216

188:                                              ; preds = %181
  %189 = load i8*, i8** %16, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 0
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 46
  br i1 %193, label %194, label %216

194:                                              ; preds = %188
  %195 = load i8*, i8** %16, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 1
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 46
  br i1 %199, label %200, label %216

200:                                              ; preds = %194
  %201 = load i8*, i8** %13, align 8
  %202 = load i8*, i8** %12, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = icmp ugt i8* %201, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %200
  br label %206

206:                                              ; preds = %213, %205
  %207 = load i8*, i8** %13, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 -1
  store i8* %208, i8** %13, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 -1
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp ne i32 %211, 47
  br i1 %212, label %213, label %214

213:                                              ; preds = %206
  br label %206

214:                                              ; preds = %206
  br label %215

215:                                              ; preds = %214, %200
  br label %470

216:                                              ; preds = %194, %188, %181
  %217 = load i8*, i8** %13, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 -1
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 47
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load i8*, i8** %13, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %13, align 8
  store i8 47, i8* %223, align 1
  br label %225

225:                                              ; preds = %222, %216
  %226 = load i8*, i8** %13, align 8
  %227 = load i8*, i8** %17, align 8
  %228 = load i8*, i8** %16, align 8
  %229 = ptrtoint i8* %227 to i64
  %230 = ptrtoint i8* %228 to i64
  %231 = sub i64 %229, %230
  %232 = getelementptr inbounds i8, i8* %226, i64 %231
  %233 = load i8*, i8** %18, align 8
  %234 = icmp uge i8* %232, %233
  br i1 %234, label %235, label %307

235:                                              ; preds = %225
  %236 = load i8*, i8** %13, align 8
  %237 = load i8*, i8** %12, align 8
  %238 = ptrtoint i8* %236 to i64
  %239 = ptrtoint i8* %237 to i64
  %240 = sub i64 %238, %239
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %25, align 4
  %242 = load i8*, i8** %10, align 8
  %243 = icmp ne i8* %242, null
  %244 = zext i1 %243 to i32
  %245 = call i64 @UNLIKELY(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %235
  %248 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %248, i32* @errno, align 4
  %249 = load i8*, i8** %13, align 8
  %250 = load i8*, i8** %12, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 1
  %252 = icmp ugt i8* %249, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %247
  %254 = load i8*, i8** %13, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 -1
  store i8* %255, i8** %13, align 8
  br label %256

256:                                              ; preds = %253, %247
  %257 = load i8*, i8** %13, align 8
  store i8 0, i8* %257, align 1
  br label %502

258:                                              ; preds = %235
  %259 = load i8*, i8** %18, align 8
  %260 = load i8*, i8** %12, align 8
  %261 = ptrtoint i8* %259 to i64
  %262 = ptrtoint i8* %260 to i64
  %263 = sub i64 %261, %262
  store i64 %263, i64* %24, align 8
  %264 = load i8*, i8** %17, align 8
  %265 = load i8*, i8** %16, align 8
  %266 = ptrtoint i8* %264 to i64
  %267 = ptrtoint i8* %265 to i64
  %268 = sub i64 %266, %267
  %269 = add nsw i64 %268, 1
  %270 = load i32, i32* @PATH_MAX, align 4
  %271 = sext i32 %270 to i64
  %272 = icmp sgt i64 %269, %271
  br i1 %272, label %273, label %282

273:                                              ; preds = %258
  %274 = load i8*, i8** %17, align 8
  %275 = load i8*, i8** %16, align 8
  %276 = ptrtoint i8* %274 to i64
  %277 = ptrtoint i8* %275 to i64
  %278 = sub i64 %276, %277
  %279 = add nsw i64 %278, 1
  %280 = load i64, i64* %24, align 8
  %281 = add i64 %280, %279
  store i64 %281, i64* %24, align 8
  br label %287

282:                                              ; preds = %258
  %283 = load i32, i32* @PATH_MAX, align 4
  %284 = sext i32 %283 to i64
  %285 = load i64, i64* %24, align 8
  %286 = add i64 %285, %284
  store i64 %286, i64* %24, align 8
  br label %287

287:                                              ; preds = %282, %273
  %288 = load i8*, i8** %12, align 8
  %289 = load i64, i64* %24, align 8
  %290 = call i64 @realloc(i8* %288, i64 %289)
  %291 = inttoptr i64 %290 to i8*
  store i8* %291, i8** %26, align 8
  %292 = load i8*, i8** %26, align 8
  %293 = icmp eq i8* %292, null
  %294 = zext i1 %293 to i32
  %295 = call i64 @UNLIKELY(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %287
  br label %502

298:                                              ; preds = %287
  %299 = load i8*, i8** %26, align 8
  store i8* %299, i8** %12, align 8
  %300 = load i8*, i8** %12, align 8
  %301 = load i64, i64* %24, align 8
  %302 = getelementptr inbounds i8, i8* %300, i64 %301
  store i8* %302, i8** %18, align 8
  %303 = load i8*, i8** %12, align 8
  %304 = load i32, i32* %25, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %303, i64 %305
  store i8* %306, i8** %13, align 8
  br label %307

307:                                              ; preds = %298, %225
  %308 = load i8*, i8** %13, align 8
  %309 = load i8*, i8** %16, align 8
  %310 = load i8*, i8** %17, align 8
  %311 = load i8*, i8** %16, align 8
  %312 = ptrtoint i8* %310 to i64
  %313 = ptrtoint i8* %311 to i64
  %314 = sub i64 %312, %313
  %315 = call i8* @mempmove(i8* %308, i8* %309, i64 %314)
  store i8* %315, i8** %13, align 8
  %316 = load i8*, i8** %13, align 8
  store i8 0, i8* %316, align 1
  %317 = load i32, i32* %20, align 4
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %319, label %324

319:                                              ; preds = %307
  %320 = load i8*, i8** %8, align 8
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = icmp eq i32 %322, 47
  br i1 %323, label %331, label %324

324:                                              ; preds = %319, %307
  %325 = load i8*, i8** %12, align 8
  %326 = load i8*, i8** %8, align 8
  %327 = load i32, i32* %20, align 4
  %328 = sext i32 %327 to i64
  %329 = call i64 @strncmp(i8* %325, i8* %326, i64 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %324, %319
  %332 = load i8*, i8** %12, align 8
  store i8* %332, i8** %21, align 8
  br label %339

333:                                              ; preds = %324
  %334 = load i8*, i8** %12, align 8
  %335 = load i32, i32* %20, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i8, i8* %334, i64 %336
  %338 = getelementptr inbounds i8, i8* %337, i64 1
  store i8* %338, i8** %21, align 8
  br label %339

339:                                              ; preds = %333, %331
  %340 = load i8*, i8** %21, align 8
  %341 = load i8, i8* %340, align 1
  %342 = sext i8 %341 to i32
  %343 = icmp eq i32 %342, 0
  %344 = zext i1 %343 to i32
  %345 = call i64 @UNLIKELY(i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %349

347:                                              ; preds = %339
  %348 = load i8*, i8** %12, align 8
  store i8* %348, i8** %21, align 8
  br label %349

349:                                              ; preds = %347, %339
  %350 = load i32, i32* %7, align 4
  %351 = load i8*, i8** %21, align 8
  %352 = load %struct.stat*, %struct.stat** %11, align 8
  %353 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  %354 = call i64 @fstatat(i32 %350, i8* %351, %struct.stat* %352, i32 %353)
  %355 = icmp slt i64 %354, 0
  %356 = zext i1 %355 to i32
  %357 = call i64 @UNLIKELY(i32 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %349
  br label %502

360:                                              ; preds = %349
  %361 = load %struct.stat*, %struct.stat** %11, align 8
  %362 = getelementptr inbounds %struct.stat, %struct.stat* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @S_ISLNK(i32 %363)
  %365 = call i64 @UNLIKELY(i32 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %450

367:                                              ; preds = %360
  %368 = load i32, i32* @PATH_MAX, align 4
  %369 = zext i32 %368 to i64
  %370 = call i8* @llvm.stacksave()
  store i8* %370, i8** %27, align 8
  %371 = alloca i8, i64 %369, align 16
  store i64 %369, i64* %28, align 8
  %372 = load i32, i32* %19, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %19, align 4
  %374 = load i32, i32* @MAXSYMLINKS, align 4
  %375 = icmp sgt i32 %373, %374
  %376 = zext i1 %375 to i32
  %377 = call i64 @UNLIKELY(i32 %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %367
  %380 = load i32, i32* @ELOOP, align 4
  store i32 %380, i32* @errno, align 4
  store i32 12, i32* %22, align 4
  br label %446

381:                                              ; preds = %367
  %382 = load i32, i32* %7, align 4
  %383 = load i8*, i8** %21, align 8
  %384 = load i32, i32* @PATH_MAX, align 4
  %385 = sub nsw i32 %384, 1
  %386 = call i64 @readlinkat(i32 %382, i8* %383, i8* %371, i32 %385)
  %387 = trunc i64 %386 to i32
  store i32 %387, i32* %23, align 4
  %388 = load i32, i32* %23, align 4
  %389 = icmp slt i32 %388, 0
  %390 = zext i1 %389 to i32
  %391 = call i64 @UNLIKELY(i32 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %381
  store i32 12, i32* %22, align 4
  br label %446

394:                                              ; preds = %381
  %395 = load i32, i32* %23, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i8, i8* %371, i64 %396
  store i8 0, i8* %397, align 1
  %398 = load i8*, i8** %17, align 8
  %399 = call i64 @strlen(i8* %398)
  store i64 %399, i64* %29, align 8
  %400 = load i32, i32* @PATH_MAX, align 4
  %401 = load i32, i32* %23, align 4
  %402 = sub nsw i32 %400, %401
  %403 = sext i32 %402 to i64
  %404 = load i64, i64* %29, align 8
  %405 = icmp ule i64 %403, %404
  %406 = zext i1 %405 to i32
  %407 = call i64 @UNLIKELY(i32 %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %411

409:                                              ; preds = %394
  %410 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %410, i32* @errno, align 4
  store i32 12, i32* %22, align 4
  br label %446

411:                                              ; preds = %394
  %412 = load i32, i32* %23, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, i8* %33, i64 %413
  %415 = load i8*, i8** %17, align 8
  %416 = load i64, i64* %29, align 8
  %417 = add i64 %416, 1
  %418 = call i32 @memmove(i8* %414, i8* %415, i64 %417)
  %419 = load i32, i32* %23, align 4
  %420 = sext i32 %419 to i64
  %421 = call i8* @memcpy(i8* %33, i8* %371, i64 %420)
  store i8* %421, i8** %17, align 8
  %422 = getelementptr inbounds i8, i8* %371, i64 0
  %423 = load i8, i8* %422, align 16
  %424 = sext i8 %423 to i32
  %425 = icmp eq i32 %424, 47
  br i1 %425, label %426, label %429

426:                                              ; preds = %411
  %427 = load i8*, i8** %12, align 8
  %428 = getelementptr inbounds i8, i8* %427, i64 1
  store i8* %428, i8** %13, align 8
  br label %445

429:                                              ; preds = %411
  %430 = load i8*, i8** %13, align 8
  %431 = load i8*, i8** %12, align 8
  %432 = getelementptr inbounds i8, i8* %431, i64 1
  %433 = icmp ugt i8* %430, %432
  br i1 %433, label %434, label %444

434:                                              ; preds = %429
  br label %435

435:                                              ; preds = %442, %434
  %436 = load i8*, i8** %13, align 8
  %437 = getelementptr inbounds i8, i8* %436, i32 -1
  store i8* %437, i8** %13, align 8
  %438 = getelementptr inbounds i8, i8* %437, i64 -1
  %439 = load i8, i8* %438, align 1
  %440 = sext i8 %439 to i32
  %441 = icmp ne i32 %440, 47
  br i1 %441, label %442, label %443

442:                                              ; preds = %435
  br label %435

443:                                              ; preds = %435
  br label %444

444:                                              ; preds = %443, %429
  br label %445

445:                                              ; preds = %444, %426
  store i32 0, i32* %22, align 4
  br label %446

446:                                              ; preds = %409, %393, %379, %445
  %447 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %447)
  %448 = load i32, i32* %22, align 4
  switch i32 %448, label %519 [
    i32 0, label %449
    i32 12, label %502
  ]

449:                                              ; preds = %446
  br label %469

450:                                              ; preds = %360
  %451 = load %struct.stat*, %struct.stat** %11, align 8
  %452 = getelementptr inbounds %struct.stat, %struct.stat* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = call i32 @S_ISDIR(i32 %453)
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %461, label %456

456:                                              ; preds = %450
  %457 = load i8*, i8** %17, align 8
  %458 = load i8, i8* %457, align 1
  %459 = sext i8 %458 to i32
  %460 = icmp ne i32 %459, 0
  br label %461

461:                                              ; preds = %456, %450
  %462 = phi i1 [ false, %450 ], [ %460, %456 ]
  %463 = zext i1 %462 to i32
  %464 = call i64 @UNLIKELY(i32 %463)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %468

466:                                              ; preds = %461
  %467 = load i32, i32* @ENOTDIR, align 4
  store i32 %467, i32* @errno, align 4
  br label %502

468:                                              ; preds = %461
  br label %469

469:                                              ; preds = %468, %449
  br label %470

470:                                              ; preds = %469, %215
  br label %471

471:                                              ; preds = %470, %180
  br label %472

472:                                              ; preds = %471
  br label %473

473:                                              ; preds = %472
  %474 = load i8*, i8** %17, align 8
  store i8* %474, i8** %16, align 8
  br label %128

475:                                              ; preds = %166, %128
  %476 = load i8*, i8** %13, align 8
  %477 = load i8*, i8** %12, align 8
  %478 = getelementptr inbounds i8, i8* %477, i64 1
  %479 = icmp ugt i8* %476, %478
  br i1 %479, label %480, label %489

480:                                              ; preds = %475
  %481 = load i8*, i8** %13, align 8
  %482 = getelementptr inbounds i8, i8* %481, i64 -1
  %483 = load i8, i8* %482, align 1
  %484 = sext i8 %483 to i32
  %485 = icmp eq i32 %484, 47
  br i1 %485, label %486, label %489

486:                                              ; preds = %480
  %487 = load i8*, i8** %13, align 8
  %488 = getelementptr inbounds i8, i8* %487, i32 -1
  store i8* %488, i8** %13, align 8
  br label %489

489:                                              ; preds = %486, %480, %475
  %490 = load i8*, i8** %13, align 8
  store i8 0, i8* %490, align 1
  %491 = load i8*, i8** %10, align 8
  %492 = icmp eq i8* %491, null
  br i1 %492, label %497, label %493

493:                                              ; preds = %489
  %494 = load i8*, i8** %10, align 8
  %495 = load i8*, i8** %12, align 8
  %496 = icmp eq i8* %494, %495
  br label %497

497:                                              ; preds = %493, %489
  %498 = phi i1 [ true, %489 ], [ %496, %493 ]
  %499 = zext i1 %498 to i32
  %500 = call i32 @assert(i32 %499)
  %501 = load i8*, i8** %12, align 8
  store i8* %501, i8** %6, align 8
  store i32 1, i32* %22, align 4
  br label %519

502:                                              ; preds = %446, %466, %359, %297, %256
  %503 = load i8*, i8** %10, align 8
  %504 = icmp eq i8* %503, null
  br i1 %504, label %509, label %505

505:                                              ; preds = %502
  %506 = load i8*, i8** %10, align 8
  %507 = load i8*, i8** %12, align 8
  %508 = icmp eq i8* %506, %507
  br label %509

509:                                              ; preds = %505, %502
  %510 = phi i1 [ true, %502 ], [ %508, %505 ]
  %511 = zext i1 %510 to i32
  %512 = call i32 @assert(i32 %511)
  %513 = load i8*, i8** %10, align 8
  %514 = icmp eq i8* %513, null
  br i1 %514, label %515, label %518

515:                                              ; preds = %509
  %516 = load i8*, i8** %12, align 8
  %517 = call i32 @free(i8* %516)
  br label %518

518:                                              ; preds = %515, %509
  store i8* null, i8** %6, align 8
  store i32 1, i32* %22, align 4
  br label %519

519:                                              ; preds = %518, %497, %446, %107, %87, %84, %76, %58, %39
  %520 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %520)
  %521 = load i8*, i8** %6, align 8
  ret i8* %521
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @UNLIKELY(i32) #2

declare dso_local i8* @realpath(i8*, i8*) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i64 @LIKELY(i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @strcpy(i8*, i8*) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i8* @rawmemchr(i8*, i8 signext) #2

declare dso_local i64 @realloc(i8*, i64) #2

declare dso_local i8* @mempmove(i8*, i8*, i64) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i64 @fstatat(i32, i8*, %struct.stat*, i32) #2

declare dso_local i32 @S_ISLNK(i32) #2

declare dso_local i64 @readlinkat(i32, i8*, i8*, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i64) #2

declare dso_local i8* @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
