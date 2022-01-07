; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_unlink_halfdead_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_unlink_halfdead_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i32, i32, i64, i32, i32 }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i32, i64, i64 }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i64, i32, i32 }

@InvalidBuffer = common dso_local global i32 0, align 4
@P_HIKEY = common dso_local global i64 0, align 8
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@BT_READ = common dso_local global i32 0, align 4
@BT_WRITE = common dso_local global i32 0, align 4
@P_NONE = common dso_local global i64 0, align 8
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"no left sibling (concurrent deletion?) of block %u in \22%s\22\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"half-dead page changed status unexpectedly in block %u of index \22%s\22\00", align 1
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"left link changed unexpectedly in block %u of index \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [99 x i8] c"right sibling's left-link doesn't match: block %u links to %u instead of expected %u in index \22%s\22\00", align 1
@BTREE_METAPAGE = common dso_local global i64 0, align 8
@BTP_HALF_DEAD = common dso_local global i32 0, align 4
@BTP_DELETED = common dso_local global i32 0, align 4
@BTREE_NOVAC_VERSION = common dso_local global i64 0, align 8
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@SizeOfBtreeUnlinkPage = common dso_local global i32 0, align 4
@XLOG_BTREE_UNLINK_PAGE_META = common dso_local global i32 0, align 4
@XLOG_BTREE_UNLINK_PAGE = common dso_local global i32 0, align 4
@RM_BTREE_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @_bt_unlink_halfdead_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_unlink_halfdead_page(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_14__, align 8
  %28 = alloca %struct.TYPE_15__, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i64 @BufferGetBlockNumber(i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* @InvalidBuffer, align 4
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @InvalidBuffer, align 4
  store i32 %34, i32* %17, align 4
  store i32* null, i32** %18, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %19, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32* @BufferGetPage(i32 %35)
  store i32* %36, i32** %21, align 8
  %37 = load i32*, i32** %21, align 8
  %38 = call i64 @PageGetSpecialPointer(i32* %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %22, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %41 = call i64 @P_ISLEAF(%struct.TYPE_16__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %3
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %45 = call i64 @P_ISHALFDEAD(%struct.TYPE_16__* %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %43, %3
  %48 = phi i1 [ false, %3 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @Assert(i32 %49)
  %51 = load i32*, i32** %21, align 8
  %52 = load i64, i64* @P_HIKEY, align 8
  %53 = call i32 @PageGetItemId(i32* %51, i64 %52)
  store i32 %53, i32* %20, align 4
  %54 = load i32*, i32** %21, align 8
  %55 = load i32, i32* %20, align 4
  %56 = call i64 @PageGetItem(i32* %54, i32 %55)
  store i64 %56, i64* %25, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %9, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %10, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %65 = call i32 @LockBuffer(i32 %63, i32 %64)
  %66 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %67 = load i64, i64* %25, align 8
  %68 = call i64 @BTreeTupleGetTopParent(i64 %67)
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @InvalidBlockNumber, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %47
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %8, align 8
  %75 = icmp ne i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @Assert(i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = load i64, i64* %11, align 8
  %80 = load i32, i32* @BT_READ, align 4
  %81 = call i32 @_bt_getbuf(i32 %78, i64 %79, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32* @BufferGetPage(i32 %82)
  store i32* %83, i32** %21, align 8
  %84 = load i32*, i32** %21, align 8
  %85 = call i64 @PageGetSpecialPointer(i32* %84)
  %86 = inttoptr i64 %85 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %22, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %12, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %24, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %96 = call i32 @LockBuffer(i32 %94, i32 %95)
  br label %101

97:                                               ; preds = %47
  %98 = load i64, i64* %8, align 8
  store i64 %98, i64* %11, align 8
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %15, align 4
  %100 = load i64, i64* %9, align 8
  store i64 %100, i64* %12, align 8
  store i32 0, i32* %24, align 4
  br label %101

101:                                              ; preds = %97, %72
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %8, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @BT_WRITE, align 4
  %108 = call i32 @LockBuffer(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* @P_NONE, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %175

113:                                              ; preds = %109
  %114 = load i32, i32* %5, align 4
  %115 = load i64, i64* %12, align 8
  %116 = load i32, i32* @BT_WRITE, align 4
  %117 = call i32 @_bt_getbuf(i32 %114, i64 %115, i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32* @BufferGetPage(i32 %118)
  store i32* %119, i32** %21, align 8
  %120 = load i32*, i32** %21, align 8
  %121 = call i64 @PageGetSpecialPointer(i32* %120)
  %122 = inttoptr i64 %121 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %122, %struct.TYPE_16__** %22, align 8
  br label %123

123:                                              ; preds = %164, %113
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %125 = call i64 @P_ISDELETED(%struct.TYPE_16__* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %11, align 8
  %132 = icmp ne i64 %130, %131
  br label %133

133:                                              ; preds = %127, %123
  %134 = phi i1 [ true, %123 ], [ %132, %127 ]
  br i1 %134, label %135, label %174

135:                                              ; preds = %133
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %12, align 8
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @_bt_relbuf(i32 %139, i32 %140)
  %142 = load i64, i64* %12, align 8
  %143 = load i64, i64* @P_NONE, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %164

145:                                              ; preds = %135
  %146 = load i32, i32* @LOG, align 4
  %147 = load i64, i64* %11, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @RelationGetRelationName(i32 %148)
  %150 = call i32 @elog(i32 %146, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %147, i32 %149)
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* %8, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %145
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @ReleaseBuffer(i32 %155)
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @_bt_relbuf(i32 %157, i32 %158)
  br label %163

160:                                              ; preds = %145
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @ReleaseBuffer(i32 %161)
  br label %163

163:                                              ; preds = %160, %154
  store i32 0, i32* %4, align 4
  br label %624

164:                                              ; preds = %135
  %165 = load i32, i32* %5, align 4
  %166 = load i64, i64* %12, align 8
  %167 = load i32, i32* @BT_WRITE, align 4
  %168 = call i32 @_bt_getbuf(i32 %165, i64 %166, i32 %167)
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %14, align 4
  %170 = call i32* @BufferGetPage(i32 %169)
  store i32* %170, i32** %21, align 8
  %171 = load i32*, i32** %21, align 8
  %172 = call i64 @PageGetSpecialPointer(i32* %171)
  %173 = inttoptr i64 %172 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %173, %struct.TYPE_16__** %22, align 8
  br label %123

174:                                              ; preds = %133
  br label %177

175:                                              ; preds = %109
  %176 = load i32, i32* @InvalidBuffer, align 4
  store i32 %176, i32* %14, align 4
  br label %177

177:                                              ; preds = %175, %174
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* @BT_WRITE, align 4
  %180 = call i32 @LockBuffer(i32 %178, i32 %179)
  %181 = load i32, i32* %15, align 4
  %182 = call i32* @BufferGetPage(i32 %181)
  store i32* %182, i32** %21, align 8
  %183 = load i32*, i32** %21, align 8
  %184 = call i64 @PageGetSpecialPointer(i32* %183)
  %185 = inttoptr i64 %184 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %185, %struct.TYPE_16__** %22, align 8
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %187 = call i32 @P_RIGHTMOST(%struct.TYPE_16__* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %177
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %191 = call i64 @P_ISROOT(%struct.TYPE_16__* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %195 = call i64 @P_ISDELETED(%struct.TYPE_16__* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %193, %189, %177
  %198 = load i32, i32* @ERROR, align 4
  %199 = load i64, i64* %11, align 8
  %200 = load i32, i32* %5, align 4
  %201 = call i32 @RelationGetRelationName(i32 %200)
  %202 = call i32 @elog(i32 %198, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %199, i32 %201)
  br label %203

203:                                              ; preds = %197, %193
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %12, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %219

209:                                              ; preds = %203
  %210 = load i32, i32* @ERROR, align 4
  %211 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %212 = call i32 @errcode(i32 %211)
  %213 = load i64, i64* %11, align 8
  %214 = load i32, i32* %5, align 4
  %215 = call i32 @RelationGetRelationName(i32 %214)
  %216 = sext i32 %215 to i64
  %217 = call i32 (i8*, i64, i64, ...) @errmsg_internal(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %213, i64 %216)
  %218 = call i32 @ereport(i32 %210, i32 %217)
  br label %219

219:                                              ; preds = %209, %203
  %220 = load i64, i64* %11, align 8
  %221 = load i64, i64* %8, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %245

223:                                              ; preds = %219
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %225 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_16__* %224)
  %226 = load i32*, i32** %21, align 8
  %227 = call i64 @PageGetMaxOffsetNumber(i32* %226)
  %228 = icmp sle i64 %225, %227
  br i1 %228, label %237, label %229

229:                                              ; preds = %223
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %231 = call i64 @P_ISLEAF(%struct.TYPE_16__* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %229
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %235 = call i64 @P_ISHALFDEAD(%struct.TYPE_16__* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %243, label %237

237:                                              ; preds = %233, %229, %223
  %238 = load i32, i32* @ERROR, align 4
  %239 = load i64, i64* %11, align 8
  %240 = load i32, i32* %5, align 4
  %241 = call i32 @RelationGetRelationName(i32 %240)
  %242 = call i32 @elog(i32 %238, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %239, i32 %241)
  br label %243

243:                                              ; preds = %237, %233
  %244 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %244, i64* %26, align 8
  br label %276

245:                                              ; preds = %219
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %247 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_16__* %246)
  %248 = load i32*, i32** %21, align 8
  %249 = call i64 @PageGetMaxOffsetNumber(i32* %248)
  %250 = icmp ne i64 %247, %249
  br i1 %250, label %255, label %251

251:                                              ; preds = %245
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %253 = call i64 @P_ISLEAF(%struct.TYPE_16__* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %251, %245
  %256 = load i32, i32* @ERROR, align 4
  %257 = load i64, i64* %11, align 8
  %258 = load i32, i32* %5, align 4
  %259 = call i32 @RelationGetRelationName(i32 %258)
  %260 = call i32 @elog(i32 %256, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %257, i32 %259)
  br label %261

261:                                              ; preds = %255, %251
  %262 = load i32*, i32** %21, align 8
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %264 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_16__* %263)
  %265 = call i32 @PageGetItemId(i32* %262, i64 %264)
  store i32 %265, i32* %20, align 4
  %266 = load i32*, i32** %21, align 8
  %267 = load i32, i32* %20, align 4
  %268 = call i64 @PageGetItem(i32* %266, i32 %267)
  %269 = call i64 @BTreeInnerTupleGetDownLink(i64 %268)
  store i64 %269, i64* %26, align 8
  %270 = load i64, i64* %26, align 8
  %271 = load i64, i64* %8, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %261
  %274 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %274, i64* %26, align 8
  br label %275

275:                                              ; preds = %273, %261
  br label %276

276:                                              ; preds = %275, %243
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %278 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  store i64 %279, i64* %13, align 8
  %280 = load i32, i32* %5, align 4
  %281 = load i64, i64* %13, align 8
  %282 = load i32, i32* @BT_WRITE, align 4
  %283 = call i32 @_bt_getbuf(i32 %280, i64 %281, i32 %282)
  store i32 %283, i32* %16, align 4
  %284 = load i32, i32* %16, align 4
  %285 = call i32* @BufferGetPage(i32 %284)
  store i32* %285, i32** %21, align 8
  %286 = load i32*, i32** %21, align 8
  %287 = call i64 @PageGetSpecialPointer(i32* %286)
  %288 = inttoptr i64 %287 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %288, %struct.TYPE_16__** %22, align 8
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* %11, align 8
  %293 = icmp ne i64 %291, %292
  br i1 %293, label %294, label %307

294:                                              ; preds = %276
  %295 = load i32, i32* @ERROR, align 4
  %296 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %297 = call i32 @errcode(i32 %296)
  %298 = load i64, i64* %13, align 8
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* %11, align 8
  %303 = load i32, i32* %5, align 4
  %304 = call i32 @RelationGetRelationName(i32 %303)
  %305 = call i32 (i8*, i64, i64, ...) @errmsg_internal(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.3, i64 0, i64 0), i64 %298, i64 %301, i64 %302, i32 %304)
  %306 = call i32 @ereport(i32 %295, i32 %305)
  br label %307

307:                                              ; preds = %294, %276
  %308 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %309 = call i32 @P_RIGHTMOST(%struct.TYPE_16__* %308)
  store i32 %309, i32* %23, align 4
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %311 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_16__* %310)
  %312 = load i32*, i32** %21, align 8
  %313 = call i64 @PageGetMaxOffsetNumber(i32* %312)
  %314 = icmp sgt i64 %311, %313
  %315 = zext i1 %314 to i32
  %316 = load i32*, i32** %7, align 8
  store i32 %315, i32* %316, align 4
  %317 = load i64, i64* %12, align 8
  %318 = load i64, i64* @P_NONE, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %354

320:                                              ; preds = %307
  %321 = load i32, i32* %23, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %354

323:                                              ; preds = %320
  %324 = load i32, i32* %16, align 4
  %325 = call i32* @BufferGetPage(i32 %324)
  store i32* %325, i32** %21, align 8
  %326 = load i32*, i32** %21, align 8
  %327 = call i64 @PageGetSpecialPointer(i32* %326)
  %328 = inttoptr i64 %327 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %328, %struct.TYPE_16__** %22, align 8
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %330 = call i32 @P_RIGHTMOST(%struct.TYPE_16__* %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %353

332:                                              ; preds = %323
  %333 = load i32, i32* %5, align 4
  %334 = load i64, i64* @BTREE_METAPAGE, align 8
  %335 = load i32, i32* @BT_WRITE, align 4
  %336 = call i32 @_bt_getbuf(i32 %333, i64 %334, i32 %335)
  store i32 %336, i32* %17, align 4
  %337 = load i32, i32* %17, align 4
  %338 = call i32* @BufferGetPage(i32 %337)
  store i32* %338, i32** %18, align 8
  %339 = load i32*, i32** %18, align 8
  %340 = call %struct.TYPE_17__* @BTPageGetMeta(i32* %339)
  store %struct.TYPE_17__* %340, %struct.TYPE_17__** %19, align 8
  %341 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* %24, align 4
  %345 = add nsw i32 %344, 1
  %346 = icmp sgt i32 %343, %345
  br i1 %346, label %347, label %352

347:                                              ; preds = %332
  %348 = load i32, i32* %5, align 4
  %349 = load i32, i32* %17, align 4
  %350 = call i32 @_bt_relbuf(i32 %348, i32 %349)
  %351 = load i32, i32* @InvalidBuffer, align 4
  store i32 %351, i32* %17, align 4
  br label %352

352:                                              ; preds = %347, %332
  br label %353

353:                                              ; preds = %352, %323
  br label %354

354:                                              ; preds = %353, %320, %307
  %355 = call i32 (...) @START_CRIT_SECTION()
  %356 = load i32, i32* %14, align 4
  %357 = call i64 @BufferIsValid(i32 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %375

359:                                              ; preds = %354
  %360 = load i32, i32* %14, align 4
  %361 = call i32* @BufferGetPage(i32 %360)
  store i32* %361, i32** %21, align 8
  %362 = load i32*, i32** %21, align 8
  %363 = call i64 @PageGetSpecialPointer(i32* %362)
  %364 = inttoptr i64 %363 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %364, %struct.TYPE_16__** %22, align 8
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* %11, align 8
  %369 = icmp eq i64 %367, %368
  %370 = zext i1 %369 to i32
  %371 = call i32 @Assert(i32 %370)
  %372 = load i64, i64* %13, align 8
  %373 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %374 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %373, i32 0, i32 1
  store i64 %372, i64* %374, align 8
  br label %375

375:                                              ; preds = %359, %354
  %376 = load i32, i32* %16, align 4
  %377 = call i32* @BufferGetPage(i32 %376)
  store i32* %377, i32** %21, align 8
  %378 = load i32*, i32** %21, align 8
  %379 = call i64 @PageGetSpecialPointer(i32* %378)
  %380 = inttoptr i64 %379 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %380, %struct.TYPE_16__** %22, align 8
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load i64, i64* %11, align 8
  %385 = icmp eq i64 %383, %384
  %386 = zext i1 %385 to i32
  %387 = call i32 @Assert(i32 %386)
  %388 = load i64, i64* %12, align 8
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 0
  store i64 %388, i64* %390, align 8
  %391 = load i64, i64* %11, align 8
  %392 = load i64, i64* %8, align 8
  %393 = icmp ne i64 %391, %392
  br i1 %393, label %394, label %398

394:                                              ; preds = %375
  %395 = load i64, i64* %25, align 8
  %396 = load i64, i64* %26, align 8
  %397 = call i32 @BTreeTupleSetTopParent(i64 %395, i64 %396)
  br label %398

398:                                              ; preds = %394, %375
  %399 = load i32, i32* %15, align 4
  %400 = call i32* @BufferGetPage(i32 %399)
  store i32* %400, i32** %21, align 8
  %401 = load i32*, i32** %21, align 8
  %402 = call i64 @PageGetSpecialPointer(i32* %401)
  %403 = inttoptr i64 %402 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %403, %struct.TYPE_16__** %22, align 8
  %404 = load i32, i32* @BTP_HALF_DEAD, align 4
  %405 = xor i32 %404, -1
  %406 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %407 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %406, i32 0, i32 3
  %408 = load i32, i32* %407, align 8
  %409 = and i32 %408, %405
  store i32 %409, i32* %407, align 8
  %410 = load i32, i32* @BTP_DELETED, align 4
  %411 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %412 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 8
  %414 = or i32 %413, %410
  store i32 %414, i32* %412, align 8
  %415 = call i32 (...) @ReadNewTransactionId()
  %416 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %417 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %416, i32 0, i32 2
  %418 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %417, i32 0, i32 1
  store i32 %415, i32* %418, align 4
  %419 = load i32, i32* %17, align 4
  %420 = call i64 @BufferIsValid(i32 %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %440

422:                                              ; preds = %398
  %423 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %424 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %423, i32 0, i32 1
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* @BTREE_NOVAC_VERSION, align 8
  %427 = icmp slt i64 %425, %426
  br i1 %427, label %428, label %431

428:                                              ; preds = %422
  %429 = load i32*, i32** %18, align 8
  %430 = call i32 @_bt_upgrademetapage(i32* %429)
  br label %431

431:                                              ; preds = %428, %422
  %432 = load i64, i64* %13, align 8
  %433 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %434 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %433, i32 0, i32 4
  store i64 %432, i64* %434, align 8
  %435 = load i32, i32* %24, align 4
  %436 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %437 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %436, i32 0, i32 0
  store i32 %435, i32* %437, align 8
  %438 = load i32, i32* %17, align 4
  %439 = call i32 @MarkBufferDirty(i32 %438)
  br label %440

440:                                              ; preds = %431, %398
  %441 = load i32, i32* %16, align 4
  %442 = call i32 @MarkBufferDirty(i32 %441)
  %443 = load i32, i32* %15, align 4
  %444 = call i32 @MarkBufferDirty(i32 %443)
  %445 = load i32, i32* %14, align 4
  %446 = call i64 @BufferIsValid(i32 %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %440
  %449 = load i32, i32* %14, align 4
  %450 = call i32 @MarkBufferDirty(i32 %449)
  br label %451

451:                                              ; preds = %448, %440
  %452 = load i64, i64* %11, align 8
  %453 = load i64, i64* %8, align 8
  %454 = icmp ne i64 %452, %453
  br i1 %454, label %455, label %458

455:                                              ; preds = %451
  %456 = load i32, i32* %6, align 4
  %457 = call i32 @MarkBufferDirty(i32 %456)
  br label %458

458:                                              ; preds = %455, %451
  %459 = load i32, i32* %5, align 4
  %460 = call i64 @RelationNeedsWAL(i32 %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %595

462:                                              ; preds = %458
  %463 = call i32 (...) @XLogBeginInsert()
  %464 = load i32, i32* %15, align 4
  %465 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %466 = call i32 @XLogRegisterBuffer(i32 0, i32 %464, i32 %465)
  %467 = load i32, i32* %14, align 4
  %468 = call i64 @BufferIsValid(i32 %467)
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %462
  %471 = load i32, i32* %14, align 4
  %472 = load i32, i32* @REGBUF_STANDARD, align 4
  %473 = call i32 @XLogRegisterBuffer(i32 1, i32 %471, i32 %472)
  br label %474

474:                                              ; preds = %470, %462
  %475 = load i32, i32* %16, align 4
  %476 = load i32, i32* @REGBUF_STANDARD, align 4
  %477 = call i32 @XLogRegisterBuffer(i32 2, i32 %475, i32 %476)
  %478 = load i64, i64* %11, align 8
  %479 = load i64, i64* %8, align 8
  %480 = icmp ne i64 %478, %479
  br i1 %480, label %481, label %485

481:                                              ; preds = %474
  %482 = load i32, i32* %6, align 4
  %483 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %484 = call i32 @XLogRegisterBuffer(i32 3, i32 %482, i32 %483)
  br label %485

485:                                              ; preds = %481, %474
  %486 = load i64, i64* %12, align 8
  %487 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 5
  store i64 %486, i64* %487, align 8
  %488 = load i64, i64* %13, align 8
  %489 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 4
  store i64 %488, i64* %489, align 8
  %490 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %491 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 3
  store i32 %493, i32* %494, align 8
  %495 = load i64, i64* %9, align 8
  %496 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  store i64 %495, i64* %496, align 8
  %497 = load i64, i64* %10, align 8
  %498 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  store i64 %497, i64* %498, align 8
  %499 = load i64, i64* %26, align 8
  %500 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  store i64 %499, i64* %500, align 8
  %501 = bitcast %struct.TYPE_14__* %27 to i8*
  %502 = load i32, i32* @SizeOfBtreeUnlinkPage, align 4
  %503 = call i32 @XLogRegisterData(i8* %501, i32 %502)
  %504 = load i32, i32* %17, align 4
  %505 = call i64 @BufferIsValid(i32 %504)
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %551

507:                                              ; preds = %485
  %508 = load i32, i32* %17, align 4
  %509 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %510 = load i32, i32* @REGBUF_STANDARD, align 4
  %511 = or i32 %509, %510
  %512 = call i32 @XLogRegisterBuffer(i32 4, i32 %508, i32 %511)
  %513 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %514 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %513, i32 0, i32 1
  %515 = load i64, i64* %514, align 8
  %516 = load i64, i64* @BTREE_NOVAC_VERSION, align 8
  %517 = icmp sge i64 %515, %516
  %518 = zext i1 %517 to i32
  %519 = call i32 @Assert(i32 %518)
  %520 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %521 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %520, i32 0, i32 1
  %522 = load i64, i64* %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  store i64 %522, i64* %523, align 8
  %524 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %525 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %524, i32 0, i32 6
  %526 = load i32, i32* %525, align 4
  %527 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 6
  store i32 %526, i32* %527, align 4
  %528 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %529 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %528, i32 0, i32 5
  %530 = load i32, i32* %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 5
  store i32 %530, i32* %531, align 8
  %532 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %533 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %532, i32 0, i32 4
  %534 = load i64, i64* %533, align 8
  %535 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 4
  store i64 %534, i64* %535, align 8
  %536 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %537 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %536, i32 0, i32 0
  %538 = load i32, i32* %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  store i32 %538, i32* %539, align 8
  %540 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %541 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %540, i32 0, i32 3
  %542 = load i32, i32* %541, align 4
  %543 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 3
  store i32 %542, i32* %543, align 8
  %544 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %545 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %544, i32 0, i32 2
  %546 = load i32, i32* %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  store i32 %546, i32* %547, align 4
  %548 = bitcast %struct.TYPE_15__* %28 to i8*
  %549 = call i32 @XLogRegisterBufData(i32 4, i8* %548, i32 40)
  %550 = load i32, i32* @XLOG_BTREE_UNLINK_PAGE_META, align 4
  store i32 %550, i32* %29, align 4
  br label %553

551:                                              ; preds = %485
  %552 = load i32, i32* @XLOG_BTREE_UNLINK_PAGE, align 4
  store i32 %552, i32* %29, align 4
  br label %553

553:                                              ; preds = %551, %507
  %554 = load i32, i32* @RM_BTREE_ID, align 4
  %555 = load i32, i32* %29, align 4
  %556 = call i32 @XLogInsert(i32 %554, i32 %555)
  store i32 %556, i32* %30, align 4
  %557 = load i32, i32* %17, align 4
  %558 = call i64 @BufferIsValid(i32 %557)
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %564

560:                                              ; preds = %553
  %561 = load i32*, i32** %18, align 8
  %562 = load i32, i32* %30, align 4
  %563 = call i32 @PageSetLSN(i32* %561, i32 %562)
  br label %564

564:                                              ; preds = %560, %553
  %565 = load i32, i32* %16, align 4
  %566 = call i32* @BufferGetPage(i32 %565)
  store i32* %566, i32** %21, align 8
  %567 = load i32*, i32** %21, align 8
  %568 = load i32, i32* %30, align 4
  %569 = call i32 @PageSetLSN(i32* %567, i32 %568)
  %570 = load i32, i32* %15, align 4
  %571 = call i32* @BufferGetPage(i32 %570)
  store i32* %571, i32** %21, align 8
  %572 = load i32*, i32** %21, align 8
  %573 = load i32, i32* %30, align 4
  %574 = call i32 @PageSetLSN(i32* %572, i32 %573)
  %575 = load i32, i32* %14, align 4
  %576 = call i64 @BufferIsValid(i32 %575)
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %584

578:                                              ; preds = %564
  %579 = load i32, i32* %14, align 4
  %580 = call i32* @BufferGetPage(i32 %579)
  store i32* %580, i32** %21, align 8
  %581 = load i32*, i32** %21, align 8
  %582 = load i32, i32* %30, align 4
  %583 = call i32 @PageSetLSN(i32* %581, i32 %582)
  br label %584

584:                                              ; preds = %578, %564
  %585 = load i64, i64* %11, align 8
  %586 = load i64, i64* %8, align 8
  %587 = icmp ne i64 %585, %586
  br i1 %587, label %588, label %594

588:                                              ; preds = %584
  %589 = load i32, i32* %6, align 4
  %590 = call i32* @BufferGetPage(i32 %589)
  store i32* %590, i32** %21, align 8
  %591 = load i32*, i32** %21, align 8
  %592 = load i32, i32* %30, align 4
  %593 = call i32 @PageSetLSN(i32* %591, i32 %592)
  br label %594

594:                                              ; preds = %588, %584
  br label %595

595:                                              ; preds = %594, %458
  %596 = call i32 (...) @END_CRIT_SECTION()
  %597 = load i32, i32* %17, align 4
  %598 = call i64 @BufferIsValid(i32 %597)
  %599 = icmp ne i64 %598, 0
  br i1 %599, label %600, label %604

600:                                              ; preds = %595
  %601 = load i32, i32* %5, align 4
  %602 = load i32, i32* %17, align 4
  %603 = call i32 @_bt_relbuf(i32 %601, i32 %602)
  br label %604

604:                                              ; preds = %600, %595
  %605 = load i32, i32* %14, align 4
  %606 = call i64 @BufferIsValid(i32 %605)
  %607 = icmp ne i64 %606, 0
  br i1 %607, label %608, label %612

608:                                              ; preds = %604
  %609 = load i32, i32* %5, align 4
  %610 = load i32, i32* %14, align 4
  %611 = call i32 @_bt_relbuf(i32 %609, i32 %610)
  br label %612

612:                                              ; preds = %608, %604
  %613 = load i32, i32* %5, align 4
  %614 = load i32, i32* %16, align 4
  %615 = call i32 @_bt_relbuf(i32 %613, i32 %614)
  %616 = load i64, i64* %11, align 8
  %617 = load i64, i64* %8, align 8
  %618 = icmp ne i64 %616, %617
  br i1 %618, label %619, label %623

619:                                              ; preds = %612
  %620 = load i32, i32* %5, align 4
  %621 = load i32, i32* %15, align 4
  %622 = call i32 @_bt_relbuf(i32 %620, i32 %621)
  br label %623

623:                                              ; preds = %619, %612
  store i32 1, i32* %4, align 4
  br label %624

624:                                              ; preds = %623, %163
  %625 = load i32, i32* %4, align 4
  ret i32 %625
}

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32* @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @P_ISLEAF(%struct.TYPE_16__*) #1

declare dso_local i64 @P_ISHALFDEAD(%struct.TYPE_16__*) #1

declare dso_local i32 @PageGetItemId(i32*, i64) #1

declare dso_local i64 @PageGetItem(i32*, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @BTreeTupleGetTopParent(i64) #1

declare dso_local i32 @_bt_getbuf(i32, i64, i32) #1

declare dso_local i64 @P_ISDELETED(%struct.TYPE_16__*) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @P_RIGHTMOST(%struct.TYPE_16__*) #1

declare dso_local i64 @P_ISROOT(%struct.TYPE_16__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i64, i64, ...) #1

declare dso_local i64 @P_FIRSTDATAKEY(%struct.TYPE_16__*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32*) #1

declare dso_local i64 @BTreeInnerTupleGetDownLink(i64) #1

declare dso_local %struct.TYPE_17__* @BTPageGetMeta(i32*) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @BTreeTupleSetTopParent(i64, i64) #1

declare dso_local i32 @ReadNewTransactionId(...) #1

declare dso_local i32 @_bt_upgrademetapage(i32*) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32*, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
