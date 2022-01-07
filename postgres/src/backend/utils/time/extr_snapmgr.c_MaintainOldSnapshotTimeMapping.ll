; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_MaintainOldSnapshotTimeMapping.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_MaintainOldSnapshotTimeMapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i64, i8**, i32, i8* }

@old_snapshot_threshold = common dso_local global i64 0, align 8
@oldSnapshotControl = common dso_local global %struct.TYPE_2__* null, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"MaintainOldSnapshotTimeMapping called with negative whenTaken = %ld\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"MaintainOldSnapshotTimeMapping called with xmin = %lu\00", align 1
@OldSnapshotTimeMapLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@OLD_SNAPSHOT_TIME_MAP_ENTRIES = common dso_local global i64 0, align 8
@USECS_PER_MINUTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"MaintainOldSnapshotTimeMapping called with old whenTaken = %ld\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MaintainOldSnapshotTimeMapping(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %8, align 4
  %14 = load i64, i64* @old_snapshot_threshold, align 8
  %15 = icmp sge i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @AlignTimestampToMinuteBoundary(i64 %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  %22 = call i32 @SpinLockAcquire(i32* %21)
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 6
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %6, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  store i32 1, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %2
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @TransactionIdFollows(i8* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 6
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  %48 = call i32 @SpinLockRelease(i32* %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %292

52:                                               ; preds = %45
  %53 = load i64, i64* @old_snapshot_threshold, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %292

56:                                               ; preds = %52
  %57 = load i64, i64* %3, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* @DEBUG1, align 4
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @elog(i32 %60, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i64 %61)
  br label %292

63:                                               ; preds = %56
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @TransactionIdIsNormal(i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @DEBUG1, align 4
  %69 = load i8*, i8** %4, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = call i32 @elog(i32 %68, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  br label %292

72:                                               ; preds = %63
  %73 = load i32, i32* @OldSnapshotTimeMapLock, align 4
  %74 = load i32, i32* @LW_EXCLUSIVE, align 4
  %75 = call i32 @LWLockAcquire(i32 %73, i32 %74)
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @Assert(i32 %80)
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @OLD_SNAPSHOT_TIME_MAP_ENTRIES, align 8
  %86 = icmp slt i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @Assert(i32 %87)
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @USECS_PER_MINUTE, align 4
  %93 = srem i32 %91, %92
  %94 = icmp eq i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @Assert(i32 %95)
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp sge i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @Assert(i32 %101)
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @OLD_SNAPSHOT_TIME_MAP_ENTRIES, align 8
  %107 = icmp sle i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @Assert(i32 %108)
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %72
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load i64, i64* %5, align 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  store i64 1, i64* %122, align 8
  %123 = load i8*, i8** %4, align 8
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 4
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 0
  store i8* %123, i8** %127, align 8
  br label %289

128:                                              ; preds = %72
  %129 = load i64, i64* %5, align 8
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = icmp slt i64 %129, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = load i32, i32* @OldSnapshotTimeMapLock, align 4
  %137 = call i32 @LWLockRelease(i32 %136)
  %138 = load i32, i32* @DEBUG1, align 4
  %139 = load i64, i64* %3, align 8
  %140 = call i32 @elog(i32 %138, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i64 %139)
  br label %292

141:                                              ; preds = %128
  %142 = load i64, i64* %5, align 8
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %149, 1
  %151 = load i32, i32* @USECS_PER_MINUTE, align 4
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %150, %152
  %154 = add nsw i64 %146, %153
  %155 = icmp sle i64 %142, %154
  br i1 %155, label %156, label %192

156:                                              ; preds = %141
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %5, align 8
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = sub nsw i64 %160, %164
  %166 = load i32, i32* @USECS_PER_MINUTE, align 4
  %167 = sext i32 %166 to i64
  %168 = sdiv i64 %165, %167
  %169 = add nsw i64 %159, %168
  %170 = load i64, i64* @OLD_SNAPSHOT_TIME_MAP_ENTRIES, align 8
  %171 = srem i64 %169, %170
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %9, align 4
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 4
  %175 = load i8**, i8*** %174, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = load i8*, i8** %4, align 8
  %181 = call i64 @TransactionIdPrecedes(i8* %179, i8* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %156
  %184 = load i8*, i8** %4, align 8
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 4
  %187 = load i8**, i8*** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %187, i64 %189
  store i8* %184, i8** %190, align 8
  br label %191

191:                                              ; preds = %183, %156
  br label %287

192:                                              ; preds = %141
  %193 = load i64, i64* %5, align 8
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = sext i32 %196 to i64
  %198 = sub nsw i64 %193, %197
  %199 = load i32, i32* @USECS_PER_MINUTE, align 4
  %200 = sext i32 %199 to i64
  %201 = sdiv i64 %198, %200
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %10, align 4
  %203 = load i64, i64* %5, align 8
  %204 = trunc i64 %203 to i32
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* @OLD_SNAPSHOT_TIME_MAP_ENTRIES, align 8
  %210 = icmp sge i64 %208, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %192
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  store i64 0, i64* %213, align 8
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 3
  store i64 1, i64* %215, align 8
  %216 = load i8*, i8** %4, align 8
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 4
  %219 = load i8**, i8*** %218, align 8
  %220 = getelementptr inbounds i8*, i8** %219, i64 0
  store i8* %216, i8** %220, align 8
  br label %286

221:                                              ; preds = %192
  store i32 0, i32* %11, align 4
  br label %222

222:                                              ; preds = %282, %221
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %285

226:                                              ; preds = %222
  %227 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 3
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @OLD_SNAPSHOT_TIME_MAP_ENTRIES, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %259

232:                                              ; preds = %226
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %12, align 4
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = load i64, i64* @OLD_SNAPSHOT_TIME_MAP_ENTRIES, align 8
  %240 = sub nsw i64 %239, 1
  %241 = icmp eq i64 %238, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %232
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 1
  store i64 0, i64* %244, align 8
  br label %251

245:                                              ; preds = %232
  %246 = load i32, i32* %12, align 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 1
  store i64 %248, i64* %250, align 8
  br label %251

251:                                              ; preds = %245, %242
  %252 = load i8*, i8** %4, align 8
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 4
  %255 = load i8**, i8*** %254, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8*, i8** %255, i64 %257
  store i8* %252, i8** %258, align 8
  br label %281

259:                                              ; preds = %226
  %260 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = add nsw i64 %262, %265
  %267 = load i64, i64* @OLD_SNAPSHOT_TIME_MAP_ENTRIES, align 8
  %268 = srem i64 %266, %267
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %13, align 4
  %270 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 3
  %272 = load i64, i64* %271, align 8
  %273 = add nsw i64 %272, 1
  store i64 %273, i64* %271, align 8
  %274 = load i8*, i8** %4, align 8
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** @oldSnapshotControl, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 4
  %277 = load i8**, i8*** %276, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8*, i8** %277, i64 %279
  store i8* %274, i8** %280, align 8
  br label %281

281:                                              ; preds = %259, %251
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %11, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %11, align 4
  br label %222

285:                                              ; preds = %222
  br label %286

286:                                              ; preds = %285, %211
  br label %287

287:                                              ; preds = %286, %191
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %288, %114
  %290 = load i32, i32* @OldSnapshotTimeMapLock, align 4
  %291 = call i32 @LWLockRelease(i32 %290)
  br label %292

292:                                              ; preds = %289, %135, %67, %59, %55, %51
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @AlignTimestampToMinuteBoundary(i64) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i64 @TransactionIdFollows(i8*, i8*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @TransactionIdIsNormal(i8*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
