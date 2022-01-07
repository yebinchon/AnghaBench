; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_mark_page_halfdead.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtpage.c__bt_mark_page_halfdead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32, i64, i64, i32 }

@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"could not delete page %u because its right sibling %u is half-dead\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INDEX_CORRUPTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"right sibling %u of block %u is not next child %u of block %u in index \22%s\22\00", align 1
@BTP_HALF_DEAD = common dso_local global i32 0, align 4
@P_HIKEY = common dso_local global i64 0, align 8
@InvalidBlockNumber = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"could not overwrite high key in half-dead page\00", align 1
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@SizeOfBtreeMarkPageHalfDead = common dso_local global i32 0, align 4
@RM_BTREE_ID = common dso_local global i32 0, align 4
@XLOG_BTREE_MARK_PAGE_HALFDEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @_bt_mark_page_halfdead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_mark_page_halfdead(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_14__, align 4
  %20 = alloca %struct.TYPE_13__, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @BufferGetPage(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i64 @PageGetSpecialPointer(i32 %24)
  %26 = inttoptr i64 %25 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %14, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %28 = call i32 @P_RIGHTMOST(%struct.TYPE_15__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %3
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %32 = call i32 @P_ISROOT(%struct.TYPE_15__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %36 = call i32 @P_ISDELETED(%struct.TYPE_15__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %40 = call i32 @P_ISHALFDEAD(%struct.TYPE_15__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %44 = call i64 @P_ISLEAF(%struct.TYPE_15__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %48 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_15__* %47)
  %49 = load i32, i32* %13, align 4
  %50 = call i64 @PageGetMaxOffsetNumber(i32 %49)
  %51 = icmp sgt i64 %48, %50
  br label %52

52:                                               ; preds = %46, %42, %38, %34, %30, %3
  %53 = phi i1 [ false, %42 ], [ false, %38 ], [ false, %34 ], [ false, %30 ], [ false, %3 ], [ %51, %46 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @BufferGetBlockNumber(i32 %56)
  store i64 %57, i64* %8, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %9, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @_bt_is_page_halfdead(i32 %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %52
  %66 = load i32, i32* @DEBUG1, align 4
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 (i32, i8*, ...) @elog(i32 %66, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %67, i64 %68)
  store i32 0, i32* %4, align 4
  br label %237

70:                                               ; preds = %52
  %71 = load i64, i64* %9, align 8
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %8, align 8
  store i64 %72, i64* %10, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i64, i64* %8, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @_bt_lock_branch_parent(i32 %73, i64 %74, i32 %75, i32* %15, i32* %16, i64* %10, i64* %11)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %237

79:                                               ; preds = %70
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @BufferGetPage(i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i64 @PageGetSpecialPointer(i32 %82)
  %84 = inttoptr i64 %83 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %84, %struct.TYPE_15__** %14, align 8
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @OffsetNumberNext(i32 %85)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %17, align 4
  %89 = call i32 @PageGetItemId(i32 %87, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i64 @PageGetItem(i32 %90, i32 %91)
  store i64 %92, i64* %18, align 8
  %93 = load i64, i64* %18, align 8
  %94 = call i64 @BTreeInnerTupleGetDownLink(i64 %93)
  %95 = load i64, i64* %11, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %79
  %98 = load i32, i32* @ERROR, align 4
  %99 = load i32, i32* @ERRCODE_INDEX_CORRUPTED, align 4
  %100 = call i32 @errcode(i32 %99)
  %101 = load i64, i64* %11, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %18, align 8
  %104 = call i64 @BTreeInnerTupleGetDownLink(i64 %103)
  %105 = load i32, i32* %15, align 4
  %106 = call i64 @BufferGetBlockNumber(i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @RelationGetRelationName(i32 %107)
  %109 = call i32 @errmsg_internal(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i64 %101, i64 %102, i64 %104, i64 %106, i32 %108)
  %110 = call i32 @ereport(i32 %98, i32 %109)
  br label %111

111:                                              ; preds = %97, %79
  %112 = load i32, i32* %5, align 4
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @PredicateLockPageCombine(i32 %112, i64 %113, i64 %114)
  %116 = call i32 (...) @START_CRIT_SECTION()
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @BufferGetPage(i32 %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i64 @PageGetSpecialPointer(i32 %119)
  %121 = inttoptr i64 %120 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %121, %struct.TYPE_15__** %14, align 8
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @PageGetItemId(i32 %122, i32 %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i64 @PageGetItem(i32 %125, i32 %126)
  store i64 %127, i64* %18, align 8
  %128 = load i64, i64* %18, align 8
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @BTreeInnerTupleSetDownLink(i64 %128, i64 %129)
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @OffsetNumberNext(i32 %131)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %17, align 4
  %135 = call i32 @PageIndexTupleDelete(i32 %133, i32 %134)
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @BufferGetPage(i32 %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = call i64 @PageGetSpecialPointer(i32 %138)
  %140 = inttoptr i64 %139 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %140, %struct.TYPE_15__** %14, align 8
  %141 = load i32, i32* @BTP_HALF_DEAD, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i64 @PageGetMaxOffsetNumber(i32 %146)
  %148 = load i64, i64* @P_HIKEY, align 8
  %149 = icmp eq i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @Assert(i32 %150)
  %152 = call i32 @MemSet(%struct.TYPE_14__* %19, i32 0, i32 4)
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  store i32 4, i32* %153, align 4
  %154 = load i64, i64* %10, align 8
  %155 = load i64, i64* %8, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %111
  %158 = load i64, i64* %10, align 8
  %159 = call i32 @BTreeTupleSetTopParent(%struct.TYPE_14__* %19, i64 %158)
  br label %163

160:                                              ; preds = %111
  %161 = load i64, i64* @InvalidBlockNumber, align 8
  %162 = call i32 @BTreeTupleSetTopParent(%struct.TYPE_14__* %19, i64 %161)
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i32, i32* %13, align 4
  %165 = load i64, i64* @P_HIKEY, align 8
  %166 = ptrtoint %struct.TYPE_14__* %19 to i32
  %167 = call i32 @IndexTupleSize(%struct.TYPE_14__* %19)
  %168 = call i32 @PageIndexTupleOverwrite(i32 %164, i64 %165, i32 %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %163
  %171 = load i32, i32* @ERROR, align 4
  %172 = call i32 (i32, i8*, ...) @elog(i32 %171, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %173

173:                                              ; preds = %170, %163
  %174 = load i32, i32* %15, align 4
  %175 = call i32 @MarkBufferDirty(i32 %174)
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @MarkBufferDirty(i32 %176)
  %178 = load i32, i32* %5, align 4
  %179 = call i64 @RelationNeedsWAL(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %232

181:                                              ; preds = %173
  %182 = load i32, i32* %16, align 4
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 4
  store i32 %182, i32* %183, align 8
  %184 = load i64, i64* %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 3
  store i64 %184, i64* %185, align 8
  %186 = load i64, i64* %10, align 8
  %187 = load i64, i64* %8, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %181
  %190 = load i64, i64* %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  store i64 %190, i64* %191, align 8
  br label %195

192:                                              ; preds = %181
  %193 = load i64, i64* @InvalidBlockNumber, align 8
  %194 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 2
  store i64 %193, i64* %194, align 8
  br label %195

195:                                              ; preds = %192, %189
  %196 = call i32 (...) @XLogBeginInsert()
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %199 = call i32 @XLogRegisterBuffer(i32 0, i32 %197, i32 %198)
  %200 = load i32, i32* %15, align 4
  %201 = load i32, i32* @REGBUF_STANDARD, align 4
  %202 = call i32 @XLogRegisterBuffer(i32 1, i32 %200, i32 %201)
  %203 = load i32, i32* %6, align 4
  %204 = call i32 @BufferGetPage(i32 %203)
  store i32 %204, i32* %13, align 4
  %205 = load i32, i32* %13, align 4
  %206 = call i64 @PageGetSpecialPointer(i32 %205)
  %207 = inttoptr i64 %206 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %207, %struct.TYPE_15__** %14, align 8
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  store i32 %210, i32* %211, align 8
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  store i64 %214, i64* %215, align 8
  %216 = bitcast %struct.TYPE_13__* %20 to i8*
  %217 = load i32, i32* @SizeOfBtreeMarkPageHalfDead, align 4
  %218 = call i32 @XLogRegisterData(i8* %216, i32 %217)
  %219 = load i32, i32* @RM_BTREE_ID, align 4
  %220 = load i32, i32* @XLOG_BTREE_MARK_PAGE_HALFDEAD, align 4
  %221 = call i32 @XLogInsert(i32 %219, i32 %220)
  store i32 %221, i32* %21, align 4
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @BufferGetPage(i32 %222)
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* %21, align 4
  %226 = call i32 @PageSetLSN(i32 %224, i32 %225)
  %227 = load i32, i32* %6, align 4
  %228 = call i32 @BufferGetPage(i32 %227)
  store i32 %228, i32* %13, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %21, align 4
  %231 = call i32 @PageSetLSN(i32 %229, i32 %230)
  br label %232

232:                                              ; preds = %195, %173
  %233 = call i32 (...) @END_CRIT_SECTION()
  %234 = load i32, i32* %5, align 4
  %235 = load i32, i32* %15, align 4
  %236 = call i32 @_bt_relbuf(i32 %234, i32 %235)
  store i32 1, i32* %4, align 4
  br label %237

237:                                              ; preds = %232, %78, %65
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @P_RIGHTMOST(%struct.TYPE_15__*) #1

declare dso_local i32 @P_ISROOT(%struct.TYPE_15__*) #1

declare dso_local i32 @P_ISDELETED(%struct.TYPE_15__*) #1

declare dso_local i32 @P_ISHALFDEAD(%struct.TYPE_15__*) #1

declare dso_local i64 @P_ISLEAF(%struct.TYPE_15__*) #1

declare dso_local i64 @P_FIRSTDATAKEY(%struct.TYPE_15__*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i64 @_bt_is_page_halfdead(i32, i64) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @_bt_lock_branch_parent(i32, i64, i32, i32*, i32*, i64*, i64*) #1

declare dso_local i32 @OffsetNumberNext(i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i64 @BTreeInnerTupleGetDownLink(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg_internal(i8*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @PredicateLockPageCombine(i32, i64, i64) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @BTreeInnerTupleSetDownLink(i64, i64) #1

declare dso_local i32 @PageIndexTupleDelete(i32, i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @BTreeTupleSetTopParent(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @PageIndexTupleOverwrite(i32, i64, i32, i32) #1

declare dso_local i32 @IndexTupleSize(%struct.TYPE_14__*) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
