; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesVacuum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesVacuum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@InvalidOid = common dso_local global i64 0, align 8
@HEAPTUPLE_DEAD = common dso_local global i32 0, align 4
@HEAP_MOVED_OFF = common dso_local global i32 0, align 4
@HEAPTUPLE_DELETE_IN_PROGRESS = common dso_local global i32 0, align 4
@HEAP_XMIN_INVALID = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@HEAP_XMIN_COMMITTED = common dso_local global i32 0, align 4
@HEAP_MOVED_IN = common dso_local global i32 0, align 4
@HEAPTUPLE_INSERT_IN_PROGRESS = common dso_local global i32 0, align 4
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@HEAPTUPLE_LIVE = common dso_local global i32 0, align 4
@HEAP_XMAX_COMMITTED = common dso_local global i32 0, align 4
@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@HEAPTUPLE_RECENTLY_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HeapTupleSatisfiesVacuum(%struct.TYPE_14__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %8, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = call i32 @ItemPointerIsValid(i32* %16)
  %18 = call i32 @Assert(i32 %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @InvalidOid, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = call i32 @HeapTupleHeaderXminCommitted(%struct.TYPE_13__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %179, label %29

29:                                               ; preds = %3
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = call i64 @HeapTupleHeaderXminInvalid(%struct.TYPE_13__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @HEAPTUPLE_DEAD, align 4
  store i32 %34, i32* %4, align 4
  br label %342

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HEAP_MOVED_OFF, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %73

42:                                               ; preds = %35
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = call i32 @HeapTupleHeaderGetXvac(%struct.TYPE_13__* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @TransactionIdIsCurrentTransactionId(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* @HEAPTUPLE_DELETE_IN_PROGRESS, align 4
  store i32 %49, i32* %4, align 4
  br label %342

50:                                               ; preds = %42
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @TransactionIdIsInProgress(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @HEAPTUPLE_DELETE_IN_PROGRESS, align 4
  store i32 %55, i32* %4, align 4
  br label %342

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @TransactionIdDidCommit(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %64 = load i32, i32* @InvalidTransactionId, align 4
  %65 = call i32 @SetHintBits(%struct.TYPE_13__* %61, i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @HEAPTUPLE_DEAD, align 4
  store i32 %66, i32* %4, align 4
  br label %342

67:                                               ; preds = %56
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %71 = load i32, i32* @InvalidTransactionId, align 4
  %72 = call i32 @SetHintBits(%struct.TYPE_13__* %68, i32 %69, i32 %70, i32 %71)
  br label %177

73:                                               ; preds = %35
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @HEAP_MOVED_IN, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %112

80:                                               ; preds = %73
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = call i32 @HeapTupleHeaderGetXvac(%struct.TYPE_13__* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @TransactionIdIsCurrentTransactionId(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @HEAPTUPLE_INSERT_IN_PROGRESS, align 4
  store i32 %87, i32* %4, align 4
  br label %342

88:                                               ; preds = %80
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @TransactionIdIsInProgress(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @HEAPTUPLE_INSERT_IN_PROGRESS, align 4
  store i32 %93, i32* %4, align 4
  br label %342

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  %96 = call i64 @TransactionIdDidCommit(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %102 = load i32, i32* @InvalidTransactionId, align 4
  %103 = call i32 @SetHintBits(%struct.TYPE_13__* %99, i32 %100, i32 %101, i32 %102)
  br label %111

104:                                              ; preds = %94
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %108 = load i32, i32* @InvalidTransactionId, align 4
  %109 = call i32 @SetHintBits(%struct.TYPE_13__* %105, i32 %106, i32 %107, i32 %108)
  %110 = load i32, i32* @HEAPTUPLE_DEAD, align 4
  store i32 %110, i32* %4, align 4
  br label %342

111:                                              ; preds = %98
  br label %176

112:                                              ; preds = %73
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %114 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_13__* %113)
  %115 = call i64 @TransactionIdIsCurrentTransactionId(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %112
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* @HEAPTUPLE_INSERT_IN_PROGRESS, align 4
  store i32 %125, i32* %4, align 4
  br label %342

126:                                              ; preds = %117
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %126
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %134 = call i64 @HeapTupleHeaderIsOnlyLocked(%struct.TYPE_13__* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132, %126
  %137 = load i32, i32* @HEAPTUPLE_INSERT_IN_PROGRESS, align 4
  store i32 %137, i32* %4, align 4
  br label %342

138:                                              ; preds = %132
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %140 = call i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_13__* %139)
  %141 = call i64 @TransactionIdIsCurrentTransactionId(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = load i32, i32* @HEAPTUPLE_DELETE_IN_PROGRESS, align 4
  store i32 %144, i32* %4, align 4
  br label %342

145:                                              ; preds = %138
  %146 = load i32, i32* @HEAPTUPLE_INSERT_IN_PROGRESS, align 4
  store i32 %146, i32* %4, align 4
  br label %342

147:                                              ; preds = %112
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %149 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_13__* %148)
  %150 = call i64 @TransactionIdIsInProgress(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = load i32, i32* @HEAPTUPLE_INSERT_IN_PROGRESS, align 4
  store i32 %153, i32* %4, align 4
  br label %342

154:                                              ; preds = %147
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %156 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_13__* %155)
  %157 = call i64 @TransactionIdDidCommit(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %164 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_13__* %163)
  %165 = call i32 @SetHintBits(%struct.TYPE_13__* %160, i32 %161, i32 %162, i32 %164)
  br label %173

166:                                              ; preds = %154
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %170 = load i32, i32* @InvalidTransactionId, align 4
  %171 = call i32 @SetHintBits(%struct.TYPE_13__* %167, i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* @HEAPTUPLE_DEAD, align 4
  store i32 %172, i32* %4, align 4
  br label %342

173:                                              ; preds = %159
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175, %111
  br label %177

177:                                              ; preds = %176, %67
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178, %3
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %179
  %187 = load i32, i32* @HEAPTUPLE_LIVE, align 4
  store i32 %187, i32* %4, align 4
  br label %342

188:                                              ; preds = %179
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %243

194:                                              ; preds = %188
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %241, label %201

201:                                              ; preds = %194
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %227

208:                                              ; preds = %201
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @HEAP_LOCKED_UPGRADED(i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %221, label %214

214:                                              ; preds = %208
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %216 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_13__* %215)
  %217 = call i64 @MultiXactIdIsRunning(i32 %216, i32 1)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load i32, i32* @HEAPTUPLE_LIVE, align 4
  store i32 %220, i32* %4, align 4
  br label %342

221:                                              ; preds = %214, %208
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %225 = load i32, i32* @InvalidTransactionId, align 4
  %226 = call i32 @SetHintBits(%struct.TYPE_13__* %222, i32 %223, i32 %224, i32 %225)
  br label %240

227:                                              ; preds = %201
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %229 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_13__* %228)
  %230 = call i64 @TransactionIdIsInProgress(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %227
  %233 = load i32, i32* @HEAPTUPLE_LIVE, align 4
  store i32 %233, i32* %4, align 4
  br label %342

234:                                              ; preds = %227
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %238 = load i32, i32* @InvalidTransactionId, align 4
  %239 = call i32 @SetHintBits(%struct.TYPE_13__* %235, i32 %236, i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %234, %221
  br label %241

241:                                              ; preds = %240, %194
  %242 = load i32, i32* @HEAPTUPLE_LIVE, align 4
  store i32 %242, i32* %4, align 4
  br label %342

243:                                              ; preds = %188
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %297

250:                                              ; preds = %243
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %252 = call i32 @HeapTupleGetUpdateXid(%struct.TYPE_13__* %251)
  store i32 %252, i32* %11, align 4
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %255)
  %257 = icmp ne i64 %256, 0
  %258 = xor i1 %257, true
  %259 = zext i1 %258 to i32
  %260 = call i32 @Assert(i32 %259)
  %261 = load i32, i32* %11, align 4
  %262 = call i32 @TransactionIdIsValid(i32 %261)
  %263 = call i32 @Assert(i32 %262)
  %264 = load i32, i32* %11, align 4
  %265 = call i64 @TransactionIdIsInProgress(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %250
  %268 = load i32, i32* @HEAPTUPLE_DELETE_IN_PROGRESS, align 4
  store i32 %268, i32* %4, align 4
  br label %342

269:                                              ; preds = %250
  %270 = load i32, i32* %11, align 4
  %271 = call i64 @TransactionIdDidCommit(i32 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %269
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* %6, align 4
  %276 = call i32 @TransactionIdPrecedes(i32 %274, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %273
  %279 = load i32, i32* @HEAPTUPLE_RECENTLY_DEAD, align 4
  store i32 %279, i32* %4, align 4
  br label %342

280:                                              ; preds = %273
  %281 = load i32, i32* @HEAPTUPLE_DEAD, align 4
  store i32 %281, i32* %4, align 4
  br label %342

282:                                              ; preds = %269
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %284 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_13__* %283)
  %285 = call i64 @MultiXactIdIsRunning(i32 %284, i32 0)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %293, label %287

287:                                              ; preds = %282
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %291 = load i32, i32* @InvalidTransactionId, align 4
  %292 = call i32 @SetHintBits(%struct.TYPE_13__* %288, i32 %289, i32 %290, i32 %291)
  br label %293

293:                                              ; preds = %287, %282
  br label %294

294:                                              ; preds = %293
  br label %295

295:                                              ; preds = %294
  %296 = load i32, i32* @HEAPTUPLE_LIVE, align 4
  store i32 %296, i32* %4, align 4
  br label %342

297:                                              ; preds = %243
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %332, label %304

304:                                              ; preds = %297
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %306 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_13__* %305)
  %307 = call i64 @TransactionIdIsInProgress(i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %304
  %310 = load i32, i32* @HEAPTUPLE_DELETE_IN_PROGRESS, align 4
  store i32 %310, i32* %4, align 4
  br label %342

311:                                              ; preds = %304
  %312 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %313 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_13__* %312)
  %314 = call i64 @TransactionIdDidCommit(i32 %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %311
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %318 = load i32, i32* %7, align 4
  %319 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %321 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_13__* %320)
  %322 = call i32 @SetHintBits(%struct.TYPE_13__* %317, i32 %318, i32 %319, i32 %321)
  br label %330

323:                                              ; preds = %311
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %325 = load i32, i32* %7, align 4
  %326 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %327 = load i32, i32* @InvalidTransactionId, align 4
  %328 = call i32 @SetHintBits(%struct.TYPE_13__* %324, i32 %325, i32 %326, i32 %327)
  %329 = load i32, i32* @HEAPTUPLE_LIVE, align 4
  store i32 %329, i32* %4, align 4
  br label %342

330:                                              ; preds = %316
  br label %331

331:                                              ; preds = %330
  br label %332

332:                                              ; preds = %331, %297
  %333 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %334 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_13__* %333)
  %335 = load i32, i32* %6, align 4
  %336 = call i32 @TransactionIdPrecedes(i32 %334, i32 %335)
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %340, label %338

338:                                              ; preds = %332
  %339 = load i32, i32* @HEAPTUPLE_RECENTLY_DEAD, align 4
  store i32 %339, i32* %4, align 4
  br label %342

340:                                              ; preds = %332
  %341 = load i32, i32* @HEAPTUPLE_DEAD, align 4
  store i32 %341, i32* %4, align 4
  br label %342

342:                                              ; preds = %340, %338, %323, %309, %295, %280, %278, %267, %241, %232, %219, %186, %166, %152, %145, %143, %136, %124, %104, %92, %86, %60, %54, %48, %33
  %343 = load i32, i32* %4, align 4
  ret i32 %343
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i32 @HeapTupleHeaderXminCommitted(%struct.TYPE_13__*) #1

declare dso_local i64 @HeapTupleHeaderXminInvalid(%struct.TYPE_13__*) #1

declare dso_local i32 @HeapTupleHeaderGetXvac(%struct.TYPE_13__*) #1

declare dso_local i64 @TransactionIdIsCurrentTransactionId(i32) #1

declare dso_local i64 @TransactionIdIsInProgress(i32) #1

declare dso_local i64 @TransactionIdDidCommit(i32) #1

declare dso_local i32 @SetHintBits(%struct.TYPE_13__*, i32, i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_13__*) #1

declare dso_local i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i64 @HeapTupleHeaderIsOnlyLocked(%struct.TYPE_13__*) #1

declare dso_local i32 @HeapTupleHeaderGetUpdateXid(%struct.TYPE_13__*) #1

declare dso_local i32 @HEAP_LOCKED_UPGRADED(i32) #1

declare dso_local i64 @MultiXactIdIsRunning(i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_13__*) #1

declare dso_local i32 @HeapTupleGetUpdateXid(%struct.TYPE_13__*) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @TransactionIdPrecedes(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
