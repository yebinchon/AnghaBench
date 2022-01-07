; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_GetMultiXactIdMembers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_GetMultiXactIdMembers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64* }
%struct.TYPE_12__ = type { i32, i32 }

@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"GetMembers: asked for %u\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"GetMembers: found %s in the cache\00", align 1
@OldestVisibleMXactId = common dso_local global i64* null, align 8
@MyBackendId = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"GetMembers: a locker-only multi is too old\00", align 1
@MultiXactGenLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@MultiXactState = common dso_local global %struct.TYPE_14__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"MultiXactId %u does no longer exist -- apparent wraparound\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"MultiXactId %u has not been created yet -- apparent wraparound\00", align 1
@MultiXactOffsetControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@MultiXactOffsetCtl = common dso_local global %struct.TYPE_13__* null, align 8
@FirstMultiXactId = common dso_local global i64 0, align 8
@MultiXactMemberControlLock = common dso_local global i32 0, align 4
@MultiXactMemberCtl = common dso_local global %struct.TYPE_13__* null, align 8
@MXACT_MEMBER_XACT_BITMASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"GetMembers: no cache for %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetMultiXactIdMembers(i64 %0, %struct.TYPE_12__** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_12__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store %struct.TYPE_12__** %1, %struct.TYPE_12__*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %30 = load i32, i32* @DEBUG2, align 4
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @debug_elog3(i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @MultiXactIdIsValid(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %4
  store i32 -1, i32* %5, align 4
  br label %313

40:                                               ; preds = %36
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %43 = call i32 @mXactCacheGetById(i64 %41, %struct.TYPE_12__** %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32, i32* @DEBUG2, align 4
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = call i64 @mxid_to_string(i64 %48, i32 %49, %struct.TYPE_12__* %51)
  %53 = call i32 @debug_elog3(i32 %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %5, align 4
  br label %313

55:                                               ; preds = %40
  %56 = call i32 (...) @MultiXactIdSetOldestVisible()
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  %61 = load i64*, i64** @OldestVisibleMXactId, align 8
  %62 = load i64, i64* @MyBackendId, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @MultiXactIdPrecedes(i64 %60, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @DEBUG2, align 4
  %69 = call i32 @debug_elog2(i32 %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %70, align 8
  store i32 -1, i32* %5, align 4
  br label %313

71:                                               ; preds = %59, %55
  %72 = load i32, i32* @MultiXactGenLock, align 4
  %73 = load i32, i32* @LW_SHARED, align 4
  %74 = call i32 @LWLockAcquire(i32 %72, i32 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** @MultiXactState, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %19, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** @MultiXactState, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %20, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** @MultiXactState, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %22, align 8
  %84 = load i32, i32* @MultiXactGenLock, align 4
  %85 = call i32 @LWLockRelease(i32 %84)
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %19, align 8
  %88 = call i64 @MultiXactIdPrecedes(i64 %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %71
  %91 = load i32, i32* @ERROR, align 4
  %92 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %93 = call i32 @errcode(i32 %92)
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  %96 = call i32 @ereport(i32 %91, i32 %95)
  store i32 -1, i32* %5, align 4
  br label %313

97:                                               ; preds = %71
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* %20, align 8
  %100 = call i64 @MultiXactIdPrecedes(i64 %98, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* @ERROR, align 4
  %104 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %105 = call i32 @errcode(i32 %104)
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i64 %106)
  %108 = call i32 @ereport(i32 %103, i32 %107)
  br label %109

109:                                              ; preds = %102, %97
  br label %110

110:                                              ; preds = %191, %109
  %111 = load i32, i32* @MultiXactOffsetControlLock, align 4
  %112 = load i32, i32* @LW_EXCLUSIVE, align 4
  %113 = call i32 @LWLockAcquire(i32 %111, i32 %112)
  %114 = load i64, i64* %6, align 8
  %115 = call i32 @MultiXactIdToOffsetPage(i64 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @MultiXactIdToOffsetEntry(i64 %116)
  store i32 %117, i32* %12, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MultiXactOffsetCtl, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @SimpleLruReadPage(%struct.TYPE_13__* %118, i32 %119, i32 1, i64 %120)
  store i32 %121, i32* %13, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MultiXactOffsetCtl, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i64*
  store i64* %131, i64** %14, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i64*, i64** %14, align 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  store i64* %135, i64** %14, align 8
  %136 = load i64*, i64** %14, align 8
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %15, align 8
  %138 = load i64, i64* %15, align 8
  %139 = icmp ne i64 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @Assert(i32 %140)
  %142 = load i64, i64* %6, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %21, align 8
  %144 = load i64, i64* %20, align 8
  %145 = load i64, i64* %21, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %110
  %148 = load i64, i64* %22, align 8
  %149 = load i64, i64* %15, align 8
  %150 = sub nsw i64 %148, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %16, align 4
  br label %201

152:                                              ; preds = %110
  %153 = load i64, i64* %21, align 8
  %154 = load i64, i64* @FirstMultiXactId, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i64, i64* @FirstMultiXactId, align 8
  store i64 %157, i64* %21, align 8
  br label %158

158:                                              ; preds = %156, %152
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %11, align 4
  %160 = load i64, i64* %21, align 8
  %161 = call i32 @MultiXactIdToOffsetPage(i64 %160)
  store i32 %161, i32* %10, align 4
  %162 = load i64, i64* %21, align 8
  %163 = call i32 @MultiXactIdToOffsetEntry(i64 %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %158
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MultiXactOffsetCtl, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load i64, i64* %21, align 8
  %171 = call i32 @SimpleLruReadPage(%struct.TYPE_13__* %168, i32 %169, i32 1, i64 %170)
  store i32 %171, i32* %13, align 4
  br label %172

172:                                              ; preds = %167, %158
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MultiXactOffsetCtl, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = inttoptr i64 %181 to i64*
  store i64* %182, i64** %14, align 8
  %183 = load i32, i32* %12, align 4
  %184 = load i64*, i64** %14, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i64, i64* %184, i64 %185
  store i64* %186, i64** %14, align 8
  %187 = load i64*, i64** %14, align 8
  %188 = load i64, i64* %187, align 8
  store i64 %188, i64* %24, align 8
  %189 = load i64, i64* %24, align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %172
  %192 = load i32, i32* @MultiXactOffsetControlLock, align 4
  %193 = call i32 @LWLockRelease(i32 %192)
  %194 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %195 = call i32 @pg_usleep(i64 1000)
  br label %110

196:                                              ; preds = %172
  %197 = load i64, i64* %24, align 8
  %198 = load i64, i64* %15, align 8
  %199 = sub nsw i64 %197, %198
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %16, align 4
  br label %201

201:                                              ; preds = %196, %147
  %202 = load i32, i32* @MultiXactOffsetControlLock, align 4
  %203 = call i32 @LWLockRelease(i32 %202)
  %204 = load i32, i32* %16, align 4
  %205 = sext i32 %204 to i64
  %206 = mul i64 %205, 8
  %207 = trunc i64 %206 to i32
  %208 = call i64 @palloc(i32 %207)
  %209 = inttoptr i64 %208 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %209, %struct.TYPE_12__** %23, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %211 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %210, %struct.TYPE_12__** %211, align 8
  %212 = load i32, i32* @MultiXactMemberControlLock, align 4
  %213 = load i32, i32* @LW_EXCLUSIVE, align 4
  %214 = call i32 @LWLockAcquire(i32 %212, i32 %213)
  store i32 0, i32* %17, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %18, align 4
  br label %215

215:                                              ; preds = %294, %201
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* %16, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %299

219:                                              ; preds = %215
  %220 = load i64, i64* %15, align 8
  %221 = call i32 @MXOffsetToMemberPage(i64 %220)
  store i32 %221, i32* %10, align 4
  %222 = load i64, i64* %15, align 8
  %223 = call i32 @MXOffsetToMemberOffset(i64 %222)
  store i32 %223, i32* %29, align 4
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %11, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %219
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MultiXactMemberCtl, align 8
  %229 = load i32, i32* %10, align 4
  %230 = load i64, i64* %6, align 8
  %231 = call i32 @SimpleLruReadPage(%struct.TYPE_13__* %228, i32 %229, i32 1, i64 %230)
  store i32 %231, i32* %13, align 4
  %232 = load i32, i32* %10, align 4
  store i32 %232, i32* %11, align 4
  br label %233

233:                                              ; preds = %227, %219
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MultiXactMemberCtl, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = load i32, i32* %29, align 4
  %244 = sext i32 %243 to i64
  %245 = add nsw i64 %242, %244
  %246 = inttoptr i64 %245 to i32*
  store i32* %246, i32** %25, align 8
  %247 = load i32*, i32** %25, align 8
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @TransactionIdIsValid(i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %233
  %252 = load i64, i64* %15, align 8
  %253 = icmp eq i64 %252, 0
  %254 = zext i1 %253 to i32
  %255 = call i32 @Assert(i32 %254)
  br label %294

256:                                              ; preds = %233
  %257 = load i64, i64* %15, align 8
  %258 = call i32 @MXOffsetToFlagsOffset(i64 %257)
  store i32 %258, i32* %27, align 4
  %259 = load i64, i64* %15, align 8
  %260 = call i32 @MXOffsetToFlagsBitShift(i64 %259)
  store i32 %260, i32* %28, align 4
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MultiXactMemberCtl, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 0
  %265 = load i64*, i64** %264, align 8
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %265, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = load i32, i32* %27, align 4
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %269, %271
  %273 = inttoptr i64 %272 to i32*
  store i32* %273, i32** %26, align 8
  %274 = load i32*, i32** %25, align 8
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %277 = load i32, i32* %17, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 1
  store i32 %275, i32* %280, align 4
  %281 = load i32*, i32** %26, align 8
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %28, align 4
  %284 = ashr i32 %282, %283
  %285 = load i32, i32* @MXACT_MEMBER_XACT_BITMASK, align 4
  %286 = and i32 %284, %285
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %288 = load i32, i32* %17, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  store i32 %286, i32* %291, align 4
  %292 = load i32, i32* %17, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %17, align 4
  br label %294

294:                                              ; preds = %256, %251
  %295 = load i32, i32* %18, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %18, align 4
  %297 = load i64, i64* %15, align 8
  %298 = add nsw i64 %297, 1
  store i64 %298, i64* %15, align 8
  br label %215

299:                                              ; preds = %215
  %300 = load i32, i32* @MultiXactMemberControlLock, align 4
  %301 = call i32 @LWLockRelease(i32 %300)
  %302 = load i64, i64* %6, align 8
  %303 = load i32, i32* %17, align 4
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %305 = call i32 @mXactCachePut(i64 %302, i32 %303, %struct.TYPE_12__* %304)
  %306 = load i32, i32* @DEBUG2, align 4
  %307 = load i64, i64* %6, align 8
  %308 = load i32, i32* %17, align 4
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %310 = call i64 @mxid_to_string(i64 %307, i32 %308, %struct.TYPE_12__* %309)
  %311 = call i32 @debug_elog3(i32 %306, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %310)
  %312 = load i32, i32* %17, align 4
  store i32 %312, i32* %5, align 4
  br label %313

313:                                              ; preds = %299, %90, %67, %46, %39
  %314 = load i32, i32* %5, align 4
  ret i32 %314
}

declare dso_local i32 @debug_elog3(i32, i8*, i64) #1

declare dso_local i32 @MultiXactIdIsValid(i64) #1

declare dso_local i32 @mXactCacheGetById(i64, %struct.TYPE_12__**) #1

declare dso_local i64 @mxid_to_string(i64, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @MultiXactIdSetOldestVisible(...) #1

declare dso_local i64 @MultiXactIdPrecedes(i64, i64) #1

declare dso_local i32 @debug_elog2(i32, i8*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64) #1

declare dso_local i32 @MultiXactIdToOffsetPage(i64) #1

declare dso_local i32 @MultiXactIdToOffsetEntry(i64) #1

declare dso_local i32 @SimpleLruReadPage(%struct.TYPE_13__*, i32, i32, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @MXOffsetToMemberPage(i64) #1

declare dso_local i32 @MXOffsetToMemberOffset(i64) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @MXOffsetToFlagsOffset(i64) #1

declare dso_local i32 @MXOffsetToFlagsBitShift(i64) #1

declare dso_local i32 @mXactCachePut(i64, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
