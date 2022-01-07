; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesUpdate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }

@InvalidOid = common dso_local global i64 0, align 8
@TM_Invisible = common dso_local global i32 0, align 4
@HEAP_MOVED_OFF = common dso_local global i32 0, align 4
@HEAP_XMIN_INVALID = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@HEAP_XMIN_COMMITTED = common dso_local global i32 0, align 4
@HEAP_MOVED_IN = common dso_local global i32 0, align 4
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@TM_Ok = common dso_local global i32 0, align 4
@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@TM_BeingModified = common dso_local global i32 0, align 4
@TM_SelfModified = common dso_local global i32 0, align 4
@HEAP_XMAX_COMMITTED = common dso_local global i32 0, align 4
@TM_Updated = common dso_local global i32 0, align 4
@TM_Deleted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HeapTupleSatisfiesUpdate(%struct.TYPE_15__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %8, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = call i32 @ItemPointerIsValid(i32* %18)
  %20 = call i32 @Assert(i32 %19)
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @InvalidOid, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = call i32 @HeapTupleHeaderXminCommitted(%struct.TYPE_14__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %250, label %31

31:                                               ; preds = %3
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = call i64 @HeapTupleHeaderXminInvalid(%struct.TYPE_14__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @TM_Invisible, align 4
  store i32 %36, i32* %4, align 4
  br label %469

37:                                               ; preds = %31
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @HEAP_MOVED_OFF, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %37
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = call i32 @HeapTupleHeaderGetXvac(%struct.TYPE_14__* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @TransactionIdIsCurrentTransactionId(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @TM_Invisible, align 4
  store i32 %51, i32* %4, align 4
  br label %469

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = call i64 @TransactionIdIsInProgress(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @TransactionIdDidCommit(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %64 = load i32, i32* @InvalidTransactionId, align 4
  %65 = call i32 @SetHintBits(%struct.TYPE_14__* %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @TM_Invisible, align 4
  store i32 %66, i32* %4, align 4
  br label %469

67:                                               ; preds = %56
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %71 = load i32, i32* @InvalidTransactionId, align 4
  %72 = call i32 @SetHintBits(%struct.TYPE_14__* %68, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %52
  br label %249

74:                                               ; preds = %37
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @HEAP_MOVED_IN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %74
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %83 = call i32 @HeapTupleHeaderGetXvac(%struct.TYPE_14__* %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i64 @TransactionIdIsCurrentTransactionId(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %111, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @TransactionIdIsInProgress(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @TM_Invisible, align 4
  store i32 %92, i32* %4, align 4
  br label %469

93:                                               ; preds = %87
  %94 = load i32, i32* %10, align 4
  %95 = call i64 @TransactionIdDidCommit(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %101 = load i32, i32* @InvalidTransactionId, align 4
  %102 = call i32 @SetHintBits(%struct.TYPE_14__* %98, i32 %99, i32 %100, i32 %101)
  br label %110

103:                                              ; preds = %93
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %107 = load i32, i32* @InvalidTransactionId, align 4
  %108 = call i32 @SetHintBits(%struct.TYPE_14__* %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* @TM_Invisible, align 4
  store i32 %109, i32* %4, align 4
  br label %469

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %81
  br label %248

112:                                              ; preds = %74
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %114 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_14__* %113)
  %115 = call i64 @TransactionIdIsCurrentTransactionId(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %219

117:                                              ; preds = %112
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %119 = call i64 @HeapTupleHeaderGetCmin(%struct.TYPE_14__* %118)
  %120 = load i64, i64* %6, align 8
  %121 = icmp sge i64 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* @TM_Invisible, align 4
  store i32 %123, i32* %4, align 4
  br label %469

124:                                              ; preds = %117
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* @TM_Ok, align 4
  store i32 %132, i32* %4, align 4
  br label %469

133:                                              ; preds = %124
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %164

139:                                              ; preds = %133
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %141 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__* %140)
  store i32 %141, i32* %11, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %139
  %149 = load i32, i32* %11, align 4
  %150 = call i64 @MultiXactIdIsRunning(i32 %149, i32 1)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32, i32* @TM_BeingModified, align 4
  store i32 %153, i32* %4, align 4
  br label %469

154:                                              ; preds = %148
  %155 = load i32, i32* @TM_Ok, align 4
  store i32 %155, i32* %4, align 4
  br label %469

156:                                              ; preds = %139
  %157 = load i32, i32* %11, align 4
  %158 = call i64 @TransactionIdIsInProgress(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* @TM_Ok, align 4
  store i32 %161, i32* %4, align 4
  br label %469

162:                                              ; preds = %156
  %163 = load i32, i32* @TM_BeingModified, align 4
  store i32 %163, i32* %4, align 4
  br label %469

164:                                              ; preds = %133
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %198

171:                                              ; preds = %164
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %173 = call i32 @HeapTupleGetUpdateXid(%struct.TYPE_14__* %172)
  store i32 %173, i32* %12, align 4
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @TransactionIdIsValid(i32 %174)
  %176 = call i32 @Assert(i32 %175)
  %177 = load i32, i32* %12, align 4
  %178 = call i64 @TransactionIdIsCurrentTransactionId(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %189, label %180

180:                                              ; preds = %171
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %182 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__* %181)
  %183 = call i64 @MultiXactIdIsRunning(i32 %182, i32 0)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = load i32, i32* @TM_BeingModified, align 4
  store i32 %186, i32* %4, align 4
  br label %469

187:                                              ; preds = %180
  %188 = load i32, i32* @TM_Ok, align 4
  store i32 %188, i32* %4, align 4
  br label %469

189:                                              ; preds = %171
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %191 = call i64 @HeapTupleHeaderGetCmax(%struct.TYPE_14__* %190)
  %192 = load i64, i64* %6, align 8
  %193 = icmp sge i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load i32, i32* @TM_SelfModified, align 4
  store i32 %195, i32* %4, align 4
  br label %469

196:                                              ; preds = %189
  %197 = load i32, i32* @TM_Invisible, align 4
  store i32 %197, i32* %4, align 4
  br label %469

198:                                              ; preds = %164
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %200 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__* %199)
  %201 = call i64 @TransactionIdIsCurrentTransactionId(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %210, label %203

203:                                              ; preds = %198
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %207 = load i32, i32* @InvalidTransactionId, align 4
  %208 = call i32 @SetHintBits(%struct.TYPE_14__* %204, i32 %205, i32 %206, i32 %207)
  %209 = load i32, i32* @TM_Ok, align 4
  store i32 %209, i32* %4, align 4
  br label %469

210:                                              ; preds = %198
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %212 = call i64 @HeapTupleHeaderGetCmax(%struct.TYPE_14__* %211)
  %213 = load i64, i64* %6, align 8
  %214 = icmp sge i64 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = load i32, i32* @TM_SelfModified, align 4
  store i32 %216, i32* %4, align 4
  br label %469

217:                                              ; preds = %210
  %218 = load i32, i32* @TM_Invisible, align 4
  store i32 %218, i32* %4, align 4
  br label %469

219:                                              ; preds = %112
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %221 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_14__* %220)
  %222 = call i64 @TransactionIdIsInProgress(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = load i32, i32* @TM_Invisible, align 4
  store i32 %225, i32* %4, align 4
  br label %469

226:                                              ; preds = %219
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %228 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_14__* %227)
  %229 = call i64 @TransactionIdDidCommit(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %226
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %233 = load i32, i32* %7, align 4
  %234 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %236 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_14__* %235)
  %237 = call i32 @SetHintBits(%struct.TYPE_14__* %232, i32 %233, i32 %234, i32 %236)
  br label %245

238:                                              ; preds = %226
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %240 = load i32, i32* %7, align 4
  %241 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %242 = load i32, i32* @InvalidTransactionId, align 4
  %243 = call i32 @SetHintBits(%struct.TYPE_14__* %239, i32 %240, i32 %241, i32 %242)
  %244 = load i32, i32* @TM_Invisible, align 4
  store i32 %244, i32* %4, align 4
  br label %469

245:                                              ; preds = %231
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246
  br label %248

248:                                              ; preds = %247, %111
  br label %249

249:                                              ; preds = %248, %73
  br label %250

250:                                              ; preds = %249, %3
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %250
  %258 = load i32, i32* @TM_Ok, align 4
  store i32 %258, i32* %4, align 4
  br label %469

259:                                              ; preds = %250
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %289

266:                                              ; preds = %259
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %266
  %273 = load i32, i32* @TM_Ok, align 4
  store i32 %273, i32* %4, align 4
  br label %469

274:                                              ; preds = %266
  %275 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %275, i32 0, i32 1
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 1
  %279 = call i32 @ItemPointerEquals(i32* %276, i32* %278)
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %274
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %283 = call i64 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_14__* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %281, %274
  %286 = load i32, i32* @TM_Updated, align 4
  store i32 %286, i32* %4, align 4
  br label %469

287:                                              ; preds = %281
  %288 = load i32, i32* @TM_Deleted, align 4
  store i32 %288, i32* %4, align 4
  br label %469

289:                                              ; preds = %259
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %394

296:                                              ; preds = %289
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i64 @HEAP_LOCKED_UPGRADED(i32 %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %296
  %303 = load i32, i32* @TM_Ok, align 4
  store i32 %303, i32* %4, align 4
  br label %469

304:                                              ; preds = %296
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %324

310:                                              ; preds = %304
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %312 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__* %311)
  %313 = call i64 @MultiXactIdIsRunning(i32 %312, i32 1)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = load i32, i32* @TM_BeingModified, align 4
  store i32 %316, i32* %4, align 4
  br label %469

317:                                              ; preds = %310
  %318 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %321 = load i32, i32* @InvalidTransactionId, align 4
  %322 = call i32 @SetHintBits(%struct.TYPE_14__* %318, i32 %319, i32 %320, i32 %321)
  %323 = load i32, i32* @TM_Ok, align 4
  store i32 %323, i32* %4, align 4
  br label %469

324:                                              ; preds = %304
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %326 = call i32 @HeapTupleGetUpdateXid(%struct.TYPE_14__* %325)
  store i32 %326, i32* %13, align 4
  %327 = load i32, i32* %13, align 4
  %328 = call i32 @TransactionIdIsValid(i32 %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %338, label %330

330:                                              ; preds = %324
  %331 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %332 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__* %331)
  %333 = call i64 @MultiXactIdIsRunning(i32 %332, i32 0)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %330
  %336 = load i32, i32* @TM_BeingModified, align 4
  store i32 %336, i32* %4, align 4
  br label %469

337:                                              ; preds = %330
  br label %338

338:                                              ; preds = %337, %324
  %339 = load i32, i32* %13, align 4
  %340 = call i32 @TransactionIdIsValid(i32 %339)
  %341 = call i32 @Assert(i32 %340)
  %342 = load i32, i32* %13, align 4
  %343 = call i64 @TransactionIdIsCurrentTransactionId(i32 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %354

345:                                              ; preds = %338
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %347 = call i64 @HeapTupleHeaderGetCmax(%struct.TYPE_14__* %346)
  %348 = load i64, i64* %6, align 8
  %349 = icmp sge i64 %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %345
  %351 = load i32, i32* @TM_SelfModified, align 4
  store i32 %351, i32* %4, align 4
  br label %469

352:                                              ; preds = %345
  %353 = load i32, i32* @TM_Invisible, align 4
  store i32 %353, i32* %4, align 4
  br label %469

354:                                              ; preds = %338
  %355 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %356 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__* %355)
  %357 = call i64 @MultiXactIdIsRunning(i32 %356, i32 0)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %361

359:                                              ; preds = %354
  %360 = load i32, i32* @TM_BeingModified, align 4
  store i32 %360, i32* %4, align 4
  br label %469

361:                                              ; preds = %354
  %362 = load i32, i32* %13, align 4
  %363 = call i64 @TransactionIdDidCommit(i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %380

365:                                              ; preds = %361
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %366, i32 0, i32 1
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 1
  %370 = call i32 @ItemPointerEquals(i32* %367, i32* %369)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %376

372:                                              ; preds = %365
  %373 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %374 = call i64 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_14__* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %372, %365
  %377 = load i32, i32* @TM_Updated, align 4
  store i32 %377, i32* %4, align 4
  br label %469

378:                                              ; preds = %372
  %379 = load i32, i32* @TM_Deleted, align 4
  store i32 %379, i32* %4, align 4
  br label %469

380:                                              ; preds = %361
  %381 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %382 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__* %381)
  %383 = call i64 @MultiXactIdIsRunning(i32 %382, i32 0)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %392, label %385

385:                                              ; preds = %380
  %386 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %387 = load i32, i32* %7, align 4
  %388 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %389 = load i32, i32* @InvalidTransactionId, align 4
  %390 = call i32 @SetHintBits(%struct.TYPE_14__* %386, i32 %387, i32 %388, i32 %389)
  %391 = load i32, i32* @TM_Ok, align 4
  store i32 %391, i32* %4, align 4
  br label %469

392:                                              ; preds = %380
  %393 = load i32, i32* @TM_BeingModified, align 4
  store i32 %393, i32* %4, align 4
  br label %469

394:                                              ; preds = %289
  %395 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %396 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__* %395)
  %397 = call i64 @TransactionIdIsCurrentTransactionId(i32 %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %416

399:                                              ; preds = %394
  %400 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 4
  %403 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %402)
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %399
  %406 = load i32, i32* @TM_BeingModified, align 4
  store i32 %406, i32* %4, align 4
  br label %469

407:                                              ; preds = %399
  %408 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %409 = call i64 @HeapTupleHeaderGetCmax(%struct.TYPE_14__* %408)
  %410 = load i64, i64* %6, align 8
  %411 = icmp sge i64 %409, %410
  br i1 %411, label %412, label %414

412:                                              ; preds = %407
  %413 = load i32, i32* @TM_SelfModified, align 4
  store i32 %413, i32* %4, align 4
  br label %469

414:                                              ; preds = %407
  %415 = load i32, i32* @TM_Invisible, align 4
  store i32 %415, i32* %4, align 4
  br label %469

416:                                              ; preds = %394
  %417 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %418 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__* %417)
  %419 = call i64 @TransactionIdIsInProgress(i32 %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %416
  %422 = load i32, i32* @TM_BeingModified, align 4
  store i32 %422, i32* %4, align 4
  br label %469

423:                                              ; preds = %416
  %424 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %425 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__* %424)
  %426 = call i64 @TransactionIdDidCommit(i32 %425)
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %435, label %428

428:                                              ; preds = %423
  %429 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %430 = load i32, i32* %7, align 4
  %431 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %432 = load i32, i32* @InvalidTransactionId, align 4
  %433 = call i32 @SetHintBits(%struct.TYPE_14__* %429, i32 %430, i32 %431, i32 %432)
  %434 = load i32, i32* @TM_Ok, align 4
  store i32 %434, i32* %4, align 4
  br label %469

435:                                              ; preds = %423
  %436 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 4
  %439 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %448

441:                                              ; preds = %435
  %442 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %443 = load i32, i32* %7, align 4
  %444 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %445 = load i32, i32* @InvalidTransactionId, align 4
  %446 = call i32 @SetHintBits(%struct.TYPE_14__* %442, i32 %443, i32 %444, i32 %445)
  %447 = load i32, i32* @TM_Ok, align 4
  store i32 %447, i32* %4, align 4
  br label %469

448:                                              ; preds = %435
  %449 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %450 = load i32, i32* %7, align 4
  %451 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %452 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %453 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__* %452)
  %454 = call i32 @SetHintBits(%struct.TYPE_14__* %449, i32 %450, i32 %451, i32 %453)
  %455 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %456 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %455, i32 0, i32 1
  %457 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %458 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %457, i32 0, i32 1
  %459 = call i32 @ItemPointerEquals(i32* %456, i32* %458)
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %448
  %462 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %463 = call i64 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_14__* %462)
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %461, %448
  %466 = load i32, i32* @TM_Updated, align 4
  store i32 %466, i32* %4, align 4
  br label %469

467:                                              ; preds = %461
  %468 = load i32, i32* @TM_Deleted, align 4
  store i32 %468, i32* %4, align 4
  br label %469

469:                                              ; preds = %467, %465, %441, %428, %421, %414, %412, %405, %392, %385, %378, %376, %359, %352, %350, %335, %317, %315, %302, %287, %285, %272, %257, %238, %224, %217, %215, %203, %196, %194, %187, %185, %162, %160, %154, %152, %131, %122, %103, %91, %60, %50, %35
  %470 = load i32, i32* %4, align 4
  ret i32 %470
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i32 @HeapTupleHeaderXminCommitted(%struct.TYPE_14__*) #1

declare dso_local i64 @HeapTupleHeaderXminInvalid(%struct.TYPE_14__*) #1

declare dso_local i32 @HeapTupleHeaderGetXvac(%struct.TYPE_14__*) #1

declare dso_local i64 @TransactionIdIsCurrentTransactionId(i32) #1

declare dso_local i64 @TransactionIdIsInProgress(i32) #1

declare dso_local i64 @TransactionIdDidCommit(i32) #1

declare dso_local i32 @SetHintBits(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_14__*) #1

declare dso_local i64 @HeapTupleHeaderGetCmin(%struct.TYPE_14__*) #1

declare dso_local i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_14__*) #1

declare dso_local i64 @MultiXactIdIsRunning(i32, i32) #1

declare dso_local i32 @HeapTupleGetUpdateXid(%struct.TYPE_14__*) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i64 @HeapTupleHeaderGetCmax(%struct.TYPE_14__*) #1

declare dso_local i32 @ItemPointerEquals(i32*, i32*) #1

declare dso_local i64 @HeapTupleHeaderIndicatesMovedPartitions(%struct.TYPE_14__*) #1

declare dso_local i64 @HEAP_LOCKED_UPGRADED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
