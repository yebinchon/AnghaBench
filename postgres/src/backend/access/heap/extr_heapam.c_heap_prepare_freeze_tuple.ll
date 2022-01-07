; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_prepare_freeze_tuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_prepare_freeze_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i8* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_DATA_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"found xmin %u from before relfrozenxid %u\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"uncommitted xmin %u from before xid cutoff %u needs to be frozen\00", align 1
@HEAP_XMIN_FROZEN = common dso_local global i32 0, align 4
@HEAP_XMAX_IS_MULTI = common dso_local global i32 0, align 4
@FRM_INVALIDATE_XMAX = common dso_local global i32 0, align 4
@FRM_RETURN_IS_XID = common dso_local global i32 0, align 4
@HEAP_XMAX_BITS = common dso_local global i32 0, align 4
@FRM_MARK_COMMITTED = common dso_local global i32 0, align 4
@HEAP_XMAX_COMMITTED = common dso_local global i32 0, align 4
@FRM_RETURN_IS_MULTI = common dso_local global i32 0, align 4
@HEAP_KEYS_UPDATED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"found xmax %u from before relfrozenxid %u\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"cannot freeze committed xmax %u\00", align 1
@HEAP_XMAX_INVALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"found xmax %u (infomask 0x%04x) not frozen, not multi, not normal\00", align 1
@InvalidTransactionId = common dso_local global i8* null, align 8
@HEAP_HOT_UPDATED = common dso_local global i32 0, align 4
@HEAP_MOVED = common dso_local global i32 0, align 4
@HEAP_MOVED_OFF = common dso_local global i32 0, align 4
@XLH_INVALID_XVAC = common dso_local global i32 0, align 4
@XLH_FREEZE_XVAC = common dso_local global i32 0, align 4
@HEAP_XMIN_INVALID = common dso_local global i32 0, align 4
@HEAP_XMIN_COMMITTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_prepare_freeze_tuple(%struct.TYPE_9__* %0, i8* %1, i8* %2, i8* %3, i8* %4, %struct.TYPE_8__* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  store i32 0, i32* %25, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = call i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_9__* %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = call i8* @HeapTupleHeaderGetXmin(%struct.TYPE_9__* %40)
  store i8* %41, i8** %19, align 8
  %42 = load i8*, i8** %19, align 8
  %43 = call i64 @TransactionIdIsNormal(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %7
  store i32 1, i32* %17, align 4
  br label %84

46:                                               ; preds = %7
  %47 = load i8*, i8** %19, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @TransactionIdPrecedes(i8* %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i32, i32* @ERROR, align 4
  %53 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %54 = call i32 @errcode(i32 %53)
  %55 = load i8*, i8** %19, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 (i8*, i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %55, i8* %56)
  %58 = call i32 @ereport(i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %51, %46
  %60 = load i8*, i8** %19, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @TransactionIdPrecedes(i8* %60, i8* %61)
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load i8*, i8** %19, align 8
  %67 = call i64 @TransactionIdDidCommit(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* @ERROR, align 4
  %71 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %72 = call i32 @errcode(i32 %71)
  %73 = load i8*, i8** %19, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = call i32 (i8*, i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* %73, i8* %74)
  %76 = call i32 @ereport(i32 %70, i32 %75)
  br label %77

77:                                               ; preds = %69, %65
  %78 = load i32, i32* @HEAP_XMIN_FROZEN, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  store i32 1, i32* %15, align 4
  br label %83

83:                                               ; preds = %77, %59
  br label %84

84:                                               ; preds = %83, %45
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = call i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_9__* %85)
  store i8* %86, i8** %19, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @HEAP_XMAX_IS_MULTI, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %166

93:                                               ; preds = %84
  %94 = load i8*, i8** %19, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %9, align 8
  %99 = load i8*, i8** %10, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = call i8* @FreezeMultiXactId(i8* %94, i32 %97, i8* %98, i8* %99, i8* %100, i8* %101, i32* %21)
  store i8* %102, i8** %20, align 8
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* @FRM_INVALIDATE_XMAX, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* @FRM_RETURN_IS_XID, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %93
  %111 = load i32, i32* @HEAP_XMAX_BITS, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load i8*, i8** %20, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* @FRM_MARK_COMMITTED, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %110
  %125 = load i32, i32* @HEAP_XMAX_COMMITTED, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %110
  store i32 1, i32* %15, align 4
  br label %165

131:                                              ; preds = %93
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* @FRM_RETURN_IS_MULTI, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %164

136:                                              ; preds = %131
  %137 = load i32, i32* @HEAP_XMAX_BITS, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i8*, i8** %20, align 8
  %150 = call i32 @GetMultiXactIdHintBits(i8* %149, i32* %22, i32* %23)
  %151 = load i32, i32* %22, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* %23, align 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load i8*, i8** %20, align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  store i8* %161, i8** %163, align 8
  store i32 1, i32* %15, align 4
  br label %164

164:                                              ; preds = %136, %131
  br label %165

165:                                              ; preds = %164, %130
  br label %233

166:                                              ; preds = %84
  %167 = load i8*, i8** %19, align 8
  %168 = call i64 @TransactionIdIsNormal(i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %208

170:                                              ; preds = %166
  %171 = load i8*, i8** %19, align 8
  %172 = load i8*, i8** %9, align 8
  %173 = call i32 @TransactionIdPrecedes(i8* %171, i8* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %170
  %176 = load i32, i32* @ERROR, align 4
  %177 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %178 = call i32 @errcode(i32 %177)
  %179 = load i8*, i8** %19, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = call i32 (i8*, i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %179, i8* %180)
  %182 = call i32 @ereport(i32 %176, i32 %181)
  br label %183

183:                                              ; preds = %175, %170
  %184 = load i8*, i8** %19, align 8
  %185 = load i8*, i8** %11, align 8
  %186 = call i32 @TransactionIdPrecedes(i8* %184, i8* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %206

188:                                              ; preds = %183
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %205, label %194

194:                                              ; preds = %188
  %195 = load i8*, i8** %19, align 8
  %196 = call i64 @TransactionIdDidCommit(i8* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %194
  %199 = load i32, i32* @ERROR, align 4
  %200 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %201 = call i32 @errcode(i32 %200)
  %202 = load i8*, i8** %19, align 8
  %203 = call i32 (i8*, i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %202)
  %204 = call i32 @ereport(i32 %199, i32 %203)
  br label %205

205:                                              ; preds = %198, %194, %188
  store i32 1, i32* %18, align 4
  br label %207

206:                                              ; preds = %183
  store i32 0, i32* %18, align 4
  br label %207

207:                                              ; preds = %206, %205
  br label %232

208:                                              ; preds = %166
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %208
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %217 = call i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_9__* %216)
  %218 = call i32 @TransactionIdIsValid(i8* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %215, %208
  store i32 0, i32* %18, align 4
  store i32 1, i32* %16, align 4
  br label %231

221:                                              ; preds = %215
  %222 = load i32, i32* @ERROR, align 4
  %223 = load i32, i32* @ERRCODE_DATA_CORRUPTED, align 4
  %224 = call i32 @errcode(i32 %223)
  %225 = load i8*, i8** %19, align 8
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i8*, i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i8* %225, i32 %228)
  %230 = call i32 @ereport(i32 %222, i32 %229)
  br label %231

231:                                              ; preds = %221, %220
  br label %232

232:                                              ; preds = %231, %207
  br label %233

233:                                              ; preds = %232, %165
  %234 = load i32, i32* %18, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %268

236:                                              ; preds = %233
  %237 = load i32, i32* %16, align 4
  %238 = icmp ne i32 %237, 0
  %239 = xor i1 %238, true
  %240 = zext i1 %239 to i32
  %241 = call i32 @Assert(i32 %240)
  %242 = load i8*, i8** @InvalidTransactionId, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 3
  store i8* %242, i8** %244, align 8
  %245 = load i32, i32* @HEAP_XMAX_BITS, align 4
  %246 = xor i32 %245, -1
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, %246
  store i32 %250, i32* %248, align 4
  %251 = load i32, i32* @HEAP_XMAX_INVALID, align 4
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  %256 = load i32, i32* @HEAP_HOT_UPDATED, align 4
  %257 = xor i32 %256, -1
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = and i32 %260, %257
  store i32 %261, i32* %259, align 8
  %262 = load i32, i32* @HEAP_KEYS_UPDATED, align 4
  %263 = xor i32 %262, -1
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, %263
  store i32 %267, i32* %265, align 8
  store i32 1, i32* %15, align 4
  br label %268

268:                                              ; preds = %236, %233
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @HEAP_MOVED, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %316

275:                                              ; preds = %268
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %277 = call i8* @HeapTupleHeaderGetXvac(%struct.TYPE_9__* %276)
  store i8* %277, i8** %19, align 8
  %278 = load i8*, i8** %19, align 8
  %279 = call i64 @TransactionIdIsNormal(i8* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %315

281:                                              ; preds = %275
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @HEAP_MOVED_OFF, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %281
  %289 = load i32, i32* @XLH_INVALID_XVAC, align 4
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = or i32 %292, %289
  store i32 %293, i32* %291, align 8
  br label %300

294:                                              ; preds = %281
  %295 = load i32, i32* @XLH_FREEZE_XVAC, align 4
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 8
  br label %300

300:                                              ; preds = %294, %288
  %301 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @HEAP_XMIN_INVALID, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  %307 = xor i1 %306, true
  %308 = zext i1 %307 to i32
  %309 = call i32 @Assert(i32 %308)
  %310 = load i32, i32* @HEAP_XMIN_COMMITTED, align 4
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = or i32 %313, %310
  store i32 %314, i32* %312, align 4
  store i32 1, i32* %15, align 4
  br label %315

315:                                              ; preds = %300, %275
  br label %316

316:                                              ; preds = %315, %268
  %317 = load i32, i32* %17, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %327

319:                                              ; preds = %316
  %320 = load i32, i32* %18, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %325, label %322

322:                                              ; preds = %319
  %323 = load i32, i32* %16, align 4
  %324 = icmp ne i32 %323, 0
  br label %325

325:                                              ; preds = %322, %319
  %326 = phi i1 [ true, %319 ], [ %324, %322 ]
  br label %327

327:                                              ; preds = %325, %316
  %328 = phi i1 [ false, %316 ], [ %326, %325 ]
  %329 = zext i1 %328 to i32
  %330 = load i32*, i32** %14, align 8
  store i32 %329, i32* %330, align 4
  %331 = load i32, i32* %15, align 4
  ret i32 %331
}

declare dso_local i8* @HeapTupleHeaderGetRawXmax(%struct.TYPE_9__*) #1

declare dso_local i8* @HeapTupleHeaderGetXmin(%struct.TYPE_9__*) #1

declare dso_local i64 @TransactionIdIsNormal(i8*) #1

declare dso_local i32 @TransactionIdPrecedes(i8*, i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i8*, ...) #1

declare dso_local i64 @TransactionIdDidCommit(i8*) #1

declare dso_local i8* @FreezeMultiXactId(i8*, i32, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @GetMultiXactIdHintBits(i8*, i32*, i32*) #1

declare dso_local i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i32 @TransactionIdIsValid(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @HeapTupleHeaderGetXvac(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
