; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_tuple_lock.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_handler.c_heapam_tuple_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, i64, i32, i8* }
%struct.TYPE_27__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, %struct.TYPE_21__*, i8* }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_25__ = type { i32, i32 }

@TUPLE_LOCK_FLAG_LOCK_UPDATE_IN_PROGRESS = common dso_local global i32 0, align 4
@TM_Updated = common dso_local global i64 0, align 8
@TUPLE_LOCK_FLAG_FIND_LAST_VERSION = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_T_R_SERIALIZATION_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"tuple to be locked was already moved to another partition due to concurrent update\00", align 1
@TM_Deleted = common dso_local global i64 0, align 8
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"t_xmin is uncommitted in tuple to be updated\00", align 1
@XLTW_FetchUpdated = common dso_local global i32 0, align 4
@TM_WouldBlock = common dso_local global i64 0, align 8
@ERRCODE_LOCK_NOT_AVAILABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"could not obtain lock on row in relation \22%s\22\00", align 1
@TM_SelfModified = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8**, i32, %struct.TYPE_23__*, i64, i32, i32, i32, %struct.TYPE_24__*)* @heapam_tuple_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @heapam_tuple_lock(i32 %0, i8** %1, i32 %2, %struct.TYPE_23__* %3, i64 %4, i32 %5, i32 %6, i32 %7, %struct.TYPE_24__* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca %struct.TYPE_27__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_26__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_25__, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i8** %1, i8*** %12, align 8
  store i32 %2, i32* %13, align 4
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.TYPE_24__* %8, %struct.TYPE_24__** %19, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %28 = bitcast %struct.TYPE_23__* %27 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %28, %struct.TYPE_27__** %20, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  store %struct.TYPE_26__* %31, %struct.TYPE_26__** %23, align 8
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* @TUPLE_LOCK_FLAG_LOCK_UPDATE_IN_PROGRESS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %24, align 4
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %40 = call i32 @TTS_IS_BUFFERTUPLE(%struct.TYPE_23__* %39)
  %41 = call i32 @Assert(i32 %40)
  br label %42

42:                                               ; preds = %199, %9
  %43 = load i8**, i8*** %12, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %49 = load i64, i64* %15, align 8
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %17, align 4
  %52 = load i32, i32* %24, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %54 = call i64 @heap_lock_tuple(i32 %47, %struct.TYPE_26__* %48, i64 %49, i32 %50, i32 %51, i32 %52, i32* %22, %struct.TYPE_24__* %53)
  store i64 %54, i64* %21, align 8
  %55 = load i64, i64* %21, align 8
  %56 = load i64, i64* @TM_Updated, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %264

58:                                               ; preds = %42
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @TUPLE_LOCK_FLAG_FIND_LAST_VERSION, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %264

63:                                               ; preds = %58
  %64 = load i32, i32* %22, align 4
  %65 = call i32 @ReleaseBuffer(i32 %64)
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = call i32 @HeapTupleHeaderIsSpeculative(%struct.TYPE_21__* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @Assert(i32 %72)
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 2
  %78 = call i64 @ItemPointerEquals(i8** %75, i8** %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %262, label %80

80:                                               ; preds = %63
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %12, align 8
  store i8* %83, i8** %84, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %26, align 4
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = bitcast %struct.TYPE_25__* %25 to i64*
  %91 = load i64, i64* %90, align 4
  %92 = call i32 @InitDirtySnapshot(i64 %91)
  br label %93

93:                                               ; preds = %261, %174, %80
  %94 = load i8**, i8*** %12, align 8
  %95 = call i64 @ItemPointerIndicatesMovedPartitions(i8** %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i32, i32* @ERROR, align 4
  %99 = load i32, i32* @ERRCODE_T_R_SERIALIZATION_FAILURE, align 4
  %100 = call i32 @errcode(i32 %99)
  %101 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  %102 = call i32 @ereport(i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %97, %93
  %104 = load i8**, i8*** %12, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %110 = call i64 @heap_fetch(i32 %108, %struct.TYPE_25__* %25, %struct.TYPE_26__* %109, i32* %22)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %202

112:                                              ; preds = %103
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %114, align 8
  %116 = call i32 @HeapTupleHeaderGetXmin(%struct.TYPE_21__* %115)
  %117 = load i32, i32* %26, align 4
  %118 = call i32 @TransactionIdEquals(i32 %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %22, align 4
  %122 = call i32 @ReleaseBuffer(i32 %121)
  %123 = load i64, i64* @TM_Deleted, align 8
  store i64 %123, i64* %10, align 8
  br label %279

124:                                              ; preds = %112
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @TransactionIdIsValid(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %124
  %130 = load i32, i32* @ERROR, align 4
  %131 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %132 = call i32 @errcode(i32 %131)
  %133 = call i32 @errmsg_internal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %134 = call i32 @ereport(i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %129, %124
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @TransactionIdIsValid(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %175

140:                                              ; preds = %135
  %141 = load i32, i32* %22, align 4
  %142 = call i32 @ReleaseBuffer(i32 %141)
  %143 = load i32, i32* %17, align 4
  switch i32 %143, label %174 [
    i32 130, label %144
    i32 128, label %152
    i32 129, label %160
  ]

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 2
  %150 = load i32, i32* @XLTW_FetchUpdated, align 4
  %151 = call i32 @XactLockTableWait(i32 %146, i32 %147, i8** %149, i32 %150)
  br label %174

152:                                              ; preds = %140
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ConditionalXactLockTableWait(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %152
  %158 = load i64, i64* @TM_WouldBlock, align 8
  store i64 %158, i64* %10, align 8
  br label %279

159:                                              ; preds = %152
  br label %174

160:                                              ; preds = %140
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @ConditionalXactLockTableWait(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %160
  %166 = load i32, i32* @ERROR, align 4
  %167 = load i32, i32* @ERRCODE_LOCK_NOT_AVAILABLE, align 4
  %168 = call i32 @errcode(i32 %167)
  %169 = load i32, i32* %11, align 4
  %170 = call i32 @RelationGetRelationName(i32 %169)
  %171 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %170)
  %172 = call i32 @ereport(i32 %166, i32 %171)
  br label %173

173:                                              ; preds = %165, %160
  br label %174

174:                                              ; preds = %140, %173, %159, %144
  br label %93

175:                                              ; preds = %135
  %176 = load i32, i32* %26, align 4
  %177 = call i64 @TransactionIdIsCurrentTransactionId(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %175
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %181, align 8
  %183 = call i64 @HeapTupleHeaderGetCmin(%struct.TYPE_21__* %182)
  %184 = load i64, i64* %15, align 8
  %185 = icmp sge i64 %183, %184
  br i1 %185, label %186, label %199

186:                                              ; preds = %179
  %187 = load i32, i32* %26, align 4
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %191, align 8
  %193 = call i64 @HeapTupleHeaderGetCmin(%struct.TYPE_21__* %192)
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %195 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %194, i32 0, i32 1
  store i64 %193, i64* %195, align 8
  %196 = load i32, i32* %22, align 4
  %197 = call i32 @ReleaseBuffer(i32 %196)
  %198 = load i64, i64* @TM_SelfModified, align 8
  store i64 %198, i64* %10, align 8
  br label %279

199:                                              ; preds = %179, %175
  %200 = load i32, i32* %22, align 4
  %201 = call i32 @ReleaseBuffer(i32 %200)
  br label %42

202:                                              ; preds = %103
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %204, align 8
  %206 = icmp eq %struct.TYPE_21__* %205, null
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = load i64, i64* @TM_Deleted, align 8
  store i64 %208, i64* %10, align 8
  br label %279

209:                                              ; preds = %202
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %211, align 8
  %213 = call i32 @HeapTupleHeaderGetXmin(%struct.TYPE_21__* %212)
  %214 = load i32, i32* %26, align 4
  %215 = call i32 @TransactionIdEquals(i32 %213, i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %226, label %217

217:                                              ; preds = %209
  %218 = load i32, i32* %22, align 4
  %219 = call i64 @BufferIsValid(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = load i32, i32* %22, align 4
  %223 = call i32 @ReleaseBuffer(i32 %222)
  br label %224

224:                                              ; preds = %221, %217
  %225 = load i64, i64* @TM_Deleted, align 8
  store i64 %225, i64* %10, align 8
  br label %279

226:                                              ; preds = %209
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %230 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_21__*, %struct.TYPE_21__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 0
  %233 = call i64 @ItemPointerEquals(i8** %228, i8** %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %226
  %236 = load i32, i32* %22, align 4
  %237 = call i64 @BufferIsValid(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i32, i32* %22, align 4
  %241 = call i32 @ReleaseBuffer(i32 %240)
  br label %242

242:                                              ; preds = %239, %235
  %243 = load i64, i64* @TM_Deleted, align 8
  store i64 %243, i64* %10, align 8
  br label %279

244:                                              ; preds = %226
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  %249 = load i8*, i8** %248, align 8
  %250 = load i8**, i8*** %12, align 8
  store i8* %249, i8** %250, align 8
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %252 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %252, align 8
  %254 = call i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_21__* %253)
  store i32 %254, i32* %26, align 4
  %255 = load i32, i32* %22, align 4
  %256 = call i64 @BufferIsValid(i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %244
  %259 = load i32, i32* %22, align 4
  %260 = call i32 @ReleaseBuffer(i32 %259)
  br label %261

261:                                              ; preds = %258, %244
  br label %93

262:                                              ; preds = %63
  %263 = load i64, i64* @TM_Deleted, align 8
  store i64 %263, i64* %10, align 8
  br label %279

264:                                              ; preds = %58, %42
  %265 = load i32, i32* %11, align 4
  %266 = call i32 @RelationGetRelid(i32 %265)
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 0
  store i32 %266, i32* %268, align 4
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 0
  store i32 %271, i32* %273, align 8
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %276 = load i32, i32* %22, align 4
  %277 = call i32 @ExecStorePinnedBufferHeapTuple(%struct.TYPE_26__* %274, %struct.TYPE_23__* %275, i32 %276)
  %278 = load i64, i64* %21, align 8
  store i64 %278, i64* %10, align 8
  br label %279

279:                                              ; preds = %264, %262, %242, %224, %207, %186, %157, %120
  %280 = load i64, i64* %10, align 8
  ret i64 %280
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TTS_IS_BUFFERTUPLE(%struct.TYPE_23__*) #1

declare dso_local i64 @heap_lock_tuple(i32, %struct.TYPE_26__*, i64, i32, i32, i32, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @HeapTupleHeaderIsSpeculative(%struct.TYPE_21__*) #1

declare dso_local i64 @ItemPointerEquals(i8**, i8**) #1

declare dso_local i32 @InitDirtySnapshot(i64) #1

declare dso_local i64 @ItemPointerIndicatesMovedPartitions(i8**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i64 @heap_fetch(i32, %struct.TYPE_25__*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetXmin(%struct.TYPE_21__*) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i32 @errmsg_internal(i8*) #1

declare dso_local i32 @XactLockTableWait(i32, i32, i8**, i32) #1

declare dso_local i32 @ConditionalXactLockTableWait(i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i64 @TransactionIdIsCurrentTransactionId(i32) #1

declare dso_local i64 @HeapTupleHeaderGetCmin(%struct.TYPE_21__*) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_21__*) #1

declare dso_local i32 @RelationGetRelid(i32) #1

declare dso_local i32 @ExecStorePinnedBufferHeapTuple(%struct.TYPE_26__*, %struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
