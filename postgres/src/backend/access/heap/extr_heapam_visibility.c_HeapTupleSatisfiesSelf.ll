; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesSelf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam_visibility.c_HeapTupleSatisfiesSelf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@InvalidOid = common dso_local global i64 0, align 8
@HEAP_MOVED_OFF = common dso_local global i32 0, align 4
@HEAP_XMIN_INVALID = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i32 0, align 4
@HEAP_XMIN_COMMITTED = common dso_local global i32 0, align 4
@HEAP_MOVED_IN = common dso_local global i32 0, align 4
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@HEAP_XMAX_COMMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32)* @HeapTupleSatisfiesSelf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HeapTupleSatisfiesSelf(%struct.TYPE_12__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = call i32 @ItemPointerIsValid(i32* %17)
  %19 = call i32 @Assert(i32 %18)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @InvalidOid, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = call i32 @HeapTupleHeaderXminCommitted(%struct.TYPE_11__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %185, label %30

30:                                               ; preds = %3
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = call i64 @HeapTupleHeaderXminInvalid(%struct.TYPE_11__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %292

35:                                               ; preds = %30
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HEAP_MOVED_OFF, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %35
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = call i32 @HeapTupleHeaderGetXvac(%struct.TYPE_11__* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @TransactionIdIsCurrentTransactionId(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %292

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @TransactionIdIsInProgress(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %69, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @TransactionIdDidCommit(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %61 = load i32, i32* @InvalidTransactionId, align 4
  %62 = call i32 @SetHintBits(%struct.TYPE_11__* %58, i32 %59, i32 %60, i32 %61)
  store i32 0, i32* %4, align 4
  br label %292

63:                                               ; preds = %53
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %67 = load i32, i32* @InvalidTransactionId, align 4
  %68 = call i32 @SetHintBits(%struct.TYPE_11__* %64, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %49
  br label %184

70:                                               ; preds = %35
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @HEAP_MOVED_IN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %70
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = call i32 @HeapTupleHeaderGetXvac(%struct.TYPE_11__* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i64 @TransactionIdIsCurrentTransactionId(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %105, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %10, align 4
  %85 = call i64 @TransactionIdIsInProgress(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %292

88:                                               ; preds = %83
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @TransactionIdDidCommit(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %96 = load i32, i32* @InvalidTransactionId, align 4
  %97 = call i32 @SetHintBits(%struct.TYPE_11__* %93, i32 %94, i32 %95, i32 %96)
  br label %104

98:                                               ; preds = %88
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %102 = load i32, i32* @InvalidTransactionId, align 4
  %103 = call i32 @SetHintBits(%struct.TYPE_11__* %99, i32 %100, i32 %101, i32 %102)
  store i32 0, i32* %4, align 4
  br label %292

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %77
  br label %183

106:                                              ; preds = %70
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_11__* %107)
  %109 = call i64 @TransactionIdIsCurrentTransactionId(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %156

111:                                              ; preds = %106
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i32 1, i32* %4, align 4
  br label %292

119:                                              ; preds = %111
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i32 1, i32* %4, align 4
  br label %292

126:                                              ; preds = %119
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %126
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %135 = call i32 @HeapTupleGetUpdateXid(%struct.TYPE_11__* %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @TransactionIdIsValid(i32 %136)
  %138 = call i32 @Assert(i32 %137)
  %139 = load i32, i32* %11, align 4
  %140 = call i64 @TransactionIdIsCurrentTransactionId(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %133
  store i32 1, i32* %4, align 4
  br label %292

143:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %292

144:                                              ; preds = %126
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %146 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_11__* %145)
  %147 = call i64 @TransactionIdIsCurrentTransactionId(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %144
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %153 = load i32, i32* @InvalidTransactionId, align 4
  %154 = call i32 @SetHintBits(%struct.TYPE_11__* %150, i32 %151, i32 %152, i32 %153)
  store i32 1, i32* %4, align 4
  br label %292

155:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %292

156:                                              ; preds = %106
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %158 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_11__* %157)
  %159 = call i64 @TransactionIdIsInProgress(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  store i32 0, i32* %4, align 4
  br label %292

162:                                              ; preds = %156
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %164 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_11__* %163)
  %165 = call i64 @TransactionIdDidCommit(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %162
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %172 = call i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_11__* %171)
  %173 = call i32 @SetHintBits(%struct.TYPE_11__* %168, i32 %169, i32 %170, i32 %172)
  br label %180

174:                                              ; preds = %162
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %178 = load i32, i32* @InvalidTransactionId, align 4
  %179 = call i32 @SetHintBits(%struct.TYPE_11__* %175, i32 %176, i32 %177, i32 %178)
  store i32 0, i32* %4, align 4
  br label %292

180:                                              ; preds = %167
  br label %181

181:                                              ; preds = %180
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182, %105
  br label %184

184:                                              ; preds = %183, %69
  br label %185

185:                                              ; preds = %184, %3
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  store i32 1, i32* %4, align 4
  br label %292

193:                                              ; preds = %185
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %193
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  store i32 1, i32* %4, align 4
  br label %292

207:                                              ; preds = %200
  store i32 0, i32* %4, align 4
  br label %292

208:                                              ; preds = %193
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %243

215:                                              ; preds = %208
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  store i32 1, i32* %4, align 4
  br label %292

222:                                              ; preds = %215
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %224 = call i32 @HeapTupleGetUpdateXid(%struct.TYPE_11__* %223)
  store i32 %224, i32* %12, align 4
  %225 = load i32, i32* %12, align 4
  %226 = call i32 @TransactionIdIsValid(i32 %225)
  %227 = call i32 @Assert(i32 %226)
  %228 = load i32, i32* %12, align 4
  %229 = call i64 @TransactionIdIsCurrentTransactionId(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %222
  store i32 0, i32* %4, align 4
  br label %292

232:                                              ; preds = %222
  %233 = load i32, i32* %12, align 4
  %234 = call i64 @TransactionIdIsInProgress(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  store i32 1, i32* %4, align 4
  br label %292

237:                                              ; preds = %232
  %238 = load i32, i32* %12, align 4
  %239 = call i64 @TransactionIdDidCommit(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  store i32 0, i32* %4, align 4
  br label %292

242:                                              ; preds = %237
  store i32 1, i32* %4, align 4
  br label %292

243:                                              ; preds = %208
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %245 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_11__* %244)
  %246 = call i64 @TransactionIdIsCurrentTransactionId(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %243
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %248
  store i32 1, i32* %4, align 4
  br label %292

255:                                              ; preds = %248
  store i32 0, i32* %4, align 4
  br label %292

256:                                              ; preds = %243
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %258 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_11__* %257)
  %259 = call i64 @TransactionIdIsInProgress(i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %256
  store i32 1, i32* %4, align 4
  br label %292

262:                                              ; preds = %256
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %264 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_11__* %263)
  %265 = call i64 @TransactionIdDidCommit(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %262
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %269 = load i32, i32* %7, align 4
  %270 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %271 = load i32, i32* @InvalidTransactionId, align 4
  %272 = call i32 @SetHintBits(%struct.TYPE_11__* %268, i32 %269, i32 %270, i32 %271)
  store i32 1, i32* %4, align 4
  br label %292

273:                                              ; preds = %262
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %273
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %283 = load i32, i32* @InvalidTransactionId, align 4
  %284 = call i32 @SetHintBits(%struct.TYPE_11__* %280, i32 %281, i32 %282, i32 %283)
  store i32 1, i32* %4, align 4
  br label %292

285:                                              ; preds = %273
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %290 = call i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_11__* %289)
  %291 = call i32 @SetHintBits(%struct.TYPE_11__* %286, i32 %287, i32 %288, i32 %290)
  store i32 0, i32* %4, align 4
  br label %292

292:                                              ; preds = %285, %279, %267, %261, %255, %254, %242, %241, %236, %231, %221, %207, %206, %192, %174, %161, %155, %149, %143, %142, %125, %118, %98, %87, %57, %48, %34
  %293 = load i32, i32* %4, align 4
  ret i32 %293
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i32 @HeapTupleHeaderXminCommitted(%struct.TYPE_11__*) #1

declare dso_local i64 @HeapTupleHeaderXminInvalid(%struct.TYPE_11__*) #1

declare dso_local i32 @HeapTupleHeaderGetXvac(%struct.TYPE_11__*) #1

declare dso_local i64 @TransactionIdIsCurrentTransactionId(i32) #1

declare dso_local i64 @TransactionIdIsInProgress(i32) #1

declare dso_local i64 @TransactionIdDidCommit(i32) #1

declare dso_local i32 @SetHintBits(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @HeapTupleHeaderGetRawXmin(%struct.TYPE_11__*) #1

declare dso_local i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i32 @HeapTupleGetUpdateXid(%struct.TYPE_11__*) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i32 @HeapTupleHeaderGetRawXmax(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
