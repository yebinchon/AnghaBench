; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_index_build_range_scan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_index_build_range_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_41__ = type { i32, i32*, i32, i32, i32, i32*, i64 }
%struct.TYPE_38__ = type { i64 }
%struct.TYPE_43__ = type { i64, i64, %struct.TYPE_37__, i32 }
%struct.TYPE_37__ = type { i32* }
%struct.TYPE_42__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32, i32* }
%struct.TYPE_40__ = type { i64 }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@MaxHeapTuplesPerPage = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@PROCARRAY_FLAGS_VACUUM = common dso_local global i32 0, align 4
@SnapshotAny = common dso_local global i64 0, align 8
@PROGRESS_SCAN_BLOCKS_TOTAL = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@PROGRESS_SCAN_BLOCKS_DONE = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"concurrent insert in progress within table \22%s\22\00", align 1
@XLTW_InsertIndexUnique = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"concurrent delete in progress within table \22%s\22\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"unexpected HeapTupleSatisfiesVacuum result\00", align 1
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"failed to find parent tuple for heap-only tuple at (%u,%u) in table \22%s\22\00", align 1
@NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.TYPE_39__*, %struct.TYPE_39__*, %struct.TYPE_41__*, i32, i32, i32, i64, i64, i32 (%struct.TYPE_39__*, i32*, i32*, i32*, i32, i8*)*, i8*, %struct.TYPE_38__*)* @heapam_index_build_range_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @heapam_index_build_range_scan(%struct.TYPE_39__* %0, %struct.TYPE_39__* %1, %struct.TYPE_41__* %2, i32 %3, i32 %4, i32 %5, i64 %6, i64 %7, i32 (%struct.TYPE_39__*, i32*, i32*, i32*, i32, i8*)* %8, i8* %9, %struct.TYPE_38__* %10) #0 {
  %12 = alloca %struct.TYPE_39__*, align 8
  %13 = alloca %struct.TYPE_39__*, align 8
  %14 = alloca %struct.TYPE_41__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32 (%struct.TYPE_39__*, i32*, i32*, i32*, i32, i8*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_38__*, align 8
  %23 = alloca %struct.TYPE_43__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_42__*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca double, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca %struct.TYPE_35__*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca %struct.TYPE_40__*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i64, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i64, align 8
  %51 = alloca %struct.TYPE_40__*, align 8
  store %struct.TYPE_39__* %0, %struct.TYPE_39__** %12, align 8
  store %struct.TYPE_39__* %1, %struct.TYPE_39__** %13, align 8
  store %struct.TYPE_41__* %2, %struct.TYPE_41__** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i64 %6, i64* %18, align 8
  store i64 %7, i64* %19, align 8
  store i32 (%struct.TYPE_39__*, i32*, i32*, i32*, i32, i8*)* %8, i32 (%struct.TYPE_39__*, i32*, i32*, i32*, i32, i8*)** %20, align 8
  store i8* %9, i8** %21, align 8
  store %struct.TYPE_38__* %10, %struct.TYPE_38__** %22, align 8
  %52 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %27, align 8
  %55 = alloca i32, i64 %53, align 16
  store i64 %53, i64* %28, align 8
  %56 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %57 = zext i32 %56 to i64
  %58 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %29, align 8
  store i32 0, i32* %36, align 4
  %59 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %59, i64* %38, align 8
  %60 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %60, i64* %39, align 8
  %61 = load i32, i32* @MaxHeapTuplesPerPage, align 4
  %62 = zext i32 %61 to i64
  %63 = alloca i32, i64 %62, align 16
  store i64 %62, i64* %40, align 8
  %64 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_36__*, %struct.TYPE_36__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @OidIsValid(i32 %68)
  %70 = call i32 @Assert(i32 %69)
  %71 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %72 = call i32 @IsSystemRelation(%struct.TYPE_39__* %71)
  store i32 %72, i32* %24, align 4
  %73 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %11
  %78 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br label %82

82:                                               ; preds = %77, %11
  %83 = phi i1 [ true, %11 ], [ %81, %77 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %25, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* %25, align 4
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %87, %82
  %91 = phi i1 [ false, %82 ], [ %89, %87 ]
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @Assert(i32 %93)
  %95 = call i32* (...) @CreateExecutorState()
  store i32* %95, i32** %33, align 8
  %96 = load i32*, i32** %33, align 8
  %97 = call %struct.TYPE_35__* @GetPerTupleExprContext(i32* %96)
  store %struct.TYPE_35__* %97, %struct.TYPE_35__** %34, align 8
  %98 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %99 = call i32* @table_slot_create(%struct.TYPE_39__* %98, i32* null)
  store i32* %99, i32** %32, align 8
  %100 = load i32*, i32** %32, align 8
  %101 = load %struct.TYPE_35__*, %struct.TYPE_35__** %34, align 8
  %102 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %101, i32 0, i32 1
  store i32* %100, i32** %102, align 8
  %103 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %33, align 8
  %107 = call i32* @ExecPrepareQual(i32 %105, i32* %106)
  store i32* %107, i32** %31, align 8
  %108 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %108, i32* %37, align 4
  %109 = call i32 (...) @IsBootstrapProcessingMode()
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %90
  %112 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %118 = load i32, i32* @PROCARRAY_FLAGS_VACUUM, align 4
  %119 = call i32 @GetOldestXmin(%struct.TYPE_39__* %117, i32 %118)
  store i32 %119, i32* %37, align 4
  br label %120

120:                                              ; preds = %116, %111, %90
  %121 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %122 = icmp ne %struct.TYPE_38__* %121, null
  br i1 %122, label %137, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %37, align 4
  %125 = call i32 @TransactionIdIsValid(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = call i32 (...) @GetTransactionSnapshot()
  %129 = call i64 @RegisterSnapshot(i32 %128)
  store i64 %129, i64* %35, align 8
  store i32 1, i32* %36, align 4
  br label %132

130:                                              ; preds = %123
  %131 = load i64, i64* @SnapshotAny, align 8
  store i64 %131, i64* %35, align 8
  br label %132

132:                                              ; preds = %130, %127
  %133 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %134 = load i64, i64* %35, align 8
  %135 = load i32, i32* %15, align 4
  %136 = call %struct.TYPE_38__* @table_beginscan_strat(%struct.TYPE_39__* %133, i64 %134, i32 0, i32* null, i32 1, i32 %135)
  store %struct.TYPE_38__* %136, %struct.TYPE_38__** %22, align 8
  br label %148

137:                                              ; preds = %120
  %138 = call i32 (...) @IsBootstrapProcessingMode()
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 @Assert(i32 %141)
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @Assert(i32 %143)
  %145 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %146 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %35, align 8
  br label %148

148:                                              ; preds = %137, %132
  %149 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %150 = bitcast %struct.TYPE_38__* %149 to %struct.TYPE_43__*
  store %struct.TYPE_43__* %150, %struct.TYPE_43__** %23, align 8
  %151 = load i32, i32* %17, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %176

153:                                              ; preds = %148
  %154 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %155 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %168

159:                                              ; preds = %153
  %160 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %161 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = bitcast i32* %163 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %164, %struct.TYPE_40__** %42, align 8
  %165 = load %struct.TYPE_40__*, %struct.TYPE_40__** %42, align 8
  %166 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %41, align 8
  br label %172

168:                                              ; preds = %153
  %169 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %170 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %41, align 8
  br label %172

172:                                              ; preds = %168, %159
  %173 = load i32, i32* @PROGRESS_SCAN_BLOCKS_TOTAL, align 4
  %174 = load i64, i64* %41, align 8
  %175 = call i32 @pgstat_progress_update_param(i32 %173, i64 %174)
  br label %176

176:                                              ; preds = %172, %148
  %177 = load i64, i64* %35, align 8
  %178 = load i64, i64* @SnapshotAny, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load i64, i64* %35, align 8
  %182 = call i64 @IsMVCCSnapshot(i64 %181)
  %183 = icmp ne i64 %182, 0
  br label %184

184:                                              ; preds = %180, %176
  %185 = phi i1 [ true, %176 ], [ %183, %180 ]
  %186 = zext i1 %185 to i32
  %187 = call i32 @Assert(i32 %186)
  %188 = load i64, i64* %35, align 8
  %189 = load i64, i64* @SnapshotAny, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %184
  %192 = load i32, i32* %37, align 4
  %193 = call i32 @TransactionIdIsValid(i32 %192)
  br label %200

194:                                              ; preds = %184
  %195 = load i32, i32* %37, align 4
  %196 = call i32 @TransactionIdIsValid(i32 %195)
  %197 = icmp ne i32 %196, 0
  %198 = xor i1 %197, true
  %199 = zext i1 %198 to i32
  br label %200

200:                                              ; preds = %194, %191
  %201 = phi i32 [ %193, %191 ], [ %199, %194 ]
  %202 = call i32 @Assert(i32 %201)
  %203 = load i64, i64* %35, align 8
  %204 = load i64, i64* @SnapshotAny, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %210, label %206

206:                                              ; preds = %200
  %207 = load i32, i32* %16, align 4
  %208 = icmp ne i32 %207, 0
  %209 = xor i1 %208, true
  br label %210

210:                                              ; preds = %206, %200
  %211 = phi i1 [ true, %200 ], [ %209, %206 ]
  %212 = zext i1 %211 to i32
  %213 = call i32 @Assert(i32 %212)
  %214 = load i32, i32* %15, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %210
  %217 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %218 = load i64, i64* %18, align 8
  %219 = load i64, i64* %19, align 8
  %220 = call i32 @heap_setscanlimits(%struct.TYPE_38__* %217, i64 %218, i64 %219)
  br label %231

221:                                              ; preds = %210
  %222 = load i64, i64* %18, align 8
  %223 = icmp eq i64 %222, 0
  %224 = zext i1 %223 to i32
  %225 = call i32 @Assert(i32 %224)
  %226 = load i64, i64* %19, align 8
  %227 = load i64, i64* @InvalidBlockNumber, align 8
  %228 = icmp eq i64 %226, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 @Assert(i32 %229)
  br label %231

231:                                              ; preds = %221, %216
  store double 0.000000e+00, double* %30, align 8
  br label %232

232:                                              ; preds = %497, %441, %418, %231
  %233 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %234 = load i32, i32* @ForwardScanDirection, align 4
  %235 = call %struct.TYPE_42__* @heap_getnext(%struct.TYPE_38__* %233, i32 %234)
  store %struct.TYPE_42__* %235, %struct.TYPE_42__** %26, align 8
  %236 = icmp ne %struct.TYPE_42__* %235, null
  br i1 %236, label %237, label %498

237:                                              ; preds = %232
  %238 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %239 = load i32, i32* %17, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %237
  %242 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %243 = call i64 @heapam_scan_get_blocks_done(%struct.TYPE_43__* %242)
  store i64 %243, i64* %44, align 8
  %244 = load i64, i64* %44, align 8
  %245 = load i64, i64* %38, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %252

247:                                              ; preds = %241
  %248 = load i32, i32* @PROGRESS_SCAN_BLOCKS_DONE, align 4
  %249 = load i64, i64* %44, align 8
  %250 = call i32 @pgstat_progress_update_param(i32 %248, i64 %249)
  %251 = load i64, i64* %44, align 8
  store i64 %251, i64* %38, align 8
  br label %252

252:                                              ; preds = %247, %241
  br label %253

253:                                              ; preds = %252, %237
  %254 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %255 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* %39, align 8
  %258 = icmp ne i64 %256, %257
  br i1 %258, label %259, label %279

259:                                              ; preds = %253
  %260 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %261 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @BufferGetPage(i32 %262)
  store i32 %263, i32* %45, align 4
  %264 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %265 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %268 = call i32 @LockBuffer(i32 %266, i32 %267)
  %269 = load i32, i32* %45, align 4
  %270 = call i32 @heap_get_root_tuples(i32 %269, i32* %63)
  %271 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %272 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %275 = call i32 @LockBuffer(i32 %273, i32 %274)
  %276 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %277 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %39, align 8
  br label %279

279:                                              ; preds = %259, %253
  %280 = load i64, i64* %35, align 8
  %281 = load i64, i64* @SnapshotAny, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %420

283:                                              ; preds = %279
  br label %284

284:                                              ; preds = %381, %334, %283
  %285 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %286 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %289 = call i32 @LockBuffer(i32 %287, i32 %288)
  %290 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %291 = load i32, i32* %37, align 4
  %292 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %293 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @HeapTupleSatisfiesVacuum(%struct.TYPE_42__* %290, i32 %291, i32 %294)
  switch i32 %295, label %407 [
    i32 132, label %296
    i32 129, label %297
    i32 128, label %300
    i32 130, label %309
    i32 131, label %352
  ]

296:                                              ; preds = %284
  store i32 0, i32* %46, align 4
  store i32 0, i32* %43, align 4
  br label %410

297:                                              ; preds = %284
  store i32 1, i32* %46, align 4
  store i32 1, i32* %43, align 4
  %298 = load double, double* %30, align 8
  %299 = fadd double %298, 1.000000e+00
  store double %299, double* %30, align 8
  br label %410

300:                                              ; preds = %284
  %301 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %302 = call i32 @HeapTupleIsHotUpdated(%struct.TYPE_42__* %301)
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %300
  store i32 0, i32* %46, align 4
  %305 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %306 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %305, i32 0, i32 0
  store i32 1, i32* %306, align 8
  br label %308

307:                                              ; preds = %300
  store i32 1, i32* %46, align 4
  br label %308

308:                                              ; preds = %307, %304
  store i32 0, i32* %43, align 4
  br label %410

309:                                              ; preds = %284
  %310 = load i32, i32* %16, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %309
  store i32 1, i32* %46, align 4
  store i32 1, i32* %43, align 4
  %313 = load double, double* %30, align 8
  %314 = fadd double %313, 1.000000e+00
  store double %314, double* %30, align 8
  br label %410

315:                                              ; preds = %309
  %316 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %317 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @HeapTupleHeaderGetXmin(i32 %318)
  store i32 %319, i32* %47, align 4
  %320 = load i32, i32* %47, align 4
  %321 = call i32 @TransactionIdIsCurrentTransactionId(i32 %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %348, label %323

323:                                              ; preds = %315
  %324 = load i32, i32* %24, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %331, label %326

326:                                              ; preds = %323
  %327 = load i32, i32* @WARNING, align 4
  %328 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %329 = call i32 @RelationGetRelationName(%struct.TYPE_39__* %328)
  %330 = call i32 (i32, i8*, ...) @elog(i32 %327, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %329)
  br label %331

331:                                              ; preds = %326, %323
  %332 = load i32, i32* %25, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %347

334:                                              ; preds = %331
  %335 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %336 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %339 = call i32 @LockBuffer(i32 %337, i32 %338)
  %340 = load i32, i32* %47, align 4
  %341 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %342 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %343 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %342, i32 0, i32 0
  %344 = load i32, i32* @XLTW_InsertIndexUnique, align 4
  %345 = call i32 @XactLockTableWait(i32 %340, %struct.TYPE_39__* %341, i32* %343, i32 %344)
  %346 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %284

347:                                              ; preds = %331
  br label %351

348:                                              ; preds = %315
  %349 = load double, double* %30, align 8
  %350 = fadd double %349, 1.000000e+00
  store double %350, double* %30, align 8
  br label %351

351:                                              ; preds = %348, %347
  store i32 1, i32* %46, align 4
  store i32 1, i32* %43, align 4
  br label %410

352:                                              ; preds = %284
  %353 = load i32, i32* %16, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %352
  store i32 1, i32* %46, align 4
  store i32 0, i32* %43, align 4
  %356 = load double, double* %30, align 8
  %357 = fadd double %356, 1.000000e+00
  store double %357, double* %30, align 8
  br label %410

358:                                              ; preds = %352
  %359 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %360 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @HeapTupleHeaderGetUpdateXid(i32 %361)
  store i32 %362, i32* %47, align 4
  %363 = load i32, i32* %47, align 4
  %364 = call i32 @TransactionIdIsCurrentTransactionId(i32 %363)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %397, label %366

366:                                              ; preds = %358
  %367 = load i32, i32* %24, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %374, label %369

369:                                              ; preds = %366
  %370 = load i32, i32* @WARNING, align 4
  %371 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %372 = call i32 @RelationGetRelationName(%struct.TYPE_39__* %371)
  %373 = call i32 (i32, i8*, ...) @elog(i32 %370, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %372)
  br label %374

374:                                              ; preds = %369, %366
  %375 = load i32, i32* %25, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %381, label %377

377:                                              ; preds = %374
  %378 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %379 = call i32 @HeapTupleIsHotUpdated(%struct.TYPE_42__* %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %394

381:                                              ; preds = %377, %374
  %382 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %383 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %386 = call i32 @LockBuffer(i32 %384, i32 %385)
  %387 = load i32, i32* %47, align 4
  %388 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %389 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %390 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %389, i32 0, i32 0
  %391 = load i32, i32* @XLTW_InsertIndexUnique, align 4
  %392 = call i32 @XactLockTableWait(i32 %387, %struct.TYPE_39__* %388, i32* %390, i32 %391)
  %393 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %284

394:                                              ; preds = %377
  store i32 1, i32* %46, align 4
  %395 = load double, double* %30, align 8
  %396 = fadd double %395, 1.000000e+00
  store double %396, double* %30, align 8
  br label %406

397:                                              ; preds = %358
  %398 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %399 = call i32 @HeapTupleIsHotUpdated(%struct.TYPE_42__* %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %397
  store i32 0, i32* %46, align 4
  %402 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %403 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %402, i32 0, i32 0
  store i32 1, i32* %403, align 8
  br label %405

404:                                              ; preds = %397
  store i32 1, i32* %46, align 4
  br label %405

405:                                              ; preds = %404, %401
  br label %406

406:                                              ; preds = %405, %394
  store i32 0, i32* %43, align 4
  br label %410

407:                                              ; preds = %284
  %408 = load i32, i32* @ERROR, align 4
  %409 = call i32 (i32, i8*, ...) @elog(i32 %408, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %43, align 4
  store i32 0, i32* %46, align 4
  br label %410

410:                                              ; preds = %407, %406, %355, %351, %312, %308, %297, %296
  %411 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %412 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %415 = call i32 @LockBuffer(i32 %413, i32 %414)
  %416 = load i32, i32* %46, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %419, label %418

418:                                              ; preds = %410
  br label %232

419:                                              ; preds = %410
  br label %423

420:                                              ; preds = %279
  store i32 1, i32* %43, align 4
  %421 = load double, double* %30, align 8
  %422 = fadd double %421, 1.000000e+00
  store double %422, double* %30, align 8
  br label %423

423:                                              ; preds = %420, %419
  %424 = load %struct.TYPE_35__*, %struct.TYPE_35__** %34, align 8
  %425 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = call i32 @MemoryContextReset(i32 %426)
  %428 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %429 = load i32*, i32** %32, align 8
  %430 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %431 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 8
  %433 = call i32 @ExecStoreBufferHeapTuple(%struct.TYPE_42__* %428, i32* %429, i32 %432)
  %434 = load i32*, i32** %31, align 8
  %435 = icmp ne i32* %434, null
  br i1 %435, label %436, label %443

436:                                              ; preds = %423
  %437 = load i32*, i32** %31, align 8
  %438 = load %struct.TYPE_35__*, %struct.TYPE_35__** %34, align 8
  %439 = call i32 @ExecQual(i32* %437, %struct.TYPE_35__* %438)
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %442, label %441

441:                                              ; preds = %436
  br label %232

442:                                              ; preds = %436
  br label %443

443:                                              ; preds = %442, %423
  %444 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %445 = load i32*, i32** %32, align 8
  %446 = load i32*, i32** %33, align 8
  %447 = call i32 @FormIndexDatum(%struct.TYPE_41__* %444, i32* %445, i32* %446, i32* %55, i32* %58)
  %448 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %449 = call i64 @HeapTupleIsHeapOnly(%struct.TYPE_42__* %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %489

451:                                              ; preds = %443
  %452 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %453 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %452, i32 0, i32 0
  %454 = call i32 @ItemPointerGetOffsetNumber(i32* %453)
  store i32 %454, i32* %49, align 4
  %455 = load i32, i32* %49, align 4
  %456 = sub nsw i32 %455, 1
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %63, i64 %457
  %459 = load i32, i32* %458, align 4
  %460 = call i32 @OffsetNumberIsValid(i32 %459)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %474, label %462

462:                                              ; preds = %451
  %463 = load i32, i32* @ERROR, align 4
  %464 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %465 = call i32 @errcode(i32 %464)
  %466 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %467 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %466, i32 0, i32 0
  %468 = call i32 @ItemPointerGetBlockNumber(i32* %467)
  %469 = load i32, i32* %49, align 4
  %470 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %471 = call i32 @RelationGetRelationName(%struct.TYPE_39__* %470)
  %472 = call i32 @errmsg_internal(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %468, i32 %469, i32 %471)
  %473 = call i32 @ereport(i32 %463, i32 %472)
  br label %474

474:                                              ; preds = %462, %451
  %475 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %476 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %475, i32 0, i32 0
  %477 = call i32 @ItemPointerGetBlockNumber(i32* %476)
  %478 = load i32, i32* %49, align 4
  %479 = sub nsw i32 %478, 1
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i32, i32* %63, i64 %480
  %482 = load i32, i32* %481, align 4
  %483 = call i32 @ItemPointerSet(i32* %48, i32 %477, i32 %482)
  %484 = load i32 (%struct.TYPE_39__*, i32*, i32*, i32*, i32, i8*)*, i32 (%struct.TYPE_39__*, i32*, i32*, i32*, i32, i8*)** %20, align 8
  %485 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %486 = load i32, i32* %43, align 4
  %487 = load i8*, i8** %21, align 8
  %488 = call i32 %484(%struct.TYPE_39__* %485, i32* %48, i32* %55, i32* %58, i32 %486, i8* %487)
  br label %497

489:                                              ; preds = %443
  %490 = load i32 (%struct.TYPE_39__*, i32*, i32*, i32*, i32, i8*)*, i32 (%struct.TYPE_39__*, i32*, i32*, i32*, i32, i8*)** %20, align 8
  %491 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %492 = load %struct.TYPE_42__*, %struct.TYPE_42__** %26, align 8
  %493 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %492, i32 0, i32 0
  %494 = load i32, i32* %43, align 4
  %495 = load i8*, i8** %21, align 8
  %496 = call i32 %490(%struct.TYPE_39__* %491, i32* %493, i32* %55, i32* %58, i32 %494, i8* %495)
  br label %497

497:                                              ; preds = %489, %474
  br label %232

498:                                              ; preds = %232
  %499 = load i32, i32* %17, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %524

501:                                              ; preds = %498
  %502 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %503 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %502, i32 0, i32 2
  %504 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %503, i32 0, i32 0
  %505 = load i32*, i32** %504, align 8
  %506 = icmp ne i32* %505, null
  br i1 %506, label %507, label %516

507:                                              ; preds = %501
  %508 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %509 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %509, i32 0, i32 0
  %511 = load i32*, i32** %510, align 8
  %512 = bitcast i32* %511 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %512, %struct.TYPE_40__** %51, align 8
  %513 = load %struct.TYPE_40__*, %struct.TYPE_40__** %51, align 8
  %514 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %513, i32 0, i32 0
  %515 = load i64, i64* %514, align 8
  store i64 %515, i64* %50, align 8
  br label %520

516:                                              ; preds = %501
  %517 = load %struct.TYPE_43__*, %struct.TYPE_43__** %23, align 8
  %518 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %517, i32 0, i32 0
  %519 = load i64, i64* %518, align 8
  store i64 %519, i64* %50, align 8
  br label %520

520:                                              ; preds = %516, %507
  %521 = load i32, i32* @PROGRESS_SCAN_BLOCKS_DONE, align 4
  %522 = load i64, i64* %50, align 8
  %523 = call i32 @pgstat_progress_update_param(i32 %521, i64 %522)
  br label %524

524:                                              ; preds = %520, %498
  %525 = load %struct.TYPE_38__*, %struct.TYPE_38__** %22, align 8
  %526 = call i32 @table_endscan(%struct.TYPE_38__* %525)
  %527 = load i32, i32* %36, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %524
  %530 = load i64, i64* %35, align 8
  %531 = call i32 @UnregisterSnapshot(i64 %530)
  br label %532

532:                                              ; preds = %529, %524
  %533 = load i32*, i32** %32, align 8
  %534 = call i32 @ExecDropSingleTupleTableSlot(i32* %533)
  %535 = load i32*, i32** %33, align 8
  %536 = call i32 @FreeExecutorState(i32* %535)
  %537 = load i32, i32* @NIL, align 4
  %538 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %539 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %538, i32 0, i32 2
  store i32 %537, i32* %539, align 8
  %540 = load %struct.TYPE_41__*, %struct.TYPE_41__** %14, align 8
  %541 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %540, i32 0, i32 1
  store i32* null, i32** %541, align 8
  %542 = load double, double* %30, align 8
  %543 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %543)
  ret double %542
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @OidIsValid(i32) #2

declare dso_local i32 @IsSystemRelation(%struct.TYPE_39__*) #2

declare dso_local i32* @CreateExecutorState(...) #2

declare dso_local %struct.TYPE_35__* @GetPerTupleExprContext(i32*) #2

declare dso_local i32* @table_slot_create(%struct.TYPE_39__*, i32*) #2

declare dso_local i32* @ExecPrepareQual(i32, i32*) #2

declare dso_local i32 @IsBootstrapProcessingMode(...) #2

declare dso_local i32 @GetOldestXmin(%struct.TYPE_39__*, i32) #2

declare dso_local i32 @TransactionIdIsValid(i32) #2

declare dso_local i64 @RegisterSnapshot(i32) #2

declare dso_local i32 @GetTransactionSnapshot(...) #2

declare dso_local %struct.TYPE_38__* @table_beginscan_strat(%struct.TYPE_39__*, i64, i32, i32*, i32, i32) #2

declare dso_local i32 @pgstat_progress_update_param(i32, i64) #2

declare dso_local i64 @IsMVCCSnapshot(i64) #2

declare dso_local i32 @heap_setscanlimits(%struct.TYPE_38__*, i64, i64) #2

declare dso_local %struct.TYPE_42__* @heap_getnext(%struct.TYPE_38__*, i32) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #2

declare dso_local i64 @heapam_scan_get_blocks_done(%struct.TYPE_43__*) #2

declare dso_local i32 @BufferGetPage(i32) #2

declare dso_local i32 @LockBuffer(i32, i32) #2

declare dso_local i32 @heap_get_root_tuples(i32, i32*) #2

declare dso_local i32 @HeapTupleSatisfiesVacuum(%struct.TYPE_42__*, i32, i32) #2

declare dso_local i32 @HeapTupleIsHotUpdated(%struct.TYPE_42__*) #2

declare dso_local i32 @HeapTupleHeaderGetXmin(i32) #2

declare dso_local i32 @TransactionIdIsCurrentTransactionId(i32) #2

declare dso_local i32 @elog(i32, i8*, ...) #2

declare dso_local i32 @RelationGetRelationName(%struct.TYPE_39__*) #2

declare dso_local i32 @XactLockTableWait(i32, %struct.TYPE_39__*, i32*, i32) #2

declare dso_local i32 @HeapTupleHeaderGetUpdateXid(i32) #2

declare dso_local i32 @MemoryContextReset(i32) #2

declare dso_local i32 @ExecStoreBufferHeapTuple(%struct.TYPE_42__*, i32*, i32) #2

declare dso_local i32 @ExecQual(i32*, %struct.TYPE_35__*) #2

declare dso_local i32 @FormIndexDatum(%struct.TYPE_41__*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @HeapTupleIsHeapOnly(%struct.TYPE_42__*) #2

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #2

declare dso_local i32 @OffsetNumberIsValid(i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg_internal(i8*, i32, i32, i32) #2

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #2

declare dso_local i32 @ItemPointerSet(i32*, i32, i32) #2

declare dso_local i32 @table_endscan(%struct.TYPE_38__*) #2

declare dso_local i32 @UnregisterSnapshot(i64) #2

declare dso_local i32 @ExecDropSingleTupleTableSlot(i32*) #2

declare dso_local i32 @FreeExecutorState(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
