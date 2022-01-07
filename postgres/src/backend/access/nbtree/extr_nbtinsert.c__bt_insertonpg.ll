; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_insertonpg.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtinsert.c__bt_insertonpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, i64, i32, i32, i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot insert to incompletely split page %u\00", align 1
@InvalidBuffer = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i32 0, align 4
@BTREE_METAPAGE = common dso_local global i32 0, align 4
@BT_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"cannot insert second negative infinity item in block %u of index \22%s\22\00", align 1
@PANIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"failed to add new item to block %u in index \22%s\22\00", align 1
@BTREE_NOVAC_VERSION = common dso_local global i64 0, align 8
@BTP_INCOMPLETE_SPLIT = common dso_local global i32 0, align 4
@SizeOfBtreeInsert = common dso_local global i32 0, align 4
@XLOG_BTREE_INSERT_LEAF = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@XLOG_BTREE_INSERT_UPPER = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@XLOG_BTREE_INSERT_META = common dso_local global i32 0, align 4
@RM_BTREE_ID = common dso_local global i32 0, align 4
@BTREE_FASTPATH_MIN_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i64, i64, i32)* @_bt_insertonpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bt_insertonpg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_17__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_16__*, align 8
  %31 = alloca %struct.TYPE_15__, align 8
  %32 = alloca %struct.TYPE_14__, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32* @BufferGetPage(i32 %35)
  store i32* %36, i32** %17, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = call i64 @PageGetSpecialPointer(i32* %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %18, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %41 = call i32 @P_ISLEAF(%struct.TYPE_16__* %40)
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @BufferIsValid(i32 %42)
  %44 = icmp ne i64 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = icmp eq i32 %41, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %51 = call i32 @P_ISLEAF(%struct.TYPE_16__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %8
  %54 = load i64, i64* %14, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i64 @BTreeTupleGetNAtts(i64 %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @IndexRelationGetNumberOfAttributes(i32 %57)
  %59 = icmp eq i64 %56, %58
  br label %60

60:                                               ; preds = %53, %8
  %61 = phi i1 [ true, %8 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @Assert(i32 %62)
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %65 = call i32 @P_ISLEAF(%struct.TYPE_16__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load i64, i64* %14, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i64 @BTreeTupleGetNAtts(i64 %68, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i64 @IndexRelationGetNumberOfKeyAttributes(i32 %71)
  %73 = icmp sle i64 %70, %72
  br label %74

74:                                               ; preds = %67, %60
  %75 = phi i1 [ true, %60 ], [ %73, %67 ]
  %76 = zext i1 %75 to i32
  %77 = call i32 @Assert(i32 %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %79 = call i32 @P_INCOMPLETE_SPLIT(%struct.TYPE_16__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i32, i32* @ERROR, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @BufferGetBlockNumber(i32 %83)
  %85 = call i32 (i32, i8*, i32, ...) @elog(i32 %82, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %81, %74
  %87 = load i64, i64* %14, align 8
  %88 = call i32 @IndexTupleSize(i64 %87)
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %19, align 8
  %90 = load i64, i64* %19, align 8
  %91 = call i64 @MAXALIGN(i64 %90)
  store i64 %91, i64* %19, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = call i64 @PageGetFreeSpace(i32* %92)
  %94 = load i64, i64* %19, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %143

96:                                               ; preds = %86
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %98 = call i32 @P_ISROOT(%struct.TYPE_16__* %97)
  store i32 %98, i32* %20, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %100 = call i64 @P_LEFTMOST(%struct.TYPE_16__* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %104 = call i64 @P_RIGHTMOST(%struct.TYPE_16__* %103)
  %105 = icmp ne i64 %104, 0
  br label %106

106:                                              ; preds = %102, %96
  %107 = phi i1 [ false, %96 ], [ %105, %102 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %21, align 4
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %110 = call i32 @P_ISLEAF(%struct.TYPE_16__* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @RelationGetTargetBlock(i32 %113)
  %115 = call i64 @BlockNumberIsValid(i32 %114)
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %112, %106
  %118 = phi i1 [ false, %106 ], [ %116, %112 ]
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 @Assert(i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i64, i64* %15, align 8
  %127 = load i64, i64* %19, align 8
  %128 = load i64, i64* %14, align 8
  %129 = call i32 @_bt_split(i32 %122, i32 %123, i32 %124, i32 %125, i64 %126, i64 %127, i64 %128)
  store i32 %129, i32* %22, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @BufferGetBlockNumber(i32 %131)
  %133 = load i32, i32* %22, align 4
  %134 = call i32 @BufferGetBlockNumber(i32 %133)
  %135 = call i32 @PredicateLockPageSplit(i32 %130, i32 %132, i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %22, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %20, align 4
  %141 = load i32, i32* %21, align 4
  %142 = call i32 @_bt_insert_parent(i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  br label %407

143:                                              ; preds = %86
  %144 = load i32, i32* @InvalidBuffer, align 4
  store i32 %144, i32* %23, align 4
  store i32* null, i32** %24, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %25, align 8
  %145 = load i32, i32* @InvalidBlockNumber, align 4
  store i32 %145, i32* %28, align 4
  %146 = load i64, i64* %15, align 8
  store i64 %146, i64* %26, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @BufferGetBlockNumber(i32 %147)
  store i32 %148, i32* %27, align 4
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %180

151:                                              ; preds = %143
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %153 = call i32 @P_ISLEAF(%struct.TYPE_16__* %152)
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = call i32 @Assert(i32 %156)
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @BTREE_METAPAGE, align 4
  %160 = load i32, i32* @BT_WRITE, align 4
  %161 = call i32 @_bt_getbuf(i32 %158, i32 %159, i32 %160)
  store i32 %161, i32* %23, align 4
  %162 = load i32, i32* %23, align 4
  %163 = call i32* @BufferGetPage(i32 %162)
  store i32* %163, i32** %24, align 8
  %164 = load i32*, i32** %24, align 8
  %165 = call %struct.TYPE_17__* @BTPageGetMeta(i32* %164)
  store %struct.TYPE_17__* %165, %struct.TYPE_17__** %25, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp sge i64 %168, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %151
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %23, align 4
  %177 = call i32 @_bt_relbuf(i32 %175, i32 %176)
  %178 = load i32, i32* @InvalidBuffer, align 4
  store i32 %178, i32* %23, align 4
  br label %179

179:                                              ; preds = %174, %151
  br label %180

180:                                              ; preds = %179, %143
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %182 = call i32 @P_ISLEAF(%struct.TYPE_16__* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %195, label %184

184:                                              ; preds = %180
  %185 = load i64, i64* %15, align 8
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %187 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_16__* %186)
  %188 = icmp eq i64 %185, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load i32, i32* @ERROR, align 4
  %191 = load i32, i32* %27, align 4
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @RelationGetRelationName(i32 %192)
  %194 = call i32 (i32, i8*, i32, ...) @elog(i32 %190, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %191, i32 %193)
  br label %195

195:                                              ; preds = %189, %184, %180
  %196 = call i32 (...) @START_CRIT_SECTION()
  %197 = load i32*, i32** %17, align 8
  %198 = load i64, i64* %19, align 8
  %199 = load i64, i64* %14, align 8
  %200 = load i64, i64* %15, align 8
  %201 = call i32 @_bt_pgaddtup(i32* %197, i64 %198, i64 %199, i64 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %195
  %204 = load i32, i32* @PANIC, align 4
  %205 = load i32, i32* %27, align 4
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @RelationGetRelationName(i32 %206)
  %208 = call i32 (i32, i8*, i32, ...) @elog(i32 %204, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %205, i32 %207)
  br label %209

209:                                              ; preds = %203, %195
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @MarkBufferDirty(i32 %210)
  %212 = load i32, i32* %23, align 4
  %213 = call i64 @BufferIsValid(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %236

215:                                              ; preds = %209
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @BTREE_NOVAC_VERSION, align 8
  %220 = icmp slt i64 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = load i32*, i32** %24, align 8
  %223 = call i32 @_bt_upgrademetapage(i32* %222)
  br label %224

224:                                              ; preds = %221, %215
  %225 = load i32, i32* %27, align 4
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 4
  store i32 %225, i32* %227, align 8
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 0
  store i64 %231, i64* %233, align 8
  %234 = load i32, i32* %23, align 4
  %235 = call i32 @MarkBufferDirty(i32 %234)
  br label %236

236:                                              ; preds = %224, %209
  %237 = load i32, i32* %12, align 4
  %238 = call i64 @BufferIsValid(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %257

240:                                              ; preds = %236
  %241 = load i32, i32* %12, align 4
  %242 = call i32* @BufferGetPage(i32 %241)
  store i32* %242, i32** %29, align 8
  %243 = load i32*, i32** %29, align 8
  %244 = call i64 @PageGetSpecialPointer(i32* %243)
  %245 = inttoptr i64 %244 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %245, %struct.TYPE_16__** %30, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %247 = call i32 @P_INCOMPLETE_SPLIT(%struct.TYPE_16__* %246)
  %248 = call i32 @Assert(i32 %247)
  %249 = load i32, i32* @BTP_INCOMPLETE_SPLIT, align 4
  %250 = xor i32 %249, -1
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = and i32 %253, %250
  store i32 %254, i32* %252, align 8
  %255 = load i32, i32* %12, align 4
  %256 = call i32 @MarkBufferDirty(i32 %255)
  br label %257

257:                                              ; preds = %240, %236
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %259 = call i64 @P_RIGHTMOST(%struct.TYPE_16__* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %257
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %263 = call i32 @P_ISLEAF(%struct.TYPE_16__* %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %261
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %267 = call i32 @P_ISROOT(%struct.TYPE_16__* %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %265
  %270 = load i32, i32* %11, align 4
  %271 = call i32 @BufferGetBlockNumber(i32 %270)
  store i32 %271, i32* %28, align 4
  br label %272

272:                                              ; preds = %269, %265, %261, %257
  %273 = load i32, i32* %9, align 4
  %274 = call i64 @RelationNeedsWAL(i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %373

276:                                              ; preds = %272
  %277 = load i64, i64* %26, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  store i64 %277, i64* %278, align 8
  %279 = call i32 (...) @XLogBeginInsert()
  %280 = bitcast %struct.TYPE_15__* %31 to i8*
  %281 = load i32, i32* @SizeOfBtreeInsert, align 4
  %282 = call i32 @XLogRegisterData(i8* %280, i32 %281)
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %284 = call i32 @P_ISLEAF(%struct.TYPE_16__* %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %276
  %287 = load i32, i32* @XLOG_BTREE_INSERT_LEAF, align 4
  store i32 %287, i32* %33, align 4
  br label %293

288:                                              ; preds = %276
  %289 = load i32, i32* %12, align 4
  %290 = load i32, i32* @REGBUF_STANDARD, align 4
  %291 = call i32 @XLogRegisterBuffer(i32 1, i32 %289, i32 %290)
  %292 = load i32, i32* @XLOG_BTREE_INSERT_UPPER, align 4
  store i32 %292, i32* %33, align 4
  br label %293

293:                                              ; preds = %288, %286
  %294 = load i32, i32* %23, align 4
  %295 = call i64 @BufferIsValid(i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %341

297:                                              ; preds = %293
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @BTREE_NOVAC_VERSION, align 8
  %302 = icmp sge i64 %300, %301
  %303 = zext i1 %302 to i32
  %304 = call i32 @Assert(i32 %303)
  %305 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %306 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  store i64 %307, i64* %308, align 8
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 6
  %311 = load i32, i32* %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 6
  store i32 %311, i32* %312, align 8
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 4
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 5
  store i32 %315, i32* %316, align 4
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 4
  store i32 %319, i32* %320, align 8
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  store i64 %323, i64* %324, align 8
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 3
  store i32 %327, i32* %328, align 4
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  store i32 %331, i32* %332, align 8
  %333 = load i32, i32* %23, align 4
  %334 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %335 = load i32, i32* @REGBUF_STANDARD, align 4
  %336 = or i32 %334, %335
  %337 = call i32 @XLogRegisterBuffer(i32 2, i32 %333, i32 %336)
  %338 = bitcast %struct.TYPE_14__* %32 to i8*
  %339 = call i32 @XLogRegisterBufData(i32 2, i8* %338, i32 40)
  %340 = load i32, i32* @XLOG_BTREE_INSERT_META, align 4
  store i32 %340, i32* %33, align 4
  br label %341

341:                                              ; preds = %297, %293
  %342 = load i32, i32* %11, align 4
  %343 = load i32, i32* @REGBUF_STANDARD, align 4
  %344 = call i32 @XLogRegisterBuffer(i32 0, i32 %342, i32 %343)
  %345 = load i64, i64* %14, align 8
  %346 = inttoptr i64 %345 to i8*
  %347 = load i64, i64* %14, align 8
  %348 = call i32 @IndexTupleSize(i64 %347)
  %349 = call i32 @XLogRegisterBufData(i32 0, i8* %346, i32 %348)
  %350 = load i32, i32* @RM_BTREE_ID, align 4
  %351 = load i32, i32* %33, align 4
  %352 = call i32 @XLogInsert(i32 %350, i32 %351)
  store i32 %352, i32* %34, align 4
  %353 = load i32, i32* %23, align 4
  %354 = call i64 @BufferIsValid(i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %341
  %357 = load i32*, i32** %24, align 8
  %358 = load i32, i32* %34, align 4
  %359 = call i32 @PageSetLSN(i32* %357, i32 %358)
  br label %360

360:                                              ; preds = %356, %341
  %361 = load i32, i32* %12, align 4
  %362 = call i64 @BufferIsValid(i32 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %360
  %365 = load i32, i32* %12, align 4
  %366 = call i32* @BufferGetPage(i32 %365)
  %367 = load i32, i32* %34, align 4
  %368 = call i32 @PageSetLSN(i32* %366, i32 %367)
  br label %369

369:                                              ; preds = %364, %360
  %370 = load i32*, i32** %17, align 8
  %371 = load i32, i32* %34, align 4
  %372 = call i32 @PageSetLSN(i32* %370, i32 %371)
  br label %373

373:                                              ; preds = %369, %272
  %374 = call i32 (...) @END_CRIT_SECTION()
  %375 = load i32, i32* %23, align 4
  %376 = call i64 @BufferIsValid(i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %373
  %379 = load i32, i32* %9, align 4
  %380 = load i32, i32* %23, align 4
  %381 = call i32 @_bt_relbuf(i32 %379, i32 %380)
  br label %382

382:                                              ; preds = %378, %373
  %383 = load i32, i32* %12, align 4
  %384 = call i64 @BufferIsValid(i32 %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %382
  %387 = load i32, i32* %9, align 4
  %388 = load i32, i32* %12, align 4
  %389 = call i32 @_bt_relbuf(i32 %387, i32 %388)
  br label %390

390:                                              ; preds = %386, %382
  %391 = load i32, i32* %9, align 4
  %392 = load i32, i32* %11, align 4
  %393 = call i32 @_bt_relbuf(i32 %391, i32 %392)
  %394 = load i32, i32* %28, align 4
  %395 = call i64 @BlockNumberIsValid(i32 %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %406

397:                                              ; preds = %390
  %398 = load i32, i32* %9, align 4
  %399 = call i64 @_bt_getrootheight(i32 %398)
  %400 = load i64, i64* @BTREE_FASTPATH_MIN_LEVEL, align 8
  %401 = icmp sge i64 %399, %400
  br i1 %401, label %402, label %406

402:                                              ; preds = %397
  %403 = load i32, i32* %9, align 4
  %404 = load i32, i32* %28, align 4
  %405 = call i32 @RelationSetTargetBlock(i32 %403, i32 %404)
  br label %406

406:                                              ; preds = %402, %397, %390
  br label %407

407:                                              ; preds = %406, %117
  ret void
}

declare dso_local i32* @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @P_ISLEAF(%struct.TYPE_16__*) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i64 @BTreeTupleGetNAtts(i64, i32) #1

declare dso_local i64 @IndexRelationGetNumberOfAttributes(i32) #1

declare dso_local i64 @IndexRelationGetNumberOfKeyAttributes(i32) #1

declare dso_local i32 @P_INCOMPLETE_SPLIT(%struct.TYPE_16__*) #1

declare dso_local i32 @elog(i32, i8*, i32, ...) #1

declare dso_local i32 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @IndexTupleSize(i64) #1

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local i64 @PageGetFreeSpace(i32*) #1

declare dso_local i32 @P_ISROOT(%struct.TYPE_16__*) #1

declare dso_local i64 @P_LEFTMOST(%struct.TYPE_16__*) #1

declare dso_local i64 @P_RIGHTMOST(%struct.TYPE_16__*) #1

declare dso_local i64 @BlockNumberIsValid(i32) #1

declare dso_local i32 @RelationGetTargetBlock(i32) #1

declare dso_local i32 @_bt_split(i32, i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @PredicateLockPageSplit(i32, i32, i32) #1

declare dso_local i32 @_bt_insert_parent(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_bt_getbuf(i32, i32, i32) #1

declare dso_local %struct.TYPE_17__* @BTPageGetMeta(i32*) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

declare dso_local i64 @P_FIRSTDATAKEY(%struct.TYPE_16__*) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @_bt_pgaddtup(i32*, i64, i64, i64) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @_bt_upgrademetapage(i32*) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32*, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i64 @_bt_getrootheight(i32) #1

declare dso_local i32 @RelationSetTargetBlock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
