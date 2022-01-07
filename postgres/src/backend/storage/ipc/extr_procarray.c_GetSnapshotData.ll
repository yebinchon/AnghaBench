; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_GetSnapshotData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_GetSnapshotData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, i32, i8*, i8*, i32 }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_16__ = type { i32, i8*, i8*, i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i8**, i8**, i32, i32, i32, i32, i64, i32, i64, i64, i32, i8*, i8*, i32 }

@procArray = common dso_local global %struct.TYPE_15__* null, align 8
@InvalidTransactionId = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@ShmemVariableCache = common dso_local global %struct.TYPE_18__* null, align 8
@allPgXact = common dso_local global %struct.TYPE_16__* null, align 8
@PROC_IN_LOGICAL_DECODING = common dso_local global i32 0, align 4
@PROC_IN_VACUUM = common dso_local global i32 0, align 4
@MyPgXact = common dso_local global %struct.TYPE_16__* null, align 8
@allProcs = common dso_local global %struct.TYPE_17__* null, align 8
@TransactionXmin = common dso_local global i8* null, align 8
@vacuum_defer_cleanup_age = common dso_local global i8* null, align 8
@RecentGlobalXmin = common dso_local global i8* null, align 8
@FirstNormalTransactionId = common dso_local global i8* null, align 8
@RecentGlobalDataXmin = common dso_local global i8* null, align 8
@RecentXmin = common dso_local global i8* null, align 8
@old_snapshot_threshold = common dso_local global i64 0, align 8
@InvalidXLogRecPtr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @GetSnapshotData(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** @procArray, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load i8*, i8** @InvalidTransactionId, align 8
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** @InvalidTransactionId, align 8
  store i8* %22, i8** %12, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = call i32 @Assert(i64 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = icmp eq i8** %30, null
  br i1 %31, label %32, label %78

32:                                               ; preds = %1
  %33 = call i32 (...) @GetMaxSnapshotXidCount()
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @malloc(i32 %36)
  %38 = inttoptr i64 %37 to i8**
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i8** %38, i8*** %40, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i8**, i8*** %42, align 8
  %44 = icmp eq i8** %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %32
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @ereport(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %32
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i8**, i8*** %53, align 8
  %55 = icmp eq i8** %54, null
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = call i32 @Assert(i64 %57)
  %59 = call i32 (...) @GetMaxSnapshotSubxidCount()
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 @malloc(i32 %62)
  %64 = inttoptr i64 %63 to i8**
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  store i8** %64, i8*** %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = icmp eq i8** %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %51
  %72 = load i32, i32* @ERROR, align 4
  %73 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %74 = call i32 @errcode(i32 %73)
  %75 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %76 = call i32 @ereport(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %71, %51
  br label %78

78:                                               ; preds = %77, %1
  %79 = load i32, i32* @ProcArrayLock, align 4
  %80 = load i32, i32* @LW_SHARED, align 4
  %81 = call i32 @LWLockAcquire(i32 %79, i32 %80)
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ShmemVariableCache, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %5, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = call i64 @TransactionIdIsNormal(i8* %85)
  %87 = call i32 @Assert(i64 %86)
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @TransactionIdAdvance(i8* %88)
  %90 = load i8*, i8** %5, align 8
  store i8* %90, i8** %4, align 8
  store i8* %90, i8** %6, align 8
  %91 = call i32 (...) @RecoveryInProgress()
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 13
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 13
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %224, label %98

98:                                               ; preds = %78
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  store i32* %101, i32** %13, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %14, align 4
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %220, %98
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %223

109:                                              ; preds = %105
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %15, align 4
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** @allPgXact, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i64 %117
  store %struct.TYPE_16__* %118, %struct.TYPE_16__** %16, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @PROC_IN_LOGICAL_DECODING, align 4
  %123 = load i32, i32* @PROC_IN_VACUUM, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %109
  br label %220

128:                                              ; preds = %109
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i8* @UINT32_ACCESS_ONCE(i8* %131)
  store i8* %132, i8** %17, align 8
  %133 = load i8*, i8** %17, align 8
  %134 = call i64 @TransactionIdIsNormal(i8* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %128
  %137 = load i8*, i8** %17, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = call i64 @NormalTransactionIdPrecedes(i8* %137, i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i8*, i8** %17, align 8
  store i8* %142, i8** %6, align 8
  br label %143

143:                                              ; preds = %141, %136, %128
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = call i8* @UINT32_ACCESS_ONCE(i8* %146)
  store i8* %147, i8** %17, align 8
  %148 = load i8*, i8** %17, align 8
  %149 = call i64 @TransactionIdIsNormal(i8* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %143
  %152 = load i8*, i8** %17, align 8
  %153 = load i8*, i8** %5, align 8
  %154 = call i64 @NormalTransactionIdPrecedes(i8* %152, i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %151, %143
  br label %220

157:                                              ; preds = %151
  %158 = load i8*, i8** %17, align 8
  %159 = load i8*, i8** %4, align 8
  %160 = call i64 @NormalTransactionIdPrecedes(i8* %158, i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i8*, i8** %17, align 8
  store i8* %163, i8** %4, align 8
  br label %164

164:                                              ; preds = %162, %157
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** @MyPgXact, align 8
  %167 = icmp eq %struct.TYPE_16__* %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  br label %220

169:                                              ; preds = %164
  %170 = load i8*, i8** %17, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i8**, i8*** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %8, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8*, i8** %173, i64 %176
  store i8* %170, i8** %177, align 8
  %178 = load i32, i32* %10, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %219, label %180

180:                                              ; preds = %169
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 4
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  store i32 1, i32* %10, align 4
  br label %218

186:                                              ; preds = %180
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  store i32 %189, i32* %18, align 4
  %190 = load i32, i32* %18, align 4
  %191 = icmp sgt i32 %190, 0
  br i1 %191, label %192, label %217

192:                                              ; preds = %186
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** @allProcs, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i64 %195
  store %struct.TYPE_17__* %196, %struct.TYPE_17__** %19, align 8
  %197 = call i32 (...) @pg_read_barrier()
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  %200 = load i8**, i8*** %199, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = inttoptr i64 %207 to i8*
  %209 = load i32, i32* %18, align 4
  %210 = sext i32 %209 to i64
  %211 = mul i64 %210, 8
  %212 = trunc i64 %211 to i32
  %213 = call i32 @memcpy(i8** %203, i8* %208, i32 %212)
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %192, %186
  br label %218

218:                                              ; preds = %217, %185
  br label %219

219:                                              ; preds = %218, %169
  br label %220

220:                                              ; preds = %219, %168, %156, %127
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %7, align 4
  br label %105

223:                                              ; preds = %105
  br label %238

224:                                              ; preds = %78
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = load i8**, i8*** %226, align 8
  %228 = load i8*, i8** %5, align 8
  %229 = call i32 @KnownAssignedXidsGetAndSetXmin(i8** %227, i8** %4, i8* %228)
  store i32 %229, i32* %9, align 4
  %230 = load i8*, i8** %4, align 8
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** @procArray, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = call i64 @TransactionIdPrecedesOrEquals(i8* %230, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %224
  store i32 1, i32* %10, align 4
  br label %237

237:                                              ; preds = %236, %224
  br label %238

238:                                              ; preds = %237, %223
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** @procArray, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 3
  %241 = load i8*, i8** %240, align 8
  store i8* %241, i8** %11, align 8
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** @procArray, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 2
  %244 = load i8*, i8** %243, align 8
  store i8* %244, i8** %12, align 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** @MyPgXact, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load i8*, i8** %246, align 8
  %248 = call i64 @TransactionIdIsValid(i8* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %238
  %251 = load i8*, i8** %4, align 8
  store i8* %251, i8** @TransactionXmin, align 8
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** @MyPgXact, align 8
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 1
  store i8* %251, i8** %253, align 8
  br label %254

254:                                              ; preds = %250, %238
  %255 = load i32, i32* @ProcArrayLock, align 4
  %256 = call i32 @LWLockRelease(i32 %255)
  %257 = load i8*, i8** %4, align 8
  %258 = load i8*, i8** %6, align 8
  %259 = call i64 @TransactionIdPrecedes(i8* %257, i8* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %254
  %262 = load i8*, i8** %4, align 8
  store i8* %262, i8** %6, align 8
  br label %263

263:                                              ; preds = %261, %254
  %264 = load i8*, i8** %6, align 8
  %265 = load i8*, i8** @vacuum_defer_cleanup_age, align 8
  %266 = ptrtoint i8* %264 to i64
  %267 = ptrtoint i8* %265 to i64
  %268 = sub i64 %266, %267
  %269 = inttoptr i64 %268 to i8*
  store i8* %269, i8** @RecentGlobalXmin, align 8
  %270 = load i8*, i8** @RecentGlobalXmin, align 8
  %271 = call i64 @TransactionIdIsNormal(i8* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %263
  %274 = load i8*, i8** @FirstNormalTransactionId, align 8
  store i8* %274, i8** @RecentGlobalXmin, align 8
  br label %275

275:                                              ; preds = %273, %263
  %276 = load i8*, i8** %11, align 8
  %277 = call i64 @TransactionIdIsValid(i8* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %275
  %280 = load i8*, i8** %11, align 8
  %281 = load i8*, i8** @RecentGlobalXmin, align 8
  %282 = call i64 @NormalTransactionIdPrecedes(i8* %280, i8* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %279
  %285 = load i8*, i8** %11, align 8
  store i8* %285, i8** @RecentGlobalXmin, align 8
  br label %286

286:                                              ; preds = %284, %279, %275
  %287 = load i8*, i8** @RecentGlobalXmin, align 8
  store i8* %287, i8** @RecentGlobalDataXmin, align 8
  %288 = load i8*, i8** %12, align 8
  %289 = call i64 @TransactionIdIsNormal(i8* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %286
  %292 = load i8*, i8** %12, align 8
  %293 = load i8*, i8** @RecentGlobalXmin, align 8
  %294 = call i64 @NormalTransactionIdPrecedes(i8* %292, i8* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %291
  %297 = load i8*, i8** %12, align 8
  store i8* %297, i8** @RecentGlobalXmin, align 8
  br label %298

298:                                              ; preds = %296, %291, %286
  %299 = load i8*, i8** %4, align 8
  store i8* %299, i8** @RecentXmin, align 8
  %300 = load i8*, i8** %4, align 8
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 12
  store i8* %300, i8** %302, align 8
  %303 = load i8*, i8** %5, align 8
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 11
  store i8* %303, i8** %305, align 8
  %306 = load i32, i32* %8, align 4
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 2
  store i32 %306, i32* %308, align 8
  %309 = load i32, i32* %9, align 4
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 3
  store i32 %309, i32* %311, align 4
  %312 = load i32, i32* %10, align 4
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 4
  store i32 %312, i32* %314, align 8
  %315 = call i32 @GetCurrentCommandId(i32 0)
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %317 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %316, i32 0, i32 10
  store i32 %315, i32* %317, align 8
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %318, i32 0, i32 9
  store i64 0, i64* %319, align 8
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 8
  store i64 0, i64* %321, align 8
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 5
  store i32 0, i32* %323, align 4
  %324 = load i64, i64* @old_snapshot_threshold, align 8
  %325 = icmp slt i64 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %298
  %327 = load i32, i32* @InvalidXLogRecPtr, align 4
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %329 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %328, i32 0, i32 7
  store i32 %327, i32* %329, align 8
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 6
  store i64 0, i64* %331, align 8
  br label %344

332:                                              ; preds = %298
  %333 = call i32 (...) @GetXLogInsertRecPtr()
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 7
  store i32 %333, i32* %335, align 8
  %336 = call i64 (...) @GetSnapshotCurrentTimestamp()
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 6
  store i64 %336, i64* %338, align 8
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %339, i32 0, i32 6
  %341 = load i64, i64* %340, align 8
  %342 = load i8*, i8** %4, align 8
  %343 = call i32 @MaintainOldSnapshotTimeMapping(i64 %341, i8* %342)
  br label %344

344:                                              ; preds = %332, %326
  %345 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  ret %struct.TYPE_14__* %345
}

declare dso_local i32 @Assert(i64) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @GetMaxSnapshotXidCount(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @GetMaxSnapshotSubxidCount(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i64 @TransactionIdIsNormal(i8*) #1

declare dso_local i32 @TransactionIdAdvance(i8*) #1

declare dso_local i32 @RecoveryInProgress(...) #1

declare dso_local i8* @UINT32_ACCESS_ONCE(i8*) #1

declare dso_local i64 @NormalTransactionIdPrecedes(i8*, i8*) #1

declare dso_local i32 @pg_read_barrier(...) #1

declare dso_local i32 @memcpy(i8**, i8*, i32) #1

declare dso_local i32 @KnownAssignedXidsGetAndSetXmin(i8**, i8**, i8*) #1

declare dso_local i64 @TransactionIdPrecedesOrEquals(i8*, i32) #1

declare dso_local i64 @TransactionIdIsValid(i8*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i8*, i8*) #1

declare dso_local i32 @GetCurrentCommandId(i32) #1

declare dso_local i32 @GetXLogInsertRecPtr(...) #1

declare dso_local i64 @GetSnapshotCurrentTimestamp(...) #1

declare dso_local i32 @MaintainOldSnapshotTimeMapping(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
