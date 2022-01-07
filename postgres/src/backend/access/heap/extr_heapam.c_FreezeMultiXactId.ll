; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_FreezeMultiXactId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_FreezeMultiXactId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@InvalidTransactionId = common dso_local global i32 0, align 4
@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@FRM_INVALIDATE_XMAX = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"found multixact %u from before relminmxid %u\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"multixact %u from before cutoff %u found to be still running\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"found update xid %u from before relfrozenxid %u\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"cannot freeze committed update xid %u\00", align 1
@FRM_RETURN_IS_XID = common dso_local global i32 0, align 4
@FRM_NOOP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"found update xid %u from before xid cutoff %u\00", align 1
@FRM_MARK_COMMITTED = common dso_local global i32 0, align 4
@FRM_RETURN_IS_MULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32*)* @FreezeMultiXactId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FreezeMultiXactId(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_6__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %27 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i32*, i32** %15, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %31 = and i32 %29, %30
  %32 = call i32 @Assert(i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @MultiXactIdIsValid(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %7
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @HEAP_LOCKED_UPGRADED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36, %7
  %41 = load i32, i32* @FRM_INVALIDATE_XMAX, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %45, i32* %8, align 4
  br label %385

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @MultiXactIdPrecedes(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 (i8*, i32, ...) @errmsg_internal(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = call i32 @ereport(i32 %52, i32 %57)
  br label %138

59:                                               ; preds = %46
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i64 @MultiXactIdPrecedes(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %137

64:                                               ; preds = %59
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %66)
  %68 = call i64 @MultiXactIdIsRunning(i32 %65, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load i32, i32* @ERROR, align 4
  %72 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %73 = call i32 @errcode(i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 (i8*, i32, ...) @errmsg_internal(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  %77 = call i32 @ereport(i32 %71, i32 %76)
  br label %78

78:                                               ; preds = %70, %64
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* @FRM_INVALIDATE_XMAX, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %83
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %87, i32* %16, align 4
  br label %135

88:                                               ; preds = %78
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @MultiXactIdGetUpdateXid(i32 %89, i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i32 @TransactionIdIsValid(i32 %92)
  %94 = call i32 @Assert(i32 %93)
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i64 @TransactionIdPrecedes(i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %88
  %100 = load i32, i32* @ERROR, align 4
  %101 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %102 = call i32 @errcode(i32 %101)
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 (i8*, i32, ...) @errmsg_internal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %104)
  %106 = call i32 @ereport(i32 %100, i32 %105)
  br label %107

107:                                              ; preds = %99, %88
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %13, align 4
  %110 = call i64 @TransactionIdPrecedes(i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %107
  %113 = load i32, i32* %16, align 4
  %114 = call i64 @TransactionIdDidCommit(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load i32, i32* @ERROR, align 4
  %118 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %119 = call i32 @errcode(i32 %118)
  %120 = load i32, i32* %16, align 4
  %121 = call i32 (i8*, i32, ...) @errmsg_internal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  %122 = call i32 @ereport(i32 %117, i32 %121)
  br label %123

123:                                              ; preds = %116, %112
  %124 = load i32, i32* @FRM_INVALIDATE_XMAX, align 4
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %124
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %128, i32* %16, align 4
  br label %134

129:                                              ; preds = %107
  %130 = load i32, i32* @FRM_RETURN_IS_XID, align 4
  %131 = load i32*, i32** %15, align 8
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %130
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %129, %123
  br label %135

135:                                              ; preds = %134, %82
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %8, align 4
  br label %385

137:                                              ; preds = %59
  br label %138

138:                                              ; preds = %137, %51
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %141)
  %143 = call i32 @GetMultiXactIdMembers(i32 %140, %struct.TYPE_6__** %18, i32 0, i64 %142)
  store i32 %143, i32* %19, align 4
  %144 = load i32, i32* %19, align 4
  %145 = icmp sle i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load i32, i32* @FRM_INVALIDATE_XMAX, align 4
  %148 = load i32*, i32** %15, align 8
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %147
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %151, i32* %8, align 4
  br label %385

152:                                              ; preds = %139
  store i32 0, i32* %20, align 4
  store i32 0, i32* %17, align 4
  br label %153

153:                                              ; preds = %169, %152
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* %19, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %172

157:                                              ; preds = %153
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %13, align 4
  %165 = call i64 @TransactionIdPrecedes(i32 %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  store i32 1, i32* %20, align 4
  br label %172

168:                                              ; preds = %157
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  br label %153

172:                                              ; preds = %167, %153
  %173 = load i32, i32* %20, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* @FRM_NOOP, align 4
  %177 = load i32*, i32** %15, align 8
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %176
  store i32 %179, i32* %177, align 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %181 = call i32 @pfree(%struct.TYPE_6__* %180)
  %182 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %182, i32* %8, align 4
  br label %385

183:                                              ; preds = %172
  store i32 0, i32* %21, align 4
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = mul i64 8, %185
  %187 = trunc i64 %186 to i32
  %188 = call %struct.TYPE_6__* @palloc(i32 %187)
  store %struct.TYPE_6__* %188, %struct.TYPE_6__** %22, align 8
  store i32 0, i32* %23, align 4
  %189 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %189, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %17, align 4
  br label %190

190:                                              ; preds = %333, %183
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %19, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %336

194:                                              ; preds = %190
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %196 = load i32, i32* %17, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @ISUPDATE_from_mxstatus(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %289

203:                                              ; preds = %194
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %205 = load i32, i32* %17, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %26, align 4
  %210 = load i32, i32* %26, align 4
  %211 = call i32 @TransactionIdIsValid(i32 %210)
  %212 = call i32 @Assert(i32 %211)
  %213 = load i32, i32* %26, align 4
  %214 = load i32, i32* %11, align 4
  %215 = call i64 @TransactionIdPrecedes(i32 %213, i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %203
  %218 = load i32, i32* @ERROR, align 4
  %219 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %220 = call i32 @errcode(i32 %219)
  %221 = load i32, i32* %26, align 4
  %222 = load i32, i32* %11, align 4
  %223 = call i32 (i8*, i32, ...) @errmsg_internal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %221, i32 %222)
  %224 = call i32 @ereport(i32 %218, i32 %223)
  br label %225

225:                                              ; preds = %217, %203
  %226 = load i32, i32* %26, align 4
  %227 = call i64 @TransactionIdIsCurrentTransactionId(i32 %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = load i32, i32* %26, align 4
  %231 = call i64 @TransactionIdIsInProgress(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %241

233:                                              ; preds = %229, %225
  %234 = load i32, i32* %24, align 4
  %235 = call i32 @TransactionIdIsValid(i32 %234)
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = zext i1 %237 to i32
  %239 = call i32 @Assert(i32 %238)
  %240 = load i32, i32* %26, align 4
  store i32 %240, i32* %24, align 4
  br label %255

241:                                              ; preds = %229
  %242 = load i32, i32* %26, align 4
  %243 = call i64 @TransactionIdDidCommit(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %241
  %246 = load i32, i32* %24, align 4
  %247 = call i32 @TransactionIdIsValid(i32 %246)
  %248 = icmp ne i32 %247, 0
  %249 = xor i1 %248, true
  %250 = zext i1 %249 to i32
  %251 = call i32 @Assert(i32 %250)
  store i32 1, i32* %25, align 4
  %252 = load i32, i32* %26, align 4
  store i32 %252, i32* %24, align 4
  br label %254

253:                                              ; preds = %241
  br label %254

254:                                              ; preds = %253, %245
  br label %255

255:                                              ; preds = %254, %233
  %256 = load i32, i32* %24, align 4
  %257 = call i32 @TransactionIdIsValid(i32 %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %255
  %260 = load i32, i32* %24, align 4
  %261 = load i32, i32* %13, align 4
  %262 = call i64 @TransactionIdPrecedes(i32 %260, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %259
  %265 = load i32, i32* @ERROR, align 4
  %266 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %267 = call i32 @errcode(i32 %266)
  %268 = load i32, i32* %24, align 4
  %269 = load i32, i32* %13, align 4
  %270 = call i32 (i8*, i32, ...) @errmsg_internal(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %268, i32 %269)
  %271 = call i32 @ereport(i32 %265, i32 %270)
  br label %272

272:                                              ; preds = %264, %259, %255
  %273 = load i32, i32* %24, align 4
  %274 = call i32 @TransactionIdIsValid(i32 %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %288

276:                                              ; preds = %272
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %278 = load i32, i32* %21, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %21, align 4
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i64 %280
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %283 = load i32, i32* %17, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i64 %284
  %286 = bitcast %struct.TYPE_6__* %281 to i8*
  %287 = bitcast %struct.TYPE_6__* %285 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %286, i8* align 4 %287, i64 8, i1 false)
  br label %288

288:                                              ; preds = %276, %272
  br label %332

289:                                              ; preds = %194
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %291 = load i32, i32* %17, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = call i64 @TransactionIdIsCurrentTransactionId(i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %307, label %298

298:                                              ; preds = %289
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %300 = load i32, i32* %17, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = call i64 @TransactionIdIsInProgress(i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %331

307:                                              ; preds = %298, %289
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %309 = load i32, i32* %17, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %13, align 4
  %315 = call i64 @TransactionIdPrecedes(i32 %313, i32 %314)
  %316 = icmp ne i64 %315, 0
  %317 = xor i1 %316, true
  %318 = zext i1 %317 to i32
  %319 = call i32 @Assert(i32 %318)
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %321 = load i32, i32* %21, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %21, align 4
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i64 %323
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %326 = load i32, i32* %17, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i64 %327
  %329 = bitcast %struct.TYPE_6__* %324 to i8*
  %330 = bitcast %struct.TYPE_6__* %328 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %329, i8* align 4 %330, i64 8, i1 false)
  store i32 1, i32* %23, align 4
  br label %331

331:                                              ; preds = %307, %298
  br label %332

332:                                              ; preds = %331, %288
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %17, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %17, align 4
  br label %190

336:                                              ; preds = %190
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %338 = call i32 @pfree(%struct.TYPE_6__* %337)
  %339 = load i32, i32* %21, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %336
  %342 = load i32, i32* @FRM_INVALIDATE_XMAX, align 4
  %343 = load i32*, i32** %15, align 8
  %344 = load i32, i32* %343, align 4
  %345 = or i32 %344, %342
  store i32 %345, i32* %343, align 4
  %346 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %346, i32* %16, align 4
  br label %381

347:                                              ; preds = %336
  %348 = load i32, i32* %24, align 4
  %349 = call i32 @TransactionIdIsValid(i32 %348)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %372

351:                                              ; preds = %347
  %352 = load i32, i32* %23, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %372, label %354

354:                                              ; preds = %351
  %355 = load i32, i32* %21, align 4
  %356 = icmp eq i32 %355, 1
  %357 = zext i1 %356 to i32
  %358 = call i32 @Assert(i32 %357)
  %359 = load i32, i32* @FRM_RETURN_IS_XID, align 4
  %360 = load i32*, i32** %15, align 8
  %361 = load i32, i32* %360, align 4
  %362 = or i32 %361, %359
  store i32 %362, i32* %360, align 4
  %363 = load i32, i32* %25, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %354
  %366 = load i32, i32* @FRM_MARK_COMMITTED, align 4
  %367 = load i32*, i32** %15, align 8
  %368 = load i32, i32* %367, align 4
  %369 = or i32 %368, %366
  store i32 %369, i32* %367, align 4
  br label %370

370:                                              ; preds = %365, %354
  %371 = load i32, i32* %24, align 4
  store i32 %371, i32* %16, align 4
  br label %380

372:                                              ; preds = %351, %347
  %373 = load i32, i32* %21, align 4
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %375 = call i32 @MultiXactIdCreateFromMembers(i32 %373, %struct.TYPE_6__* %374)
  store i32 %375, i32* %16, align 4
  %376 = load i32, i32* @FRM_RETURN_IS_MULTI, align 4
  %377 = load i32*, i32** %15, align 8
  %378 = load i32, i32* %377, align 4
  %379 = or i32 %378, %376
  store i32 %379, i32* %377, align 4
  br label %380

380:                                              ; preds = %372, %370
  br label %381

381:                                              ; preds = %380, %341
  %382 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %383 = call i32 @pfree(%struct.TYPE_6__* %382)
  %384 = load i32, i32* %16, align 4
  store i32 %384, i32* %8, align 4
  br label %385

385:                                              ; preds = %381, %175, %146, %135, %40
  %386 = load i32, i32* %8, align 4
  ret i32 %386
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @MultiXactIdIsValid(i32) #1

declare dso_local i64 @HEAP_LOCKED_UPGRADED(i32) #1

declare dso_local i64 @MultiXactIdPrecedes(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i32, ...) #1

declare dso_local i64 @MultiXactIdIsRunning(i32, i64) #1

declare dso_local i64 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i32 @MultiXactIdGetUpdateXid(i32, i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i64 @TransactionIdDidCommit(i32) #1

declare dso_local i32 @GetMultiXactIdMembers(i32, %struct.TYPE_6__**, i32, i64) #1

declare dso_local i32 @pfree(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @palloc(i32) #1

declare dso_local i64 @ISUPDATE_from_mxstatus(i32) #1

declare dso_local i64 @TransactionIdIsCurrentTransactionId(i32) #1

declare dso_local i64 @TransactionIdIsInProgress(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MultiXactIdCreateFromMembers(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
