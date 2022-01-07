; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_delete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_54__ = type { %struct.TYPE_50__* }
%struct.TYPE_50__ = type { i64, i64 }
%struct.TYPE_53__ = type { i32, i32, i32 }
%struct.TYPE_56__ = type { i32, %struct.TYPE_55__*, i32, i32 }
%struct.TYPE_55__ = type { i32, i32, i32 }
%struct.TYPE_57__ = type { i32, %struct.TYPE_49__* }
%struct.TYPE_49__ = type { i32, i32, i32 }
%struct.TYPE_52__ = type { i32, i64, i32, i32 }
%struct.TYPE_51__ = type { i32, i32, i32 }

@InvalidBuffer = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TRANSACTION_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot delete tuples during a parallel operation\00", align 1
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@TM_Invisible = common dso_local global i64 0, align 8
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"attempted to delete invisible tuple\00", align 1
@TM_BeingModified = common dso_local global i64 0, align 8
@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@LockTupleExclusive = common dso_local global i32 0, align 4
@LockWaitBlock = common dso_local global i32 0, align 4
@MultiXactStatusUpdate = common dso_local global i32 0, align 4
@XLTW_Delete = common dso_local global i32 0, align 4
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@TM_Ok = common dso_local global i64 0, align 8
@TM_Updated = common dso_local global i64 0, align 8
@TM_Deleted = common dso_local global i64 0, align 8
@InvalidSnapshot = common dso_local global i32 0, align 4
@TM_SelfModified = common dso_local global i64 0, align 8
@InvalidCommandId = common dso_local global i32 0, align 4
@VISIBILITYMAP_VALID_BITS = common dso_local global i32 0, align 4
@HEAP_XMAX_BITS = common dso_local global i32 0, align 4
@HEAP_MOVED = common dso_local global i32 0, align 4
@HEAP_KEYS_UPDATED = common dso_local global i32 0, align 4
@XLH_DELETE_ALL_VISIBLE_CLEARED = common dso_local global i32 0, align 4
@XLH_DELETE_IS_PARTITION_MOVE = common dso_local global i32 0, align 4
@REPLICA_IDENTITY_FULL = common dso_local global i64 0, align 8
@XLH_DELETE_CONTAINS_OLD_TUPLE = common dso_local global i32 0, align 4
@XLH_DELETE_CONTAINS_OLD_KEY = common dso_local global i32 0, align 4
@SizeOfHeapDelete = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@SizeOfHeapHeader = common dso_local global i32 0, align 4
@SizeofHeapTupleHeader = common dso_local global i32 0, align 4
@XLOG_INCLUDE_ORIGIN = common dso_local global i32 0, align 4
@RM_HEAP_ID = common dso_local global i32 0, align 4
@XLOG_HEAP_DELETE = common dso_local global i32 0, align 4
@RELKIND_RELATION = common dso_local global i64 0, align 8
@RELKIND_MATVIEW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @heap_delete(%struct.TYPE_54__* %0, i32* %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_53__* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_54__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_53__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_56__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_57__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_52__, align 8
  %36 = alloca %struct.TYPE_51__, align 4
  %37 = alloca i32, align 4
  store %struct.TYPE_54__* %0, %struct.TYPE_54__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_53__* %5, %struct.TYPE_53__** %14, align 8
  store i32 %6, i32* %15, align 4
  %38 = call i64 (...) @GetCurrentTransactionId()
  store i64 %38, i64* %17, align 8
  %39 = load i64, i64* @InvalidBuffer, align 8
  store i64 %39, i64* %23, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %29, align 4
  store %struct.TYPE_57__* null, %struct.TYPE_57__** %30, align 8
  store i32 0, i32* %31, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @ItemPointerIsValid(i32* %40)
  %42 = call i32 @Assert(i32 %41)
  %43 = call i64 (...) @IsInParallelMode()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %7
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* @ERRCODE_INVALID_TRANSACTION_STATE, align 4
  %48 = call i32 @errcode(i32 %47)
  %49 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @ereport(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %7
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @ItemPointerGetBlockNumber(i32* %52)
  store i32 %53, i32* %21, align 4
  %54 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %55 = load i32, i32* %21, align 4
  %56 = call i64 @ReadBuffer(%struct.TYPE_54__* %54, i32 %55)
  store i64 %56, i64* %22, align 8
  %57 = load i64, i64* %22, align 8
  %58 = call i32 @BufferGetPage(i64 %57)
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %20, align 4
  %60 = call i64 @PageIsAllVisible(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %64 = load i32, i32* %21, align 4
  %65 = call i32 @visibilitymap_pin(%struct.TYPE_54__* %63, i32 %64, i64* %23)
  br label %66

66:                                               ; preds = %62, %51
  %67 = load i64, i64* %22, align 8
  %68 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %69 = call i32 @LockBuffer(i64 %67, i32 %68)
  %70 = load i64, i64* %23, align 8
  %71 = load i64, i64* @InvalidBuffer, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load i32, i32* %20, align 4
  %75 = call i64 @PageIsAllVisible(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load i64, i64* %22, align 8
  %79 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %80 = call i32 @LockBuffer(i64 %78, i32 %79)
  %81 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %82 = load i32, i32* %21, align 4
  %83 = call i32 @visibilitymap_pin(%struct.TYPE_54__* %81, i32 %82, i64* %23)
  %84 = load i64, i64* %22, align 8
  %85 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %86 = call i32 @LockBuffer(i64 %84, i32 %85)
  br label %87

87:                                               ; preds = %77, %73, %66
  %88 = load i32, i32* %20, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @ItemPointerGetOffsetNumber(i32* %89)
  %91 = call i32 @PageGetItemId(i32 %88, i32 %90)
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = call i32 @ItemIdIsNormal(i32 %92)
  %94 = call i32 @Assert(i32 %93)
  %95 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %96 = call i32 @RelationGetRelid(%struct.TYPE_54__* %95)
  %97 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 3
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i64 @PageGetItem(i32 %98, i32 %99)
  %101 = inttoptr i64 %100 to %struct.TYPE_55__*
  %102 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  store %struct.TYPE_55__* %101, %struct.TYPE_55__** %102, align 8
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @ItemIdGetLength(i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 2
  store i32 %104, i32* %105, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 0
  store i32 %107, i32* %108, align 8
  br label %109

109:                                              ; preds = %226, %188, %87
  %110 = load i32, i32* %11, align 4
  %111 = load i64, i64* %22, align 8
  %112 = call i64 @HeapTupleSatisfiesUpdate(%struct.TYPE_56__* %19, i32 %110, i64 %111)
  store i64 %112, i64* %16, align 8
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* @TM_Invisible, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %109
  %117 = load i64, i64* %22, align 8
  %118 = call i32 @UnlockReleaseBuffer(i64 %117)
  %119 = load i32, i32* @ERROR, align 4
  %120 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %121 = call i32 @errcode(i32 %120)
  %122 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %123 = call i32 @ereport(i32 %119, i32 %122)
  br label %275

124:                                              ; preds = %109
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* @TM_BeingModified, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %274

128:                                              ; preds = %124
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %274

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %133 = load %struct.TYPE_55__*, %struct.TYPE_55__** %132, align 8
  %134 = call i64 @HeapTupleHeaderGetRawXmax(%struct.TYPE_55__* %133)
  store i64 %134, i64* %32, align 8
  %135 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %136 = load %struct.TYPE_55__*, %struct.TYPE_55__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %33, align 4
  %139 = load i32, i32* %33, align 4
  %140 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %191

143:                                              ; preds = %131
  store i32 0, i32* %34, align 4
  %144 = load i64, i64* %32, align 8
  %145 = trunc i64 %144 to i32
  %146 = load i32, i32* %33, align 4
  %147 = load i32, i32* @LockTupleExclusive, align 4
  %148 = call i64 @DoesMultiXactIdConflict(i32 %145, i32 %146, i32 %147, i32* %34)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %190

150:                                              ; preds = %143
  %151 = load i64, i64* %22, align 8
  %152 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %153 = call i32 @LockBuffer(i64 %151, i32 %152)
  %154 = load i32, i32* %34, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %150
  %157 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 0
  %159 = load i32, i32* @LockTupleExclusive, align 4
  %160 = load i32, i32* @LockWaitBlock, align 4
  %161 = call i32 @heap_acquire_tuplock(%struct.TYPE_54__* %157, i32* %158, i32 %159, i32 %160, i32* %27)
  br label %162

162:                                              ; preds = %156, %150
  %163 = load i64, i64* %32, align 8
  %164 = trunc i64 %163 to i32
  %165 = load i32, i32* @MultiXactStatusUpdate, align 4
  %166 = load i32, i32* %33, align 4
  %167 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 0
  %169 = load i32, i32* @XLTW_Delete, align 4
  %170 = call i32 @MultiXactIdWait(i32 %164, i32 %165, i32 %166, %struct.TYPE_54__* %167, i32* %168, i32 %169, i32* null)
  %171 = load i64, i64* %22, align 8
  %172 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %173 = call i32 @LockBuffer(i64 %171, i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %175 = load %struct.TYPE_55__*, %struct.TYPE_55__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %33, align 4
  %179 = call i64 @xmax_infomask_changed(i32 %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %162
  %182 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %183 = load %struct.TYPE_55__*, %struct.TYPE_55__** %182, align 8
  %184 = call i64 @HeapTupleHeaderGetRawXmax(%struct.TYPE_55__* %183)
  %185 = load i64, i64* %32, align 8
  %186 = call i32 @TransactionIdEquals(i64 %184, i64 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %181, %162
  br label %109

189:                                              ; preds = %181
  br label %190

190:                                              ; preds = %189, %143
  br label %234

191:                                              ; preds = %131
  %192 = load i64, i64* %32, align 8
  %193 = call i32 @TransactionIdIsCurrentTransactionId(i64 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %233, label %195

195:                                              ; preds = %191
  %196 = load i64, i64* %22, align 8
  %197 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %198 = call i32 @LockBuffer(i64 %196, i32 %197)
  %199 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 0
  %201 = load i32, i32* @LockTupleExclusive, align 4
  %202 = load i32, i32* @LockWaitBlock, align 4
  %203 = call i32 @heap_acquire_tuplock(%struct.TYPE_54__* %199, i32* %200, i32 %201, i32 %202, i32* %27)
  %204 = load i64, i64* %32, align 8
  %205 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 0
  %207 = load i32, i32* @XLTW_Delete, align 4
  %208 = call i32 @XactLockTableWait(i64 %204, %struct.TYPE_54__* %205, i32* %206, i32 %207)
  %209 = load i64, i64* %22, align 8
  %210 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %211 = call i32 @LockBuffer(i64 %209, i32 %210)
  %212 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %213 = load %struct.TYPE_55__*, %struct.TYPE_55__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %33, align 4
  %217 = call i64 @xmax_infomask_changed(i32 %215, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %226, label %219

219:                                              ; preds = %195
  %220 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %221 = load %struct.TYPE_55__*, %struct.TYPE_55__** %220, align 8
  %222 = call i64 @HeapTupleHeaderGetRawXmax(%struct.TYPE_55__* %221)
  %223 = load i64, i64* %32, align 8
  %224 = call i32 @TransactionIdEquals(i64 %222, i64 %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %219, %195
  br label %109

227:                                              ; preds = %219
  %228 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %229 = load %struct.TYPE_55__*, %struct.TYPE_55__** %228, align 8
  %230 = load i64, i64* %22, align 8
  %231 = load i64, i64* %32, align 8
  %232 = call i32 @UpdateXmaxHintBits(%struct.TYPE_55__* %229, i64 %230, i64 %231)
  br label %233

233:                                              ; preds = %227, %191
  br label %234

234:                                              ; preds = %233, %190
  %235 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %236 = load %struct.TYPE_55__*, %struct.TYPE_55__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %254, label %242

242:                                              ; preds = %234
  %243 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %244 = load %struct.TYPE_55__*, %struct.TYPE_55__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %251 = load %struct.TYPE_55__*, %struct.TYPE_55__** %250, align 8
  %252 = call i64 @HeapTupleHeaderIsOnlyLocked(%struct.TYPE_55__* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %249, %242, %234
  %255 = load i64, i64* @TM_Ok, align 8
  store i64 %255, i64* %16, align 8
  br label %273

256:                                              ; preds = %249
  %257 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %259 = load %struct.TYPE_55__*, %struct.TYPE_55__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %259, i32 0, i32 2
  %261 = call i32 @ItemPointerEquals(i32* %257, i32* %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %256
  %264 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %265 = load %struct.TYPE_55__*, %struct.TYPE_55__** %264, align 8
  %266 = call i64 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_55__* %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %263, %256
  %269 = load i64, i64* @TM_Updated, align 8
  store i64 %269, i64* %16, align 8
  br label %272

270:                                              ; preds = %263
  %271 = load i64, i64* @TM_Deleted, align 8
  store i64 %271, i64* %16, align 8
  br label %272

272:                                              ; preds = %270, %268
  br label %273

273:                                              ; preds = %272, %254
  br label %274

274:                                              ; preds = %273, %128, %124
  br label %275

275:                                              ; preds = %274, %116
  %276 = load i32, i32* %12, align 4
  %277 = load i32, i32* @InvalidSnapshot, align 4
  %278 = icmp ne i32 %276, %277
  br i1 %278, label %279, label %291

279:                                              ; preds = %275
  %280 = load i64, i64* %16, align 8
  %281 = load i64, i64* @TM_Ok, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %291

283:                                              ; preds = %279
  %284 = load i32, i32* %12, align 4
  %285 = load i64, i64* %22, align 8
  %286 = call i32 @HeapTupleSatisfiesVisibility(%struct.TYPE_56__* %19, i32 %284, i64 %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %283
  %289 = load i64, i64* @TM_Updated, align 8
  store i64 %289, i64* %16, align 8
  br label %290

290:                                              ; preds = %288, %283
  br label %291

291:                                              ; preds = %290, %279, %275
  %292 = load i64, i64* %16, align 8
  %293 = load i64, i64* @TM_Ok, align 8
  %294 = icmp ne i64 %292, %293
  br i1 %294, label %295, label %383

295:                                              ; preds = %291
  %296 = load i64, i64* %16, align 8
  %297 = load i64, i64* @TM_SelfModified, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %311, label %299

299:                                              ; preds = %295
  %300 = load i64, i64* %16, align 8
  %301 = load i64, i64* @TM_Updated, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %311, label %303

303:                                              ; preds = %299
  %304 = load i64, i64* %16, align 8
  %305 = load i64, i64* @TM_Deleted, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %311, label %307

307:                                              ; preds = %303
  %308 = load i64, i64* %16, align 8
  %309 = load i64, i64* @TM_BeingModified, align 8
  %310 = icmp eq i64 %308, %309
  br label %311

311:                                              ; preds = %307, %303, %299, %295
  %312 = phi i1 [ true, %303 ], [ true, %299 ], [ true, %295 ], [ %310, %307 ]
  %313 = zext i1 %312 to i32
  %314 = call i32 @Assert(i32 %313)
  %315 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %316 = load %struct.TYPE_55__*, %struct.TYPE_55__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  %322 = xor i1 %321, true
  %323 = zext i1 %322 to i32
  %324 = call i32 @Assert(i32 %323)
  %325 = load i64, i64* %16, align 8
  %326 = load i64, i64* @TM_Updated, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %336, label %328

328:                                              ; preds = %311
  %329 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %331 = load %struct.TYPE_55__*, %struct.TYPE_55__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %331, i32 0, i32 2
  %333 = call i32 @ItemPointerEquals(i32* %329, i32* %332)
  %334 = icmp ne i32 %333, 0
  %335 = xor i1 %334, true
  br label %336

336:                                              ; preds = %328, %311
  %337 = phi i1 [ true, %311 ], [ %335, %328 ]
  %338 = zext i1 %337 to i32
  %339 = call i32 @Assert(i32 %338)
  %340 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %341 = load %struct.TYPE_55__*, %struct.TYPE_55__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.TYPE_53__*, %struct.TYPE_53__** %14, align 8
  %345 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %344, i32 0, i32 2
  store i32 %343, i32* %345, align 4
  %346 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %347 = load %struct.TYPE_55__*, %struct.TYPE_55__** %346, align 8
  %348 = call i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_55__* %347)
  %349 = load %struct.TYPE_53__*, %struct.TYPE_53__** %14, align 8
  %350 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %349, i32 0, i32 1
  store i32 %348, i32* %350, align 4
  %351 = load i64, i64* %16, align 8
  %352 = load i64, i64* @TM_SelfModified, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %360

354:                                              ; preds = %336
  %355 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %356 = load %struct.TYPE_55__*, %struct.TYPE_55__** %355, align 8
  %357 = call i32 @HeapTupleHeaderGetCmax(%struct.TYPE_55__* %356)
  %358 = load %struct.TYPE_53__*, %struct.TYPE_53__** %14, align 8
  %359 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %358, i32 0, i32 0
  store i32 %357, i32* %359, align 4
  br label %364

360:                                              ; preds = %336
  %361 = load i32, i32* @InvalidCommandId, align 4
  %362 = load %struct.TYPE_53__*, %struct.TYPE_53__** %14, align 8
  %363 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %362, i32 0, i32 0
  store i32 %361, i32* %363, align 4
  br label %364

364:                                              ; preds = %360, %354
  %365 = load i64, i64* %22, align 8
  %366 = call i32 @UnlockReleaseBuffer(i64 %365)
  %367 = load i32, i32* %27, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %374

369:                                              ; preds = %364
  %370 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %371 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 0
  %372 = load i32, i32* @LockTupleExclusive, align 4
  %373 = call i32 @UnlockTupleTuplock(%struct.TYPE_54__* %370, i32* %371, i32 %372)
  br label %374

374:                                              ; preds = %369, %364
  %375 = load i64, i64* %23, align 8
  %376 = load i64, i64* @InvalidBuffer, align 8
  %377 = icmp ne i64 %375, %376
  br i1 %377, label %378, label %381

378:                                              ; preds = %374
  %379 = load i64, i64* %23, align 8
  %380 = call i32 @ReleaseBuffer(i64 %379)
  br label %381

381:                                              ; preds = %378, %374
  %382 = load i64, i64* %16, align 8
  store i64 %382, i64* %8, align 8
  br label %661

383:                                              ; preds = %291
  %384 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %385 = load i64, i64* %22, align 8
  %386 = call i32 @CheckForSerializableConflictIn(%struct.TYPE_54__* %384, %struct.TYPE_56__* %19, i64 %385)
  %387 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %388 = load %struct.TYPE_55__*, %struct.TYPE_55__** %387, align 8
  %389 = call i32 @HeapTupleHeaderAdjustCmax(%struct.TYPE_55__* %388, i32* %11, i32* %28)
  %390 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %391 = call %struct.TYPE_57__* @ExtractReplicaIdentity(%struct.TYPE_54__* %390, %struct.TYPE_56__* %19, i32 1, i32* %31)
  store %struct.TYPE_57__* %391, %struct.TYPE_57__** %30, align 8
  %392 = call i32 (...) @MultiXactIdSetOldestMember()
  %393 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %394 = load %struct.TYPE_55__*, %struct.TYPE_55__** %393, align 8
  %395 = call i64 @HeapTupleHeaderGetRawXmax(%struct.TYPE_55__* %394)
  %396 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %397 = load %struct.TYPE_55__*, %struct.TYPE_55__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %401 = load %struct.TYPE_55__*, %struct.TYPE_55__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load i64, i64* %17, align 8
  %405 = load i32, i32* @LockTupleExclusive, align 4
  %406 = call i32 @compute_new_xmax_infomask(i64 %395, i32 %399, i32 %403, i64 %404, i32 %405, i32 1, i64* %24, i32* %25, i32* %26)
  %407 = call i32 (...) @START_CRIT_SECTION()
  %408 = load i32, i32* %20, align 4
  %409 = load i64, i64* %17, align 8
  %410 = call i32 @PageSetPrunable(i32 %408, i64 %409)
  %411 = load i32, i32* %20, align 4
  %412 = call i64 @PageIsAllVisible(i32 %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %423

414:                                              ; preds = %383
  store i32 1, i32* %29, align 4
  %415 = load i32, i32* %20, align 4
  %416 = call i32 @PageClearAllVisible(i32 %415)
  %417 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %418 = load i64, i64* %22, align 8
  %419 = call i32 @BufferGetBlockNumber(i64 %418)
  %420 = load i64, i64* %23, align 8
  %421 = load i32, i32* @VISIBILITYMAP_VALID_BITS, align 4
  %422 = call i32 @visibilitymap_clear(%struct.TYPE_54__* %417, i32 %419, i64 %420, i32 %421)
  br label %423

423:                                              ; preds = %414, %383
  %424 = load i32, i32* @HEAP_XMAX_BITS, align 4
  %425 = load i32, i32* @HEAP_MOVED, align 4
  %426 = or i32 %424, %425
  %427 = xor i32 %426, -1
  %428 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %429 = load %struct.TYPE_55__*, %struct.TYPE_55__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = and i32 %431, %427
  store i32 %432, i32* %430, align 4
  %433 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %434 = xor i32 %433, -1
  %435 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %436 = load %struct.TYPE_55__*, %struct.TYPE_55__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = and i32 %438, %434
  store i32 %439, i32* %437, align 4
  %440 = load i32, i32* %25, align 4
  %441 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %442 = load %struct.TYPE_55__*, %struct.TYPE_55__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  %445 = or i32 %444, %440
  store i32 %445, i32* %443, align 4
  %446 = load i32, i32* %26, align 4
  %447 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %448 = load %struct.TYPE_55__*, %struct.TYPE_55__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 4
  %451 = or i32 %450, %446
  store i32 %451, i32* %449, align 4
  %452 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %453 = load %struct.TYPE_55__*, %struct.TYPE_55__** %452, align 8
  %454 = call i32 @HeapTupleHeaderClearHotUpdated(%struct.TYPE_55__* %453)
  %455 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %456 = load %struct.TYPE_55__*, %struct.TYPE_55__** %455, align 8
  %457 = load i64, i64* %24, align 8
  %458 = call i32 @HeapTupleHeaderSetXmax(%struct.TYPE_55__* %456, i64 %457)
  %459 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %460 = load %struct.TYPE_55__*, %struct.TYPE_55__** %459, align 8
  %461 = load i32, i32* %11, align 4
  %462 = load i32, i32* %28, align 4
  %463 = call i32 @HeapTupleHeaderSetCmax(%struct.TYPE_55__* %460, i32 %461, i32 %462)
  %464 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %467 = load %struct.TYPE_55__*, %struct.TYPE_55__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %467, i32 0, i32 2
  store i32 %465, i32* %468, align 4
  %469 = load i32, i32* %15, align 4
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %475

471:                                              ; preds = %423
  %472 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %473 = load %struct.TYPE_55__*, %struct.TYPE_55__** %472, align 8
  %474 = call i32 @HeapTupleHeaderSetMovedPartitions(%struct.TYPE_55__* %473)
  br label %475

475:                                              ; preds = %471, %423
  %476 = load i64, i64* %22, align 8
  %477 = call i32 @MarkBufferDirty(i64 %476)
  %478 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %479 = call i64 @RelationNeedsWAL(%struct.TYPE_54__* %478)
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %596

481:                                              ; preds = %475
  %482 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %483 = call i64 @RelationIsAccessibleInLogicalDecoding(%struct.TYPE_54__* %482)
  %484 = icmp ne i64 %483, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %481
  %486 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %487 = call i32 @log_heap_new_cid(%struct.TYPE_54__* %486, %struct.TYPE_56__* %19)
  br label %488

488:                                              ; preds = %485, %481
  %489 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %35, i32 0, i32 0
  store i32 0, i32* %489, align 8
  %490 = load i32, i32* %29, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %497

492:                                              ; preds = %488
  %493 = load i32, i32* @XLH_DELETE_ALL_VISIBLE_CLEARED, align 4
  %494 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %35, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = or i32 %495, %493
  store i32 %496, i32* %494, align 8
  br label %497

497:                                              ; preds = %492, %488
  %498 = load i32, i32* %15, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %505

500:                                              ; preds = %497
  %501 = load i32, i32* @XLH_DELETE_IS_PARTITION_MOVE, align 4
  %502 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %35, i32 0, i32 0
  %503 = load i32, i32* %502, align 8
  %504 = or i32 %503, %501
  store i32 %504, i32* %502, align 8
  br label %505

505:                                              ; preds = %500, %497
  %506 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %507 = load %struct.TYPE_55__*, %struct.TYPE_55__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 4
  %510 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 1
  %511 = load %struct.TYPE_55__*, %struct.TYPE_55__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = call i32 @compute_infobits(i32 %509, i32 %513)
  %515 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %35, i32 0, i32 3
  store i32 %514, i32* %515, align 4
  %516 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 0
  %517 = call i32 @ItemPointerGetOffsetNumber(i32* %516)
  %518 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %35, i32 0, i32 2
  store i32 %517, i32* %518, align 8
  %519 = load i64, i64* %24, align 8
  %520 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %35, i32 0, i32 1
  store i64 %519, i64* %520, align 8
  %521 = load %struct.TYPE_57__*, %struct.TYPE_57__** %30, align 8
  %522 = icmp ne %struct.TYPE_57__* %521, null
  br i1 %522, label %523, label %542

523:                                              ; preds = %505
  %524 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %525 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %524, i32 0, i32 0
  %526 = load %struct.TYPE_50__*, %struct.TYPE_50__** %525, align 8
  %527 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %526, i32 0, i32 0
  %528 = load i64, i64* %527, align 8
  %529 = load i64, i64* @REPLICA_IDENTITY_FULL, align 8
  %530 = icmp eq i64 %528, %529
  br i1 %530, label %531, label %536

531:                                              ; preds = %523
  %532 = load i32, i32* @XLH_DELETE_CONTAINS_OLD_TUPLE, align 4
  %533 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %35, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = or i32 %534, %532
  store i32 %535, i32* %533, align 8
  br label %541

536:                                              ; preds = %523
  %537 = load i32, i32* @XLH_DELETE_CONTAINS_OLD_KEY, align 4
  %538 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %35, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  %540 = or i32 %539, %537
  store i32 %540, i32* %538, align 8
  br label %541

541:                                              ; preds = %536, %531
  br label %542

542:                                              ; preds = %541, %505
  %543 = call i32 (...) @XLogBeginInsert()
  %544 = bitcast %struct.TYPE_52__* %35 to i8*
  %545 = load i32, i32* @SizeOfHeapDelete, align 4
  %546 = call i32 @XLogRegisterData(i8* %544, i32 %545)
  %547 = load i64, i64* %22, align 8
  %548 = load i32, i32* @REGBUF_STANDARD, align 4
  %549 = call i32 @XLogRegisterBuffer(i32 0, i64 %547, i32 %548)
  %550 = load %struct.TYPE_57__*, %struct.TYPE_57__** %30, align 8
  %551 = icmp ne %struct.TYPE_57__* %550, null
  br i1 %551, label %552, label %587

552:                                              ; preds = %542
  %553 = load %struct.TYPE_57__*, %struct.TYPE_57__** %30, align 8
  %554 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %553, i32 0, i32 1
  %555 = load %struct.TYPE_49__*, %struct.TYPE_49__** %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %555, i32 0, i32 2
  %557 = load i32, i32* %556, align 4
  %558 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %36, i32 0, i32 2
  store i32 %557, i32* %558, align 4
  %559 = load %struct.TYPE_57__*, %struct.TYPE_57__** %30, align 8
  %560 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %559, i32 0, i32 1
  %561 = load %struct.TYPE_49__*, %struct.TYPE_49__** %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %561, i32 0, i32 1
  %563 = load i32, i32* %562, align 4
  %564 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %36, i32 0, i32 1
  store i32 %563, i32* %564, align 4
  %565 = load %struct.TYPE_57__*, %struct.TYPE_57__** %30, align 8
  %566 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %565, i32 0, i32 1
  %567 = load %struct.TYPE_49__*, %struct.TYPE_49__** %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 4
  %570 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %36, i32 0, i32 0
  store i32 %569, i32* %570, align 4
  %571 = bitcast %struct.TYPE_51__* %36 to i8*
  %572 = load i32, i32* @SizeOfHeapHeader, align 4
  %573 = call i32 @XLogRegisterData(i8* %571, i32 %572)
  %574 = load %struct.TYPE_57__*, %struct.TYPE_57__** %30, align 8
  %575 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %574, i32 0, i32 1
  %576 = load %struct.TYPE_49__*, %struct.TYPE_49__** %575, align 8
  %577 = bitcast %struct.TYPE_49__* %576 to i8*
  %578 = load i32, i32* @SizeofHeapTupleHeader, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i8, i8* %577, i64 %579
  %581 = load %struct.TYPE_57__*, %struct.TYPE_57__** %30, align 8
  %582 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = load i32, i32* @SizeofHeapTupleHeader, align 4
  %585 = sub nsw i32 %583, %584
  %586 = call i32 @XLogRegisterData(i8* %580, i32 %585)
  br label %587

587:                                              ; preds = %552, %542
  %588 = load i32, i32* @XLOG_INCLUDE_ORIGIN, align 4
  %589 = call i32 @XLogSetRecordFlags(i32 %588)
  %590 = load i32, i32* @RM_HEAP_ID, align 4
  %591 = load i32, i32* @XLOG_HEAP_DELETE, align 4
  %592 = call i32 @XLogInsert(i32 %590, i32 %591)
  store i32 %592, i32* %37, align 4
  %593 = load i32, i32* %20, align 4
  %594 = load i32, i32* %37, align 4
  %595 = call i32 @PageSetLSN(i32 %593, i32 %594)
  br label %596

596:                                              ; preds = %587, %475
  %597 = call i32 (...) @END_CRIT_SECTION()
  %598 = load i64, i64* %22, align 8
  %599 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %600 = call i32 @LockBuffer(i64 %598, i32 %599)
  %601 = load i64, i64* %23, align 8
  %602 = load i64, i64* @InvalidBuffer, align 8
  %603 = icmp ne i64 %601, %602
  br i1 %603, label %604, label %607

604:                                              ; preds = %596
  %605 = load i64, i64* %23, align 8
  %606 = call i32 @ReleaseBuffer(i64 %605)
  br label %607

607:                                              ; preds = %604, %596
  %608 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %609 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %608, i32 0, i32 0
  %610 = load %struct.TYPE_50__*, %struct.TYPE_50__** %609, align 8
  %611 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %610, i32 0, i32 1
  %612 = load i64, i64* %611, align 8
  %613 = load i64, i64* @RELKIND_RELATION, align 8
  %614 = icmp ne i64 %612, %613
  br i1 %614, label %615, label %629

615:                                              ; preds = %607
  %616 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %617 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %616, i32 0, i32 0
  %618 = load %struct.TYPE_50__*, %struct.TYPE_50__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %618, i32 0, i32 1
  %620 = load i64, i64* %619, align 8
  %621 = load i64, i64* @RELKIND_MATVIEW, align 8
  %622 = icmp ne i64 %620, %621
  br i1 %622, label %623, label %629

623:                                              ; preds = %615
  %624 = call i64 @HeapTupleHasExternal(%struct.TYPE_56__* %19)
  %625 = icmp ne i64 %624, 0
  %626 = xor i1 %625, true
  %627 = zext i1 %626 to i32
  %628 = call i32 @Assert(i32 %627)
  br label %636

629:                                              ; preds = %615, %607
  %630 = call i64 @HeapTupleHasExternal(%struct.TYPE_56__* %19)
  %631 = icmp ne i64 %630, 0
  br i1 %631, label %632, label %635

632:                                              ; preds = %629
  %633 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %634 = call i32 @heap_toast_delete(%struct.TYPE_54__* %633, %struct.TYPE_56__* %19, i32 0)
  br label %635

635:                                              ; preds = %632, %629
  br label %636

636:                                              ; preds = %635, %623
  %637 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %638 = call i32 @CacheInvalidateHeapTuple(%struct.TYPE_54__* %637, %struct.TYPE_56__* %19, i32* null)
  %639 = load i64, i64* %22, align 8
  %640 = call i32 @ReleaseBuffer(i64 %639)
  %641 = load i32, i32* %27, align 4
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %648

643:                                              ; preds = %636
  %644 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %645 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %19, i32 0, i32 0
  %646 = load i32, i32* @LockTupleExclusive, align 4
  %647 = call i32 @UnlockTupleTuplock(%struct.TYPE_54__* %644, i32* %645, i32 %646)
  br label %648

648:                                              ; preds = %643, %636
  %649 = load %struct.TYPE_54__*, %struct.TYPE_54__** %9, align 8
  %650 = call i32 @pgstat_count_heap_delete(%struct.TYPE_54__* %649)
  %651 = load %struct.TYPE_57__*, %struct.TYPE_57__** %30, align 8
  %652 = icmp ne %struct.TYPE_57__* %651, null
  br i1 %652, label %653, label %659

653:                                              ; preds = %648
  %654 = load i32, i32* %31, align 4
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %659

656:                                              ; preds = %653
  %657 = load %struct.TYPE_57__*, %struct.TYPE_57__** %30, align 8
  %658 = call i32 @heap_freetuple(%struct.TYPE_57__* %657)
  br label %659

659:                                              ; preds = %656, %653, %648
  %660 = load i64, i64* @TM_Ok, align 8
  store i64 %660, i64* %8, align 8
  br label %661

661:                                              ; preds = %659, %381
  %662 = load i64, i64* %8, align 8
  ret i64 %662
}

declare dso_local i64 @GetCurrentTransactionId(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @ReadBuffer(%struct.TYPE_54__*, i32) #1

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i64 @PageIsAllVisible(i32) #1

declare dso_local i32 @visibilitymap_pin(%struct.TYPE_54__*, i32, i64*) #1

declare dso_local i32 @LockBuffer(i64, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @ItemIdIsNormal(i32) #1

declare dso_local i32 @RelationGetRelid(%struct.TYPE_54__*) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @ItemIdGetLength(i32) #1

declare dso_local i64 @HeapTupleSatisfiesUpdate(%struct.TYPE_56__*, i32, i64) #1

declare dso_local i32 @UnlockReleaseBuffer(i64) #1

declare dso_local i64 @HeapTupleHeaderGetRawXmax(%struct.TYPE_55__*) #1

declare dso_local i64 @DoesMultiXactIdConflict(i32, i32, i32, i32*) #1

declare dso_local i32 @heap_acquire_tuplock(%struct.TYPE_54__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @MultiXactIdWait(i32, i32, i32, %struct.TYPE_54__*, i32*, i32, i32*) #1

declare dso_local i64 @xmax_infomask_changed(i32, i32) #1

declare dso_local i32 @TransactionIdEquals(i64, i64) #1

declare dso_local i32 @TransactionIdIsCurrentTransactionId(i64) #1

declare dso_local i32 @XactLockTableWait(i64, %struct.TYPE_54__*, i32*, i32) #1

declare dso_local i32 @UpdateXmaxHintBits(%struct.TYPE_55__*, i64, i64) #1

declare dso_local i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i64 @HeapTupleHeaderIsOnlyLocked(%struct.TYPE_55__*) #1

declare dso_local i32 @ItemPointerEquals(i32*, i32*) #1

declare dso_local i64 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_55__*) #1

declare dso_local i32 @HeapTupleSatisfiesVisibility(%struct.TYPE_56__*, i32, i64) #1

declare dso_local i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_55__*) #1

declare dso_local i32 @HeapTupleHeaderGetCmax(%struct.TYPE_55__*) #1

declare dso_local i32 @UnlockTupleTuplock(%struct.TYPE_54__*, i32*, i32) #1

declare dso_local i32 @ReleaseBuffer(i64) #1

declare dso_local i32 @CheckForSerializableConflictIn(%struct.TYPE_54__*, %struct.TYPE_56__*, i64) #1

declare dso_local i32 @HeapTupleHeaderAdjustCmax(%struct.TYPE_55__*, i32*, i32*) #1

declare dso_local %struct.TYPE_57__* @ExtractReplicaIdentity(%struct.TYPE_54__*, %struct.TYPE_56__*, i32, i32*) #1

declare dso_local i32 @MultiXactIdSetOldestMember(...) #1

declare dso_local i32 @compute_new_xmax_infomask(i64, i32, i32, i64, i32, i32, i64*, i32*, i32*) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @PageSetPrunable(i32, i64) #1

declare dso_local i32 @PageClearAllVisible(i32) #1

declare dso_local i32 @visibilitymap_clear(%struct.TYPE_54__*, i32, i64, i32) #1

declare dso_local i32 @BufferGetBlockNumber(i64) #1

declare dso_local i32 @HeapTupleHeaderClearHotUpdated(%struct.TYPE_55__*) #1

declare dso_local i32 @HeapTupleHeaderSetXmax(%struct.TYPE_55__*, i64) #1

declare dso_local i32 @HeapTupleHeaderSetCmax(%struct.TYPE_55__*, i32, i32) #1

declare dso_local i32 @HeapTupleHeaderSetMovedPartitions(%struct.TYPE_55__*) #1

declare dso_local i32 @MarkBufferDirty(i64) #1

declare dso_local i64 @RelationNeedsWAL(%struct.TYPE_54__*) #1

declare dso_local i64 @RelationIsAccessibleInLogicalDecoding(%struct.TYPE_54__*) #1

declare dso_local i32 @log_heap_new_cid(%struct.TYPE_54__*, %struct.TYPE_56__*) #1

declare dso_local i32 @compute_infobits(i32, i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i64, i32) #1

declare dso_local i32 @XLogSetRecordFlags(i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i64 @HeapTupleHasExternal(%struct.TYPE_56__*) #1

declare dso_local i32 @heap_toast_delete(%struct.TYPE_54__*, %struct.TYPE_56__*, i32) #1

declare dso_local i32 @CacheInvalidateHeapTuple(%struct.TYPE_54__*, %struct.TYPE_56__*, i32*) #1

declare dso_local i32 @pgstat_count_heap_delete(%struct.TYPE_54__*) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_57__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
