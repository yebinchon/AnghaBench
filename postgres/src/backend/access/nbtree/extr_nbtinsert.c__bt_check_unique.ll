; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_check_unique.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_check_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i64, i32, i64, i64, %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }

@InvalidBuffer = common dso_local global i64 0, align 8
@UNIQUE_CHECK_EXISTING = common dso_local global i64 0, align 8
@UNIQUE_CHECK_PARTIAL = common dso_local global i64 0, align 8
@InvalidTransactionId = common dso_local global i32 0, align 4
@SnapshotSelf = common dso_local global %struct.TYPE_16__* null, align 8
@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_UNIQUE_VIOLATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"duplicate key value violates unique constraint \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Key %s already exists.\00", align 1
@BTP_HAS_GARBAGE = common dso_local global i32 0, align 4
@P_HIKEY = common dso_local global i64 0, align 8
@BT_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"fell off the end of index \22%s\22\00", align 1
@ERRCODE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to re-find tuple within index \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"This may be because of a non-immutable index expression.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_20__*, i32, i64, i32*, i32*)* @_bt_check_unique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_check_unique(i32 %0, %struct.TYPE_20__* %1, i32 %2, i64 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_16__, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_19__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca { i64, i32 }, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_17__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %14, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %15, align 8
  %41 = load i64, i64* @InvalidBuffer, align 8
  store i64 %41, i64* %21, align 8
  store i32 0, i32* %22, align 4
  %42 = load i32*, i32** %12, align 8
  store i32 1, i32* %42, align 4
  %43 = bitcast { i64, i32 }* %23 to i8*
  %44 = bitcast %struct.TYPE_16__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 12, i1 false)
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %46 = load i64, i64* %45, align 4
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @InitDirtySnapshot(i64 %46, i32 %48)
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @BufferGetPage(i64 %52)
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = call i64 @PageGetSpecialPointer(i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %56, %struct.TYPE_19__** %20, align 8
  %57 = load i32, i32* %19, align 4
  %58 = call i64 @PageGetMaxOffsetNumber(i32 %57)
  store i64 %58, i64* %18, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @Assert(i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %68 = call i64 @_bt_binsrch_insert(i32 %66, %struct.TYPE_20__* %67)
  store i64 %68, i64* %17, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %6
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %17, align 8
  %78 = icmp eq i64 %76, %77
  br label %79

79:                                               ; preds = %73, %6
  %80 = phi i1 [ true, %6 ], [ %78, %73 ]
  %81 = zext i1 %80 to i32
  %82 = call i32 @Assert(i32 %81)
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @Assert(i32 %88)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  %94 = zext i1 %93 to i32
  %95 = call i32 @Assert(i32 %94)
  br label %96

96:                                               ; preds = %376, %79
  %97 = load i64, i64* %17, align 8
  %98 = load i64, i64* %18, align 8
  %99 = icmp sle i64 %97, %98
  br i1 %99, label %100, label %316

100:                                              ; preds = %96
  %101 = load i64, i64* %21, align 8
  %102 = load i64, i64* @InvalidBuffer, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %140

104:                                              ; preds = %100
  %105 = load i64, i64* %17, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %105, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %104
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @Assert(i32 %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %119 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_19__* %118)
  %120 = icmp sge i64 %117, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @Assert(i32 %121)
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp sle i64 %125, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @Assert(i32 %130)
  %132 = load i32, i32* %8, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %134 = load i32, i32* %19, align 4
  %135 = load i64, i64* %17, align 8
  %136 = call i64 @_bt_compare(i32 %132, %struct.TYPE_18__* %133, i32 %134, i64 %135)
  %137 = icmp slt i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @Assert(i32 %138)
  br label %377

140:                                              ; preds = %104, %100
  %141 = load i32, i32* %19, align 4
  %142 = load i64, i64* %17, align 8
  %143 = call i32 @PageGetItemId(i32 %141, i64 %142)
  store i32 %143, i32* %24, align 4
  %144 = load i32, i32* %24, align 4
  %145 = call i32 @ItemIdIsDead(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %315, label %147

147:                                              ; preds = %140
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %150 = load i32, i32* %19, align 4
  %151 = load i64, i64* %17, align 8
  %152 = call i64 @_bt_compare(i32 %148, %struct.TYPE_18__* %149, i32 %150, i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %377

155:                                              ; preds = %147
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* %24, align 4
  %158 = call i64 @PageGetItem(i32 %156, i32 %157)
  %159 = inttoptr i64 %158 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %159, %struct.TYPE_17__** %25, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %27, align 4
  %163 = load i64, i64* %11, align 8
  %164 = load i64, i64* @UNIQUE_CHECK_EXISTING, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %155
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = call i64 @ItemPointerCompare(i32* %27, i32* %168)
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i32 1, i32* %22, align 4
  br label %314

172:                                              ; preds = %166, %155
  %173 = load i32, i32* %10, align 4
  %174 = call i64 @table_index_fetch_tuple_check(i32 %173, i32* %27, %struct.TYPE_16__* %16, i32* %28)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %289

176:                                              ; preds = %172
  %177 = load i64, i64* %11, align 8
  %178 = load i64, i64* @UNIQUE_CHECK_PARTIAL, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %176
  %181 = load i64, i64* %21, align 8
  %182 = load i64, i64* @InvalidBuffer, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = load i32, i32* %8, align 4
  %186 = load i64, i64* %21, align 8
  %187 = call i32 @_bt_relbuf(i32 %185, i64 %186)
  br label %188

188:                                              ; preds = %184, %180
  %189 = load i32*, i32** %12, align 8
  store i32 0, i32* %189, align 4
  %190 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %190, i32* %7, align 4
  br label %407

191:                                              ; preds = %176
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @TransactionIdIsValid(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  br label %202

199:                                              ; preds = %191
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  br label %202

202:                                              ; preds = %199, %196
  %203 = phi i32 [ %198, %196 ], [ %201, %199 ]
  store i32 %203, i32* %29, align 4
  %204 = load i32, i32* %29, align 4
  %205 = call i64 @TransactionIdIsValid(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %222

207:                                              ; preds = %202
  %208 = load i64, i64* %21, align 8
  %209 = load i64, i64* @InvalidBuffer, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %207
  %212 = load i32, i32* %8, align 4
  %213 = load i64, i64* %21, align 8
  %214 = call i32 @_bt_relbuf(i32 %212, i64 %213)
  br label %215

215:                                              ; preds = %211, %207
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %13, align 8
  store i32 %217, i32* %218, align 4
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 1
  store i32 0, i32* %220, align 8
  %221 = load i32, i32* %29, align 4
  store i32 %221, i32* %7, align 4
  br label %407

222:                                              ; preds = %202
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %27, align 4
  %226 = load i32, i32* %10, align 4
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SnapshotSelf, align 8
  %228 = call i64 @table_index_fetch_tuple_check(i32 %226, i32* %27, %struct.TYPE_16__* %227, i32* null)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %222
  br label %232

231:                                              ; preds = %222
  br label %377

232:                                              ; preds = %230
  %233 = load i32, i32* %8, align 4
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @CheckForSerializableConflictIn(i32 %233, i32* null, i64 %236)
  %238 = load i64, i64* %21, align 8
  %239 = load i64, i64* @InvalidBuffer, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %232
  %242 = load i32, i32* %8, align 4
  %243 = load i64, i64* %21, align 8
  %244 = call i32 @_bt_relbuf(i32 %242, i64 %243)
  br label %245

245:                                              ; preds = %241, %232
  %246 = load i32, i32* %8, align 4
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = call i32 @_bt_relbuf(i32 %246, i64 %249)
  %251 = load i64, i64* @InvalidBuffer, align 8
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 0
  store i64 %251, i64* %253, align 8
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 1
  store i32 0, i32* %255, align 8
  %256 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %257 = zext i32 %256 to i64
  %258 = call i8* @llvm.stacksave()
  store i8* %258, i8** %30, align 8
  %259 = alloca i32, i64 %257, align 16
  store i64 %257, i64* %31, align 8
  %260 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %261 = zext i32 %260 to i64
  %262 = alloca i32, i64 %261, align 16
  store i64 %261, i64* %32, align 8
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %264 = load i32, i32* %8, align 4
  %265 = call i32 @RelationGetDescr(i32 %264)
  %266 = call i32 @index_deform_tuple(%struct.TYPE_17__* %263, i32 %265, i32* %259, i32* %262)
  %267 = load i32, i32* %8, align 4
  %268 = call i8* @BuildIndexValueDescription(i32 %267, i32* %259, i32* %262)
  store i8* %268, i8** %33, align 8
  %269 = load i32, i32* @ERROR, align 4
  %270 = load i32, i32* @ERRCODE_UNIQUE_VIOLATION, align 4
  %271 = call i32 @errcode(i32 %270)
  %272 = load i32, i32* %8, align 4
  %273 = call i32 @RelationGetRelationName(i32 %272)
  %274 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %273)
  %275 = load i8*, i8** %33, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %277, label %280

277:                                              ; preds = %245
  %278 = load i8*, i8** %33, align 8
  %279 = call i32 @errdetail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %278)
  br label %281

280:                                              ; preds = %245
  br label %281

281:                                              ; preds = %280, %277
  %282 = phi i32 [ %279, %277 ], [ 0, %280 ]
  %283 = load i32, i32* %10, align 4
  %284 = load i32, i32* %8, align 4
  %285 = call i32 @RelationGetRelationName(i32 %284)
  %286 = call i32 @errtableconstraint(i32 %283, i32 %285)
  %287 = call i32 @ereport(i32 %269, i32 %286)
  %288 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %288)
  br label %313

289:                                              ; preds = %172
  %290 = load i32, i32* %28, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %312

292:                                              ; preds = %289
  %293 = load i32, i32* %24, align 4
  %294 = call i32 @ItemIdMarkDead(i32 %293)
  %295 = load i32, i32* @BTP_HAS_GARBAGE, align 4
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 4
  %300 = load i64, i64* %21, align 8
  %301 = load i64, i64* @InvalidBuffer, align 8
  %302 = icmp ne i64 %300, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %292
  %304 = load i64, i64* %21, align 8
  %305 = call i32 @MarkBufferDirtyHint(i64 %304, i32 1)
  br label %311

306:                                              ; preds = %292
  %307 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = call i32 @MarkBufferDirtyHint(i64 %309, i32 1)
  br label %311

311:                                              ; preds = %306, %303
  br label %312

312:                                              ; preds = %311, %289
  br label %313

313:                                              ; preds = %312, %281
  br label %314

314:                                              ; preds = %313, %171
  br label %315

315:                                              ; preds = %314, %140
  br label %316

316:                                              ; preds = %315, %96
  %317 = load i64, i64* %17, align 8
  %318 = load i64, i64* %18, align 8
  %319 = icmp slt i64 %317, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %316
  %321 = load i64, i64* %17, align 8
  %322 = call i64 @OffsetNumberNext(i64 %321)
  store i64 %322, i64* %17, align 8
  br label %376

323:                                              ; preds = %316
  %324 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %325 = call i64 @P_RIGHTMOST(%struct.TYPE_19__* %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %323
  br label %377

328:                                              ; preds = %323
  %329 = load i32, i32* %8, align 4
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %331 = load i32, i32* %19, align 4
  %332 = load i64, i64* @P_HIKEY, align 8
  %333 = call i64 @_bt_compare(i32 %329, %struct.TYPE_18__* %330, i32 %331, i64 %332)
  %334 = trunc i64 %333 to i32
  store i32 %334, i32* %34, align 4
  %335 = load i32, i32* %34, align 4
  %336 = icmp sle i32 %335, 0
  %337 = zext i1 %336 to i32
  %338 = call i32 @Assert(i32 %337)
  %339 = load i32, i32* %34, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %328
  br label %377

342:                                              ; preds = %328
  br label %343

343:                                              ; preds = %370, %342
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  store i32 %346, i32* %26, align 4
  %347 = load i32, i32* %8, align 4
  %348 = load i64, i64* %21, align 8
  %349 = load i32, i32* %26, align 4
  %350 = load i32, i32* @BT_READ, align 4
  %351 = call i64 @_bt_relandgetbuf(i32 %347, i64 %348, i32 %349, i32 %350)
  store i64 %351, i64* %21, align 8
  %352 = load i64, i64* %21, align 8
  %353 = call i32 @BufferGetPage(i64 %352)
  store i32 %353, i32* %19, align 4
  %354 = load i32, i32* %19, align 4
  %355 = call i64 @PageGetSpecialPointer(i32 %354)
  %356 = inttoptr i64 %355 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %356, %struct.TYPE_19__** %20, align 8
  %357 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %358 = call i32 @P_IGNORE(%struct.TYPE_19__* %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %361, label %360

360:                                              ; preds = %343
  br label %371

361:                                              ; preds = %343
  %362 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %363 = call i64 @P_RIGHTMOST(%struct.TYPE_19__* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %361
  %366 = load i32, i32* @ERROR, align 4
  %367 = load i32, i32* %8, align 4
  %368 = call i32 @RelationGetRelationName(i32 %367)
  %369 = call i32 @elog(i32 %366, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %368)
  br label %370

370:                                              ; preds = %365, %361
  br label %343

371:                                              ; preds = %360
  %372 = load i32, i32* %19, align 4
  %373 = call i64 @PageGetMaxOffsetNumber(i32 %372)
  store i64 %373, i64* %18, align 8
  %374 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  %375 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_19__* %374)
  store i64 %375, i64* %17, align 8
  br label %376

376:                                              ; preds = %371, %320
  br label %96

377:                                              ; preds = %341, %327, %231, %154, %110
  %378 = load i64, i64* %11, align 8
  %379 = load i64, i64* @UNIQUE_CHECK_EXISTING, align 8
  %380 = icmp eq i64 %378, %379
  br i1 %380, label %381, label %397

381:                                              ; preds = %377
  %382 = load i32, i32* %22, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %397, label %384

384:                                              ; preds = %381
  %385 = load i32, i32* @ERROR, align 4
  %386 = load i32, i32* @ERRCODE_INTERNAL_ERROR, align 4
  %387 = call i32 @errcode(i32 %386)
  %388 = load i32, i32* %8, align 4
  %389 = call i32 @RelationGetRelationName(i32 %388)
  %390 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %389)
  %391 = call i32 @errhint(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %392 = load i32, i32* %10, align 4
  %393 = load i32, i32* %8, align 4
  %394 = call i32 @RelationGetRelationName(i32 %393)
  %395 = call i32 @errtableconstraint(i32 %392, i32 %394)
  %396 = call i32 @ereport(i32 %385, i32 %395)
  br label %397

397:                                              ; preds = %384, %381, %377
  %398 = load i64, i64* %21, align 8
  %399 = load i64, i64* @InvalidBuffer, align 8
  %400 = icmp ne i64 %398, %399
  br i1 %400, label %401, label %405

401:                                              ; preds = %397
  %402 = load i32, i32* %8, align 4
  %403 = load i64, i64* %21, align 8
  %404 = call i32 @_bt_relbuf(i32 %402, i64 %403)
  br label %405

405:                                              ; preds = %401, %397
  %406 = load i32, i32* @InvalidTransactionId, align 4
  store i32 %406, i32* %7, align 4
  br label %407

407:                                              ; preds = %405, %215, %188
  %408 = load i32, i32* %7, align 4
  ret i32 %408
}

declare dso_local i32 @InitDirtySnapshot(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BufferGetPage(i64) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @_bt_binsrch_insert(i32, %struct.TYPE_20__*) #1

declare dso_local i64 @P_FIRSTDATAKEY(%struct.TYPE_19__*) #1

declare dso_local i64 @_bt_compare(i32, %struct.TYPE_18__*, i32, i64) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @ItemIdIsDead(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i64 @ItemPointerCompare(i32*, i32*) #1

declare dso_local i64 @table_index_fetch_tuple_check(i32, i32*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @_bt_relbuf(i32, i64) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i32 @CheckForSerializableConflictIn(i32, i32*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @index_deform_tuple(%struct.TYPE_17__*, i32, i32*, i32*) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i8* @BuildIndexValueDescription(i32, i32*, i32*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @errdetail(i8*, i8*) #1

declare dso_local i32 @errtableconstraint(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @ItemIdMarkDead(i32) #1

declare dso_local i32 @MarkBufferDirtyHint(i64, i32) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i64 @P_RIGHTMOST(%struct.TYPE_19__*) #1

declare dso_local i64 @_bt_relandgetbuf(i32, i64, i32, i32) #1

declare dso_local i32 @P_IGNORE(%struct.TYPE_19__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @errhint(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
