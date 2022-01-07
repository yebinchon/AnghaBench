; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesDirty.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesDirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i8*, i32 }

@InvalidOid = common dso_local global i64 0, align 8
@InvalidTransactionId = common dso_local global i8* null, align 8
@HEAP_MOVED_OFF = common dso_local global i32 0, align 4
@HEAP_XMIN_INVALID = common dso_local global i32 0, align 4
@HEAP_XMIN_COMMITTED = common dso_local global i32 0, align 4
@HEAP_MOVED_IN = common dso_local global i32 0, align 4
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@HEAP_XMAX_COMMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_15__*, i32)* @HeapTupleSatisfiesDirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HeapTupleSatisfiesDirty(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %8, align 8
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 1
  %18 = call i32 @ItemPointerIsValid(i32* %17)
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @InvalidOid, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load i8*, i8** @InvalidTransactionId, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  store i8* %27, i8** %31, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %35 = call i32 @HeapTupleHeaderXminCommitted(%struct.TYPE_16__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %211, label %37

37:                                               ; preds = %3
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = call i64 @HeapTupleHeaderXminInvalid(%struct.TYPE_16__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %332

42:                                               ; preds = %37
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HEAP_MOVED_OFF, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %42
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %51 = call i8* @HeapTupleHeaderGetXvac(%struct.TYPE_16__* %50)
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i64 @TransactionIdIsCurrentTransactionId(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %332

56:                                               ; preds = %49
  %57 = load i8*, i8** %9, align 8
  %58 = call i64 @TransactionIdIsInProgress(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @TransactionIdDidCommit(i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %68 = load i8*, i8** @InvalidTransactionId, align 8
  %69 = call i32 @SetHintBits(%struct.TYPE_16__* %65, i32 %66, i32 %67, i8* %68)
  store i32 0, i32* %4, align 4
  br label %332

70:                                               ; preds = %60
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %74 = load i8*, i8** @InvalidTransactionId, align 8
  %75 = call i32 @SetHintBits(%struct.TYPE_16__* %71, i32 %72, i32 %73, i8* %74)
  br label %76

76:                                               ; preds = %70, %56
  br label %210

77:                                               ; preds = %42
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @HEAP_MOVED_IN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %113

84:                                               ; preds = %77
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %86 = call i8* @HeapTupleHeaderGetXvac(%struct.TYPE_16__* %85)
  store i8* %86, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i64 @TransactionIdIsCurrentTransactionId(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %112, label %90

90:                                               ; preds = %84
  %91 = load i8*, i8** %10, align 8
  %92 = call i64 @TransactionIdIsInProgress(i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %332

95:                                               ; preds = %90
  %96 = load i8*, i8** %10, align 8
  %97 = call i64 @TransactionIdDidCommit(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %103 = load i8*, i8** @InvalidTransactionId, align 8
  %104 = call i32 @SetHintBits(%struct.TYPE_16__* %100, i32 %101, i32 %102, i8* %103)
  br label %111

105:                                              ; preds = %95
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %109 = load i8*, i8** @InvalidTransactionId, align 8
  %110 = call i32 @SetHintBits(%struct.TYPE_16__* %106, i32 %107, i32 %108, i8* %109)
  store i32 0, i32* %4, align 4
  br label %332

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %84
  br label %209

113:                                              ; preds = %77
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %115 = call i8* @HeapTupleHeaderGetRawXmin(%struct.TYPE_16__* %114)
  %116 = call i64 @TransactionIdIsCurrentTransactionId(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %163

118:                                              ; preds = %113
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i32 1, i32* %4, align 4
  br label %332

126:                                              ; preds = %118
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store i32 1, i32* %4, align 4
  br label %332

133:                                              ; preds = %126
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %142 = call i8* @HeapTupleGetUpdateXid(%struct.TYPE_16__* %141)
  store i8* %142, i8** %11, align 8
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @TransactionIdIsValid(i8* %143)
  %145 = call i32 @Assert(i32 %144)
  %146 = load i8*, i8** %11, align 8
  %147 = call i64 @TransactionIdIsCurrentTransactionId(i8* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %140
  store i32 1, i32* %4, align 4
  br label %332

150:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %332

151:                                              ; preds = %133
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %153 = call i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_16__* %152)
  %154 = call i64 @TransactionIdIsCurrentTransactionId(i8* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %160 = load i8*, i8** @InvalidTransactionId, align 8
  %161 = call i32 @SetHintBits(%struct.TYPE_16__* %157, i32 %158, i32 %159, i8* %160)
  store i32 1, i32* %4, align 4
  br label %332

162:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  br label %332

163:                                              ; preds = %113
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %165 = call i8* @HeapTupleHeaderGetRawXmin(%struct.TYPE_16__* %164)
  %166 = call i64 @TransactionIdIsInProgress(i8* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %188

168:                                              ; preds = %163
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %170 = call i64 @HeapTupleHeaderIsSpeculative(%struct.TYPE_16__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %168
  %173 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %174 = call i32 @HeapTupleHeaderGetSpeculativeToken(%struct.TYPE_16__* %173)
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i32 @Assert(i32 %181)
  br label %183

183:                                              ; preds = %172, %168
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %185 = call i8* @HeapTupleHeaderGetRawXmin(%struct.TYPE_16__* %184)
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 1
  store i8* %185, i8** %187, align 8
  store i32 1, i32* %4, align 4
  br label %332

188:                                              ; preds = %163
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %190 = call i8* @HeapTupleHeaderGetRawXmin(%struct.TYPE_16__* %189)
  %191 = call i64 @TransactionIdDidCommit(i8* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %188
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %198 = call i8* @HeapTupleHeaderGetRawXmin(%struct.TYPE_16__* %197)
  %199 = call i32 @SetHintBits(%struct.TYPE_16__* %194, i32 %195, i32 %196, i8* %198)
  br label %206

200:                                              ; preds = %188
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %204 = load i8*, i8** @InvalidTransactionId, align 8
  %205 = call i32 @SetHintBits(%struct.TYPE_16__* %201, i32 %202, i32 %203, i8* %204)
  store i32 0, i32* %4, align 4
  br label %332

206:                                              ; preds = %193
  br label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207
  br label %209

209:                                              ; preds = %208, %112
  br label %210

210:                                              ; preds = %209, %76
  br label %211

211:                                              ; preds = %210, %3
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  store i32 1, i32* %4, align 4
  br label %332

219:                                              ; preds = %211
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %219
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  store i32 1, i32* %4, align 4
  br label %332

233:                                              ; preds = %226
  store i32 0, i32* %4, align 4
  br label %332

234:                                              ; preds = %219
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %272

241:                                              ; preds = %234
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  store i32 1, i32* %4, align 4
  br label %332

248:                                              ; preds = %241
  %249 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %250 = call i8* @HeapTupleGetUpdateXid(%struct.TYPE_16__* %249)
  store i8* %250, i8** %12, align 8
  %251 = load i8*, i8** %12, align 8
  %252 = call i32 @TransactionIdIsValid(i8* %251)
  %253 = call i32 @Assert(i32 %252)
  %254 = load i8*, i8** %12, align 8
  %255 = call i64 @TransactionIdIsCurrentTransactionId(i8* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %248
  store i32 0, i32* %4, align 4
  br label %332

258:                                              ; preds = %248
  %259 = load i8*, i8** %12, align 8
  %260 = call i64 @TransactionIdIsInProgress(i8* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %258
  %263 = load i8*, i8** %12, align 8
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  store i8* %263, i8** %265, align 8
  store i32 1, i32* %4, align 4
  br label %332

266:                                              ; preds = %258
  %267 = load i8*, i8** %12, align 8
  %268 = call i64 @TransactionIdDidCommit(i8* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %266
  store i32 0, i32* %4, align 4
  br label %332

271:                                              ; preds = %266
  store i32 1, i32* %4, align 4
  br label %332

272:                                              ; preds = %234
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %274 = call i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_16__* %273)
  %275 = call i64 @TransactionIdIsCurrentTransactionId(i8* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %272
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %277
  store i32 1, i32* %4, align 4
  br label %332

284:                                              ; preds = %277
  store i32 0, i32* %4, align 4
  br label %332

285:                                              ; preds = %272
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %287 = call i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_16__* %286)
  %288 = call i64 @TransactionIdIsInProgress(i8* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %302

290:                                              ; preds = %285
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %301, label %296

296:                                              ; preds = %290
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %298 = call i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_16__* %297)
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 0
  store i8* %298, i8** %300, align 8
  br label %301

301:                                              ; preds = %296, %290
  store i32 1, i32* %4, align 4
  br label %332

302:                                              ; preds = %285
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %304 = call i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_16__* %303)
  %305 = call i64 @TransactionIdDidCommit(i8* %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %313, label %307

307:                                              ; preds = %302
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %309 = load i32, i32* %7, align 4
  %310 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %311 = load i8*, i8** @InvalidTransactionId, align 8
  %312 = call i32 @SetHintBits(%struct.TYPE_16__* %308, i32 %309, i32 %310, i8* %311)
  store i32 1, i32* %4, align 4
  br label %332

313:                                              ; preds = %302
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %313
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %321 = load i32, i32* %7, align 4
  %322 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %323 = load i8*, i8** @InvalidTransactionId, align 8
  %324 = call i32 @SetHintBits(%struct.TYPE_16__* %320, i32 %321, i32 %322, i8* %323)
  store i32 1, i32* %4, align 4
  br label %332

325:                                              ; preds = %313
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %327 = load i32, i32* %7, align 4
  %328 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %330 = call i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_16__* %329)
  %331 = call i32 @SetHintBits(%struct.TYPE_16__* %326, i32 %327, i32 %328, i8* %330)
  store i32 0, i32* %4, align 4
  br label %332

332:                                              ; preds = %325, %319, %307, %301, %284, %283, %271, %270, %262, %257, %247, %233, %232, %218, %200, %183, %162, %156, %150, %149, %132, %125, %105, %94, %64, %55, %41
  %333 = load i32, i32* %4, align 4
  ret i32 %333
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i32 @HeapTupleHeaderXminCommitted(%struct.TYPE_16__*) #1

declare dso_local i64 @HeapTupleHeaderXminInvalid(%struct.TYPE_16__*) #1

declare dso_local i8* @HeapTupleHeaderGetXvac(%struct.TYPE_16__*) #1

declare dso_local i64 @TransactionIdIsCurrentTransactionId(i8*) #1

declare dso_local i64 @TransactionIdIsInProgress(i8*) #1

declare dso_local i64 @TransactionIdDidCommit(i8*) #1

declare dso_local i32 @SetHintBits(%struct.TYPE_16__*, i32, i32, i8*) #1

declare dso_local i8* @HeapTupleHeaderGetRawXmin(%struct.TYPE_16__*) #1

declare dso_local i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i8* @HeapTupleGetUpdateXid(%struct.TYPE_16__*) #1

declare dso_local i32 @TransactionIdIsValid(i8*) #1

declare dso_local i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_16__*) #1

declare dso_local i64 @HeapTupleHeaderIsSpeculative(%struct.TYPE_16__*) #1

declare dso_local i32 @HeapTupleHeaderGetSpeculativeToken(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
