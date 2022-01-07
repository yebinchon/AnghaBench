; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesMVCC.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesMVCC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64 }

@InvalidOid = common dso_local global i64 0, align 8
@HEAP_MOVED_OFF = common dso_local global i32 0, align 4
@HEAP_XMIN_INVALID = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@HEAP_XMIN_COMMITTED = common dso_local global i32 0, align 4
@HEAP_MOVED_IN = common dso_local global i32 0, align 4
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@HEAP_XMAX_COMMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_17__*, i32)* @HeapTupleSatisfiesMVCC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HeapTupleSatisfiesMVCC(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %8, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = call i32 @ItemPointerIsValid(i32* %17)
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @InvalidOid, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %28 = call i32 @HeapTupleHeaderXminCommitted(%struct.TYPE_18__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %212, label %30

30:                                               ; preds = %3
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %32 = call i64 @HeapTupleHeaderXminInvalid(%struct.TYPE_18__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %339

35:                                               ; preds = %30
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HEAP_MOVED_OFF, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %71

42:                                               ; preds = %35
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %44 = call i32 @HeapTupleHeaderGetXvac(%struct.TYPE_18__* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @TransactionIdIsCurrentTransactionId(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %339

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %52 = call i64 @XidInMVCCSnapshot(i32 %50, %struct.TYPE_17__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @TransactionIdDidCommit(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %62 = load i32, i32* @InvalidTransactionId, align 4
  %63 = call i32 @SetHintBits(%struct.TYPE_18__* %59, i32 %60, i32 %61, i32 %62)
  store i32 0, i32* %4, align 4
  br label %339

64:                                               ; preds = %54
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %68 = load i32, i32* @InvalidTransactionId, align 4
  %69 = call i32 @SetHintBits(%struct.TYPE_18__* %65, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %49
  br label %211

71:                                               ; preds = %35
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @HEAP_MOVED_IN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %71
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %80 = call i32 @HeapTupleHeaderGetXvac(%struct.TYPE_18__* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i64 @TransactionIdIsCurrentTransactionId(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %107, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = call i64 @XidInMVCCSnapshot(i32 %85, %struct.TYPE_17__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %339

90:                                               ; preds = %84
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @TransactionIdDidCommit(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %98 = load i32, i32* @InvalidTransactionId, align 4
  %99 = call i32 @SetHintBits(%struct.TYPE_18__* %95, i32 %96, i32 %97, i32 %98)
  br label %106

100:                                              ; preds = %90
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %104 = load i32, i32* @InvalidTransactionId, align 4
  %105 = call i32 @SetHintBits(%struct.TYPE_18__* %101, i32 %102, i32 %103, i32 %104)
  store i32 0, i32* %4, align 4
  br label %339

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %78
  br label %210

108:                                              ; preds = %71
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %110 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_18__* %109)
  %111 = call i64 @TransactionIdIsCurrentTransactionId(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %182

113:                                              ; preds = %108
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %115 = call i64 @HeapTupleHeaderGetCmin(%struct.TYPE_18__* %114)
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sge i64 %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %339

121:                                              ; preds = %113
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  store i32 1, i32* %4, align 4
  br label %339

129:                                              ; preds = %121
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store i32 1, i32* %4, align 4
  br label %339

136:                                              ; preds = %129
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %136
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %145 = call i32 @HeapTupleGetUpdateXid(%struct.TYPE_18__* %144)
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @TransactionIdIsValid(i32 %146)
  %148 = call i32 @Assert(i32 %147)
  %149 = load i32, i32* %11, align 4
  %150 = call i64 @TransactionIdIsCurrentTransactionId(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %143
  store i32 1, i32* %4, align 4
  br label %339

153:                                              ; preds = %143
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %155 = call i64 @HeapTupleHeaderGetCmax(%struct.TYPE_18__* %154)
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp sge i64 %155, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  store i32 1, i32* %4, align 4
  br label %339

161:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %339

162:                                              ; preds = %136
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %164 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_18__* %163)
  %165 = call i64 @TransactionIdIsCurrentTransactionId(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %171 = load i32, i32* @InvalidTransactionId, align 4
  %172 = call i32 @SetHintBits(%struct.TYPE_18__* %168, i32 %169, i32 %170, i32 %171)
  store i32 1, i32* %4, align 4
  br label %339

173:                                              ; preds = %162
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %175 = call i64 @HeapTupleHeaderGetCmax(%struct.TYPE_18__* %174)
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp sge i64 %175, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %173
  store i32 1, i32* %4, align 4
  br label %339

181:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %339

182:                                              ; preds = %108
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %184 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_18__* %183)
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %186 = call i64 @XidInMVCCSnapshot(i32 %184, %struct.TYPE_17__* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  store i32 0, i32* %4, align 4
  br label %339

189:                                              ; preds = %182
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %191 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_18__* %190)
  %192 = call i64 @TransactionIdDidCommit(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %199 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_18__* %198)
  %200 = call i32 @SetHintBits(%struct.TYPE_18__* %195, i32 %196, i32 %197, i32 %199)
  br label %207

201:                                              ; preds = %189
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %205 = load i32, i32* @InvalidTransactionId, align 4
  %206 = call i32 @SetHintBits(%struct.TYPE_18__* %202, i32 %203, i32 %204, i32 %205)
  store i32 0, i32* %4, align 4
  br label %339

207:                                              ; preds = %194
  br label %208

208:                                              ; preds = %207
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209, %107
  br label %211

211:                                              ; preds = %210, %70
  br label %224

212:                                              ; preds = %3
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %214 = call i32 @HeapTupleHeaderXminFrozen(%struct.TYPE_18__* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %212
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %218 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_18__* %217)
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %220 = call i64 @XidInMVCCSnapshot(i32 %218, %struct.TYPE_17__* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  store i32 0, i32* %4, align 4
  br label %339

223:                                              ; preds = %216, %212
  br label %224

224:                                              ; preds = %223, %211
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %224
  store i32 1, i32* %4, align 4
  br label %339

232:                                              ; preds = %224
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %232
  store i32 1, i32* %4, align 4
  br label %339

239:                                              ; preds = %232
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %284

246:                                              ; preds = %239
  %247 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %249)
  %251 = icmp ne i64 %250, 0
  %252 = xor i1 %251, true
  %253 = zext i1 %252 to i32
  %254 = call i32 @Assert(i32 %253)
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %256 = call i32 @HeapTupleGetUpdateXid(%struct.TYPE_18__* %255)
  store i32 %256, i32* %12, align 4
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @TransactionIdIsValid(i32 %257)
  %259 = call i32 @Assert(i32 %258)
  %260 = load i32, i32* %12, align 4
  %261 = call i64 @TransactionIdIsCurrentTransactionId(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %246
  %264 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %265 = call i64 @HeapTupleHeaderGetCmax(%struct.TYPE_18__* %264)
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp sge i64 %265, %268
  br i1 %269, label %270, label %271

270:                                              ; preds = %263
  store i32 1, i32* %4, align 4
  br label %339

271:                                              ; preds = %263
  store i32 0, i32* %4, align 4
  br label %339

272:                                              ; preds = %246
  %273 = load i32, i32* %12, align 4
  %274 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %275 = call i64 @XidInMVCCSnapshot(i32 %273, %struct.TYPE_17__* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  store i32 1, i32* %4, align 4
  br label %339

278:                                              ; preds = %272
  %279 = load i32, i32* %12, align 4
  %280 = call i64 @TransactionIdDidCommit(i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  store i32 0, i32* %4, align 4
  br label %339

283:                                              ; preds = %278
  store i32 1, i32* %4, align 4
  br label %339

284:                                              ; preds = %239
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %330, label %291

291:                                              ; preds = %284
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %293 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_18__* %292)
  %294 = call i64 @TransactionIdIsCurrentTransactionId(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %305

296:                                              ; preds = %291
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %298 = call i64 @HeapTupleHeaderGetCmax(%struct.TYPE_18__* %297)
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = icmp sge i64 %298, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %296
  store i32 1, i32* %4, align 4
  br label %339

304:                                              ; preds = %296
  store i32 0, i32* %4, align 4
  br label %339

305:                                              ; preds = %291
  %306 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %307 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_18__* %306)
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %309 = call i64 @XidInMVCCSnapshot(i32 %307, %struct.TYPE_17__* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %305
  store i32 1, i32* %4, align 4
  br label %339

312:                                              ; preds = %305
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %314 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_18__* %313)
  %315 = call i64 @TransactionIdDidCommit(i32 %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %323, label %317

317:                                              ; preds = %312
  %318 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %319 = load i32, i32* %7, align 4
  %320 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %321 = load i32, i32* @InvalidTransactionId, align 4
  %322 = call i32 @SetHintBits(%struct.TYPE_18__* %318, i32 %319, i32 %320, i32 %321)
  store i32 1, i32* %4, align 4
  br label %339

323:                                              ; preds = %312
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %325 = load i32, i32* %7, align 4
  %326 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %328 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_18__* %327)
  %329 = call i32 @SetHintBits(%struct.TYPE_18__* %324, i32 %325, i32 %326, i32 %328)
  br label %338

330:                                              ; preds = %284
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %332 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_18__* %331)
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %334 = call i64 @XidInMVCCSnapshot(i32 %332, %struct.TYPE_17__* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %330
  store i32 1, i32* %4, align 4
  br label %339

337:                                              ; preds = %330
  br label %338

338:                                              ; preds = %337, %323
  store i32 0, i32* %4, align 4
  br label %339

339:                                              ; preds = %338, %336, %317, %311, %304, %303, %283, %282, %277, %271, %270, %238, %231, %222, %201, %188, %181, %180, %167, %161, %160, %152, %135, %128, %120, %100, %89, %58, %48, %34
  %340 = load i32, i32* %4, align 4
  ret i32 %340
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i32 @HeapTupleHeaderXminCommitted(%struct.TYPE_18__*) #1

declare dso_local i64 @HeapTupleHeaderXminInvalid(%struct.TYPE_18__*) #1

declare dso_local i32 @HeapTupleHeaderGetXvac(%struct.TYPE_18__*) #1

declare dso_local i64 @TransactionIdIsCurrentTransactionId(i32) #1

declare dso_local i64 @XidInMVCCSnapshot(i32, %struct.TYPE_17__*) #1

declare dso_local i64 @TransactionIdDidCommit(i32) #1

declare dso_local i32 @SetHintBits(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_18__*) #1

declare dso_local i64 @HeapTupleHeaderGetCmin(%struct.TYPE_18__*) #1

declare dso_local i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i32 @HeapTupleGetUpdateXid(%struct.TYPE_18__*) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i64 @HeapTupleHeaderGetCmax(%struct.TYPE_18__*) #1

declare dso_local i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_18__*) #1

declare dso_local i32 @HeapTupleHeaderXminFrozen(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
