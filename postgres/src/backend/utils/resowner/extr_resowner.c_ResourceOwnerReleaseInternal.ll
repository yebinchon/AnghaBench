; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/resowner/extr_resowner.c_ResourceOwnerReleaseInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/resowner/extr_resowner.c_ResourceOwnerReleaseInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32**, i32*, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32 (i32, i32, i32, i32)*, %struct.TYPE_7__* }

@CurrentResourceOwner = common dso_local global %struct.TYPE_8__* null, align 8
@RESOURCE_RELEASE_BEFORE_LOCKS = common dso_local global i32 0, align 4
@RESOURCE_RELEASE_LOCKS = common dso_local global i32 0, align 4
@TopTransactionResourceOwner = common dso_local global %struct.TYPE_8__* null, align 8
@MAX_RESOWNER_LOCKS = common dso_local global i32 0, align 4
@RESOURCE_RELEASE_AFTER_LOCKS = common dso_local global i32 0, align 4
@ResourceRelease_callbacks = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32, i32)* @ResourceOwnerReleaseInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResourceOwnerReleaseInternal(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 14
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %9, align 8
  br label %28

28:                                               ; preds = %36, %4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  call void @ResourceOwnerReleaseInternal(%struct.TYPE_8__* %32, i32 %33, i32 %34, i32 %35)
  br label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 13
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %9, align 8
  br label %28

40:                                               ; preds = %28
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @CurrentResourceOwner, align 8
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %10, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** @CurrentResourceOwner, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @RESOURCE_RELEASE_BEFORE_LOCKS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %112

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %60, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 12
  %50 = call i64 @ResourceArrayGetAny(i32* %49, i32* %12)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @DatumGetBuffer(i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @PrintBufferLeakWarning(i32 %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @ReleaseBuffer(i32 %61)
  br label %47

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %78, %63
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 11
  %67 = call i64 @ResourceArrayGetAny(i32* %66, i32* %12)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i32, i32* %12, align 4
  %71 = call i64 @DatumGetPointer(i32 %70)
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @PrintRelCacheLeakWarning(i32 %76)
  br label %78

78:                                               ; preds = %75, %69
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @RelationClose(i32 %79)
  br label %64

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %96, %81
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 10
  %85 = call i64 @ResourceArrayGetAny(i32* %84, i32* %12)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @DatumGetPointer(i32 %88)
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %15, align 8
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32*, i32** %15, align 8
  %95 = call i32 @PrintDSMLeakWarning(i32* %94)
  br label %96

96:                                               ; preds = %93, %87
  %97 = load i32*, i32** %15, align 8
  %98 = call i32 @dsm_detach(i32* %97)
  br label %82

99:                                               ; preds = %82
  br label %100

100:                                              ; preds = %105, %99
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 9
  %103 = call i64 @ResourceArrayGetAny(i32* %102, i32* %12)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = call i64 @PointerGetDatum(i32 %106)
  %108 = inttoptr i64 %107 to i32*
  store i32* %108, i32** %16, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = call i32 @jit_release_context(i32* %109)
  br label %100

111:                                              ; preds = %100
  br label %276

112:                                              ; preds = %40
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @RESOURCE_RELEASE_LOCKS, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %162

116:                                              ; preds = %112
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %116
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** @TopTransactionResourceOwner, align 8
  %122 = icmp eq %struct.TYPE_8__* %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @ProcReleaseLocks(i32 %124)
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @ReleasePredicateLocks(i32 %126, i32 0)
  br label %128

128:                                              ; preds = %123, %119
  br label %161

129:                                              ; preds = %116
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 8
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 @Assert(i32 %134)
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @MAX_RESOWNER_LOCKS, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %129
  store i32** null, i32*** %17, align 8
  store i32 0, i32* %18, align 4
  br label %149

142:                                              ; preds = %129
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 7
  %145 = load i32**, i32*** %144, align 8
  store i32** %145, i32*** %17, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  store i32 %148, i32* %18, align 4
  br label %149

149:                                              ; preds = %142, %141
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i32**, i32*** %17, align 8
  %154 = load i32, i32* %18, align 4
  %155 = call i32 @LockReassignCurrentOwner(i32** %153, i32 %154)
  br label %160

156:                                              ; preds = %149
  %157 = load i32**, i32*** %17, align 8
  %158 = load i32, i32* %18, align 4
  %159 = call i32 @LockReleaseCurrentOwner(i32** %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %152
  br label %161

161:                                              ; preds = %160, %128
  br label %275

162:                                              ; preds = %112
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @RESOURCE_RELEASE_AFTER_LOCKS, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %274

166:                                              ; preds = %162
  br label %167

167:                                              ; preds = %181, %166
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 6
  %170 = call i64 @ResourceArrayGetAny(i32* %169, i32* %12)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %167
  %173 = load i32, i32* %12, align 4
  %174 = call i64 @DatumGetPointer(i32 %173)
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %19, align 4
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = load i32, i32* %19, align 4
  %180 = call i32 @PrintCatCacheLeakWarning(i32 %179)
  br label %181

181:                                              ; preds = %178, %172
  %182 = load i32, i32* %19, align 4
  %183 = call i32 @ReleaseCatCache(i32 %182)
  br label %167

184:                                              ; preds = %167
  br label %185

185:                                              ; preds = %199, %184
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 5
  %188 = call i64 @ResourceArrayGetAny(i32* %187, i32* %12)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %185
  %191 = load i32, i32* %12, align 4
  %192 = call i64 @DatumGetPointer(i32 %191)
  %193 = inttoptr i64 %192 to i32*
  store i32* %193, i32** %20, align 8
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = load i32*, i32** %20, align 8
  %198 = call i32 @PrintCatCacheListLeakWarning(i32* %197)
  br label %199

199:                                              ; preds = %196, %190
  %200 = load i32*, i32** %20, align 8
  %201 = call i32 @ReleaseCatCacheList(i32* %200)
  br label %185

202:                                              ; preds = %185
  br label %203

203:                                              ; preds = %217, %202
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 4
  %206 = call i64 @ResourceArrayGetAny(i32* %205, i32* %12)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %220

208:                                              ; preds = %203
  %209 = load i32, i32* %12, align 4
  %210 = call i64 @DatumGetPointer(i32 %209)
  %211 = inttoptr i64 %210 to i32*
  store i32* %211, i32** %21, align 8
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = load i32*, i32** %21, align 8
  %216 = call i32 @PrintPlanCacheLeakWarning(i32* %215)
  br label %217

217:                                              ; preds = %214, %208
  %218 = load i32*, i32** %21, align 8
  %219 = call i32 @ReleaseCachedPlan(i32* %218, i32 1)
  br label %203

220:                                              ; preds = %203
  br label %221

221:                                              ; preds = %235, %220
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 3
  %224 = call i64 @ResourceArrayGetAny(i32* %223, i32* %12)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %238

226:                                              ; preds = %221
  %227 = load i32, i32* %12, align 4
  %228 = call i64 @DatumGetPointer(i32 %227)
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %22, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = load i32, i32* %22, align 4
  %234 = call i32 @PrintTupleDescLeakWarning(i32 %233)
  br label %235

235:                                              ; preds = %232, %226
  %236 = load i32, i32* %22, align 4
  %237 = call i32 @DecrTupleDescRefCount(i32 %236)
  br label %221

238:                                              ; preds = %221
  br label %239

239:                                              ; preds = %253, %238
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 2
  %242 = call i64 @ResourceArrayGetAny(i32* %241, i32* %12)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %256

244:                                              ; preds = %239
  %245 = load i32, i32* %12, align 4
  %246 = call i64 @DatumGetPointer(i32 %245)
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %23, align 4
  %248 = load i32, i32* %7, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %244
  %251 = load i32, i32* %23, align 4
  %252 = call i32 @PrintSnapshotLeakWarning(i32 %251)
  br label %253

253:                                              ; preds = %250, %244
  %254 = load i32, i32* %23, align 4
  %255 = call i32 @UnregisterSnapshot(i32 %254)
  br label %239

256:                                              ; preds = %239
  br label %257

257:                                              ; preds = %270, %256
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = call i64 @ResourceArrayGetAny(i32* %259, i32* %12)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %273

262:                                              ; preds = %257
  %263 = load i32, i32* %12, align 4
  %264 = call i32 @DatumGetFile(i32 %263)
  store i32 %264, i32* %24, align 4
  %265 = load i32, i32* %7, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load i32, i32* %24, align 4
  %269 = call i32 @PrintFileLeakWarning(i32 %268)
  br label %270

270:                                              ; preds = %267, %262
  %271 = load i32, i32* %24, align 4
  %272 = call i32 @FileClose(i32 %271)
  br label %257

273:                                              ; preds = %257
  br label %274

274:                                              ; preds = %273, %162
  br label %275

275:                                              ; preds = %274, %161
  br label %276

276:                                              ; preds = %275, %111
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** @ResourceRelease_callbacks, align 8
  store %struct.TYPE_7__* %277, %struct.TYPE_7__** %11, align 8
  br label %278

278:                                              ; preds = %292, %276
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %280 = icmp ne %struct.TYPE_7__* %279, null
  br i1 %280, label %281, label %296

281:                                              ; preds = %278
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 1
  %284 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %283, align 8
  %285 = load i32, i32* %6, align 4
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* %8, align 4
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 %284(i32 %285, i32 %286, i32 %287, i32 %290)
  br label %292

292:                                              ; preds = %281
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 2
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %294, align 8
  store %struct.TYPE_7__* %295, %struct.TYPE_7__** %11, align 8
  br label %278

296:                                              ; preds = %278
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %297, %struct.TYPE_8__** @CurrentResourceOwner, align 8
  ret void
}

declare dso_local i64 @ResourceArrayGetAny(i32*, i32*) #1

declare dso_local i32 @DatumGetBuffer(i32) #1

declare dso_local i32 @PrintBufferLeakWarning(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i64 @DatumGetPointer(i32) #1

declare dso_local i32 @PrintRelCacheLeakWarning(i32) #1

declare dso_local i32 @RelationClose(i32) #1

declare dso_local i32 @PrintDSMLeakWarning(i32*) #1

declare dso_local i32 @dsm_detach(i32*) #1

declare dso_local i64 @PointerGetDatum(i32) #1

declare dso_local i32 @jit_release_context(i32*) #1

declare dso_local i32 @ProcReleaseLocks(i32) #1

declare dso_local i32 @ReleasePredicateLocks(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LockReassignCurrentOwner(i32**, i32) #1

declare dso_local i32 @LockReleaseCurrentOwner(i32**, i32) #1

declare dso_local i32 @PrintCatCacheLeakWarning(i32) #1

declare dso_local i32 @ReleaseCatCache(i32) #1

declare dso_local i32 @PrintCatCacheListLeakWarning(i32*) #1

declare dso_local i32 @ReleaseCatCacheList(i32*) #1

declare dso_local i32 @PrintPlanCacheLeakWarning(i32*) #1

declare dso_local i32 @ReleaseCachedPlan(i32*, i32) #1

declare dso_local i32 @PrintTupleDescLeakWarning(i32) #1

declare dso_local i32 @DecrTupleDescRefCount(i32) #1

declare dso_local i32 @PrintSnapshotLeakWarning(i32) #1

declare dso_local i32 @UnregisterSnapshot(i32) #1

declare dso_local i32 @DatumGetFile(i32) #1

declare dso_local i32 @PrintFileLeakWarning(i32) #1

declare dso_local i32 @FileClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
