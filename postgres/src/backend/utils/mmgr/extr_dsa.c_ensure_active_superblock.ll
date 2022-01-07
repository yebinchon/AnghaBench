; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_ensure_active_superblock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_dsa.c_ensure_active_superblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8** }
%struct.TYPE_10__ = type { i8**, i32 }
%struct.TYPE_11__ = type { i8*, i64, i8*, i32 }

@dsa_size_classes = common dso_local global i64* null, align 8
@DSA_SCLASS_BLOCK_OF_SPANS = common dso_local global i32 0, align 4
@FPM_PAGE_SIZE = common dso_local global i64 0, align 8
@DSA_SUPERBLOCK_SIZE = common dso_local global i64 0, align 8
@DSA_FULLNESS_CLASSES = common dso_local global i32 0, align 4
@InvalidDsaPointer = common dso_local global i8* null, align 8
@DSA_PAGES_PER_SUPERBLOCK = common dso_local global i64 0, align 8
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"dsa_allocate could not find %zu free pages for superblock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_12__*, i32)* @ensure_active_superblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ensure_active_superblock(i32* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load i64*, i64** @dsa_size_classes, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  store i64 1, i64* %13, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @DSA_SCLASS_LOCK(i32* %27, i32 %28)
  %30 = call i32 @LWLockHeldByMe(i32 %29)
  %31 = call i32 @Assert(i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @DSA_SCLASS_BLOCK_OF_SPANS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %3
  %36 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %37 = load i64, i64* %10, align 8
  %38 = udiv i64 %36, %37
  %39 = sub i64 %38, 1
  store i64 %39, i64* %11, align 8
  br label %44

40:                                               ; preds = %3
  %41 = load i64, i64* @DSA_SUPERBLOCK_SIZE, align 8
  %42 = load i64, i64* %10, align 8
  %43 = udiv i64 %41, %42
  store i64 %43, i64* %11, align 8
  br label %44

44:                                               ; preds = %40, %35
  store i32 2, i32* %12, align 4
  br label %45

45:                                               ; preds = %211, %44
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @DSA_FULLNESS_CLASSES, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %214

50:                                               ; preds = %45
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %199, %50
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @DsaPointerIsValid(i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %201

62:                                               ; preds = %58
  %63 = load i32*, i32** %5, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @dsa_get_address(i32* %63, i8* %64)
  %66 = inttoptr i64 %65 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %18, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %21, align 8
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %70, %73
  %75 = load i32, i32* @DSA_FULLNESS_CLASSES, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = mul i64 %74, %77
  %79 = load i64, i64* %11, align 8
  %80 = udiv i64 %78, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %17, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @DsaPointerIsValid(i8* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %62
  %88 = load i32*, i32** %5, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @dsa_get_address(i32* %88, i8* %91)
  %93 = inttoptr i64 %92 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %19, align 8
  br label %95

94:                                               ; preds = %62
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %19, align 8
  br label %95

95:                                               ; preds = %94, %87
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %199

99:                                               ; preds = %95
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = icmp eq i8* %106, %107
  br i1 %108, label %109, label %134

109:                                              ; preds = %99
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @DsaPointerIsValid(i8* %112)
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = call i32 @Assert(i32 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i8**, i8*** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  store i8* %120, i8** %126, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %128 = icmp ne %struct.TYPE_11__* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %109
  %130 = load i8*, i8** @InvalidDsaPointer, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %129, %109
  br label %151

134:                                              ; preds = %99
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 2
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @DsaPointerIsValid(i8* %137)
  %139 = call i32 @Assert(i32 %138)
  %140 = load i32*, i32** %5, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @dsa_get_address(i32* %140, i8* %143)
  %145 = inttoptr i64 %144 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %145, %struct.TYPE_11__** %20, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  store i8* %148, i8** %150, align 8
  br label %151

151:                                              ; preds = %134, %133
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %153 = icmp ne %struct.TYPE_11__* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %154, %151
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = load i8**, i8*** %162, align 8
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  store i8* %167, i8** %169, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i8**, i8*** %172, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  store i8* %170, i8** %176, align 8
  %177 = load i8*, i8** @InvalidDsaPointer, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @DsaPointerIsValid(i8* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %160
  %186 = load i32*, i32** %5, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @dsa_get_address(i32* %186, i8* %189)
  %191 = inttoptr i64 %190 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %191, %struct.TYPE_11__** %19, align 8
  %192 = load i8*, i8** %8, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 2
  store i8* %192, i8** %194, align 8
  br label %195

195:                                              ; preds = %185, %160
  %196 = load i32, i32* %17, align 4
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %195, %95
  %200 = load i8*, i8** %21, align 8
  store i8* %200, i8** %8, align 8
  br label %58

201:                                              ; preds = %58
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i8**, i8*** %203, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 1
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @DsaPointerIsValid(i8* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %201
  store i32 1, i32* %4, align 4
  br label %342

210:                                              ; preds = %201
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  br label %45

214:                                              ; preds = %45
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  %217 = load i8**, i8*** %216, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i64 1
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @DsaPointerIsValid(i8* %219)
  %221 = icmp ne i32 %220, 0
  %222 = xor i1 %221, true
  %223 = zext i1 %222 to i32
  %224 = call i32 @Assert(i32 %223)
  store i32 2, i32* %12, align 4
  br label %225

225:                                              ; preds = %238, %214
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* @DSA_FULLNESS_CLASSES, align 4
  %228 = sub nsw i32 %227, 1
  %229 = icmp slt i32 %226, %228
  br i1 %229, label %230, label %241

230:                                              ; preds = %225
  %231 = load i32*, i32** %5, align 8
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %233 = load i32, i32* %12, align 4
  %234 = call i64 @transfer_first_span(i32* %231, %struct.TYPE_12__* %232, i32 %233, i32 1)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %230
  store i32 1, i32* %4, align 4
  br label %342

237:                                              ; preds = %230
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %12, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %12, align 4
  br label %225

241:                                              ; preds = %225
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load i8**, i8*** %243, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 1
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @DsaPointerIsValid(i8* %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %255, label %249

249:                                              ; preds = %241
  %250 = load i32*, i32** %5, align 8
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %252 = call i64 @transfer_first_span(i32* %250, %struct.TYPE_12__* %251, i32 0, i32 1)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  store i32 1, i32* %4, align 4
  br label %342

255:                                              ; preds = %249, %241
  %256 = load i32, i32* %7, align 4
  %257 = load i32, i32* @DSA_SCLASS_BLOCK_OF_SPANS, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %269

259:                                              ; preds = %255
  %260 = load i32*, i32** %5, align 8
  %261 = load i32, i32* @DSA_SCLASS_BLOCK_OF_SPANS, align 4
  %262 = call i8* @alloc_object(i32* %260, i32 %261)
  store i8* %262, i8** %8, align 8
  %263 = load i8*, i8** %8, align 8
  %264 = call i32 @DsaPointerIsValid(i8* %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %259
  store i32 0, i32* %4, align 4
  br label %342

267:                                              ; preds = %259
  %268 = load i64, i64* @DSA_PAGES_PER_SUPERBLOCK, align 8
  store i64 %268, i64* %13, align 8
  br label %269

269:                                              ; preds = %267, %255
  %270 = load i32*, i32** %5, align 8
  %271 = call i32 @DSA_AREA_LOCK(i32* %270)
  %272 = load i32, i32* @LW_EXCLUSIVE, align 4
  %273 = call i32 @LWLockAcquire(i32 %271, i32 %272)
  %274 = load i32*, i32** %5, align 8
  %275 = load i64, i64* %13, align 8
  %276 = call %struct.TYPE_10__* @get_best_segment(i32* %274, i64 %275)
  store %struct.TYPE_10__* %276, %struct.TYPE_10__** %16, align 8
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %278 = icmp eq %struct.TYPE_10__* %277, null
  br i1 %278, label %279, label %290

279:                                              ; preds = %269
  %280 = load i32*, i32** %5, align 8
  %281 = load i64, i64* %13, align 8
  %282 = call %struct.TYPE_10__* @make_new_segment(i32* %280, i64 %281)
  store %struct.TYPE_10__* %282, %struct.TYPE_10__** %16, align 8
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %284 = icmp eq %struct.TYPE_10__* %283, null
  br i1 %284, label %285, label %289

285:                                              ; preds = %279
  %286 = load i32*, i32** %5, align 8
  %287 = call i32 @DSA_AREA_LOCK(i32* %286)
  %288 = call i32 @LWLockRelease(i32 %287)
  store i32 0, i32* %4, align 4
  br label %342

289:                                              ; preds = %279
  br label %290

290:                                              ; preds = %289, %269
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load i64, i64* %13, align 8
  %295 = call i32 @FreePageManagerGet(i32 %293, i64 %294, i64* %14)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %290
  %298 = load i32, i32* @FATAL, align 4
  %299 = load i64, i64* %13, align 8
  %300 = call i32 @elog(i32 %298, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %299)
  br label %301

301:                                              ; preds = %297, %290
  %302 = load i32*, i32** %5, align 8
  %303 = call i32 @DSA_AREA_LOCK(i32* %302)
  %304 = call i32 @LWLockRelease(i32 %303)
  %305 = load i32*, i32** %5, align 8
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %307 = call i32 @get_segment_index(i32* %305, %struct.TYPE_10__* %306)
  %308 = load i64, i64* %14, align 8
  %309 = load i64, i64* @FPM_PAGE_SIZE, align 8
  %310 = mul i64 %308, %309
  %311 = call i8* @DSA_MAKE_POINTER(i32 %307, i64 %310)
  store i8* %311, i8** %9, align 8
  %312 = load i32, i32* %7, align 4
  %313 = load i32, i32* @DSA_SCLASS_BLOCK_OF_SPANS, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %301
  %316 = load i8*, i8** %9, align 8
  store i8* %316, i8** %8, align 8
  br label %317

317:                                              ; preds = %315, %301
  %318 = load i32*, i32** %5, align 8
  %319 = load i8*, i8** %8, align 8
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %321 = load i8*, i8** %9, align 8
  %322 = load i64, i64* %13, align 8
  %323 = load i32, i32* %7, align 4
  %324 = call i32 @init_span(i32* %318, i8* %319, %struct.TYPE_12__* %320, i8* %321, i64 %322, i32 %323)
  store i64 0, i64* %15, align 8
  br label %325

325:                                              ; preds = %338, %317
  %326 = load i64, i64* %15, align 8
  %327 = load i64, i64* %13, align 8
  %328 = icmp ult i64 %326, %327
  br i1 %328, label %329, label %341

329:                                              ; preds = %325
  %330 = load i8*, i8** %8, align 8
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 0
  %333 = load i8**, i8*** %332, align 8
  %334 = load i64, i64* %14, align 8
  %335 = load i64, i64* %15, align 8
  %336 = add i64 %334, %335
  %337 = getelementptr inbounds i8*, i8** %333, i64 %336
  store i8* %330, i8** %337, align 8
  br label %338

338:                                              ; preds = %329
  %339 = load i64, i64* %15, align 8
  %340 = add i64 %339, 1
  store i64 %340, i64* %15, align 8
  br label %325

341:                                              ; preds = %325
  store i32 1, i32* %4, align 4
  br label %342

342:                                              ; preds = %341, %285, %266, %254, %236, %209
  %343 = load i32, i32* %4, align 4
  ret i32 %343
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LWLockHeldByMe(i32) #1

declare dso_local i32 @DSA_SCLASS_LOCK(i32*, i32) #1

declare dso_local i32 @DsaPointerIsValid(i8*) #1

declare dso_local i64 @dsa_get_address(i32*, i8*) #1

declare dso_local i64 @transfer_first_span(i32*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i8* @alloc_object(i32*, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @DSA_AREA_LOCK(i32*) #1

declare dso_local %struct.TYPE_10__* @get_best_segment(i32*, i64) #1

declare dso_local %struct.TYPE_10__* @make_new_segment(i32*, i64) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @FreePageManagerGet(i32, i64, i64*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i8* @DSA_MAKE_POINTER(i32, i64) #1

declare dso_local i32 @get_segment_index(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @init_span(i32*, i8*, %struct.TYPE_12__*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
